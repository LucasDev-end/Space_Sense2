var express = require("express");
var router = express.Router();

var filtragemController = require("../controllers/filtragemController");

// cria um endpoint para fazer algo
router.get("/listar/maior-fluxo", function (req, res) {
    filtragemController.buscarMaiorFluxo(req, res);
});

module.exports = router;