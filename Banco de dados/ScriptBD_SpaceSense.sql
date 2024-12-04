create database spacesense; -- CRIAÇÃO DO BANCO DE DADOS
use spacesense; -- SELEÇÃO DO BANCO DE DADOS

drop database spacesense;
DROP TABLE usuario;

create table empresa(
idEmpresa int primary key auto_increment,
razaoSocial varchar(45)
);

CREATE TABLE usuario (
	idUsuario INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	email VARCHAR(50),
	telefone CHAR(11),
	senha VARCHAR(50),
	fkUnidade INT,
	FOREIGN KEY (fkUnidade) REFERENCES unidade(idUnidade)
);

select * from usuario;

INSERT INTO usuario VALUES 
(default, 'admin', 'admin@hotmail.com', '11234567891', 'Admin@34231', null);

create table unidade (  -- CRIAÇÃO DA TABELA 'UNIDADE'
idUnidade int primary key auto_increment,
nome varchar(45),
cnpj_empresa char(14),
logradouro varchar(50),
numero int,
complemento varchar(45),
cidade varchar(45),
estado varchar(45),
bairro varchar(45),
cep char(8),
fkEmpresa int,
codigo varchar(45),
constraint fkEmpresaUnidade foreign key (fkEmpresa)
						references empresa(idEmpresa)
);

select * from unidade;

create table setor ( -- CRIAÇÃO DA TABELA 'SETOR'
idSetor int primary key auto_increment,
fkUnidade int, -- CRIAÇÃO DA CHAVE ESTRANGEIRA
constraint fkUnidadeSetor foreign key (fkUnidade)
references unidade(idUnidade), -- CONFIGURAÇÃO DA CHAVE ESTRANGEIRA
categoria varchar(45)
);

SELECT * FROM setor;

create table sensor (  -- CRIAÇÃO DA TABELA 'SENSOR'
idSensor int primary key auto_increment,
fkSetor int, -- CRIAÇÃO DA CHAVE ESTRANGEIRA
constraint fkSetorSensor foreign key (fkSetor)
references setor(idSetor) -- CONFIGURAÇÃO DA CHAVE ESTRANGEIRA
);

select * from sensor;
create table medicao ( -- CRIAÇÃO DA TABELA 'MEDIÇÃO'
idMedicao int primary key auto_increment,
fkSensor int, -- CRIAÇÃO DA CHAVE ESTRANGEIRA
constraint fkSensorMedicao foreign key (fkSensor)
references sensor(idSensor), -- CONFIGURAÇÃO DA CHAVE ESTRANGEIRA
distancia float,
data_hora datetime
);

SELECT * FROM unidade;

insert into empresa values
(default, 'Assaí Atacadista'),
(default, 'Chama Supermercados'), 
(default, 'Pão de Açúcar'),
(default, 'Mercado da Economia');

insert into unidade values
(default, 'Unidade Aricanduva', 06057223000171, 'Avenida Aricanduva', 5555, null, 'São Paulo', 'São Paulo', 'Jardim Marília', 03523020, 1, '1A2B3C'),
(default, 'Unidade Manilha', 06057223000171, 'Rua Manilha', 42, null, 'São Paulo', 'São Paulo', 'Vila Carrão', 03445050, 1, '456DEF'),
(default, 'Unidade Carlos Pereira', 67624577000145, 'Av. Waldemar Carlos Pereira', 76, null, 'São Paulo', 'São Paulo', 'Vila Dalila', 03533000, 2, 'ABC123'),
(default, 'Unidade Valle Cordeiro', 67624577000145, 'Av. Osvaldo Valle Cordeiro', 152, null, 'São Paulo', 'São Paulo', 'Jardim Brasília', 03584000, 2, '789GHI'),
(default, 'Unidade Regente Feijó', 47508411000156, 'Av. Regente Feijó', 1425, null, 'São Paulo', 'São Paulo', 'Anália Franco', 03342000, 3, 'CDF852'),
(default, 'Unidade Francisco Morato', 47508411000156, 'Av. Francisco Morato', 2385, null, 'São Paulo', 'São Paulo', 'Vila Sônia', 05520200, 3, '741QAZ'),
(default, 'Unidade Flores', 12345678000190, 'Rua das Flores', 21, 'Praça das rosas', 'São Paulo', 'São Paulo', 'Vila das Artes', 01234567, 4, '951RDZ');

select * from setor;

