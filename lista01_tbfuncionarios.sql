create database db_empresaRH;
create table tb_funcionarios (

id_funcionario int not null auto_increment, /*criando uma chave primaria exemplo: o ID FUNCIONARIO É TIPO O CPF CADA 1 TEM UM / O NOT NULL SIGNIFICA QUE SEMPRE TEM QUE TER U VALOR E O AUTO INCREMENT É QUE ELE ATUOMATICAMENTE VAI COLOCAR NA ORDEM*/
nome varchar(45),
nascimento date,
cargo varchar(45),
salario double(10,2),
primary key(id_funcionario)
);

describe tb_funcionarios;

select * from tb_funcionarios
where salario>2000.00; 

select * from tb_funcionarios
where salario<2000.00; 
