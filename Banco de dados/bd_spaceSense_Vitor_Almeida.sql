CREATE DATABASE SpaceSense;

USE SpaceSense;

CREATE TABLE Sensor(
	idSensor INT PRIMARY KEY AUTO_INCREMENT,
    tipo VARCHAR(50),
    distancia DECIMAL (5,2),
    dataHora DATETIME
);

CREATE TABLE Empresa(
	idEmpresa INT PRIMARY KEY AUTO_INCREMENT,
    nomeEmpresa VARCHAR(50),
    nomeResponsabel VARCHAR(50),
    telefone CHAR(16),
    email VARCHAR(256),
    senha VARCHAR(50)
);

CREATE TABLE Prateleira(
	idPrateleira INT PRIMARY KEY AUTO_INCREMENT,
    corredor INT,
    setor INT,
    qtdMovimentacao INT,
    nivel INT,
	CONSTRAINT chkNivel CHECK (nivel IN(1,2,3,4,5,6,7,8,9,10))
);