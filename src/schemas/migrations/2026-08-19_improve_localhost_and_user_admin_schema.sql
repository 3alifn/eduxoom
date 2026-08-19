-- Migration: Improve localhost & user_admin related schemas
-- Date: 2026-08-19
-- Author: automated migration helper (review before running in production)
--
-- WARNING: Take a full DB backup and test in staging before applying.
-- This script contains safe non-destructive steps (backups, add-new-columns, conversions)
-- and guidance for final ALTERs which are commented out. Uncomment only after verification.

/* 1) Backup selected tables */
CREATE TABLE IF NOT EXISTS `user_admin_backup` AS SELECT * FROM `user_admin`;
CREATE TABLE IF NOT EXISTS `admission_backup` AS SELECT * FROM `admission`;
CREATE TABLE IF NOT EXISTS `application_backup` AS SELECT * FROM `application`;
CREATE TABLE IF NOT EXISTS `attn_record_backup` AS SELECT * FROM `attn_record`;
CREATE TABLE IF NOT EXISTS `attn_student_backup` AS SELECT * FROM `attn_student`;
CREATE TABLE IF NOT EXISTS `bi_mark_backup` AS SELECT * FROM `bi_mark`;
CREATE TABLE IF NOT EXISTS `bi_transcript_backup` AS SELECT * FROM `bi_transcript`;
CREATE TABLE IF NOT EXISTS `carousel_backup` AS SELECT * FROM `carousel`;

/* ======================================================================
   2) user_admin: convert at_date varchar -> TIMESTAMP, ensure utf8mb4
   ====================================================================== */
ALTER TABLE `user_admin` CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

-- Add new timestamp column (nullable)
ALTER TABLE `user_admin` ADD COLUMN `at_timestamp_new` TIMESTAMP NULL;

-- Try to parse existing at_date values (common formats)
UPDATE `user_admin`
SET at_timestamp_new = COALESCE(
  STR_TO_DATE(NULLIF(TRIM(at_date), ''), '%Y-%m-%d %H:%i:%s'),
  STR_TO_DATE(NULLIF(TRIM(at_date), ''), '%c/%e/%Y %H:%i:%s'),
  STR_TO_DATE(NULLIF(TRIM(at_date), ''), '%c/%e/%Y'),
  NULL
);

-- Verify: SELECT ID, at_date, at_timestamp_new FROM user_admin WHERE at_date IS NOT NULL AND at_date <> '' AND at_timestamp_new IS NULL;

-- After manual verification, you may run the final rename (commented):
-- ALTER TABLE `user_admin` DROP COLUMN `at_date`, CHANGE `at_timestamp_new` `at_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP;

/* ======================================================================
   3) admission & application: normalize date fields and contact types
   - Convert find_date, birth_date from varchar -> DATE and at_date -> TIMESTAMP
   - Convert telephone to varchar (to preserve leading zeros and non-digit chars)
   ====================================================================== */

ALTER TABLE `admission` CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
ALTER TABLE `application` CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

ALTER TABLE `admission` ADD COLUMN `find_date_new` DATE NULL, ADD COLUMN `birth_date_new` DATE NULL, ADD COLUMN `at_timestamp_new` TIMESTAMP NULL;

UPDATE `admission` SET
  find_date_new = COALESCE(STR_TO_DATE(NULLIF(TRIM(find_date), ''), '%c/%e/%Y'), STR_TO_DATE(NULLIF(TRIM(find_date), ''), '%Y-%m-%d')),
  birth_date_new = COALESCE(STR_TO_DATE(NULLIF(TRIM(birth_date), ''), '%c/%e/%Y'), STR_TO_DATE(NULLIF(TRIM(birth_date), ''), '%Y-%m-%d')),
  at_timestamp_new = COALESCE(STR_TO_DATE(NULLIF(TRIM(at_date), ''), '%Y-%m-%d %H:%i:%s'), NULL);

-- Convert telephone to VARCHAR to keep leading zeros and extensions
-- ALTER TABLE `admission` MODIFY COLUMN `telephone` VARCHAR(32) NULL;

-- Final rename (comment when verified):
-- ALTER TABLE `admission` DROP COLUMN `find_date`, DROP COLUMN `birth_date`, DROP COLUMN `at_date`;
-- ALTER TABLE `admission` CHANGE COLUMN `find_date_new` `find_date` DATE NULL, CHANGE COLUMN `birth_date_new` `birth_date` DATE NULL, CHANGE COLUMN `at_timestamp_new` `at_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP;

