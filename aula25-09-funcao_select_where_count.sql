create database aula_select;
use aula_select;

create table clientes (
codigo_cliente int not null primary key,
nome varchar (50),
cidade varchar (10),
serie char (1)
);
CREATE table funcionarios (
		id int not null auto_increment,
		nome varchar(30) NOT NULL,
		nascimento date,
		sexo enum ('M','F'),
		peso decimal(5,2),
		altura decimal(3,2),
		nacionalidade varchar(20) DEFAULT 'Brasil',
		primary key (id));
Insert into funcionarios values ('1','Alex', '2018-02-03','M','68.5','2.50', 'Brasil');
Insert into funcionarios values 
		('2','Gabriela', '1998-02-03','F','58.5','1.60', 'Brasil'),     
		('3','Daniela', '1995-02-03','F','56.5','1.57', 'Brasil');
select * from funcionarios;
SELECT id, nome FROM funcionarios; ##seleciona especificamente a(s) colunas especificadas (não vai asterisco)
SELECT * FROM funcionarios where id=3; 
SELECT * FROM funcionarios where nome= 'Gabriela';
SELECT COUNT(*) FROM funcionarios; ##conta quantos funcionarios/elementos tem na tabela
##selecionar quando nome começar com a letra g - primeiro a letra depois o %
SELECT * FROM funcionarios where nome like 'G%';
##selecionar quando nome terminar com a letra a - primeiro o % depois a letra
SELECT * FROM funcionarios where nome like '%a';
SELECT * FROM funcionarios where sexo = 'F' and nacionalidade = 'Brasil';
SELECT * FROM funcionarios where nome like '%abriel%';
##selecionar funcionarios onde a segunda letra do nome é l
SELECT * FROM funcionarios where nome like '_l%';
SELECT * FROM funcionarios where altura > 2;

Insert into funcionarios values 
		('1','Alex', '2018-02-03','M','68.5','2.50', 'Brasil');
Insert into funcionarios values 
		('2','Gabriela', '1998-02-03','F','58.5','1.60', 'Brasil'),     
		('3','Daniela', '1995-02-03','F','56.5','1.57', 'Brasil');
