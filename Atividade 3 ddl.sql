create database db_Escolas;

use db_Escolas;

create table alunos(
	id int auto_increment primary key,
    nome varchar(40),
    idade int,
    serie varchar(50)
    );
    
insert into alunos (id, nome, idade, serie)
values
(1, 'Arthur', '22', '5º ano'),
(2, 'José', '24', '4º ano'),
(3, 'Yan', '18', '6º ano'),
(4, 'David', '21', '5º ano');

select * from alunos;

/*comando pra selecionar aluno por nome e idade*/
select nome, idade from alunos;

/*comando pra selecionar os alunos por serie*/
select * from alunos where serie = '5º ano';

update alunos
set idade = 32
where id = 3;

delete from alunos where id = 4;






    


