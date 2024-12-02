var express = require("express");
var router = express.Router();

var dashController = require("../controllers/dashController");

router.get("/exibirSetorEmAlta", function (req, res) {
    dashController.exibirSetorEmAlta(req, res);
})

module.exports = router;