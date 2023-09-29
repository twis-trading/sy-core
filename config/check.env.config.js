const fs = require("fs")
const path = require("path")
const dotenv = require("dotenv")

const loadEnv = () => {
    const environment = process.env.NODE_ENV || 'local';
    const envFilePath = path.resolve(`.env.${environment}`);
    console.log("ENV",environment)
    console.log("envFilePath",envFilePath)

    if (fs.existsSync(envFilePath)) {
        dotenv.config({ path: envFilePath });
        console.log("envtest", process.env.DB_PORT);
    } else {
        console.error(`Environment file .env.${environment} not found.`);
        process.exit(1);
    }
}
module.exports = {loadEnv}
