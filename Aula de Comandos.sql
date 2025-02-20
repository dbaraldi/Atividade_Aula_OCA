create	database	bd_sistema;

use bd_sistema;

create	table tb_pessoa(
id_pessoa int auto_increment primary key,
nm_pessoa varchar(45),
nr_idade int,
nm_endereco varchar(45),
nr_endereco int
);

create	user	'Joao'@'localhost' identified by '0614';
grant all privileges on *.* to 'Joao'@'localhost';

/*Usuario com permissão apenas na database bd_sistema*/
create user 'danielle'@'localhost' identified by '0614';
grant all privileges on bd_sistema.* to 'danielle'@'localhost';

/*Usuario com permissão apenas para executar o comando select database bd_sistema*/
create	user 'xuliao'@'localhost' identified by '0614';
GRANT SELECT ON bd_sistema.* to 'xuliao'@'localhost';
