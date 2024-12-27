const multer = require('multer');
const sharp = require('sharp');
const path = require('path');
const fs = require('fs');


const globalMulterUploader = ({ path, size, filter }) => {
  return (req, res, next) => {
    const upload = multer({
      storage: multer.diskStorage({
        destination: (req, file, cb) => cb(null, path),
        filename: (req, file, cb) => cb(null, `${Date.now()}_${file.originalname}`)
      }),
      limits: { fileSize: size },
      fileFilter: (req, file, cb) => {
        if (file.mimetype.startsWith(filter)) {
          cb(null, true);
        } else {
          cb(new Error(`File type only ${filter} and up to ${(size / 1024)}kb`));
        }
      }
    }).any('files');

    upload(req, res, next, (err) => {
      if (err) {
        next(err.message)
      }
      next();
    });
  };
};


const globalSharpReducer = ({ quality=50 }) => {
  return async (req, res, next) => {
    try {
      const resizePromises = req.files.map(async (file) => {
        const outputPath = path.resolve(file.destination, 'resized', file.filename);
        await sharp(file.path)
        //   .resize({ width, height, fit: sharp.fit.cover, withoutEnlargement: true })
          .jpeg({ quality })
          .toFile(outputPath);
        fs.unlinkSync(file.path);
      });

      await Promise.all(resizePromises);
      next();
    } catch (error) {
      next(error);
    }
  };
};

module.exports={
    globalMulterUploader, globalSharpReducer
}