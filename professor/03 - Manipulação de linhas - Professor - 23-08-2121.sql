/* Exclui o banco de dados "empresa", caso o banco de dados exista */
drop database if exists empresa;

/* Cria o banco de dados "empresa", com definições com permitem a utilização de acentos e símbolos ("character set utf8mb4")
e a comparação entre caracteres acentuados e que não diferenciam maiúsculas e minúsculas ("utf8mb4_0900_ai_ci") */
create database empresa
character set utf8mb4
collate utf8mb4_0900_ai_ci;

/* Define o banco de dados atual */
use empresa;

/* Cria a tabela clientes */
create table clientes(
	id int not null auto_increment,
    nome varchar (40) not null,
	genero enum ('M', 'F'),
	cidade varchar (20),
    uf char(2),
    limite_credito decimal(7,2),
    primary key(id)
);

/* Descreve a estrutura da tabela clientes*/
describe clientes;

/* Insere registros na tabela clientes */
insert into clientes
(nome, genero, cidade, uf, limite_credito)
values
('Pedro Augusto da Rocha', 'M', 'Novo Hamburgo', 'SC', '700'),
('Antonio Carlos Mamel', 'M', 'Belo Horizonte', 'MG', '3500.5'),
('Luiza Augusta Mhor', 'M', 'Niterói', 'RJ', '3900'),
('Jane Ester', 'F', 'Florianópolis', 'SC', '800'),
('Marcos Antônio dos Santos', 'M', 'Porto Alegre', 'RS', '4250.25'),
('Giovanna Goncalves Oliveira', 'F', 'Canoas', 'RS', '1500'),
('Kauã Azevedo Ribeiro', 'M', 'Uberlândia', 'MG', '799'),
('Rebeca Barbosa Santos', 'F', 'Santo André', 'SP', '1750'),
('Sarah Carvalho Correia', 'F', 'Juiz de Fora', 'MG','499.9'),
('Antonio Almeida Lima', 'M', 'Paranaguá', 'PR','2600');

/* Mostra todos os registros da tabela clientes */
select * from clientes;

/* Atualiza a uf do cliente de id = 1 para RS*/
update clientes
set uf = 'RS'
where id = '1';

/* Mostra todos os registros da tabela clientes */
select * from clientes;

/* Atualiza a cidade do cliente de id = 5 para Londrina e o uf para PR*/
update clientes
set cidade = 'Londrina', uf = 'PR'
where id = '5';

/* Mostra todos os registros da tabela clientes */
select * from clientes;

/* Exclui o cliente com id = 10 da tabela clientes */
delete from clientes
where id = '10';

/* Mostra todos os registros da tabela clientes */
select * from clientes;

/* Ao tentar realizar alterações em (ou exclusão de) vários registros, o MySQL Workbench apresenta um erro por questões de segurança.
Veja alguns exemplos: */

update clientes
set limite_credito = '1000';

delete from clientes
where uf = 'RS';

/* Para modificar essa restrição, utilize Edit – Preferences – SQL Editor – "Safe Updates" e desmarque a opção
"Safe Updates (reject UPDATES and DELETES with no restrictions". É necessário a reconexão ao DBMS (Query - Reconnect to Server) 
Após isso, é possível alterar ou excluir vários registros da tabela */

/* Altera o limite de crédito de todos os registros para 1.000 */
update clientes
set limite_credito = '1000';

/* Mostra todos os registros da tabela clientes. */
select * from clientes;

/* Exclui os registros cujo uf = 'RS' */
delete from clientes
where uf = 'RS';

/* Mostra todos os registros da tabela clientes. */
select * from clientes;

/* Exclui todos os registros da tabela clientes */
truncate clientes;

/* Mostra todos os registros da tabela clientes. */
select * from clientes;

/* Insere um registro na tabela clientes. O auto_increment será reiniciado em 1 */
insert into clientes
(nome, genero, cidade, uf, limite_credito)
values
('João Vitor Mateo Albuquerque de Lima', 'M', 'Volta Redonda', 'RJ', '550.7');

/* Mostra todos os registros da tabela clientes */
select * from clientes;

/* Apaga a tabela clientes */
drop table clientes;

/* Apaga o banco de dados empresa */
drop database empresa;
