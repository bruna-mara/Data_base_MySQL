create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;
CREATE TABLE tb_categoria(
	id_categoria INT PRIMARY KEY AUTO_INCREMENT,
	escola 		 VARCHAR(55),
    tipo_curso   VARCHAR(55),
	modalidade 	 ENUM('Online','Presencial')
);

CREATE TABLE tb_curso(
	curso VARCHAR (55),
    duracao VARCHAR(55),
    turno VARCHAR(55),
    preco DECIMAL (10,2),
    turma VARCHAR(55),
	fk_id_categoria int,
    CONSTRAINT fk_tb_categoria FOREIGN KEY (fk_id_categoria) REFERENCES  tb_categoria(id_categoria)
);

INSERT INTO tb_categoria (escola,tipo_curso,modalidade)
VALUES
	("Generation","Programaçao",'online'),
    ("SENAI","Técnico",'presencial'),
    ("DIGITAL HOUSE","Programação",'online'),
    ("CULTURA INGLESA","Idioma",'presencial'),
    ("ALURA","Programação",'online');
  
INSERT INTO tb_curso (curso, duracao, turno, preco,turma,fk_id_categoria)
VALUES
	("Front-end","12 meses","manhã",1000,"a",1),
    ("Eletrica","6 meses","tarde",600,"b",2),
    ("Back-end","3 meses","noite",800,"c",3),
    ("Inglês","12 meses","manhã",1200,"a",4),
    ("Java","4 meses","noite",900,"b",5),
    ("Mecanica","6 meses","tarde",800,"d",2),
    ("Espanhol","12 meses","noite",1200,"b",4),
    ("MySQL","3 meses","manhã",1600,"a",1);
select * from tb_curso where preco > 50;
select * from tb_curso where preco between 3 and 60;
select * from tb_curso where curso like 'j%';
select * from tb_curso inner join tb_categoria on tb_curso.fk_id_categoria = tb_categoria.id_categoria;
select * from tb_categoria where tipo_curso = "programação";