-- criando base de dados
create database spaceSence;

-- usando base de dados
use spaceSence;

-- criando tabela cadastroEmpresa
create table cadastroEmpresa(
idCadastroEmpresa int primary key auto_increment,
nomeEmpresa varchar(45),
responsavel varchar(45),
telefone char(13),
cnpj char(18),
email varchar(50),
senha varchar(60)
);

-- criando tabela registroSensor
create table registroSensor(
idRegistro int primary key auto_increment,
produto varchar(45),
distancia int,
dataRegistro date,
horaRegistro time,
localSensor char(4)
);

-- criado tabela prateleira
create table prateleira(
idPrateleira int primary key auto_increment,	
localPrateleira varchar(30),
statusLocacao varchar(10),
tipoPrateleira varchar(11),
nivelAcesso varchar(5),
constraint chkStatusLocacao check (statusLocacao in('Ocupado', 'Disponivel')),
constraint chkTipoPrateleira check (tipoPrateleira in('Refrigerada', 'Comum')),
constraint chkNivelAcesso check (nivelAcesso in('Alto', 'Medio', 'Baixo'))
);

insert into cadastroEmpresa values
	(default, 'Supermercado Brasil', 'Maria Silva', '11987654321', '12.345.678/0001-99', 'maria@superbrasil.com', 'senha123'),
	(default, 'Hipermercado XPTO', 'João Sousa', '21998765432', '23.456.789/0001-88', 'joao@hiperxpto.com', 'xpto2024'),
	(default, 'Mercadinho Ponto Certo', 'Ana Carvalho', '31987654321', '34.567.890/0001-77', 'ana@pontocerto.com', 'mercado456'),
	(default, 'Atacado Global', 'Lucas Pereira', '41987654321', '45.678.901/0001-66', 'lucas@atacadoglobal.com', 'atacado789'),
	(default, 'Supermercado Alvorada', 'Clara Souza', '51987654321', '56.789.012/0001-55', 'clara@alvorada.com', 'super123');

insert into registroSensor values
	(default, 'Arroz 5kg', 50, '2024-09-05', '10:30:00', 'A1'),
	(default, 'Feijão 1kg', 30, '2024-09-05', '11:15:00', 'B2'),
	(default, 'Açúcar 1kg', 45, '2024-09-05', '12:00:00', 'C3'),
	(default, 'Macarrão 500g', 25, '2024-09-05', '14:45:00', 'D4'),
	(default, 'Óleo 900ml', 60, '2024-09-05', '16:20:00', 'E5');

insert into prateleira values
(default, 'Corredor 1', 'Ocupado', 'Comum', 'Alto'),
(default, 'Corredor 2', 'Disponivel', 'Comum', 'Baixo'),
(default, 'Corredor 3', 'Ocupado', 'Comum', 'Alto'),
(default, 'Corredor 4', 'Disponivel', 'Refrigerada', 'Medio'),
(default, 'Corredor 5', 'Ocupado', 'Refrigerada', 'Baixo');

select * from cadastroEmpresa;
select * from registroSensor;
select * from prateleira;





