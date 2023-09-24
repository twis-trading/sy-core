import model from "../models/response.model.js";
import { userLogin } from "../services/auth.service.js";

const login = (req, res) => {
  userLogin(req.body, (isSuccess, data) => {
    isSuccess
      ? res.status(200).send(model.successModel)
      : res.status(401).send({ ...model.failModel, error: data });
  });
};
const registration = (req, res) => {};

export { login, registration };
