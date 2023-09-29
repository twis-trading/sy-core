const multer = require("multer")

const storage = multer.diskStorage({
  destination: (req, file, cb) => {
    cb(null, "apk/"); // Specify the directory where uploaded files will be stored
  },
  limits: {
    fileSize: 50 * 1024 * 1024, // 50MB in bytes
  },
  filename: (req, file, cb) => {
    cb(null, file.originalname); // Use the original file name for storage
  },
  fileFilter: (req, file, cb) => {
    if (!file.originalname.match(/\.(sql)$/)) {
      return cb(new Error('Only APK files are allowed.'), false);
    }
    cb(null, true);
  },
});

const upload = multer({ storage });

module.exports = upload