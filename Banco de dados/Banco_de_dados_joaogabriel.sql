CREATE DATABASE sprint;
USE sprint;

CREATE TABLE cadastro (
idCadastro INT PRIMARY KEY AUTO_INCREMENT,
nome_empresa VARCHAR (45),
nome_responsavel VARCHAR (45),
telefone_contato CHAR (16),
CNPJ CHAR (14),
email VARCHAR (100),
senha VARCHAR (50)
);

SELECT * FROM cadastro;
DESC cadastro;

CREATE TABLE sensor (
idSensor INT PRIMARY KEY AUTO_INCREMENT,
distancia CHAR (2),
produto CHAR (1),
CONSTRAINT chkProd CHECK (produto IN (0, 1))
);

SELECT * FROM dadosSensor;
DESC dadosSensor;

CREATE TABLE produto (
id_produto INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR (45),
corredor INT,
prateleira VARCHAR (10),
marca VARCHAR (45),
CONSTRAINT chkprat CHECK (prateleira IN('baixo', 'cima', 'meio'))
);

SELECT * FROM produto;
DESC produto;