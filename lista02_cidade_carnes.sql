CREATE DATABASE db_cidade_das_carnes;
USE db_cidade_das_carnes;

CREATE TABLE tb_categoria (
	id_categoria INT PRIMARY KEY AUTO_INCREMENT,
	tipo_carne 	 ENUM('BOVINO','SUÍNO','AVES'),
	marca 		 VARCHAR (30),
	tipo_peca 	 ENUM('peça inteira','fatiado')
);
CREATE TABLE tb_produto(
	corte_carne     VARCHAR (55),
    data_validade   DATE,
    peso_kg         VARCHAR(55),
    preco 		    DECIMAL (10,2),
	fk_id_categoria INT,
	CONSTRAINT fk_tb_categoria FOREIGN KEY (fk_id_categoria) REFERENCES  tb_categoria(id_categoria)
);
INSERT INTO tb_categoria (tipo_carne, marca, tipo_peca)
VALUES
	('SUÍNO', "SEARA", 'peça inteira'),
	('AVES', "SADIA", 'peça inteira'),
	('BOVINO', "FRIBOI", 'fatiado'),
	('BOVINO', "SADIA", 'inteiro'),
	('SUÍNO', "PERDIGÃO", 'peça inteira');
INSERT INTO tb_produto (corte_carne, data_validade, peso_kg, preco,fk_id_categoria)
VALUES
	("lombo suíno","2020-12-18","3kg",109.5,2),
    ("sobrecoxa frango","2020-10-06","4kg",152,3),
    ("picanha","2020-09-30","6kg",74.40,1),
    ("frango inteiro","2020-08-17","2kg",17.2,3),
    ("linguiça defumada","2020-01-2021","3kg",30,2),
    ("file mignon","2020-09-17","4kg",221.60,1),
    ("costelinha de porco","2020-06-2020","5kg",75,2),
    ("pao de alho","2020-09-23","1kg",22,1);
select * from tb_produto where preco > 50;
select * from tb_produto where preco between 3 and 60;
select * from tb_produto where corte_carne like 'c%';
select * from tb_categoria inner join tb_produto on tb_categoria.id_categoria = tb_produto.fk_id_categoria;
select * from tb_categoria where marca = "perdigão";