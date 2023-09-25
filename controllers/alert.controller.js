import { userAlertCMD } from "../services/alert.service.js";
import model from "../models/response.model.js";

const userAlert = async (req, res) => {
  userAlertCMD(req.body, (isSuccess, data) => {
    isSuccess
      ? res.status(200).send({ ...model.successModel, message: data })
      : res.status(401).send({ ...model.failModel, message: data });
  });
};

const acknowledgeAlert = async () => {};
export { userAlert, acknowledgeAlert };