-- Application: convert find_date and at_date
ALTER TABLE `application` ADD COLUMN `find_date_new` DATE NULL, ADD COLUMN `at_timestamp_new` TIMESTAMP NULL;
UPDATE `application` SET
  find_date_new = COALESCE(STR_TO_DATE(NULLIF(TRIM(find_date), ''), '%c/%e/%Y'), STR_TO_DATE(NULLIF(TRIM(find_date), ''), '%Y-%m-%d')),
  at_timestamp_new = COALESCE(STR_TO_DATE(NULLIF(TRIM(at_date), ''), '%Y-%m-%d %H:%i:%s'), NULL);

-- After verification uncomment final renames (example):
-- ALTER TABLE `application` DROP COLUMN `find_date`, DROP COLUMN `at_date`;
-- ALTER TABLE `application` CHANGE COLUMN `find_date_new` `find_date` DATE NULL, CHANGE COLUMN `at_timestamp_new` `at_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP;

/* ======================================================================
   4) attendance tables: normalize date/time columns and collations
   - attn_record and attn_student have many varchar date/time columns; convert to DATE/TIMESTAMP
   - Be careful: attn_record uses latin1 collation; convert to utf8mb4
   ====================================================================== */

ALTER TABLE `attn_record` CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
ALTER TABLE `attn_student` CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

ALTER TABLE `attn_record` ADD COLUMN `attn_date_new` DATE NULL, ADD COLUMN `record_timestamp_new` TIMESTAMP NULL;
UPDATE `attn_record` SET
  attn_date_new = COALESCE(STR_TO_DATE(NULLIF(TRIM(attn_date), ''), '%c/%e/%Y'), STR_TO_DATE(NULLIF(TRIM(attn_date), ''), '%Y-%m-%d')),
  record_timestamp_new = COALESCE(STR_TO_DATE(NULLIF(TRIM(at_date), ''), '%Y-%m-%d %H:%i:%s'), NULL);

-- Similar conversions for attn_student
ALTER TABLE `attn_student` ADD COLUMN `attn_date_new` DATE NULL, ADD COLUMN `record_timestamp_new` TIMESTAMP NULL;
UPDATE `attn_student` SET
  attn_date_new = COALESCE(STR_TO_DATE(NULLIF(TRIM(attn_date), ''), '%c/%e/%Y'), STR_TO_DATE(NULLIF(TRIM(attn_date), ''), '%Y-%m-%d')),
  record_timestamp_new = COALESCE(STR_TO_DATE(NULLIF(TRIM(at_date), ''), '%Y-%m-%d %H:%i:%s'), NULL);

-- Verify before final DROP/RENAME.

/* ======================================================================
   5) BI tables (bi_mark, bi_transcript): normalize at_date and ensure bg_color/useful defaults
   ====================================================================== */

ALTER TABLE `bi_mark` ADD COLUMN `at_timestamp_new` TIMESTAMP NULL;
UPDATE `bi_mark` SET at_timestamp_new = COALESCE(STR_TO_DATE(NULLIF(TRIM(at_date), ''), '%Y-%m-%d %H:%i:%s'), NULL);

ALTER TABLE `bi_transcript` ADD COLUMN `at_timestamp_new` TIMESTAMP NULL;
UPDATE `bi_transcript` SET at_timestamp_new = COALESCE(STR_TO_DATE(NULLIF(TRIM(at_date), ''), '%Y-%m-%d %H:%i:%s'), NULL);

-- Recommended final changes (commented):
-- ALTER TABLE `bi_mark` DROP COLUMN `at_date`, CHANGE `at_timestamp_new` `at_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP;
-- ALTER TABLE `bi_transcript` DROP COLUMN `at_date`, CHANGE `at_timestamp_new` `at_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP;

/* ======================================================================
   6) carousel: ensure proper timestamp column
   ====================================================================== */
ALTER TABLE `carousel` ADD COLUMN `at_timestamp_new` TIMESTAMP NULL;
UPDATE `carousel` SET at_timestamp_new = COALESCE(STR_TO_DATE(NULLIF(TRIM(at_date), ''), '%Y-%m-%d %H:%i:%s'), NULL);
-- Final:
-- ALTER TABLE `carousel` DROP COLUMN `at_date`, CHANGE `at_timestamp_new` `at_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;

/* ======================================================================
   7) General recommendations left as comments
   - Standardize ID casing (ID -> id) only with full app refactor
   - Prefer VARCHAR for phone numbers rather than INT
   - Use utf8mb4 throughout (convert latin1 tables)
   - Add indexes on common query columns (domain, class, student_uuid, teacher_uuid, at_date)
   - Add created_at/updated_at columns where useful

   Run the provided SELECTs to detect conversion issues and duplicates before uncommenting final ALTERs.

*/
