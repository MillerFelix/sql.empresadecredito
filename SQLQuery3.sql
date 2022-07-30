use db_Biblioteca

INSERT INTO tbl_Autores (ID_Autor, Nome_Autor, SobreNome_Autor)
VALUES
(1, 'Daniel', 'Barret'),
(2, 'Gerald', 'Carter'),
(3, 'Mark', 'Sobell'),
(4, 'William', 'Stanek'),
(5, 'Richard', 'Blum');

INSERT INTO tbl_Editoras (Nome_Editora)
VALUES
('Prentice Hall'),
('O´Reilly'),
('Microsoft Press'),
('Wiley');
select * from tbl_editoras
ALTER TABLE tbl_livros
ADD ID_editora SMALLINT NOT NULL

ALTER TABLE tbl_livros
ADD ID_Autor SMALLINT NOT NULL
CONSTRAINT fk_ID_Autor FOREIGN KEY (ID_Autor) REFERENCES tbl_autores (ID_autor);

ALTER TABLE tbl_livros
ADD ID_editora SMALLINT NOT NULL
CONSTRAINT fk_id_editora FOREIGN KEY (ID_editora) REFERENCES tbl_editoras (ID_editora) ON DELETE CASCADE;

ALTER TABLE tbl_livros
ALTER COLUMN ID_Autor SMALLINT;

ALTER TABLE Clientes
ADD CONSTRAINT pk_id_cliente PRIMARY KEY (ID_Cliente);

INSERT INTO tbl_Livros (Titulo_Livro, ISBN, Data_Pub, Preco_Livro, ID_Autor, ID_editora)
VALUES
('Linux Command Line and Shell Scripting','143856969','20091221', 68.35, 5, 4),
('SSH, the Secure Shell','127658789','20091221', 58.30, 1, 2),
('Using Samba','123856789','20001221', 61.45, 2, 2),
('Fedora and Red Hat Linux','123346789', '20101101', 62.24, 3, 1),
('Windows Server 2012 Inside Out','123356789','20040517', 66.80, 4, 3),
('Microsoft Exchange Server 2010','123366789','20001221', 45.30, 4, 3);

select * from tbl_Livros

select Nome_Autor from tbl_Autores;

select * from tbl_Autores;

select Titulo_Livro From tbl_Livros;

select Titulo_Livro, Preco_Livro from tbl_Livros;

select Titulo_Livro, ISBN from tbl_Livros;

select * from tbl_Livros where Preco_Livro <50

select * from tbl_Livros where Data_Pub = '20091221'

select * from tbl_Livros where Data_Pub between '20040517' and '20110517'

select * from tbl_Livros where Data_Pub > '20040517'and Data_Pub < '20040517'


select * from tbl_Livros 
inner join tbl_Autores
on tbl_Livros.ID_Autor = tbl_Autores.ID_Autor;

select tbl.Livros.Titulo_Livro, tbl_Livros.ISBN, tbl_Autores.Nome_Autor
from tbl_Livros 
inner join tbl_Autores
on tbl_Livros.ID_Autor = tbl_Autores.ID_Autor;

select L.Titulo_Livros as Livros, e.nome_editora as editoras 
from tbl_Livros as L
inner join tbl_editoras as E
on L.ID_Editora = E.ID_Editora
where E.Nome_Editora like 'M%';




