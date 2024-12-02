var dashModel = require("../models/dashModel");

function exibirSetorEmAlta(req, res) {
    dashModel.exibirSetorEmAlta().then((resultado) => {
        res.status(200).json(resultado);
    })
}

function exibirSetorEmBaixa(req, res) {
    dashModel.exibirSetorEmBaixa().then((resultado) => {
        res.status(200).json(resultado);
    })
}

function exibirGraficoDash(req, res) {
    dashModel.exibirGraficoDash().then((resultado) => {
        res.status(200).json(resultado);
    })
}

module.exports = {
    exibirSetorEmAlta,
    exibirSetorEmBaixa,
    exibirGraficoDash
}