insert into setor values
(default, 1, 'Carne'),
(default, 1, 'Bebidas'),
(default, 1, 'Higiene'),
(default, 1, 'Hortifruti'),
(default, 1, 'Enlatados'),
(default, 1, 'Cereais'),
(default, 1, 'Padaria'),
(default, 1, 'Doces'),

(default, 2, 'Carne'),
(default, 2, 'Bebidas'),
(default, 2, 'Higiene'),
(default, 2, 'Hortifruti'),
(default, 2, 'Enlatados'),
(default, 2, 'Cereais'),
(default, 2, 'Padaria'),
(default, 2, 'Doces'),
(default, 2, 'Açougue'),

(default, 3, 'Carne'),
(default, 3, 'Bebidas'),
(default, 3, 'Higiene'),
(default, 3, 'Hortifruti'),
(default, 3, 'Enlatados'),
(default, 3, 'Cereais'),
(default, 3, 'Padaria'),
(default, 3, 'Doces'),

(default, 4, 'Carne'),
(default, 4, 'Bebidas'),
(default, 4, 'Higiene'),
(default, 4, 'Hortifruti'),
(default, 4, 'Enlatados'),
(default, 4, 'Cereais'),
(default, 4, 'Padaria'),
(default, 4, 'Doces'),

(default, 5, 'Carne'),
(default, 5, 'Bebidas'),
(default, 5, 'Higiene'),
(default, 5, 'Hortifruti'),
(default, 5, 'Enlatados'),
(default, 5, 'Cereais'),
(default, 5, 'Padaria'),
(default, 5, 'Doces'),

(default, 6, 'Carne'),
(default, 6, 'Bebidas'),
(default, 6, 'Higiene'),
(default, 6, 'Hortifruti'),
(default, 6, 'Enlatados'),
(default, 6, 'Cereais'),
(default, 6, 'Padaria'),
(default, 6, 'Doces'),

(default, 7, 'Carne'),
(default, 7, 'Bebidas'),
(default, 7, 'Higiene'),
(default, 7, 'Hortifruti'),
(default, 7, 'Enlatados'),
(default, 7, 'Cereais'),
(default, 7, 'Padaria'),
(default, 7, 'Doces');

select * from setor;

insert into sensor values
(default, 1),
(default, 1),
(default, 2),
(default, 2),
(default, 3),
(default, 3),
(default, 4),
(default, 4),
(default, 5),
(default, 5),
(default, 6),
(default, 6),
(default, 7),
(default, 7);

-- Setor 1
INSERT INTO medicao (fkSensor, distancia, data_hora) VALUES
(1,2, 11, '2024-11-25 08:30:00'),
(2,3, 20, '2024-11-26 08:35:00'),
(3,2, 15, '2024-11-27 08:40:00'),
(4,5, 39, '2024-11-28 08:45:00'),
(5,6, 22, '2024-11-29 08:50:00'),
(6,7, 13, '2024-11-30 08:55:00'),
(7,8, 24, '2024-12-01 09:00:00');

-- Setor 2
INSERT INTO medicao (idMedicao,fkSensor, distancia, data_hora) VALUES
(8,8, 91, '2024-12-02 08:30:00'),
(9,9, 80, '2024-12-03 08:35:00'),
(10,10, 15, '2024-12-04 08:40:00'),
(11,11, 29, '2024-12-05 08:45:00'),
(12,12, 12, '2024-12-06 08:50:00'),
(13,13, 53, '2024-12-07 08:55:00'),
(14,14, 64, '2024-12-08 09:00:00');

-- Setor 3
INSERT INTO medicao (idMedicao,fkSensor, distancia, data_hora) VALUES
(15,1, 11, '2024-12-09 08:30:00'),
(16,2, 20, '2024-12-10 08:35:00'),
(17,3, 15, '2024-12-11 08:40:00'),
(18,4, 39, '2024-12-12 08:45:00'),
(19,5, 22, '2024-12-13 08:50:00'),
(20,6, 43, '2024-12-14 08:55:00'),
(21,7, 10, '2024-12-15 09:00:00');

-- Setor 4
INSERT INTO medicao (idMedicao,fkSensor, distancia, data_hora) VALUES
(22,8, 50, '2024-12-16 08:30:00'),
(23,9, 30, '2024-12-17 08:35:00'),
(24,10, 80, '2024-12-18 08:40:00'),
(25,11, 20, '2024-12-19 08:45:00'),
(26,12, 10, '2024-12-20 08:50:00'),
(27,13, 15, '2024-12-21 08:55:00'),
(28,14, 45, '2024-12-22 09:00:00');

