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
      data.description,
    ]);
    rows.affectedRows == 1
      ? callback(true, rows[0])
      : callback(false, "failed on inserting");
  } catch (error) {
    console.error("Error", error);
    callback(false, error);
  }
};
const getReleaseByIdsvc = async (data, callback) => {
  try {
    const query = `SELECT id, payload, version, filename, size, path, description, createdAt, updatedAt FROM appcenter.app_update WHERE payload = ? `;
    const [rows] = await pool.query(query, [data.id]);
    return rows.length > 0
      ? callback(true, rows)
      : callback(false, "Release not found");
  } catch (error) {
    console.error("Error: ", error);
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

const destroyReleasesvc = async (data, callback) => {
  try {
    const query = `DELETE FROM appcenter.app_update WHERE payload= '${data}'`;
    const [rows] = await pool.query(query);
    rows.affectedRows == 1
      ? callback(true, rows[0])
      : callback(false, "failed on deletion");
  } catch (error) {
    console.error("Error: ", error);
    callback(false, error);
  }
};

const getReceiverNumbersvc = async (callback) => {
  try {
    const query = `SELECT id, provider, number, isEnabled, createdAt, updatedAt FROM appcenter.receiver WHERE isEnabled = 1 ORDER BY createdAt DESC LIMIT 1`;
    const [rows] = await pool.query(query);
    return rows.length > 0
      ? callback(true, rows)
      : callback(false, "Receiver number not found");
  } catch (error) {
    console.error("Error: ", error);
    callback(false, error);
  }
};

const updateReceiverNumbersvc = async (data, callback) => {
  try {
    const query = `UPDATE appcenter.receiver SET number = ?, updatedAt = ? WHERE payload = ?`;
    const [rows] = await pool.query(query, [
      data.number,
      utils.updatedAtTimestamp(),
      data.payload,
    ]);
    rows.affectedRows == 1
      ? callback(true, rows[0])
      : callback(false, "failed on update");
  } catch (error) {
    console.error("Error: ", error);
    callback(false, error);
  }
};

const getInitLocationsvc = async(callback) => {
  try {
    const query = `SELECT id, payload,lat, lng, tag, isEnabled, createdAt, updatedAt FROM appcenter.initial_location WHERE isEnabled = 1 ORDER BY createdAt DESC LIMIT 1`;
    const [rows] = await pool.query(query);
    return rows.length > 0
      ? callback(true, rows)
      : callback(false, "location not found");
  } catch (error) {
    console.error("Error: ", error);
    callback(false, error);
  }
}

const updateInitLocationsvc = async(data,callback) => {
  try {
    const query = `UPDATE appcenter.initial_location SET lat = ?, lng = ?, updatedAt =? WHERE payload = ?`;
    const [rows] = await pool.query(query, [
      data.location.lat,
      data.location.lng,
      utils.updatedAtTimestamp(),
      data.payload,
    ]);
    rows.affectedRows == 1
      ? callback(true, rows[0])
      : callback(false, "failed on update");
  } catch (error) {
    console.error("Error: ", error);
    callback(false, error);
  }
}
module.exports = {
  getReleasesvc,
  getReleaseByIdsvc,
  updateAPKsvc,
  destroyReleasesvc,
  getReceiverNumbersvc,
  updateReceiverNumbersvc,
  getInitLocationsvc,
  updateInitLocationsvc
};



