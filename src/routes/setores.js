var express = require("express");
var router = express.Router();

var setorController = require("../controllers/setorController");

router.get("/listar", function (req, res) {
    setorController.listar(req, res);
});
router.get("/listarGrafico2", function (req, res) {
    setorController.listarGrafico2(req, res);
});
router.get("/listarGrafico3", function (req, res) {
    setorController.listarGrafico3(req, res);
});
router.get("/exibirDiaPopular", function (req, res) {
    setorController.exibirDiaPopular(req, res);
});

module.exports = router;