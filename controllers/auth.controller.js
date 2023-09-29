const model = require("../models/response.model.js")
const {
  webLogin,
  webRegistration,
  appLogin,
  appRegistration,
} = require("../services/auth.service.js")

const login = (req, res) => {
  console.log("payload login: ", req.body);
  if (req.body.login_type == 1) {
    // app login
    appLogin(req.body, (isSuccess, data) => {
      isSuccess
        ? res.status(200).send({ ...model.successModel, message: data })
        : res.status(401).send({ ...model.failModel, message: data });
    });
  } else if (req.body.login_type == 2) {
    // web login
    webLogin(req.body, (isSuccess, data) => {
      isSuccess
        ? res.status(200).send({ ...model.successModel, message: data })
        : res.status(401).send({ ...model.failModel, message: data });
    });
  } else {
    res
      .status(401)
      .send({ ...model.failModel, message: "Login Type is Undefined" });
  }
};
const registration = (req, res) => {
  console.log("payload login: ", req.body);
  if (req.body.registration_type == 1) {
    appRegistration(req.body, (isSuccess, data) => {
      isSuccess
        ? res.status(200).send({ ...model.successModel, message: data })
        : res.status(401).send({ ...model.failModel, message: data });
    });
  } else if (req.body.registration_type == 2) {
    webRegistration(req.body, (isSuccess, data) => {
      isSuccess
        ? res.status(201).send({ ...model.successModel, message: data })
        : res.status(200).send({ ...model.failModel, message: data });
    });
  } else {
    res
      .status(401)
      .send({ ...model.failModel, message: "Registration Type is Undefined" });
  }
};

module.exports = { login, registration };
