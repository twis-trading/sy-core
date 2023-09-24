import { registration, login } from "../controllers/auth.controller.js";

export default function (app) {
  app.post("/api/auth/register", registration);
  app.post("/api/auth/login", login);
}
