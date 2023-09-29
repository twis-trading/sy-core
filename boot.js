const {loadEnv} = require('./config/check.env.config')
loadEnv()
const express = require("express")
const app = express();
const bodyParser = require("body-parser")
const cors = require("cors")
const PORT = process.env.PORT || 3000;

const svcRoute = require("./routes/svc.routes.js")


app.use(cors());
app.use(bodyParser.json());
svcRoute(app);

app.listen(PORT, () => {
  console.log(`sy-core is listening on port ${PORT}`);
});
