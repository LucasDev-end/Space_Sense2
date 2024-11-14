var database = require("../database/config");

function buscarPorId(id) {
  var instrucaoSql = `SELECT * FROM unidade WHERE idUnidade = '${id}'`;

  return database.executar(instrucaoSql);
}

function listar() {
  var instrucaoSql = `SELECT idUnidade, empresa, cnpj_empresa, codigo_ativacao FROM unidade`;

  return database.executar(instrucaoSql);
}

function buscarPorCnpj(cnpj) {
  var instrucaoSql = `SELECT * FROM unidade WHERE cnpj_empresa = '${cnpj}'`;

  return database.executar(instrucaoSql);
}

function cadastrar(nome, cnpj) {
  var instrucaoSql = `INSERT INTO empresa (empresa, cnpj_empresa) VALUES ('${nome}', '${cnpj}')`;

  return database.executar(instrucaoSql);
}

module.exports = { buscarPorCnpj, buscarPorId, cadastrar, listar };
