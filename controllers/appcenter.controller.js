const {
  updateAPKsvc,
  getReleasesvc,
  getReleaseByIdsvc,
  destroyReleasesvc,
  getReceiverNumbersvc,
  updateReceiverNumbersvc,
  getInitLocationsvc,
  updateInitLocationsvc
} = require("../services/appcenter.service.js");
const model = require("../models/response.model.js");

const uploadAPKUpdate = async (req, res) => {
  console.log("uploading..");
  updateAPKsvc({ ...req.file, ...req.body }, (isSuccess, data) => {
    isSuccess
      ? res.status(200).send({ ...model.successModel, message: data })
      : res.status(400).send({ ...model.failModel, message: data });
  });
  // if (!req.file) {
  //     return res.status(400).send("No file uploaded.");
  //   }
  //   res.status(200).send("File uploaded successfully.");
};
const getReleaseById = async (req, res) => {
  getReleaseByIdsvc(req.body, (isSuccess, data) => {
    isSuccess
      ? res.status(200).send({ ...model.successModel, message: data })
      : res.status(200).send({ ...model.failModel, message: data });
  });
};
const getRelease = async (req, res) => {
  getReleasesvc((isSuccess, data) => {
    isSuccess
      ? res.status(200).send({ ...model.successModel, message: data })
      : res.status(400).send({ ...model.failModel, message: data });
  });
};

const destroyRelease = async (req, res) => {
  destroyReleasesvc(req.params.id, (isSuccess, data) => {
    isSuccess
      ? res.status(200).send({ ...model.successModel, message: data })
      : res.status(200).send({ ...model.failModel, message: data });
  });
};
const getReceiverNumber = async (req, res) => {
  getReceiverNumbersvc((isSuccess, data) => {
    isSuccess
      ? res.status(200).send({ ...model.successModel, message: data })
      : res.status(400).send({ ...model.failModel, message: data });
  });
};

const updateReceiverNumber = async (req,res) => {
  updateReceiverNumbersvc(req.body, (isSuccess, data) => {
    isSuccess
      ? res.status(200).send({ ...model.successModel, message: data })
      : res.status(200).send({ ...model.failModel, message: data });
  });
};
const getInitLocation = async(req,res) => {
  getInitLocationsvc((isSuccess, data) => {
    isSuccess
      ? res.status(200).send({ ...model.successModel, message: data })
      : res.status(400).send({ ...model.failModel, message: data });
  });
}
const updateInitLocation = async(req,res) => {
  updateInitLocationsvc(req.body, (isSuccess, data) => {
    isSuccess
      ? res.status(200).send({ ...model.successModel, message: data })
      : res.status(200).send({ ...model.failModel, message: data });
  });
}
module.exports = {
  getRelease,
  uploadAPKUpdate,
  getReleaseById,
  destroyRelease,
  getReceiverNumber,
  updateReceiverNumber,
  getInitLocation,
  updateInitLocation
};
