create database spacesense;

use spacesense;

create table cadastro_usuario (
id_usuario int primary key auto_increment, 
n_empresa varchar(50), -- Nome da empresa
n_responsavel varchar(50), -- Nome do responsavel
contato varchar(14), -- Telefone/Celular para contato
cnpj char(18), 
email varchar(256),
senha varchar(50)
);

create table cadastro_sensor (
id_sensor int primary key auto_increment,
prat_sensor char(3), -- Identificador da prateleira
setor char(3), -- Identificador do setor
dados_sensor int, -- Informações sobre o nivel da capacidade da prateleira
sts_sensor varchar(7), -- Status do sensor
constraint statusSensor check ( sts_sensor in ('Online', 'Offline'))
);

create table produto_prateleira (
id_produto int primary key auto_increment,
produto varchar(45), -- Tipo do produto
marca varchar(45), -- Marca
prateleira char(3) -- Identificador da prateleira
);



