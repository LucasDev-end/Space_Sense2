var dashModel = require("../models/dashModel");

function exibirSetorEmAlta(req, res) {
    dashModel.exibirSetorEmAlta().then((resultado) => {
        res.status(200).json(resultado);
    })
}

module.exports = {
    exibirSetorEmAlta
}