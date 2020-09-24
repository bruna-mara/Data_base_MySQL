create database escola;
use escola;

create table tb_alunos(
id_alunos int not null auto_increment,
nome varchar(50),
sexo enum ('F','M'),
materia varchar(20),
média double(2,1), 
primary key(id_alunos)
); 
ALTER TABLE tb_alunos
CHANGE média media double(3,1);
 
describe tb_alunos;

select * from tb_alunos
where media>7;

select * from tb_alunos
where media<7;