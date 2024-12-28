const multer = require('multer');
const sharp = require('sharp');
const path = require('path');
const fs = require('fs');

const globalMulterUploader = ({ name, path, size, filter }) => {
  return (req, res, next) => {
    const upload = multer({
      storage: multer.diskStorage({
        destination: (req, file, cb) => cb(null, path),
        filename: (req, file, cb) => cb(null, `${Date.now()}_${file.originalname}`)
      }),
      limits: { fileSize: size },
      fileFilter: (req, file, cb) => {
        const filterArray = filter.some((item) => file.mimetype.includes(item));
        if (filterArray) {
          cb(null, true);
        } else {
          cb(new Error(`File type only ${filter.join(', ')} and up to ${(size / 1024)}kb`));
        }
      }
    });

    const uploadHandler = Array.isArray(name) && name[0] === 'single' 
      ? upload.single(name[1]) 
      : upload.any('files');

    uploadHandler(req, res, (err) => {
      if (err && err instanceof multer.MulterError && err.code === 'LIMIT_UNEXPECTED_FILE') {
        next(); // No file uploaded, continue without error
      } else if (err) {
       return next('Multer:'+ err.message)
        // return res.status(400).send({ msg: 'Multer:'+ err.message, alert: "alert-danger" });
      } else {
        next();
      }
    });
  };
};


const globalSharpReducer = ({ quality = 50}) => {
  return async (req, res, next) => {
    
    const files = req.files || (req.file ? [req.file] : []);
    
    if (!files.length) {
      return next(); // No files to process, continue without error
    }

    try {
      const resizePromises = files.map(async (file) => {
        const outputPath = path.resolve(file.destination, 'resized', file.filename);
        await sharp(file.path)
          // .resize({ width, height, fit: sharp.fit.cover, withoutEnlargement: true })
          .jpeg({ quality })
          .toFile(outputPath);
        fs.unlinkSync(file.path);
      });

      await Promise.all(resizePromises);
      next();
    } catch (error) {
      next('sharp: '+error);
    }
  };
};



module.exports={
    globalMulterUploader, globalSharpReducer
}