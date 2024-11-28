var database = require("../database/config");

// tem o select que é retornado para a controller
function buscarMaiorFluxo() {
  var instrucaoSql = `// SELECT PARA PEGAR MAIOR FLUXO E TRAZER SEUS DADOS PARA POPULAR O GRÁFICO`;

  return database.executar(instrucaoSql);
}

module.exports = { 
    buscarMaiorFluxo
}