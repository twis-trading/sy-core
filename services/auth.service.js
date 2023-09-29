const { pool } = require("../config/database.config.js")
const utils = require("../utils/utils.js")

exports.webLogin = async (data, callback) => {
  console.log("data", data);
  const isExisting = await handleCheckUsername(data);
  console.log("isExisting", isExisting);
  if (isExisting) {
    console.log("withExisting user");
    const isMatch = await utils.passwordCompare(
      data.password,
      isExisting.password
    );
    console.log("password is match", isMatch);
    if (isMatch) {
      callback(true, isExisting);
    } else {
      callback(false, "Incorrect Password");
      console.log("Incorrect Password!");
    }
  }
};

const handleCheckUsername = async (data) => {
  try {
    const query = `SELECT id, payload, username, password, name, email, age, address, user_type, status, createdAt, updatedAt FROM dbsenyasv2.users WHERE username = ?`;
    const [rows] = await pool.query(query, [data.username]);
    return rows.length > 0 ? rows[0] : false;
  } catch (error) {
    console.error("Error in handleCheckUsername", error);
    return false;
  }
};

exports.webRegistration = async (data, callback) => {
  try {
    const query = `INSERT INTO users(payload, username, password, name, email, age, address, user_type) VALUES (?,?,?,?,?,?,?,?)`;
    const [rows] = await pool.query(query, [
      utils.uuid,
      data.username,
      await utils.hashPassword(data.password),
      data.name,
      data.email,
      data.age,
      data.address,
      data.user_type,
    ]);
    console.log("rows", rows.affectedRows);
    rows.affectedRows == 1
      ? callback(true, rows[0])
      : callback(false, "failed on inserting");
  } catch (error) {
    console.error("Error in webRegistration", error);
    callback(false, error);
  }
};

exports.appLogin = async (data, callback) => {
  const isExisting = await handleCheckUsernameApp(data);
  console.log("isExisting", isExisting);
  if (isExisting) {
    console.log("appuser is existing");
    try {
      const query = `SELECT a.id, a.payload, a.imei, a.name, a.phone, a.email, a.address,a.createdAt AS createdAt_appUsr, a.status,cl.code, cl.isValid, cl.createdAt AS createdAt_code, cl.updatedAt FROM app_users a JOIN code_list cl on a.payload=cl.payload  WHERE cl.code= ? AND (a.payload = ? OR a.imei = ?) AND cl.isValid = 1`;
      const [rows] = await pool.query(query, [
        data.code,
        data.payload,
        data.imei,
      ]);
      rows.length > 0
        ? callback(true, rows[0])
        : callback(false, "Incorrect Code");
    } catch (error) {
      console.error("Error in appLogin", error);
      callback(false, error);
    }
  } else {
    callback(false, "Appuser is not existing");
    console.log("appuser is not existing");
  }
};
const handleCheckUsernameApp = async (data) => {
  try {
    const query = `SELECT id, payload, imei, name, phone, email, address, status, createdAt, updatedAt FROM app_users WHERE payload= ? AND imei= ?`;
    const [rows] = await pool.query(query, [data.payload, data.imei]);
    return rows.length > 0 ? rows[0] : false;
  } catch (error) {
    console.error("Error in handleCheckUsernameApp", error);
    return false;
  }
};
exports.appRegistration = async (data, callback) => {
  console.log("data", data);
  try {
    const query = `INSERT INTO app_users(payload, imei, name, phone, email, address) VALUES (?,?,?,?,?,?)`;
    const [rows] = await pool.query(query, [
      utils.uuid,
      data.imei,
      data.name,
      data.phone,
      data.email,
      data.address,
    ]);
    console.log("rows", rows.affectedRows);
    rows.affectedRows == 1
      ? callback(true, rows[0])
      : callback(false, "failed on inserting");
  } catch (error) {
    console.error("Error in handleCheckUsername", error);
    callback(false, error);
  }
}
