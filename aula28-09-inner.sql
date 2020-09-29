CREATE DATABASE IF NOT EXISTS `db_inner`;
use `db_inner`;

CREATE TABLE IF NOT EXISTS `funcionarios` (
`funcionario_id` int(11) NOT NULL AUTO_INCREMENT,
`funcionario_nome` varchar(255),
`funcionario_sobrenome` varchar(255),
`funcionario_idade` varchar(11), 
`funcionario_sexo` enum('Outro', 'Masculino', 'Feminino'),
`funcionario_data_cadastro` datetime DEFAULT NOW(),
PRIMARY KEY (`funcionario_id`)
);

insert into `funcionarios`
(`funcionario_id`, `funcionario_nome`, `funcionario_sobrenome`, `funcionario_idade`, `funcionario_sexo`)
values
(NULL, 'Luis Otavio', 'Miranda', '27', 'Masculino'),
(NULL, 'Marcela', 'Souza', '27', 'Feminino');

SELECT * FROM funcionarios;
