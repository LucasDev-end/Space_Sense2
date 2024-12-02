var database = require("../database/config");

function exibirSetorEmAlta() {
    var instrucaoSql = `
    SELECT categoria, COUNT(distancia) AS fluxo FROM vw_sensor_setor
	GROUP BY categoria
	ORDER BY fluxo DESC LIMIT 1;
    `;

    return database.executar(instrucaoSql);
}

module.exports = {
    exibirSetorEmAlta
}