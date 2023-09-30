const { userAlertCMD } = require("../services/alert.service.js")
const model = require("../models/response.model.js")

const userAlert = async (req, res) => {
  userAlertCMD(req.body, (isSuccess, data) => {
    isSuccess
      ? res.status(200).send({ ...model.successModel, message: data })
      : res.status(401).send({ ...model.failModel, message: data });
  });
};

const acknowledgeAlert = async () => {};

module.exports = {userAlert,acknowledgeAlert}