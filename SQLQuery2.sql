create database db_Biblioteca 

use db_Biblioteca 

sp_helpdb db_Biblioteca

create table tbl_autores(
ID_Autor smallint,
Nome_Autor varchar(40) not NULL,
Sobrenome_Autor varchar(50)
CONSTRAINT pk_ID_Autor Primary key(ID_Autor)
)

create table tbl_editoras(
ID_Editora smallint Primary key IDENTITY(1,1),
Nome_Editora varchar(50) not NULL
)

create table tbl_Livros (
ID_Livro smallint IDENTITY(100,1),
Nome_Livro varchar (50) Not NULL,
ISBN varchar(30) Not NULL unique,
ID_Autor smallint Not NULL,
Data_Pub date Not NULL,
Preco_Livro money Not NULL
CONSTRAINT pk_ID_Livro PRIMARY key (ID_Livro)
CONSTRAINT fk_ID_Autor FOREIGN key (ID_Autor)
REFERENCES tbl_autores (ID_Autor) ON DELETE CASCADE   /* Integridade */
);

sp_help tbl_Livros
select * from  tbl_Livros

select *from tLivros

sp_rename 'tbl_Livros.Nome_Livro', 'Titulo_Livro', 'COLUMN'

sp_rename 'tLivros', 'tbl_Livros'

SELECT *
FROM db_Biblioteca.sys.tables
GO