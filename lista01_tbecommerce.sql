create database e_commerce;
use e_commerce;

create table tb_produtos(
id_produtos int not null auto_increment,
marca varchar(45),
nome varchar(45),
tamanho varchar(5),
preco double(6,2),
primary key(id_produtos)
);

alter table tb_produtos
modify column preco double(6,2); 

describe tb_produtos;

select * from tb_produtos
where preco>500;

select * from tb_produtos
where preco<500;


