const multer = require('multer');
const sharp = require('sharp');
const pathNode = require('path');
const fs = require('fs').promises;
const fsSync = require('fs');

/**
 * Logger utility for consistent logging across middlewares
 */
const logger = {
  info: (msg, data) => console.log(`[INFO] ${msg}`, data || ''),
  error: (msg, error) => console.error(`[ERROR] ${msg}`, error || ''),
  warn: (msg, data) => console.warn(`[WARN] ${msg}`, data || '')
};

/**
 * Ensure directory exists, create if it doesn't
 * @param {string} dirPath - Directory path to ensure exists
 * @returns {Promise<void>}
 */
const ensureDirectoryExists = async (dirPath) => {
  try {
    await fs.mkdir(dirPath, { recursive: true });
    logger.info(`Directory ensured: ${dirPath}`);
  } catch (error) {
    logger.error(`Failed to ensure directory ${dirPath}:`, error);
    throw error;
  }
};

/**
 * Global multer uploader middleware
 * Handles file uploads with validation and storage configuration
 * @param {Object} config - Configuration object
 * @param {string|Array} config.name - Field name(s) for upload
 * @param {string} config.path - Upload directory path
 * @param {number} config.size - Max file size in bytes
 * @param {Array} config.filter - Allowed MIME types
 * @returns {Function} Express middleware
 */
const globalMulterUploader = ({ name, path, size, filter }) => {
  return (req, res, next) => {
    try {
      const fpath = pathNode.join(__dirname, '../assets', res.locals.hostname, path);
      
      logger.info(`Initializing multer uploader`, { path: fpath, maxSize: size, allowedTypes: filter });

      const upload = multer({
        storage: multer.diskStorage({
          destination: async (req, file, cb) => {
            try {
              // Ensure directory exists before storing
              await ensureDirectoryExists(fpath);
              cb(null, fpath);
            } catch (error) {
              logger.error('Failed to setup destination directory:', error);
              cb(error);
            }
          },
          filename: (req, file, cb) => {
            try {
              const sanitizedFilename = file.originalname.replace(/[^a-zA-Z0-9._-]/g, '_');
              const filename = `${Date.now()}_${sanitizedFilename}`;
              logger.info(`Generated filename: ${filename}`);
              cb(null, filename);
            } catch (error) {
              logger.error('Failed to generate filename:', error);
              cb(error);
            }
          }
        }),
        limits: { fileSize: size },
        fileFilter: (req, file, cb) => {
          try {
            const isAllowed = filter.some((item) => file.mimetype.includes(item));
            
            if (isAllowed) {
              logger.info(`File accepted: ${file.originalname} (${file.mimetype})`);
              cb(null, true);
            } else {
              const errorMsg = `File type only ${filter.join(', ')} and up to ${(size / 1024 / 1024).toFixed(2)}MB`;
              logger.warn(`File rejected: ${file.originalname} - ${errorMsg}`);
              cb(new Error(errorMsg));
            }
          } catch (error) {
            logger.error('Error in fileFilter:', error);
            cb(error);
          }
        }
      });

      const uploadHandler = Array.isArray(name) && name[0] === 'single' 
        ? upload.single(name[1]) 
        : Array.isArray(name) && name[0] === 'array' 
          ? upload.fields(name[1].map(field => ({ name: field }))) 
          : upload.any('files');

      uploadHandler(req, res, (err) => {
        if (err && err instanceof multer.MulterError) {
          if (err.code === 'LIMIT_UNEXPECTED_FILE') {
            logger.info('No file uploaded, continuing without error');
            return next();
          } else if (err.code === 'LIMIT_FILE_SIZE') {
            logger.error('File size exceeded limit:', err);
            return next(new Error(`File size exceeds limit of ${(size / 1024 / 1024).toFixed(2)}MB`));
          }
          logger.error('Multer error:', err);
          return next(new Error(`Upload error: ${err.message}`));
        } else if (err) {
          logger.error('Upload error:', err);
          return next(new Error(`Multer: ${err.message}`));
        } else {
          logger.info('File upload successful');
          next();
        }
      });
    } catch (error) {
      logger.error('Multer middleware error:', error);
      next(error);
    }
  };
};

/**
 * Global sharp image reducer/optimizer middleware
 * Compresses and resizes uploaded images
 * @param {Object} config - Configuration object
 * @param {number} config.quality - JPEG quality (1-100)
 * @returns {Function} Express middleware
 */
const globalSharpReducer = ({ quality = 50 } = {}) => {
  // Validate quality parameter
  if (quality < 1 || quality > 100) {
    logger.warn(`Invalid quality value ${quality}, using default 50`);
  }

  return async (req, res, next) => {
    try {
      const files = req.files || (req.file ? [req.file] : []);
      
      if (!files.length) {
        logger.info('No files to process, continuing');
        return next();
      }

      logger.info(`Processing ${files.length} file(s) with Sharp`);

      const resizePromises = files.map(async (file) => {
        try {
          const resizedDir = pathNode.join(file.destination, 'resized');
          
          // Ensure resized directory exists
          await ensureDirectoryExists(resizedDir);
          
          const outputPath = pathNode.join(resizedDir, file.filename);
          
          logger.info(`Resizing image: ${file.filename}`);
          
          // Process image with sharp
          await sharp(file.path)
            .jpeg({ quality, progressive: true })
            .toFile(outputPath);
          
          logger.info(`Image resized successfully: ${outputPath}`);
          
          // Safely delete original file
          await fs.unlink(file.path);
          logger.info(`Original file deleted: ${file.path}`);
          
        } catch (error) {
          logger.error(`Error processing file ${file.filename}:`, error);
          
          // Attempt cleanup of original file on error
          try {
            await fs.unlink(file.path);
          } catch (unlinkError) {
            logger.error(`Failed to delete file after error: ${file.path}`, unlinkError);
          }
          
          throw error;
        }
      });

      await Promise.all(resizePromises);
      logger.info('All files processed successfully');
      next();
      
    } catch (error) {
      logger.error('Sharp reducer error:', error);
      next(new Error(`Image processing error: ${error.message}`));
    }
  };
};

module.exports = {
  globalMulterUploader,
  globalSharpReducer
};
