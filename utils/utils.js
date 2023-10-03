const { v4 } = require("uuid")
const bcrpyt = require("bcryptjs")

const uuid = v4();
const hashPassword = async (password) => await bcrpyt.hash(password, 10);
const passwordCompare = async (req_password, db_password) => {
  try {
    return await bcrpyt.compare(req_password, db_password);
  } catch (err) {
    console.error(err);
    return err;
  }
};

const generateRandomString = () => {
  const characters =
    "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyz";
  let result = "";
  const charactersLength = characters.length;

  for (let i = 0; i < 6; i++) {
    const randomIndex = Math.floor(Math.random() * charactersLength);
    result += characters.charAt(randomIndex);
  }
  return result;
};

const handleVersioning = (v) =>{
const regex = /v(\d+\.\d+\.\d+)/;
  const match = v.match(regex);
  if (match) {
    return match[1];
  }
  return null; 
}
module.exports = {
  uuid,
  hashPassword,
  passwordCompare,
  generateRandomString,
  handleVersioning
};
