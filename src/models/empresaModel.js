var database = require("../database/config");

function buscarPorId(id) {
  var instrucaoSql = `SELECT * FROM unidade WHERE idUnidade = '${id}'`;

  return database.executar(instrucaoSql);
}

function listar() {
  console.log(instrucaoSql)

  var instrucaoSql = `SELECT idUnidade,  nome,  cnpj_empresa,  logradouro,  numero,  complemento,  cidade,  estado,  bairro,  cep,  fkEmpresa,  codigo FROM unidade`;

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
