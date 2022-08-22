/* Exclui o banco de dados "empresa", caso o banco de dados exista */
drop database if exists empresa;

/* Cria o banco de dados "empresa", com definições com permitem a utilização de acentos e símbolos ("character set utf8mb4")
e a comparação entre caracteres acentuados e que não diferenciam maiúsculas e minúsculas ("utf8mb4_0900_ai_ci") */
create database empresa
character set utf8mb4
collate utf8mb4_0900_ai_ci;

/* Define o banco de dados atual */
use empresa;

/* Cria a tabela de clientes (observe as constraints "not null", "auto_increment" e "primary key") */
create table clientes(
	id int not null auto_increment,
	nome varchar (40) not null,
	genero enum ('M', 'F'),
	nascimento date,
	cidade varchar (20) default 'Curitiba',
	uf char (2) default 'PR',
	primary key (id)
);

/* Descreve a estrutura da tabela */
describe clientes;

/* Insere um registro na tabela de clientes */
insert into clientes
(id, nome, genero, nascimento, cidade, uf)
values
('1', 'Ana', 'F', '1990-06-15', 'Curitiba', 'PR');

/* Mostra todos os registros da tabela de clientes */
select * from clientes;

/* Insere um registro na tabela  de clientes, omitindo o campo "id", já que é auto_increment */
insert into clientes
(nome, genero, nascimento, cidade, uf)
value
('Beatriz', 'F', '1990-07-15', 'Campo Largo', 'PR');

/* Mostra todos os registros da tabela /*
select * from clientes;

/* Insere um registro na tabela de clientes, usando os valores default para "id", "cidade" e "uf) */
insert into clientes
(id, nome, genero, nascimento, cidade, uf)
values
(default, 'Carlos', 'M', '1990-08-15', default, default);

/* Mostra todos os registros da tabela */
select * from clientes;

/* Insere um registro na tabela de clientes. Aqui, omitiu-se os campos da tabela, visto que todos receberão valores */
insert into clientes
values
(default, 'Daniel', 'M', '1991-09-20', default, default);

/* Mostra todos os registros da tabela */
select * from clientes;

/* Insere um registro na tabela de clientes, onde os campos "id", "cidade" e "uf" assumem seus valores default */
insert into clientes
(nome, genero, nascimento)
values
('Daniela', 'F', '2000-09-17');

/* Mostra todos os registros da tabela */
select * from clientes;

/* Insere vários registros na tabela de clientes (cada registro é separado do outro por vírgula e um ponto-e-vírgula encerra o comando) */
insert into clientes
(id, nome, genero, nascimento, cidade, uf)
values
(default, 'Elaine', 'F', '1995-09-21', default, default),
(default, 'Fábio', 'M', '1995-12-22', 'Ponta Grossa', default),
(default, 'Gilberto', 'M', '1996-11-23', 'Santo André', 'SP');

/* Mostra todos os registros da tabela */
select * from clientes;

/* Insere um registro na tabela de clientes com o vaor nulo para o campo "nascimento" */
insert into clientes
(nome, genero, nascimento, cidade, uf)
values
('Henrique', 'M', null, 'Ortigueira', 'PR');

/* Mostra todos os registros da tabela */
select * from clientes;

/* Tenta violar  a regra de preenchimento do campo "gênero", que aceita apenas "M" ou "F" (o MySQL apresentará uma mensagem de erro) */
insert into clientes
(nome, genero, nascimento, cidade, uf)
values
('Ingrid', 'A', '1977-11-25', 'Curitiba', 'PR');

/* Inclui o registro corretamente */
insert into clientes
(nome, genero, nascimento, cidade, uf)
values
('Ingrid', 'F', '1977-11-25', 'Curitiba', 'PR');

/* Mostra todos os registros da tabela */
select * from clientes;
