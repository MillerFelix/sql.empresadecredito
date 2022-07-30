

create database kaspper
use kaspper
create table alunos (
 AlunoId int primary key Identity(1,1),
 nome varchar(50),
 idade int,
 mensal money
)
insert into alunos (nome,idade,mensal) values ('Sammuel',2,300.98)
insert into alunos values ('Neuza',70,245.98)
insert into Alunos(nome) values ('Sammuel')

 

alter table alunos 
add  turma varchar(20)

 

alter table alunos
drop column email
select * from alunos
/*delete from alunos where alunoid=10 */

 

update alunos set turma='2001' where alunoid=12

 

/* claúsulas */

 

select * from alunos where idade >30 OR turma='2001'
/*
create database
create table
insert
update
select
Delete
*/