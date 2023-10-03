const {loadEnv} = require('./config/check.env.config')
loadEnv()
const express = require("express")
const app = express();
const bodyParser = require("body-parser")
const cors = require("cors")
const PORT = process.env.PORT || 3000;
const CORS_ORIGIN = process.env.CORS_ORIGIN || ["http://localhost:5173"]
const svcRoute = require("./routes/svc.routes.js")

console.log("ORIGIN",CORS_ORIGIN)
const corsOptions = {
  origin: ['http://45.76.157.112:4200',"http://127.0.0.1","http://localhost:5173","http://localhost:4200"]
};

app.use(bodyParser.json());
app.use(cors(corsOptions));
svcRoute(app);

app.listen(PORT, () => {
  console.log(`sy-core is listening on port ${PORT}`);
});

//do nothing