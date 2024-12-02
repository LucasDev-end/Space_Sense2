var express = require("express");
var router = express.Router();

var dashController = require("../controllers/dashController");

router.get("/exibirSetorEmAlta", function (req, res) {
    dashController.exibirSetorEmAlta(req, res);
})
router.get("/exibirSetorEmBaixa", function (req, res) {
    dashController.exibirSetorEmBaixa(req, res);
})

module.exports = router;