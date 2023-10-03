const pool = require("../config/database.config.js");
const utils = require("../utils/utils.js");

const updateAPKsvc = async (data, callback) => {
  console.log("data", data);
  // const fileName = req.file.originalname;
  try {
    const query = `INSERT INTO appcenter.app_update
        (payload,version,filename,size,path,description) VALUES (?,?,?,?,?,?)`;
    const [rows] = await pool.query(query, [
      utils.uuid,
      utils.handleVersioning(data.originalname),
      data.originalname,
      data.size,
      data.path,
      data.description
    ]);
    rows.affectedRows == 1
      ? callback(true, rows[0])
      : callback(false, "failed on inserting");
  } catch (error) {
    console.error("Error", error);
    callback(false, error);
  }
};
const getReleasesvc = async (callback) => {
  try {
    const query = `SELECT id, payload, version, filename, size, path, description, createdAt, updatedAt FROM appcenter.app_update order by createdAt desc limit 5 `;
    const [rows] = await pool.query(query);
    return rows.length > 0
      ? callback(true, rows)
      : callback(false, "Release not found");
  } catch (error) {
    console.error("Error: ", error);
    callback(false, error);
  }
};

module.exports = { getReleasesvc, updateAPKsvc };
