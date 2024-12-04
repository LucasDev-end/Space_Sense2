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
router.get("/listarGrafico4", function (req, res) {
    setorController.listarGrafico4(req, res);
});
router.get("/listarGrafico5", function (req, res) {
    setorController.listarGrafico5(req, res);
});
router.get("/listarGrafico6", function (req, res) {
    setorController.listarGrafico6(req, res);
});
router.get("/listarGrafico7", function (req, res) {
    setorController.listarGrafico7(req, res);
});
router.get("/exibirDiaPopular", function (req, res) {
    setorController.exibirDiaPopular(req, res);
});
router.get("/exibirDiaMenosPopular", function (req, res) {
    setorController.exibirDiaMenosPopular(req, res);
});
router.get("/exibirDia", function (req, res) {
    setorController.exibirDia(req, res);
});

module.exports = router;