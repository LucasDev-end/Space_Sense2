CREATE DATABASE SpaceSense;

USE SpaceSense;

CREATE TABLE usuario (
	id int primary key auto_increment,
    nome_empresa varchar(80),
    nome_responsável varchar(80),
    cnpj char(18),
    telefone varchar(11),
    email varchar(256),
    senha varchar(50)
);

CREATE TABLE sensor (
	id int primary key auto_increment,
    distancia float, -- DISTANCIA QUE O SENSOR ESTÁ MEDINDO
    data_hora date, -- DATA E HORA QUE HOUVE ALGUM TIPO DE RETIRADA
    posicao_item varchar(10), -- prateleira que está observado (AJ4)
	situacao char(1), -- se o sensor está ativo ou não
    CONSTRAINT chksituacao CHECK (situacao IN (0, 1))
);

CREATE TABLE posicao_item (
	id int primary key auto_increment,
	corredor varchar(10), -- Corredor em que a prateleira está
    nivel int, -- Nível em que a prateleira está
    fileira int, -- Qual a fileira dentro da prateleira o item está
    qtd_de_acessos varchar (200), -- Qtd de acessos dessa posição 
    CONSTRAINT chkNivelLocacao CHECK (nivel between 1 and 5)
);