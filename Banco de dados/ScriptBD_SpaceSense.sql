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
idUnidade int primary key auto_increment,
fkEmpresa int,
constraint fkEmpresaUnidade foreign key (fkEmpresa)
references empresa(idEmpresa),
logradouro varchar(50),
numero int,
complemento varchar(45),
cidade varchar(45),
estado varchar(45),
bairro varchar(45),
cep char(8)
);

create table setor (
idSetor int primary key auto_increment,
fkUnidade int,
constraint fkUnidadeSetor foreign key (fkUnidade)
references unidade(idUnidade),
categoria varchar(45)
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

insert into empresa values
(default, 'Assaí Atacadista', 06057223000171),
(default, 'Chama Supermercados', 67624577000145),
(default, 'Pão de Açúcar', 47508411000156),
(default, 'Mercado da Economia', 12345678000190);

select * from empresa;

insert into usuario values
(default, 'Lorenzo Almeida', 11987654321, 'lorenzoalmeida@assai.com', 'Ass4i123!', 1),
(default, 'Sofia Ribeiro', 11998765432, 'sofiaribeiro@assai.com', '@Ssai098', 1),
(default, 'Breno Santos', 11912345678, 'bruno.santos@chama.com', 'Ch4ma@123', 2),
(default, 'Carla Martins', 11923456789, 'carlam@chama.com', 'Chama035!', 2),
(default, 'Flávio Costa', 11934567890, 'flaviocosta@paoacucar.com', 'P4od3açucar', 3),
(default, 'Ana Oliveira', 11945678901, 'anaoliver@paoacucar.com', 'PaodeAcucar123#', 3),
(default, 'Mariana Pires', 11956789012, 'mariana.pires1997@email.com', 'M4rian4&', 4);

select * from usuario;

select * from usuario
join empresa
on fkEmpresa = idEmpresa;

select usuario.nome as funcionario, empresa.nome as empresa from usuario
join empresa
on fkEmpresa = idEmpresa;

insert into unidade values
(default, 1, 'Avenida Aricanduva', 5555, null, 'São Paulo', 'São Paulo', 'Jardim Marília', 03523020),
(default, 1, 'Rua Manilha', 42, null, 'São Paulo', 'São Paulo', 'Vila Carrão', 03445050),
(default, 2, 'Av. Waldemar Carlos Pereira', 76, null, 'São Paulo', 'São Paulo', 'Vila Dalila', 03533000),
(default, 2, 'Av. Osvaldo Valle Cordeiro', 152, null, 'São Paulo', 'São Paulo', 'Jardim Brasília', 03584000),
(default, 3, 'Av. Regente Feijó', 1425, null, 'São Paulo', 'São Paulo', 'Anália Franco', 03342000),
(default, 3, 'Av. Francisco Morato', 2385, null, 'São Paulo', 'São Paulo', 'Vila Sônia', 05520200),
(default, 4, 'Rua das Flores', 21, 'Praça das rosas', 'São Paulo', 'São Paulo', 'Vila das Artes', 01234567);

select * from unidade;

select * from unidade
join empresa
on fkEmpresa = idEmpresa;

select unidade.logradouro, empresa.nome as empresa from unidade
join empresa
on fkEmpresa = idEmpresa;

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

select * from setor;

select * from setor
join unidade
on fkUnidade = idUnidade;

select setor.categoria, unidade.logradouro, empresa.nome as empresa from setor
join unidade 
on fkUnidade = idUnidade
join empresa
on fkEmpresa = idEmpresa;