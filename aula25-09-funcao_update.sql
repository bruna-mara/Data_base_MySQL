use funcoes_novas;
create table tb_matriculados (
        id_curso int ,
		nome varchar(30),
		descricao varchar(30),
		carga char(10),
		totalaulas int,
		ano int,		
		primary key (id_curso));
        
        Insert into tb_matriculados values
 ('1','HTML', 'Curso de HTML5','40','37','2019'),
 ('2','CSS', 'Curso de CSS3','20','15','2019'),
 ('3','PHOTOSHOP', 'Curso de Photoshop','10','8','2020'),
 ('4','JAVASCRIPT', 'Curso de JS','40','20','2020');
 show tables;
 UPDATE tb_matriculados SET nome = 'HTML5' where id_curso = '1';
 UPDATE tb_matriculados set ano = '2021' where ano = '2020';
 
select * from tb_matriculados;