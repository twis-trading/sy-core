const { registration, login } = require("../controllers/auth.controller.js")
const {
  userAlert,
  acknowledgeAlert,
} = require("../controllers/alert.controller.js")
const { getRelease, uploadAPKUpdate } = require("../controllers/appcenter.controller.js")
const {upload} = require("../config/multer.config.js")

module.exports = (app) => {
  app.post("/api/auth/register", registration);
  app.post("/api/auth/login", login);

  app.post("/api/alert", userAlert);
  app.post("/api/acknowledgeAlert", acknowledgeAlert);
  
  app.get("/api/getRelease", getRelease);
  app.post("/api/upload_update",upload.single("file"),uploadAPKUpdate)
}
