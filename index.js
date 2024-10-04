const express = require("express");
const app = express();
const port = 5000;

app.use(express.json());

app.get("/", (req, res) => res.send("Hello from service!"));

app.listen(port, () => console.log(`Service running on port ${port}`));
