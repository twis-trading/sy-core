const  pool  = require("../config/database.config.js")
// const createSocketConnection = require("../config/socket.config.js")

const userAlertCMD = async (data, callback) => {
  console.log("userAlertCMD", data);
  try {
    // const socket = createSocketConnection("http://localhost:4000");
    const query = `INSERT INTO alert( payload, imei, lat, lng, alert_type, imagePath, remarks) VALUES (?,?,?,?,?,?,?)`;
    const [rows] = await pool.query(query, [
      data.payload,
      data.imei,
      data.location.lat,
      data.location.lng,
      data.alert_type,
      data.imagePath,
      data.remarks,
    ]);
    rows.affectedRows == 1
      ? callback(true, rows[0]) : callback(false, "failed on inserting");
      // ,
      //   socket.emit("tracking_start", {
      //     alert_id: "7ff32a7e-bba6-4a67-a3a4-ea0e6f009592",
      //   }))
     
  } catch (error) {
    console.error("Error in handleCheckUsername", error);
    callback(false, error);
  }
};

const getIncomingAlertsvc = async(callback) => {
  try {
    const query = `SELECT au.name, au.phone, au.email, au.address, al.payload AS al_payload, au.imei, lat, lng, alert_type, al.status, start_time, end_time, imagePath, cmd_responder, remarks, al.createdAt, al.updatedAt FROM dbsenyasv2.alert AS al
    JOIN dbsenyasv2.app_users AS au on al.imei = au.imei
     WHERE al.status = 1`;
    const [rows] = await pool.query(query);
    return rows.length > 0
      ? callback(true, rows)
      : callback(false, "incoming alert not found");
  } catch (error) {
    console.error("Error: ", error);
    callback(false, error);
  }
}

module.exports = {
  getIncomingAlertsvc,
  userAlertCMD
}



