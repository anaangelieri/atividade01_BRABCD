create database if not exists SBC;
use SBC;
create table if not exists INSTITUICAO(
idINSTITUICAO int not null,
nome varchar (45),
primary key (idINSTITUICAO)
);
desc INSTITUICAO;
create table if not exists PESQUISADOR(
CPF int not null,
nome varchar (45),
idINSTITUICAO int not null,
primary key (CPF),
foreign key (idINSTITUICAO) references INSTITUICAO (idINSTITUICAO)
);
desc PESQUISADOR;
create table if not exists VEICULO(
idVEICULO int not null,
titulo varchar (30),
local varchar (45),
primary key (idVEICULO)
);
desc VEICULO;
create table if not exists ARTIGO(
idARTIGO int not null,
titulo varchar (30),
pagina_inicial int,
pagina_final int,
idVEICULO int not null,
primary key (idARTIGO),
foreign key (idVEICULO) references VEICULO (idVEICULO)
);
desc ARTIGO;
show tables;
create table if not exists PESQUISADOR_ARTIGO(
CPF int not null,
idARTIGO int not null,
foreign key (CPF) references PESQUISADOR (CPF),
foreign key (idARTIGO) references ARTIGO (idARTIGO)
);
desc PESQUISADOR_ARTIGO;