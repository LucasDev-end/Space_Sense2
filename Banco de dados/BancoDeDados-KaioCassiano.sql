CREATE DATABASE ProjetoPI;
USE ProjetoPI;
CREATE TABLE DadosCliente (
idEmpresa int primary key auto_increment, -- Identificação da Empresa
NomeDaEmpresa varchar(45),                -- Nome da Empresa
NomeResponsavel varchar(45),              -- Nome do responsável pela empresa
TelefoneContato varchar(16),              -- Telefone para Contato com a Empresa
Cnpj char(14),                            -- Cnpj da Empresa
Email varchar(256),                       -- E-mail da empresa
Senha varchar(20)                         -- Senha para login
);
select * from DadosCliente;
describe DadosCliente;

CREATE TABLE DadosSensor (
idSensor int primary key auto_increment, -- Identificar Sensor
Prateleira int,							 -- Prateleira que o sensor se encontra 
dtInstalação date,                       -- Data de instalação do sensor
ultManutenção date,                      -- Data da ultima manutenção
Condição varchar(20),                    -- Status do sensor, ex: Ativo, inativo
DadosMovimento float                     -- Dados com a movimentação do sensor
);

select * from DadosSensor;
describe DadosSensor;

CREATE TABLE Prateleiras (
idPrateleira int primary key auto_increment, -- Identificação prateleira
Localização varchar(50),                     -- Identificar o corredor/local que a prateleira está, como corredor 1, 2 ou A, B
Posição varchar(30),                         -- Posição da prateleira (superior, média, inferior)
Ocupação float                               -- Percentual de ocupação atual da prateleira
);

select * from Prateleiras;
describe Prateleiras;


