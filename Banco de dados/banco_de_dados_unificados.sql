CREATE DATABASE spacesense;
USE spacesense;

-- CADASTRO DOS CLIENTES
CREATE TABLE usuario (

	id_usuario INT PRIMARY KEY AUTO_INCREMENT,
    nome_empresa VARCHAR(80),                   -- NOME DA EMPRESA
    nome_responsável VARCHAR(80),				-- NOME DO RESPONSAVEL PELA EMPRESA
    cnpj CHAR(18),                              -- CNPJ DA EMPRESA
    telefone VARCHAR(16),                       -- TELEFONE DE CONTATO DA EMPRESA
    email VARCHAR(100),                         -- EMAIL DA EMPRESA
    senha VARCHAR(50)                           -- SENHA ESCOLHIDA PELA EMPRESA
    -- cargo VARCHAR(20),						-- NÍVEL DE ACESSO QUE O RESPONSÁVEL TERÁ NA ALTERAÇÃO DOS DADOS

);

INSERT INTO usuario VALUES
    (default,'atacadão', 'Joshua Ramo','99999999/0001-99', '11 11111-1111', 'contato@atacadao.com', 'api#pi'),
    (default,'coop', 'Leticia Flores','88888888/0001-88', '22 22222-2222', 'contato@coop.com', 'qw!qw'),
    (default,'assaí', 'Jessica Oliveira','7777777/0001-77', '33 33333-3333', 'contato@assai.com', 'as@as');

SELECT * FROM usuario;
DESC usuario;

-- DADOS DO SENSOR
CREATE TABLE dadosSensor (

	idSensor INT PRIMARY KEY AUTO_INCREMENT,
    distancia DECIMAL (5,2),                   -- DISTANCIA DA PRATELEIRA PARA O PRODUTO
    data_hora DATETIME,                        -- DATA E HORA DAS MOVIMENTAÇÕES E MEDIÇÕES FEITAS
    status_sensor CHAR (1),                    -- INDICA SE O SENSOR ESTA ATIVO OU NÃO
    CONSTRAINT chkstatus CHECK (status_sensor IN (0, 1))

);

INSERT INTO dadosSensor VALUES
    (default, 40, '2024-09-01 19:20:59', '1'),
    (default, 20, '2024-09-03 12:19:23', '0'),
    (default, 0, '2024-09-04 14:01:03', '1');

SELECT * FROM dadosSensor;
DESC dadosSensor;

-- DADOS DA PRATELEIRA
CREATE TABLE prateleira (

    idPrateleira INT PRIMARY KEY AUTO_INCREMENT,	
    setor_prateleira VARCHAR(30),               -- SETOR EM QUE A PRATELEIRA ESTA LOCALIZADA
    status_locacao VARCHAR(10),                 -- STATUS DE LOCACAO DA PRATELEIRA QUE A EMPRESA FAZ A LOCACAO
    tipo_prateleira VARCHAR(11),                -- TIPO DE PRATELEIRA
    altura_prateleira VARCHAR(5),               -- ALTURA DA PRATELEIRA
    movimentacao DECIMAL (5,2),                 -- PERCENTUAL DE MOVIMENTAÇÃO DA PRATELEIRA
    CONSTRAINT chkStatusLocacao CHECK (status_locacao IN('Ocupado', 'Disponivel')),
    CONSTRAINT chkTipoPrateleira CHECK (tipo_prateleira IN('Refrigerada', 'Comum')),
    CONSTRAINT chkaltura CHECK (altura_prateleira IN(1.80, 1.60, 1.40))

);

INSERT INTO prateleira VALUES
    (default, 'hortifruti', 'Ocupado', 'Comum', 1.60, 40),
    (default, 'carnes', 'Ocupado', 'Refrigerada', 1.80, 60),
    (default, 'enlatados', 'Disponivel', 'Comum', 1.40, 15);

SELECT * FROM prateleira;
DESC prateleira;