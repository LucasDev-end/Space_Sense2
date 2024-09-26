CREATE DATABASE sprint;
USE sprint;

-- CADASTRO DOS CLIENTES
CREATE TABLE usuario (

	id_empresa INT PRIMARY KEY AUTO_INCREMENT,
    nome_empresa VARCHAR(80),                   -- NOME DA EMPRESA
    nome_responsável VARCHAR(80),               -- NOME DO RESPONSAVEL PELA EMPRESA
    cnpj CHAR(18),                              -- CNPJ DA EMPRESA
    telefone VARCHAR(16),                       -- TELEFONE DE CONTATO DA EMPRESA
    email VARCHAR(100),                         -- EMAIL DA EMPRESA
    senha VARCHAR(50)                           -- SENHA ESCOLHIDA PELA EMPRESA

);

INSERT INTO usuario (nome_empresa, nome_responsavel, cnpj, telefone, email, senha) VALUES
    ('', '', '', '', '', ''),
    ('', '', '', '', '', ''),
    ('', '', '', '', '', '');

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

INSERT INTO dadosSensor (distancia, data_hora, status_sensor) VALUES
    ('', '', ''),
    ('', '', ''),
    ('', '', '');

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
    CONSTRAINT chkStatusLocacao CHECK (statusLocacao IN('Ocupado', 'Disponivel')),
    CONSTRAINT chkTipoPrateleira CHECK (tipoPrateleira IN('Refrigerada', 'Comum')),
    CONSTRAINT chkaltura CHECK (altura_prateleira IN('Alto', 'Medio', 'Baixo'))

);

INSERT INTO prateleira (setor_prateleira, status_locacao, tipo_prateleira, altura_prateleira, movimentacao) VALUES
    ('', '', '', '', ''),
    ('', '', '', '', ''),
    ('', '', '', '', '');

SELECT * FROM prateleira;
DESC prateleira;

-- Criando inserts

-- Usuario
INSERT INTO usuario (nome_empresa, nome_responsavel, cnpj, telefone, email, senha) VALUES
    ('Carraras Car', 'Agostinho', '83.552.688/0001-40', '11998788596', 'agostinhocarrara@carrarascar.com.br', 'Carrarascar123'),
    ('SPTech', 'Brandão', '36.578.024/0001-70', '11995431236', 'fernandobrandao@sptech.com.br', 'SPTech123'),
    ('Deloitte', 'Rover', '49.928.567/0001-11', '11972788126', 'rover@deloitte.com.br', 'Deloitte123')
;
-- Sensor
INSERT INTO dadosSensor (distancia, data_hora, status_sensor) VALUES
    ('32', '2024/09/07', '1'),
    ('10', '2024/05/12', '0'),
    ('18', '2024/08/05', '1')
;
-- Prateleira
INSERT INTO prateleira (setor_prateleira, status_locacao, tipo_prateleira, altura_prateleira, movimentacao) VALUES
    ('Grãos', 'Ocupado', 'Comum', 'Medio', '75'),
    ('Carnes', 'Disponivel', 'Refrigerada', 'Baixo', '40'),
    ('Laticinios', 'Ocupado', 'Refrigerado', 'Alto', '63')
;