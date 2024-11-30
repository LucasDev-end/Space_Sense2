var database = require("../database/config");

function listar() {
    console.log("ACESSEI O SETOR MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function listar()");
    var instrucaoSql = `
        SELECT distancia as fluxo,DAYNAME(data_hora) as dia from medicao WHERE idMedicao <= 7;
    `;
    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}
function listarGrafico2() {
    console.log("ACESSEI O SETOR MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function listar()");
    var instrucaoSql = `
        SELECT distancia as fluxo,DAYNAME(data_hora) as dia from medicao WHERE idMedicao >= 8 and idMedicao <= 14;
    `;
    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}
function listarGrafico3() {
    console.log("ACESSEI O SETOR MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function listar()");
    var instrucaoSql = `
        SELECT distancia as fluxo,DAYNAME(data_hora) as dia from medicao WHERE idMedicao >= 15 and idMedicao <= 21;
    `;
    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}
function listarGrafico4() {
    console.log("ACESSEI O SETOR MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function listar()");
    var instrucaoSql = `
        SELECT distancia as fluxo,DAYNAME(data_hora) as dia from medicao WHERE idMedicao >= 15 and idMedicao <= 21;
    `;
    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}
function listarGrafico5() {
    console.log("ACESSEI O SETOR MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function listar()");
    var instrucaoSql = `
        SELECT distancia as fluxo,DAYNAME(data_hora) as dia from medicao WHERE idMedicao >= 15 and idMedicao <= 21;
    `;
    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}
function exibirDiaPopular(){
    var instrucaoSql = 
    `
    SELECT distancia, DAYNAME(data_hora), 
        CASE
        WHEN DAYNAME(data_hora) = 'Monday' THEN 'Segunda'
        WHEN DAYNAME(data_hora) = 'Tuesday' THEN 'Terça'
        WHEN DAYNAME(data_hora) = 'Wednesday' THEN 'Quarta'
        WHEN DAYNAME(data_hora) = 'Thursday' THEN 'Quinta'
        WHEN DAYNAME(data_hora) = 'Friday' THEN 'Sexta'
        WHEN DAYNAME(data_hora) = 'Saturday' THEN 'Sábado'
        WHEN DAYNAME(data_hora) = 'Sunday' THEN 'Domingo'
        ELSE 'Nenhum Dia Popular'
        END AS Dia
    from medicao ORDER BY distancia DESC LIMIT 1;
    `
    return database.executar(instrucaoSql)
}

module.exports = {
    listar,
    listarGrafico2,
    listarGrafico3,
    listarGrafico4,
    listarGrafico5,
    exibirDiaPopular
}
