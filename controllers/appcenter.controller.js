const {
  updateAPKsvc,
  getReleasesvc,
} = require("../services/appcenter.service.js");
const model = require("../models/response.model.js");

exports.uploadAPKUpdate = async (req, res) => {
  console.log("uploading..");
  updateAPKsvc(req.file, (isSuccess, data) => {
    isSuccess
      ? res.status(200).send({ ...model.successModel, message: data })
      : res.status(400).send({ ...model.failModel, message: data });
  });
  // if (!req.file) {
  //     return res.status(400).send("No file uploaded.");
  //   }
  //   res.status(200).send("File uploaded successfully.");
};

exports.getRelease = async (req, res) => {
  getReleasesvc((isSuccess, data) => {
    isSuccess
      ? res.status(200).send({ ...model.successModel, message: data })
      : res.status(400).send({ ...model.failModel, message: data });
  });
};