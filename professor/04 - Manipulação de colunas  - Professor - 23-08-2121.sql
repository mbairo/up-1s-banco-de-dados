/* Exclui o banco de dados "empresa", caso o banco de dados exista */
drop database if exists empresa;

/* Cria o banco de dados "empresa", com definições com permitem a utilização de acentos e símbolos ("character set utf8mb4")
e a comparação entre caracteres acentuados e que não diferenciam maiúsculas e minúsculas ("utf8mb4_0900_ai_ci") */
create database empresa
character set utf8mb4
collate utf8mb4_0900_ai_ci;

/* Define o banco de dados atual */
use empresa;

/* Cria a tabela pessoas */
create table pessoas(
	id int not null auto_increment,
    nome varchar (30) not null,
	sexo enum ('M', 'F'),
	cidade varchar (20),
    limite_credito decimal(7,2),
    primary key(id)
);

/* Descreve a estrutura da tabela pessoas*/
describe pessoas;

/* Insere registros na tabela pessoas */
insert into pessoas
(nome, sexo, cidade, limite_credito)
values
('Pedro Augusto da Rocha', 'M', 'Novo Hamburgo', '700'),
('Antonio Carlos Mamel', 'M', 'Belo Horizonte', '3500.5'),
('Luiza Augusta Mhor', 'M', 'Niterói', '3900'),
('Jane Ester', 'F', 'Florianópolis', '800'),
('Marcos Antônio dos Santos', 'M', 'Porto Alegre', '4250.25'),
('Giovanna Goncalves Oliveira', 'F', 'Canoas', '1500'),
('Kauã Azevedo Ribeiro', 'M', 'Uberlândia', '799'),
('Rebeca Barbosa Santos', 'F', 'Santo André', '1750'),
('Sarah Carvalho Correia', 'F', 'Juiz de Fora', '499.9'),
('Antonio Almeida Lima', 'M', 'Paranaguá', '2600');

/* Mostra todos os registros da tabela pessoas */
select * from pessoas;

/* Altera o nome da tabela pessoas para clientes */
alter table pessoas
rename to clientes;

/* Tenta incluir um registro com mais de 30 caracteres de nome na tabela clientes. Será mostrada uma mensagem de erro.*/
insert into clientes
(nome, sexo, cidade, limite_credito)
values
('João Vitor Mateo Albuquerque de Lima', 'M', 'Volta Redonda', '550.7');

/* Mostra todos os registros da tabela clientes */
select * from clientes;

/* Altera o tamanho do campo "nome" para varchar(40).
O comando Modify permite alterar o tipo primitivo e as constraints do campo. */
alter table clientes
modify column nome varchar(40);

/* Descreve a estrutura da tabela clientes*/
describe clientes;

/* Tenta incluir o registro novamente */
insert into clientes
(nome, sexo, cidade, limite_credito)
values
('João Vitor Mateo Albuquerque de Lima', 'M', 'Volta Redonda', '550.7');

/* Mostra todos os registros da tabela clientes */
select * from clientes;

/* Adiciona o campo uf na tabela clientes. O campo será inserido ao final da tabela */
alter table clientes
add column uf char(2);

/* Descreve a estrutura da tabela clientes */
describe clientes;

/* Mostra todos os registros da tabela clientes */
select * from clientes;

/* Exclui o campo uf da tabela clientes */
alter table clientes
drop column uf;

/* Descreve a estrutura da tabela clientes */
describe clientes;

/* Adiciona o campo uf na tabela clientes. O campo será inserido ao início da tabela */
alter table clientes
add column uf char(2) first;

/* Descreve a estrutura da tabela clientes */
describe clientes;

/* Exclui o campo uf da tabela clientes */
alter table clientes
drop column uf;

/* Descreve a estrutura da tabela clientes */
describe clientes;

/* Adiciona o campo uf na tabela clientes após o campo cidade */
alter table clientes
add column uf char(2) after cidade;

/* Descreve a estrutura da tabela clientes */
describe clientes;

/* Mostra todos os registros da tabela clientes */
select * from clientes;

/* Altera o nome da coluna "sexo" para "genero". O comando change não pode ser usado só para renomear colunas.
É necessário renomear a coluna e fazer todas as suas definições novamente. */
alter table clientes
change column sexo genero enum ('M', 'F');

/* Descreve a estrutura da tabela clientes */
describe clientes;

/* Apaga a tabela clientes */
drop table clientes;

/* Apaga o banco de dados empresa */
drop database empresa;
