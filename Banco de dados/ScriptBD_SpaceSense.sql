create database spacesense;
use spacesense;

create table empresa (
idEmpresa int primary key auto_increment,
nome varchar(45),
cnpj char(14)
);

create table usuario (
idUsuario int primary key auto_increment,
nome varchar(80),
telefone varchar(16),
email varchar(100),
senha varchar(50),
fkEmpresa int,
constraint fkEmpresaUsuario foreign key (fkEmpresa)
references empresa(idEmpresa)
);

create table unidade (
idUnidade int,
fkEmpresa int,
constraint primary key (idUnidade, fkEmpresa),
constraint fkEmpresaUnidade foreign key (fkEmpresa)
references empresa(idEmpresa),
logradouro varchar(50),
numero int,
complemento varchar(45),
cidade varchar(45),
estado varchar(45),
bairro varchar(45)
);

create table setor (
idSetor int primary key auto_increment,
categoria varchar(45),
fkUnidade int,
constraint fkUnidadeSetor foreign key (fkUnidade)
references unidade(idUnidade)
);

create table sensor (
idSensor int primary key auto_increment,
fkSetor int,
constraint fkSetorSensor foreign key (fkSetor)
references setor(idSetor)
);

create table medicao (
idMedicao int primary key auto_increment,
fkSensor int,
constraint fkSensorMedicao foreign key (fkSensor)
references sensor(idSensor),
distancia float,
data_hora datetime
);