-- Setor 5
INSERT INTO medicao (idMedicao,fkSensor, distancia, data_hora) VALUES
(29,1, 60, '2024-12-23 08:30:00'),
(30,2, 20, '2024-12-24 08:35:00'),
(31,3, 15, '2024-12-25 08:40:00'),
(32,4, 49, '2024-12-26 08:45:00'),
(33,5, 72, '2024-12-27 08:50:00'),
(34,6, 41, '2024-12-28 08:55:00'),
(35,7, 10, '2024-12-29 09:00:00');

-- Setor 6
INSERT INTO medicao (idMedicao,fkSensor, distancia, data_hora) VALUES
(36,8, 11.2, '2024-12-30 08:30:00'),
(37,9, 20.5, '2024-12-31 08:35:00'),
(38,10, 15.8, '2025-01-01 08:40:00'),
(39,11, 39.0, '2024-01-02 08:45:00'),
(40,12, 22.1, '2024-01-03 08:50:00'),
(41,13, 43.9, '2024-01-04 08:55:00'),
(42,14, 10, '2024-01-05 09:00:00');

-- Setor 7
INSERT INTO medicao (idMedicao,fkSensor, distancia, data_hora) VALUES
(43,1, 11, '2024-01-06 08:30:00'),
(44,2, 27, '2024-01-07 08:35:00'),
(45,3, 40, '2024-01-08 08:40:00'),
(46,4, 52, '2024-01-09 08:45:00'),
(47,5, 30, '2024-01-10 08:50:00'),
(48,6, 13, '2024-01-11 08:55:00'),
(49,7, 10, '2024-01-12 09:00:00');

select * from sensor;

CREATE VIEW vw_usuario_unidade
AS
SELECT usuario.nome AS usuario ,usuario.email AS 'Email',unidade.empresa AS 'Nome da Unidade',unidade.logradouro as 'Logradouro',
unidade.numero AS 'Número', unidade.cep AS 'CEP' FROM usuario JOIN unidade ON usuario.fkUnidade = unidade.idUnidade;

SELECT * FROM vw_usuario_unidade;

CREATE VIEW vw_sensor_setor
AS
SELECT sensor.idSensor,setor.categoria,distancia AS 'Fluxo de Pessoas', DAYNAME(data_hora) AS 'Dia da Semana' FROM medicao 
JOIN sensor ON medicao.fkSensor = sensor.idSensor JOIN setor ON sensor.fkSetor = setor.idSetor ORDER BY idSensor;

SELECT * FROM vw_sensor_setor;

CREATE VIEW vw_semana
AS
    SELECT distancia as fluxo, DAYNAME(data_hora),
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
FROM medicao;

select * from vw_semana order by fluxo desc LIMIT 1;
select * from vw_semana order by fluxo LIMIT 1;

CREATE VIEW vw_setor_baixa AS
    SELECT categoria, COUNT(distancia) AS fluxo FROM medicao join sensor on medicao.fkSensor = sensor.idSensor join setor on sensor.fkSetor = setor.idSetor
	GROUP BY categoria
	ORDER BY fluxo LIMIT 1;

SELECT * FROM vw_setor_baixa;

CREATE VIEW vw_setor_alta AS
    SELECT categoria, COUNT(distancia) AS fluxo FROM medicao join sensor on medicao.fkSensor = sensor.idSensor join setor on sensor.fkSetor = setor.idSetor
	GROUP BY categoria
	ORDER BY fluxo DESC LIMIT 1;

SELECT * FROM vw_setor_alta;

CREATE VIEW vw_media AS
SELECT categoria, COUNT(distancia) AS fluxo FROM medicao 
join sensor on medicao.fkSensor = sensor.idSensor join setor on sensor.fkSetor = setor.idSetor GROUP BY categoria;

SELECT * FROM vw_media;

CREATE VIEW vw_dash AS
SELECT categoria, COUNT(distancia) AS fluxo FROM medicao join sensor on medicao.fkSensor = sensor.idSensor join setor on sensor.fkSetor = setor.idSetor
	GROUP BY categoria;
    
SELECT * FROM vw_dash;

CREATE VIEW vw_fluxo_setor AS
SELECT idMedicao,distancia as fluxo,DAYNAME(data_hora) as dia from medicao;

SELECT * FROM vw_fluxo_setor;
