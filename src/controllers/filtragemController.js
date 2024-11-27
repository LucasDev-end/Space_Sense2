var filtragemModel = require("../models/filtragemModel");

// a rota chama alguém da controller para se comunicar com o banco e validar regra de negócio
function buscarMaiorFluxo(req, res) {
  filtragemModel.buscarMaiorFluxo().then((resultado) => {
    res.status(200).json(resultado);
  });
}

module.exports = {
    buscarMaiorFluxo
  };