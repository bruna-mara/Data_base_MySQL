create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;

CREATE TABLE tb_categoria(
	id_categoria INT PRIMARY KEY AUTO_INCREMENT,
	material 	 ENUM('Cimento','Tijolo','Areia','Tinta'),
	marca        VARCHAR(30),
	frete        ENUM('entrega','retira'),
    acabamento   VARCHAR(55)
);
CREATE TABLE tb_produto(
	nome 	   		VARCHAR (55),
    data_entrega   	DATE,
    quantidade 		VARCHAR(55),
    preco      		DECIMAL (10,2),
    pagamento  		ENUM ('a vista','parcelado'),
	fk_id_categoria INT,
	CONSTRAINT fk_tb_categoria FOREIGN KEY (fk_id_categoria) REFERENCES  tb_categoria(id_categoria)
);

INSERT INTO tb_categoria (material,marca,frete)
VALUES
	('cimento', "MAUA", 'retira'),
	('areia', "TUPI", 'entrega'),
	('tinta', "CORAL", 'entrega'),
	('tijolo',"MARTINS",'entrega'),
	('tinta', "SUVINIL", 'retira');
INSERT INTO tb_produto (nome, data_entrega, quantidade, preco,pagamento,fk_id_categoria)
VALUES
	("Cimento MAUA","2020-11-01","15 pct",277.5,'a vista',1),
    ("Areia Fina Tupi","2020-12-03","5 metros",399.5,'a vista',2),
    ("Tinta Coral","2020-29-09","18L",229,'a vista',3),
    ("Tijolo Martins","2020-08-12","100pcs",18.5,'a vista',1),
	("Areia Grossa Tupi","2020-06-12","2 metros",159.8,'parcelado',2),
	("Tinta Suvinil","2020-09-12","3,6L",80.75,'a vista',3),
	("Cimento MAUA","2020-12-03","6pct",111,'parcelado',1),
	("Areia Grossa","2020-06-02","1 metros",79.8,'a vista',2);
select * from tb_produto where preco > 50;
select * from tb_produto where preco between 3 and 60;
select * from tb_produto where nome like 't%';
select * from tb_categoria inner join tb_produto on tb_categoria.id_categoria = tb_produto.fk_id_categoria;

select * from tb_categoria where basico;