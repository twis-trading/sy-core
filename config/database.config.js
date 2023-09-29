const { createPool } = require("mysql2/promise")

console.log("port",process.env.DB_PORT)
console.log("host", process.env.DB_HOST)
console.log("usr", process.env.DB_USERNAME)
console.log("pass", process.env.DB_PASSWORD)
console.log("db", process.env.DB_DATABASE)

const pool = createPool({
  port: process.env.DB_PORT || 3307,
  host: process.env.DB_HOST || "localhost",
  user: process.env.DB_USERNAME || "root",
  password: process.env.DB_PASSWORD || "root",
  database: process.env.DB_DATABASE || "dbsenyasv2",
  waitForConnections: true,
  connectionLimit: 10,
  queueLimit: 0,
}).on("error", (err) => {
  console.log("Failed to connect to Database - ", err);
});

module.exports = { pool };
