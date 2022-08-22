/* Cria o banco de dados "locadora", com definições com permitem a utilização de acentos e símbolos ("character set utf8mb4")
e a comparação entre caracteres acentuados e que não diferenciam maiúsculas e minúsculas ("utf8mb4_0900_ai_ci") */
create database locadora
character set utf8mb4
collate utf8mb4_0900_ai_ci;

/* Define o banco de dados "locadora" como o banco de dados atual */
use locadora;

/* Cria a tabela "filmes" */
create table filmes(
	id int not null auto_increment,
    nome varchar (40) not null,
	primary key(id)
);

/* Descreve a estrutura da tabela "filmes" */
describe filmes;

/* Inclusão dos registros na tabela "filmes" */
insert into filmes
(nome)
values
('A Hora do Pesadelo'),
('Bem-Hur'),
('Como Eu Era antes de Você'),
('Estrada sem Lei'),
('Forrest Gump - O Contador de Histórias'),
('Harry Potter e a Ordem da Fênix'),
('Intocáveis'),
('It - A Coisa'),
('Minha Mãe É uma Peça'),
('O Iluminado'),
('O Resgate do Soldado Ryan'),
('Os Infiltrados'),
('Vingadores'),
('Pantera Negra'),
('Para Todos os Garotos que Já Amei');

/* Mostra os registros da tabela "filmes" */
select * from filmes;

/* Altera o nome da tabela "filmes" para "acervo" */
alter table filmes
rename to acervo;

/* Altera o nome da coluna "nome" para "título" */
alter table acervo
change column nome titulo varchar(40);

/* Adiciona a coluna "genero" na tabela "acervo" */
alter table acervo
add column genero enum ('Ação', 'Aventura', 'Comédia', 'Drama', 'Policial', 'Romance', 'Terror');

/* Adiciona a coluna "ano" na tabela  "acervo" */
alter table acervo
add column ano year;

/* Atualiza as colunas "genero" e "ano" da tabela "acervo" */
update acervo
set genero = 'Terror', ano = '1986'
where id = '1';

update acervo
set genero = 'Aventura', ano = '1960'
where id = '2';

update acervo
set genero = 'Romance', ano = '2016'
where id = '3';

update acervo
set genero = 'Comédia', ano = '2014'
where id = '4';

update acervo
set genero = 'Comédia', ano = '1994'
where id = '5';

update acervo
set genero = 'Aventura', ano = '2007'
where id = '6';

update acervo
set genero = 'Drama', ano = '2012'
where id = '7';

update acervo
set genero = 'Terror', ano = '2017'
where id = '8';

update acervo
set genero = 'Comédia', ano = '2013'
where id = '9';

update acervo
set genero = 'Terror', ano = '1980'
where id = '10';

update acervo
set genero = 'Drama', ano = '1988'
where id = '11';

update acervo
set genero = 'Policial', ano = '2006'
where id = '12';

update acervo
set genero = 'Ação', ano = '2012'
where id = '13';

update acervo
set genero = 'Ação', ano = '2018'
where id = '14';

update acervo
set genero = 'Romance', ano = '2018'
where id = '15';

/* Altera o genero do filme "Estrada sem Lei" para "Policial" */
update acervo
set genero = 'Policial'
where id = '4';

/* Altera o titulo do filme "Vingadores" para "Os Vingadores - The Avengers" */
update acervo
set titulo = 'Os Vingadores - The Avengers'
where id = '13';

/* Exclui o título "Os Infiltrados" da tabela "acervo" */
delete from acervo
where id = '12';

/* Exclui todos os registros da tabela "acervo" */
truncate acervo;

/* Exclui a tabela "acervo" */
drop table acervo;

/* Exclui o banco de dados "locadora" */
drop database locadora;
