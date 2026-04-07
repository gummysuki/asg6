const express = require("express");
const userRoutes = require("./src/routes/user.routes");
const app = express();
app.use(express.json());
app.disable("x-powered-by");
app.use("/api/users", userRoutes);
module.exports = app;
