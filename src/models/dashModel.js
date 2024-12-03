var database = require("../database/config");

function exibirSetorEmAlta() {
    var instrucaoSql = `
    SELECT * FROM vw_setor_alta;
    `;

    return database.executar(instrucaoSql);
}

function exibirSetorEmBaixa() {
    var instrucaoSql = `
    SELECT * FROM vw_setor_baixa;
    `;

    return database.executar(instrucaoSql);
}
function exibirMedia(){
    var instrucaoSql = 
    `
    SELECT * FROM vw_media;
    `

    return database.executar(instrucaoSql);
}

function exibirGraficoDash() {
    var instrucaoSql = `
    SELECT * FROM vw_dash;
    `;

    return database.executar(instrucaoSql);
}

module.exports = {
    exibirSetorEmAlta,
    exibirSetorEmBaixa,
    exibirGraficoDash,
    exibirMedia
}