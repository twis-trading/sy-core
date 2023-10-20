const { registration, login } = require("../controllers/auth.controller.js");
const {
  userAlert,
  acknowledgeAlert,
  getIncomingAlert
} = require("../controllers/alert.controller.js");
const {
  getRelease,
  getReleaseById,
  uploadAPKUpdate,
  destroyRelease,
  getReceiverNumber,
  updateReceiverNumber,
  getInitLocation,
  updateInitLocation
} = require("../controllers/appcenter.controller.js");
const  upload = require("../config/multer.config.js");

module.exports = (app) => {
  app.post("/api/auth/register", registration);
  app.post("/api/auth/login", login);

  //alert
  app.post("/api/alert", userAlert);
  app.get("/api/alert/getIncoming", getIncomingAlert);
  app.post("/api/acknowledgeAlert", acknowledgeAlert);

  app.get("/api/getRelease", getRelease);
  app.post("/api/getReleaseById", getReleaseById);
  app.post("/api/upload_update", upload.single("file"), uploadAPKUpdate);

  app.delete("/api/release/delete/:id", destroyRelease);
  //configs
  app.get('/api/config/getReceiverNumber',getReceiverNumber)
  app.patch('/api/config/updateReceiverNumber',updateReceiverNumber)
  app.get('/api/config/getInitLocation',getInitLocation)
  app.patch('/api/config/updateInitLocation',updateInitLocation)
};
