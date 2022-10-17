import express from "express";
import * as http from "http";
import * as dotenv from "dotenv";
import { env } from "process";
import { WebSocketServer } from "ws";

dotenv.config();

const app = express();
const server = http.createServer(app);

const wss = new WebSocketServer({ server: server });

wss.on("connection", (ws) => {
  console.log("a new client connected!");
  ws.send("Welcome New Client!");
  ws.on("message", (data) => {
    console.log(`data from client: ${data}`);
  });
});

app.get("/", (req, res) => {
  res.send("Hello, World!");
});

app.listen(env.PORT, () => {
  console.log(`server is running on port ${env.PORT}`);
});
