create database spacesense; -- CRIAÇÃO DO BANCO DE DADOS
use spacesense; -- SELEÇÃO DO BANCO DE DADOS

create table empresa (  -- CRIAÇÃO DA TABELA 'EMPRESA'
idEmpresa int primary key auto_increment,
nome varchar(45),
cnpj char(14)
);

create table unidade (  -- CRIAÇÃO DA TABELA 'UNIDADE'
idUnidade int primary key auto_increment,
fkEmpresa int, -- CRIAÇÃO DA CHAVE ESTRANGEIRA
constraint fkEmpresaUnidade foreign key (fkEmpresa) 
references empresa(idEmpresa), -- CONFIGURAÇÃO DA CHAVE ESTRANGEIRA
logradouro varchar(50),
numero int,
complemento varchar(45),
cidade varchar(45),
estado varchar(45),
bairro varchar(45),
cep char(8)
);

create table usuario (  -- CRIAÇÃO DA TABELA 'USUARIO'
idUsuario int primary key auto_increment,
nome varchar(80),
telefone varchar(16),
email varchar(100),
senha varchar(50),
fkEmpresa int, -- CHAVE ESTRANGEIRA 
constraint fkEmpresaUsuario foreign key (fkEmpresa)
references empresa(idEmpresa), -- CONFIGURAÇÃO DA CHAVE ESTRANGEIRA
fkUnidade int, -- CHAVE ESTRANGEIRA
constraint fkUnidadeUsuario foreign key (fkUnidade)
references unidade(idUnidade) -- CONFIGURAÇÃO DA CHAVE ESTRANGEIRA
);

create table setor ( -- CRIAÇÃO DA TABELA 'SETOR'
idSetor int primary key auto_increment,
fkUnidade int, -- CRIAÇÃO DA CHAVE ESTRANGEIRA
constraint fkUnidadeSetor foreign key (fkUnidade)
references unidade(idUnidade), -- CONFIGURAÇÃO DA CHAVE ESTRANGEIRA
categoria varchar(45)
);

create table sensor (  -- CRIAÇÃO DA TABELA 'SENSOR'
idSensor int primary key auto_increment,
fkSetor int, -- CRIAÇÃO DA CHAVE ESTRANGEIRA
constraint fkSetorSensor foreign key (fkSetor)
references setor(idSetor) -- CONFIGURAÇÃO DA CHAVE ESTRANGEIRA
);

create table medicao ( -- CRIAÇÃO DA TABELA 'MEDIÇÃO'
idMedicao int primary key auto_increment,
fkSensor int, -- CRIAÇÃO DA CHAVE ESTRANGEIRA
constraint fkSensorMedicao foreign key (fkSensor)
references sensor(idSensor), -- CONFIGURAÇÃO DA CHAVE ESTRANGEIRA
distancia float,
data_hora datetime
);

insert into empresa values
(default, 'Assaí Atacadista', 06057223000171),
(default, 'Chama Supermercados', 67624577000145),
(default, 'Pão de Açúcar', 47508411000156),
(default, 'Mercado da Economia', 12345678000190);

insert into unidade values
(default, 1, 'Avenida Aricanduva', 5555, null, 'São Paulo', 'São Paulo', 'Jardim Marília', 03523020),
(default, 1, 'Rua Manilha', 42, null, 'São Paulo', 'São Paulo', 'Vila Carrão', 03445050),
(default, 2, 'Av. Waldemar Carlos Pereira', 76, null, 'São Paulo', 'São Paulo', 'Vila Dalila', 03533000),
(default, 2, 'Av. Osvaldo Valle Cordeiro', 152, null, 'São Paulo', 'São Paulo', 'Jardim Brasília', 03584000),
(default, 3, 'Av. Regente Feijó', 1425, null, 'São Paulo', 'São Paulo', 'Anália Franco', 03342000),
(default, 3, 'Av. Francisco Morato', 2385, null, 'São Paulo', 'São Paulo', 'Vila Sônia', 05520200),
(default, 4, 'Rua das Flores', 21, 'Praça das rosas', 'São Paulo', 'São Paulo', 'Vila das Artes', 01234567);

insert into usuario values
(default, 'Lorenzo Almeida', 11987654321, 'lorenzoalmeida@assai.com', 'Ass4i123!', 1, 1),
(default, 'Sofia Ribeiro', 11998765432, 'sofiaribeiro@assai.com', '@Ssai098', 1, 2),
(default, 'Breno Santos', 11912345678, 'bruno.santos@chama.com', 'Ch4ma@123', 2, 3),
(default, 'Carla Martins', 11923456789, 'carlam@chama.com', 'Chama035!', 2, 4),
(default, 'Flávio Costa', 11934567890, 'flaviocosta@paoacucar.com', 'P4od3açucar', 3, 5),
(default, 'Ana Oliveira', 11945678901, 'anaoliver@paoacucar.com', 'PaodeAcucar123#', 3, 6),
(default, 'Mariana Pires', 11956789012, 'mariana.pires1997@email.com', 'M4rian4&', 4, 7);

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

-- MOSTRA QUAIS SENSORES DO ASSAÍ ATACADISTA DA AVENIDA ARICANDUVA ESTÃO COM PROBLEMAS E SUAS RESPECTIVAS LOCALIZAÇÕES
select empresa.nome, unidade.logradouro,setor.categoria,sensor.idSensor, 
	CASE
    WHEN sensor.idSensor in(2,3,6,7,10) THEN 'Não está Funcionando'
    ELSE 'Funcionando'
    END AS Situação
from sensor join setor on sensor.fkSetor = setor.idSetor join unidade
on setor.fkUnidade = unidade.idUnidade join empresa
on unidade.fkEmpresa = empresa.idEmpresa WHERE unidade.logradouro = 'Avenida Aricanduva' and empresa.nome = 'Assaí Atacadista';

-- MOSTRA OS FUNCIONÁRIOS CADASTRADOS, AS EMPRESAS QUE OPERAM E SEUS RESPECTIVOS LOGRADOUROS DE TRABALHO 
select usuario.nome as Funcionário, empresa.nome as Empresa, unidade.logradouro from usuario
join empresa
on usuario.fkEmpresa = empresa.idEmpresa
join unidade
on usuario.fkUnidade = unidade.idUnidade;