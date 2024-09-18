create database projetopi;
use projetopi;

create table sensor (
	idSensor int primary key auto_increment,
    tipo varchar(15),
    statusSensor char(7),
    constraint chkSensor CHECK (statusSensor in("ativo","inativo"))
);

insert into sensor values
	(default, "ultrassônico", "ativo"),
    (default, "ultrassônico", "ativo"),
    (default, "ultrassônico", "ativo"),
    (default, "ultrassônico", "ativo"),
    (default, "ultrassônico", "ativo");

create table cadastro (
	idCadastro int primary key auto_increment,
    nome_fantasia varchar(45),
    tel char(13),
    cnpj char(16),
    email varchar(50),
    senha varchar (50)
);

insert into cadastro values
	(default, "fantacoca", "11 11111-1111","99999999/0001-99", "contato@fantacoca.com", "as@as"),
    (default, "doris", "22 22222-2222","88888888/0001-88", "contato@doris.com", "qw!qw"),
    (default, "saojoao", "33 33333-3333","7777777/0001-77", "contato@saojoao.com", "api#pi");
    
create table gondolas (
    idGondolas int primary key auto_increment,
    localizacao VARCHAR(255) NOT NULL,
    constraint chkLoc check (localizacao in("entrada", "corredor central", "caixa", "fundo")),
    setor VARCHAR(100),
    constraint chkSetor check (setor in("alimento e bebida", "higiene", "utensílios"))
);

insert into gondolas values
	(default, "fundo", "higiene"),
    (default, "entrada", "alimento e bebida"),
    (default, "corredor central", "utensílios");


-- Saber quantas vendas teve na localizaçao da gondola para a valorização da gôndola
CREATE TABLE vendas (
    idVendas int primary key auto_increment,
    quantidade INT,
    dtVenda DATE
);

insert into vendas values
	(default, 10,"2024-01-18"),
    (default, 19,"2024-02-20"),
    (default, 30,"2024-05-15");