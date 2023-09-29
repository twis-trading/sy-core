import { registration, login } from "../controllers/auth.controller.js";
import {
  userAlert,
  acknowledgeAlert,
} from "../controllers/alert.controller.js";
import { getRelease, uploadAPKUpdate } from "../controllers/appcenter.controller.js";
import upload from "../config/multer.config.js";
export default function (app) {
  app.post("/api/auth/register", registration);
  app.post("/api/auth/login", login);

  app.post("/api/alert", userAlert);
  app.post("/api/acknowledgeAlert", acknowledgeAlert);
  
  app.get("/api/getRelease", getRelease);
  app.post("/api/upload_update",upload.single("file"),uploadAPKUpdate)
}
