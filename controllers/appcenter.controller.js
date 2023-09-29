import { updateAPKsvc, getReleasesvc } from "../services/appcenter.service.js";
import model from "../models/response.model.js";
const uploadAPKUpdate = async (req, res) => {
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

const getRelease = async (req, res) => {
    getReleasesvc((isSuccess, data) => {
        isSuccess
          ? res.status(200).send({ ...model.successModel, message: data })
          : res.status(400).send({ ...model.failModel, message: data });
      });
};

export { uploadAPKUpdate, getRelease };
