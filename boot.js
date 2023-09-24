import express from "express";
const app = express();
import bodyParser from "body-parser";

import socketIoClient from "socket.io-client";
const PORT = process.env.PORT || 3000;
const socket = socketIoClient("http://localhost:8080"); // Connect to the Socket.IO server (Server 2)

import config from "./config/server.config.js";
import svcRoute from "./routes/svc.routes.js";

app.use(bodyParser.json());
app.get("/", (req, res) => {
  res.send("Express server (Server 1)");
});

svcRoute(app);
// Example route to emit a message to the Socket.IO server
// app.get("/emit-message", (req, res) => {
//   const message = "Hello from Express server (Server 1)";

//   // Emit the message to the Socket.IO server (Server 2)
//   socket2.emit("message2", message);
//   res.send("Message emitted to Socket.IO server (Server 2)");
// });

socket.on("test_to_serverApi", (data) => {
  console.error("Android to SocketServer to Server Api: Success", data);
  socket.emit("serverApi_to_socketServer")
});

socket.on("connect_error", (error) => {
  console.error("Socket.IO connection error:", error);
});

app.listen(PORT, () => {
  console.log(`sy-core is listening on port ${PORT}`);
});
