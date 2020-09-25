create database funcoes_novas;
use funcoes_novas;

create table produtos (

#not null (não pode ser nulo), unique:nao pode repetir
nome varchar(30) not null unique,
descricao text,
pagamento enum ('cartao', 'dinheiro', 'cheque'),
quantidade int UNSIGNED,
#5 numéros ao todo, com dois depois da virugula
preco decimal(5,2),
data date ,
cidade varchar(30) DEFAULT 'São Paulo'
);
select * from tb_produtos;
alter table tb_produtos add column codigo_produto int first; 
alter table tb_produtos add column marca VARCHAR(30) after preco;
alter table tb_produtos drop column pagamento;
alter table tb_produtos add column pagamento double(4,2) after descricao;
alter table tb_produtos change column pagamento forma_de_pagamento enum ('credito', 'debito', 'dinheiro');
alter table produtos rename to tb_produtos;
;