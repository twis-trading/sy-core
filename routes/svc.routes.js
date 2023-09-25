import { registration, login } from "../controllers/auth.controller.js";
import {
  userAlert,
  acknowledgeAlert,
} from "../controllers/alert.controller.js";

export default function (app) {
  app.post("/api/auth/register", registration);
  app.post("/api/auth/login", login);

  app.post("/api/alert", userAlert);
  app.post("/api/acknowledgeAlert", acknowledgeAlert);
}
