DROP DATABASE IF EXISTS spacesense;
create database spacesense; -- CRIAÇÃO DO BANCO DE DADOS
use spacesense; -- SELEÇÃO DO BANCO DE DADOS

create table unidade (  -- CRIAÇÃO DA TABELA 'UNIDADE'
idUnidade int primary key auto_increment,
empresa varchar(45),
cnpj_empresa char(14),
logradouro varchar(50),
numero int,
complemento varchar(45),
cidade varchar(45),
estado varchar(45),
bairro varchar(45),
cep char(8),
codigo_ativacao char(6)
);

select * from unidade;

create table usuario (  -- CRIAÇÃO DA TABELA 'USUARIO'
idUsuario int primary key auto_increment,
nome varchar(80),
telefone varchar(16),
email varchar(100),
senha varchar(50),
fkUnidade int,
FOREIGN KEY (fkUnidade) REFERENCES unidade(idUnidade)
);

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

SELECT * FROM medicao;
TRUNCATE TABLE medicao;

SELECT * FROM unidade;

insert into unidade values
(default, 'Assaí Atacadista', 06057223000171, 'Avenida Aricanduva', 5555, null, 'São Paulo', 'São Paulo', 'Jardim Marília', 03523020, '1A2B3C'),
(default, 'Assaí Atacadista', 06057223000171, 'Rua Manilha', 42, null, 'São Paulo', 'São Paulo', 'Vila Carrão', 03445050, '4D5E6F'),
(default, 'Chama Supermercados', 67624577000145, 'Av. Waldemar Carlos Pereira', 76, null, 'São Paulo', 'São Paulo', 'Vila Dalila', 03533000, '7G8H9I'),
(default, 'Chama Supermercados', 67624577000145, 'Av. Osvaldo Valle Cordeiro', 152, null, 'São Paulo', 'São Paulo', 'Jardim Brasília', 03584000, '123ABC'),
(default, 'Pão de Açúcar', 47508411000156, 'Av. Regente Feijó', 1425, null, 'São Paulo', 'São Paulo', 'Anália Franco', 03342000, '456DEF'),
(default, 'Pão de Açúcar', 47508411000156, 'Av. Francisco Morato', 2385, null, 'São Paulo', 'São Paulo', 'Vila Sônia', 05520200, '789GHI'),
(default, 'Mercado da Economia', 12345678000190, 'Rua das Flores', 21, 'Praça das rosas', 'São Paulo', 'São Paulo', 'Vila das Artes', 01234567, 'ABC123');

insert into setor values
(default, 1, 'Açougue'),
(default, 1, 'Frios e laticínios'),
(default, 1, 'Adega e bebidas'),
(default, 1, 'Higiene e limpeza'),
(default, 1, 'Hortifruti e mercearia'),
(default, 1, 'Padaria'),
(default, 1, 'Enlatados'),
(default, 1, 'Cereais'),
(default, 1, 'Rotisseria'),
(default, 2, 'Açougue'),
(default, 2, 'Frios e laticínios'),
(default, 2, 'Adega e bebidas'),
(default, 2, 'Higiene e limpeza'),
(default, 2, 'Hortifruti e mercearia'),
(default, 2, 'Padaria'),
(default, 2, 'Enlatados'),
(default, 2, 'Cereais'),
(default, 2, 'Rotisseria'),
(default, 3, 'Açougue'),
(default, 3, 'Frios e laticínios'),
(default, 3, 'Adega e bebidas'),
(default, 3, 'Higiene e limpeza'),
(default, 3, 'Hortifruti e mercearia'),
(default, 3, 'Padaria'),
(default, 3, 'Enlatados'),
(default, 3, 'Cereais'),
(default, 3, 'Rotisseria'),
(default, 4, 'Açougue'),
(default, 4, 'Frios e laticínios'),
(default, 4, 'Adega e bebidas'),
(default, 4, 'Higiene e limpeza'),
(default, 4, 'Hortifruti e mercearia'),
(default, 4, 'Padaria'),
(default, 4, 'Enlatados'),
(default, 4, 'Cereais'),
(default, 4, 'Rotisseria'),
(default, 5, 'Açougue'),
(default, 5, 'Frios e laticínios'),
(default, 5, 'Adega e bebidas'),
(default, 5, 'Higiene e limpeza'),
(default, 5, 'Hortifruti e mercearia'),
(default, 5, 'Padaria'),
(default, 5, 'Enlatados'),
(default, 5, 'Cereais'),
(default, 5, 'Rotisseria'),
(default, 5, 'Açougue'),
(default, 5, 'Frios e laticínios'),
(default, 5, 'Adega e bebidas'),
(default, 5, 'Higiene e limpeza'),
(default, 5, 'Hortifruti e mercearia'),
(default, 5, 'Padaria'),
(default, 5, 'Enlatados'),
(default, 5, 'Cereais'),
(default, 5, 'Rotisseria'),
(default, 6, 'Açougue'),
(default, 6, 'Frios e laticínios'),
(default, 6, 'Adega e bebidas'),
(default, 6, 'Higiene e limpeza'),
(default, 6, 'Hortifruti e mercearia'),
(default, 6, 'Padaria'),
(default, 6, 'Cereais'),
(default, 6, 'Rotisseria'),
(default, 7, 'Açougue'),
(default, 7, 'Frios e laticínios'),
(default, 7, 'Adega e bebidas'),
(default, 7, 'Higiene e limpeza'),
(default, 7, 'Hortifruti e mercearia'),
(default, 7, 'Padaria');

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
(default, 7),
(default, 8),
(default, 8),
(default, 9),
(default, 9),
(default, 10),
(default, 10),
(default, 11),
(default, 11),
(default, 12),
(default, 12),
(default, 13),
(default, 13),
(default, 14),
(default, 14),
(default, 15),
(default, 15),
(default, 16),
(default, 16),
(default, 17),
(default, 17),
(default, 18),
(default, 18),
(default, 19),
(default, 19),
(default, 20),
(default, 20),
(default, 21),
(default, 21),
(default, 22),
(default, 22),
(default, 23),
(default, 23),
(default, 24),
(default, 24),
(default, 25),
(default, 25),
(default, 26),
(default, 26),
(default, 27),
(default, 27),
(default, 28),
(default, 28),
(default, 29),
(default, 29),
(default, 30),
(default, 30),
(default, 31),
(default, 31),
(default, 32),
(default, 32),
(default, 33),
(default, 33),
(default, 34),
(default, 34),
(default, 35),
(default, 35),
(default, 36),
(default, 36),
(default, 37),
(default, 37),
(default, 38),
(default, 38),
(default, 39),
(default, 39),
(default, 40),
(default, 40),
(default, 41),
(default, 41),
(default, 42),
(default, 42),
(default, 43),
(default, 43),
(default, 44),
(default, 44),
(default, 45),
(default, 45),
(default, 46),
(default, 46),
(default, 47),
(default, 47),
(default, 48),
(default, 48),
(default, 49),
(default, 49),
(default, 50),
(default, 50),
(default, 51),
(default, 51),
(default, 52),
(default, 52),
(default, 53),
(default, 53),
(default, 54),
(default, 54),
(default, 55),
(default, 55),
(default, 56),
(default, 56),
(default, 57),
(default, 57),
(default, 58),
(default, 58),
(default, 59),
(default, 59),
(default, 60),
(default, 60),
(default, 61),
(default, 61),
(default, 62),
(default, 62),
(default, 63),
(default, 63),
(default, 64),
(default, 64),
(default, 65),
(default, 65),
(default, 66),
(default, 66),
(default, 67),
(default, 67),
(default, 68),
(default, 68);

