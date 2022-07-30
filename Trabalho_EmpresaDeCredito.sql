create database EmpresaDeCredito

use EmpresaDeCredito

create table Clientes(
ClienteId int primary key identity(1,1),
Nome varchar(50),
DataDeNascimento varchar(50),
CPF int,
RG int,
Endereco varchar(20),
Numero varchar(50),
Email varchar (20),
)

insert into Clientes values('Miller', '07/03/2005', 09987142198, 566789021, 'Sao Paulo',  '(11) 99212-509', 'miller@gmail.com')
insert into Clientes values('Felix', '16/09/1963', 13945701475, 00298712, 'Sao Paulo', '(11) 98790-8866', 'felix@gmail.com')

select * from Clientes

create table Fornecedor(
	FornecedorId int primary key identity(1,1),
	NomeFornecedor varchar(50),
	Endereco varchar(20),
	Telefone varchar(50),
	Email varchar(20)
)

insert into Fornecedor values('Grande rio', 'Rio De Janeiro', '(21) 2133-9809', 'GR@gmail.com')
insert into Fornecedor values('Minas Start', 'Minas Gerais', '(31) 8765-3239', 'minasstart@gmail.com')

select * from Fornecedor