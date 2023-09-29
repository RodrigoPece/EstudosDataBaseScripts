--1. Crie as tabelas para o modelo de dados a seguir. 
--OBS.: Este conjunto de tabela será usado nos próximos exercícios.

--CRIAR BANCO DE DADOS

CREATE DATABASE Banco_Imoveis
go

USE Banco_Imoveis
go

--CRIAR TABELAS

CREATE TABLE Imovel (
 cd_Imovel int NOT NULL,
 cd_Vendedor int,
 cd_Bairro int,
 cd_Cidade  int,
 sg_Estado char(2),
 ds_Endereco varchar(40),
 qt_AreaUtil decimal(10,2),
 qt_AreaTotal decimal(10,2),
 ds_Imovel varchar(300),
 vl_preco money,
 qt_Ofertas int,
 ic_Vendido char(1),
 dt_Lancto date,
 qt_ImovelIndicado int
 )
go

CREATE TABLE Vendedor (
cd_Vendedor int not null,
nm_Vendedor varchar(40),
ds_Endereco varchar(40),
cd_CPF decimal(11),
nm_Cidade varchar(20),
nm_Bairro varchar(20),
sg_Estado char(2),
cd_Telefone varchar(20),
ds_Email varchar(80)
)
go

CREATE TABLE Oferta (
cd_Comprador int not null,
cd_Imovel int not null,
vl_Oferta money,
dt_Oferta date
)
go

CREATE TABLE Comprador (
cd_Comprador int not null,
nm_Comprador varchar(40),
ds_Endereco varchar(40),
cd_CPF decimal(11),
nm_Cidade varchar(20),
nm_Bairro varchar(20),
sg_Estado varchar(20),
cd_Telefone varchar(20),
ds_Email varchar(80)
)
go

CREATE TABLE Bairro (
cd_Bairro int not null,
cd_Cidade int not null,
sg_Estado char(2) not null,
nm_Bairro varchar(20)
)
go

CREATE TABLE Cidade (
cd_Cidade int not null,
sg_Estado char(2) not null,
nm_Cidade varchar(20)
)
go

CREATE TABLE Estado (
sg_Estado char(2) not null,
nm_Estado varchar(20)
)
go

CREATE TABLE Faixa_Imovel (
cd_Faixa int not null,
nm_Faixa varchar(30),
vl_Maximo money,
vl_Minimo money
)
go

--2. Crie as chaves primárias e estrangeiras para as tabelas acima usando o comando ALTER.
--2.1 Criar Chaves Primárias

ALTER TABLE Imovel
	ADD PRIMARY KEY (cd_Imovel)
go

ALTER TABLE Vendedor 
	ADD PRIMARY KEY (cd_Vendedor)
go

ALTER TABLE Oferta
	ADD PRIMARY KEY (cd_Comprador, cd_Imovel)
go

ALTER TABLE Comprador
	ADD PRIMARY KEY (cd_Comprador)
go

ALTER TABLE Bairro
	ADD PRIMARY KEY (cd_Bairro, cd_Cidade, sg_Estado)
go

ALTER TABLE Faixa_Imovel
	ADD PRIMARY KEY (cd_Faixa)
go

ALTER TABLE Cidade
	ADD PRIMARY KEY (cd_Cidade, sg_Estado)
go

ALTER TABLE Estado
	ADD PRIMARY KEY (sg_Estado)
go


--2.2 Criar Chaves Estrangeiras
ALTER TABLE Imovel
	ADD FOREIGN KEY (cd_Vendedor) 
	REFERENCES Vendedor
go

ALTER TABLE Imovel
	ADD FOREIGN KEY (cd_Bairro, cd_Cidade, sg_Estado) 
	REFERENCES Bairro
go

ALTER TABLE Oferta
	ADD FOREIGN KEY (cd_Imovel) 
	REFERENCES Imovel
go

ALTER TABLE Oferta
	ADD FOREIGN KEY (cd_Comprador) 
	REFERENCES Comprador
go

ALTER TABLE Bairro
	ADD FOREIGN KEY (cd_Cidade, sg_Estado)
	REFERENCES Cidade
go

ALTER TABLE Cidade
	ADD FOREIGN KEY (sg_Estado)
	REFERENCES Estado
go
