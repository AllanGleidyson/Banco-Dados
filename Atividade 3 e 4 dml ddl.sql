create database db_Escolas;

use db_Escolas;

create table alunos(
	id int auto_increment primary key,
    nome varchar(40),
    idade int,
    cidade varchar(50)
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

create table cursos (
	id int auto_increment primary key,
    nome_curso varchar (50),
    carga_horaria int
);

insert into cursos (id, nome_curso, carga_horaria)
values
(1, 'Biologia', '20'),
(2, 'Ingles', '22'),
(3, 'Matematica', '20');

create table matricula (
	id int auto_increment primary key,
    aluno_id int,
    curso_id int,
    data_matricula date,
    foreign key (aluno_id) references alunos (id),
    foreign key (curso_id) references cursos (id)
);

insert into alunos (nome, idade, cidade)
values
('Maria Silva', '20', 'São Paulo'),
('João Santos', '22', 'Rio de Janeiro'),
('Ana Souzas', '19', 'Belo Horizoonte'),
('Carlos Pereira', '25', 'Curitiba');

insert into cursos (nome_curso, carga_horaria)
values
('Banco de dados', '40'),
('Lógica de programação', '60'),
('Desenvolvimento Web', '80');

insert into matricula (aluno_id, curso_id, data_matricula)
values
(1, 1, '2024-02-15'),
(2, 2, '2024-03-10'),
(3, 1, '2024-04-05'),
(4, 3, '2024-05-20');

select data_matricula
from matricula

select nome, idade
from alunos
where idade > 20

select nome, cidade
from alunos
where cidade = 'São Paulo'

select nome_curso, carga_horaria
from cursos
where carga_horaria < 70






    


