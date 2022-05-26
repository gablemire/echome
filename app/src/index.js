const express = require("express");

const PORT = 8583;

const app = express();

app.get("/", (_, res) => {
  const message = process.env.MESSAGE ?? "Hello, world!";

  res.status(200).json({
    message,
  });
});

app.all("/check", (_, res) => {
  res.sendStatus(200);
});

app.all("/ready", (_, res) => {
  res.status(200).send("Ready!");
});

const server = app.listen(PORT, () => {
  console.log(`Listening on port ${PORT}`);
});

process.on("SIGINT", () => {
  server.close((err) => {
    if (err) {
      console.error("Error closing server", err);
      process.exit(1);
    }

    process.exit(0);
  });
});
