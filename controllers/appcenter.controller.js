const {
  updateAPKsvc,
  getReleasesvc,
} = require("../services/appcenter.service.js");
const model = require("../models/response.model.js");

const uploadAPKUpdate = async (req, res) => {
  console.log("uploading..");
  updateAPKsvc({...req.file, ...req.body}, (isSuccess, data) => {
    isSuccess
      ? res.status(200).send({ ...model.successModel, message: data })
      : res.status(400).send({ ...model.failModel, message: data });
  });
  // if (!req.file) {
  //     return res.status(400).send("No file uploaded.");
  //   }
  //   res.status(200).send("File uploaded successfully.");
};

const getRelease = async (req, res) => {
  getReleasesvc((isSuccess, data) => {
    isSuccess
      ? res.status(200).send({ ...model.successModel, message: data })
      : res.status(400).send({ ...model.failModel, message: data });
  });
};

module.exports = { getRelease, uploadAPKUpdate };
