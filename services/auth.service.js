import { pool } from "../config/database.config.js";

const userLogin = async (data, callback) => {
  //check user if existing on db
  //check hash password if match
  //check type
  //update status in db
  console.log("data", data);
  const isExisting = await handleCheckUsername(data);
  console.log("isExisting", isExisting);
  if (isExisting) {
    console.log("withExisting user");
  }
};

const handleCheckUsername = async (data) => {
  try {
    const query = `SELECT id, username, email, password, status, created_at, updated_at, user_type, lname, fname, mname, age, birthdate, contact, position, log_status, user_tag FROM users WHERE username= ?`;
    const [rows, err, field] = await pool.query(query, [data.username]);
    if (err) {
      console.log("mysql err", err);
      return false;
    }
    return rows.length > 0
      ? { username: rows[0].username, password: rows[0].password }
      : false;
  } catch (error) {
    console.error("Error in handleCheckUsername", error);
  }
};
const userRegistration = () => {};

export { userLogin, userRegistration };
