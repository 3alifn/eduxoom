-- Migration: Improve ini-related schemas
-- Date: 2026-08-18
-- Author: automated migration script (review before running in production)
--
-- WARNING: Always take a full database backup and test in staging before applying these statements in production.
-- This file is intended as a safe, step-by-step migration helper. Some ALTER statements may require downtime.


/* 1) Backup tables (create copy) */
CREATE TABLE IF NOT EXISTS `___ini_backup` AS SELECT * FROM `___ini`;
CREATE TABLE IF NOT EXISTS `ini_subject_backup` AS SELECT * FROM `ini_subject`;
CREATE TABLE IF NOT EXISTS `ini_class_section_backup` AS SELECT * FROM `ini_class_section`;
CREATE TABLE IF NOT EXISTS `ini_bi_catagory_backup` AS SELECT * FROM `ini_bi_catagory`;


/* ======================================================================
   2) Migrate date-like VARCHAR columns in `___ini` to DATE/TIMESTAMP types
   - join_date, expire_date: currently varchar (examples: '10/7/2023' or 'null')
   - at_date: currently DATE with invalid default in some SQL dumps; convert to TIMESTAMP
   ====================================================================== */

-- Add new date columns (nullable at first)
ALTER TABLE `___ini`
  ADD COLUMN `join_date_new` DATE NULL,
  ADD COLUMN `expire_date_new` DATE NULL;

-- Populate new date columns trying common formats (mm/dd/YYYY, d/m/YYYY). Adjust formats if your data differs.
UPDATE `___ini`
SET
  `join_date_new` = COALESCE(
    STR_TO_DATE(NULLIF(TRIM(join_date), ''), '%c/%e/%Y'),
    STR_TO_DATE(NULLIF(TRIM(join_date), ''), '%d/%m/%Y'),
    STR_TO_DATE(NULLIF(TRIM(join_date), ''), '%Y-%m-%d')
  ),
  `expire_date_new` = (
    CASE
      WHEN LOWER(TRIM(expire_date)) IN ('', 'null', 'none') THEN NULL
      ELSE COALESCE(
        STR_TO_DATE(NULLIF(TRIM(expire_date), ''), '%c/%e/%Y'),
        STR_TO_DATE(NULLIF(TRIM(expire_date), ''), '%d/%m/%Y'),
        STR_TO_DATE(NULLIF(TRIM(expire_date), ''), '%Y-%m-%d')
      )
    END
  );

-- Verify converted rows where original was non-empty but new is NULL: run this SELECT and fix any problematic rows manually
-- SELECT ID, domain, join_date, join_date_new, expire_date, expire_date_new FROM `___ini` WHERE (join_date IS NOT NULL AND join_date <> '' AND join_date_new IS NULL) OR (expire_date IS NOT NULL AND expire_date <> '' AND expire_date_new IS NULL);

-- After verifying the conversion, drop old varchar columns and rename new ones
-- (Run these when you are confident conversion succeeded)
-- ALTER TABLE `___ini` DROP COLUMN `join_date`, DROP COLUMN `expire_date`;
-- ALTER TABLE `___ini` CHANGE COLUMN `join_date_new` `join_date` DATE NOT NULL, CHANGE COLUMN `expire_date_new` `expire_date` DATE NULL;

-- Make at_date TIMESTAMP with CURRENT_TIMESTAMP default (do this carefully if you have existing data)
-- First check current at_date values range; if OK proceed.
-- ALTER TABLE `___ini` MODIFY COLUMN `at_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP;

-- Optionally add created_at / updated_at timestamps
-- ALTER TABLE `___ini` ADD COLUMN created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, ADD COLUMN updated_at TIMESTAMP NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP;

-- Add helpful indexes
-- ALTER TABLE `___ini` ADD INDEX idx___ini_at_status (at_status), ADD INDEX idx___ini_checkout (checkout), ADD INDEX idx___ini_domain (domain);


/* ======================================================================
   3) Improve `ini_subject`
   - Make teacher_index and teacher_pdsid nullable
   - Add index on subject_code and class to speed lookups
   ====================================================================== */

ALTER TABLE `ini_subject`
  MODIFY COLUMN `teacher_index` VARCHAR(100) NULL,
  MODIFY COLUMN `teacher_pdsid` VARCHAR(100) NULL;

-- Add indexes (idempotent if names differ; run manually if index exists)
ALTER TABLE `ini_subject`
  ADD INDEX IF NOT EXISTS idx_ini_subject_code (`subject_code`(100)),
  ADD INDEX IF NOT EXISTS idx_ini_subject_class (`class`(100));

-- Note: Some MySQL versions don't support ADD INDEX IF NOT EXISTS; if your server errors, remove the IF NOT EXISTS and run after checking existing indexes.


/* ======================================================================
   4) Improve `ini_class_section`
   - Convert at_status/class_status from VARCHAR('on'/'off') to ENUM('on','off') or TINYINT
   - Add UNIQUE constraint on (domain,class,section) to avoid duplicates (drop/resolve duplicates first)
   ====================================================================== */

-- Find duplicates before adding UNIQUE constraint
-- SELECT domain, class, section, COUNT(*) cnt FROM ini_class_section GROUP BY domain, class, section HAVING cnt > 1;

-- If duplicates exist, inspect and decide which rows to keep. Example query to keep lowest ID and remove others:
-- DELETE c FROM ini_class_section c
-- INNER JOIN (
--   SELECT MIN(ID) as keep_id, domain, class, section FROM ini_class_section GROUP BY domain, class, section HAVING COUNT(*) > 1
-- ) dup ON c.domain = dup.domain AND c.class = dup.class AND c.section = dup.section
-- WHERE c.ID <> dup.keep_id;

-- Convert status columns to ENUM('on','off') (run after resolving duplicates)
ALTER TABLE `ini_class_section`
  MODIFY COLUMN `at_status` ENUM('on','off') NOT NULL DEFAULT 'on',
  MODIFY COLUMN `class_status` ENUM('on','off') NOT NULL DEFAULT 'on';

-- Add unique constraint
-- ALTER TABLE `ini_class_section` ADD UNIQUE KEY uq_domain_class_section (domain, class, section);


/* ======================================================================
   5) Improve `ini_bi_catagory`
   - Ensure catagory_name length/type appropriate; add index on catagory_code
   - Consider renaming to ini_bi_category (manual/optional)
   ====================================================================== */

ALTER TABLE `ini_bi_catagory`
  MODIFY COLUMN `catagory_name` VARCHAR(300) NOT NULL;

-- Add index on code (adjust prefix length for MySQL index limits)
ALTER TABLE `ini_bi_catagory`
  ADD INDEX IF NOT EXISTS idx_ini_bi_catagory_code (`catagory_code`(100));


/* ======================================================================
   IMPORTANT NOTES
   - This script intentionally leaves some ALTER operations commented (DROP old columns, RENAME new columns, ADD UNIQUE keys)
     so you can run the verify SELECTs first, inspect results, then run the final ALTERs in a maintenance window.
   - Some statements like ADD INDEX IF NOT EXISTS are MySQL-version dependent and may error on older servers; adapt accordingly.
   - Consider lowercasing column names (ID -> id) for consistency, but that requires application code updates and is NOT performed automatically here.
   - Always test in staging and keep backups.

   NEXT STEPS
   1) In a safe environment run the SELECT verification queries included above to find rows that need manual fixes.
   2) After verification, uncomment and run the final ALTER statements (the ones that DROP old columns / CHANGE column names / ADD constraints).
   3) Run application test-suite and manual smoke tests.

*/
