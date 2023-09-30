const multer = require("multer")

const storage = multer.diskStorage({
  destination: (req, file, cb) => {
    cb(null, "appcenter-files/"); // Specify the directory where uploaded files will be stored
  },
  limits: {
    fileSize: 50 * 1024 * 1024, // 50MB in bytes
  },
  filename: (req, file, cb) => {
    cb(null, file.originalname); // Use the original file name for storage
  },
  fileFilter: (req, file, cb) => {
    if (!file.originalname.match(/\.(apk)$/)) {
      return cb(new Error('Only APK files are allowed.'), false);
    }
    cb(null, true);
  },
});

exports.upload = multer({ storage });
