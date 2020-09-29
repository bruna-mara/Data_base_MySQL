create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;

create table tb_categoria(
id_categoria 		    INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
cursos_programacao  VARCHAR(100),
cursos_design 	    VARCHAR(100)
);


create table tb_produto(
id_produto  int,
logica_programacao  VARCHAR(100),
back_end  			VARCHAR(100),
front_end 			VARCHAR(100),
design_UX 			VARCHAR(100),
preco_curso 		DECIMAL (7,2),
duracao_curso_meses INT(2),
periodo_curso 		ENUM('Matutino','Vespertino','Noturno'),
id_categoria INT,
CONSTRAINT FKCHOCOLATE FOREIGN KEY (id_categoria) references tb_categoria(id_categoria) 
);

select * from tb_categoria;
select * from tb_produto;

select * from tb_produto
INNER JOIN tb_categoria 
where tb_produto.id_categoria = tb_categoria.id_categoria;

insert into tb_produto(back_end, id_categoria) values 
	("Spring", 2),
	("MySQL", 2),
	("HTML", 1),
	("Photoshop", 3)
    ;


