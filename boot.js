import express from "express";
const app = express();
import bodyParser from "body-parser";
import cors from 'cors'
import dotenv from 'dotenv'
const PORT = process.env.PORT || 3000;

dotenv.config()
import svcRoute from "./routes/svc.routes.js";
app.use(cors({origin:"*"}))
app.use(bodyParser.json());
app.get("/", (req, res) => {
  res.send("Express server (Server 1)");
});

svcRoute(app);



app.listen(PORT, () => {
  console.log(`sy-core is listening on port ${PORT}`);
});