-- Setor 1
INSERT INTO medicao (fkSensor, distancia, data_hora) VALUES
(1, 11.2, '2024-11-25 08:30:00'),
(2, 20.5, '2024-11-26 08:35:00'),
(3, 15.8, '2024-11-27 08:40:00'),
(4, 39.0, '2024-11-28 08:45:00'),
(5, 22.1, '2024-11-29 08:50:00'),
(6, 13.9, '2024-11-30 08:55:00'),
(7, 24.3, '2024-12-01 09:00:00');

-- Setor 2
INSERT INTO medicao (fkSensor, distancia, data_hora) VALUES
(8, 91.2, '2024-12-02 08:30:00'),
(9, 80.5, '2024-12-03 08:35:00'),
(10, 15.8, '2024-12-04 08:40:00'),
(11, 29.0, '2024-12-05 08:45:00'),
(12, 12.1, '2024-12-06 08:50:00'),
(13, 53.9, '2024-12-07 08:55:00'),
(14, 64.3, '2024-12-08 09:00:00');

-- Setor 3
INSERT INTO medicao (fkSensor, distancia, data_hora) VALUES
(15, 11.2, '2024-12-09 08:30:00'),
(16, 20.5, '2024-12-10 08:35:00'),
(17, 15.8, '2024-12-11 08:40:00'),
(18, 39.0, '2024-12-12 08:45:00'),
(19, 22.1, '2024-12-13 08:50:00'),
(20, 43.9, '2024-12-14 08:55:00'),
(21, 10, '2024-12-15 09:00:00');

CREATE VIEW vw_usuario_unidade
AS
SELECT usuario.nome AS usuario ,usuario.email AS 'Email',unidade.empresa AS 'Nome da Unidade',unidade.logradouro as 'Logradouro',
unidade.numero AS 'Número', unidade.cep AS 'CEP' FROM usuario JOIN unidade ON usuario.fkUnidade = unidade.idUnidade;

SELECT * FROM vw_usuario_unidade WHERE usuario = 'Lucas';

CREATE VIEW vw_sensor_setor
AS
SELECT sensor.idSensor,setor.categoria,distancia AS 'Fluxo de Pessoas', DAYNAME(data_hora) AS 'Dia da Semana' FROM medicao 
JOIN sensor ON medicao.fkSensor = sensor.idSensor JOIN setor ON sensor.fkSetor = setor.idSetor ORDER BY idSensor;

SELECT * FROM vw_sensor_setor;

CREATE VIEW vw_semana
AS
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
FROM medicao;

SELECT * FROM vw_semana;

SELECT * FROM vw_semana ORDER BY distancia DESC LIMIT 1;
SELECT MAX(distancia) FROM vw_semana;