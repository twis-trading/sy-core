import { pool } from "../config/database.config.js";
import createSocketConnection from "../config/socket.config.js";

const userAlertCMD = async (data, callback) => {
  console.log("userAlertCMD", data);
  try {
    const socket = createSocketConnection("http://localhost:4000");
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
      ? (callback(true, rows[0]),
        socket.emit("tracking_start", {
          alert_id: "7ff32a7e-bba6-4a67-a3a4-ea0e6f009592",
        }))
      : callback(false, "failed on inserting");
  } catch (error) {
    console.error("Error in handleCheckUsername", error);
    callback(false, error);
  }
};

export { userAlertCMD };
