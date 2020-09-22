create database db_deletar;
use db_deletar;

#drop table consumidores -> comando para apagar tabela

create table if not exists consumidores (
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(30)

);

insert into consumidores (nome) values
("Marcelo"), ("Julia");

/*truncate consumidores; apaga toda a tabela*/

select * from consumidores;

delete from consumidores where id = 1;

select * from consumidores;