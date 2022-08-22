/*cria o bando de dados*/
create database locadora;

/*Seleciona o bando de dados a ser utilizado, mas pode ser dado duplo clique na aba lateral também*/
use locadora;

/*cria a tabela*/
create table filmes(
	/*tipo inteiro// preenchimento automático */
    id  int auto_increment,
    /*Armazena caracteres de tamanho variável// não pode ficar sem prencher*/
    nome varchar(40) not null,
    /*Define um campo a ser utlizado como verificador/unico */
    primary key(id)
    );

/*Alimenta a tabela 'filmes', não se faz necessário 'id' em cada filme devido ao fato de ter o "auto_increment"*/
insert into filmes
(nome)
values
('A Hora do Pesadelo'),
('Bem-Hur'),
('Como Eu Era antes de Você'),
('Estrada sem Lei'),
('Forrest Gump – O Contador de Histórias'),
('Harry Potter e a Ordem da Fênix'),
('Intocáveis'),
('It – A Coisa'),
('It – A Coisa'),
('O Iluminado'),
('O Resgate do Soldado Ryan'),
('Os Infiltrados'),
('Vingadores'),
('Pantera Negra'),
('Para Todos os Garotos que Já Amei');

/*Verifica a tabela */
select * from filmes;

/*Altera o nome da tabela*/
alter table filmes rename to acervo;

/*Altera o nome da colula, porém é necessário fazer sua configuração novamente*/
alter table acervo change column nome titulo varchar(40) not null;

/*Adiciona colunas a tabela*/
alter table acervo
add column genero varchar(10),
add column ano year;

/*Verifica configuração da tabela*/
describe acervo;

/*Modifica a coluna desejada*/
alter table acervo
modify column genero enum ('Ação', 'Aventura', 'Comédia', 'Drama', 
'Policial', 'Romance', 'Terror');



/*Realizado a inclusão nos campos em que estavam sem // genero e ano*/
update acervo set genero = 'Terror', ano = '1986' where id = 1;
update acervo set genero = 'Aventura', ano = '1960' where id = 2;
update acervo set genero = 'Romance', ano = '2016' where id = 3;
update acervo set genero = 'Comédia', ano = '2014' where id = 4;
update acervo set genero = 'Comédia', ano = '1994' where id = 5;
update acervo set genero = 'Aventura', ano = '2007' where id = 6;
update acervo set genero = 'Drama', ano = '2012' where id = 7;
update acervo set genero = 'Terror', ano = '2017' where id = 8;
update acervo set genero = 'Comédia', ano = '2013' where id = 9;
update acervo set genero = 'Terror', ano = '1980' where id = 10;
update acervo set genero = 'Drama', ano = '1998' where id = 11;
update acervo set genero = 'Policial', ano = '2016' where id = 12;
update acervo set genero = 'Ação', ano = '2012' where id = 13;
update acervo set genero = 'Ação', ano = '2018' where id = 14;
update acervo set genero = 'Romance', ano = '2018' where id = 15;

/*verifica a tabela acervo*/
select * from acervo;


/*Alterando alguns dados dos arquivos utlilziando o "where" e "id" para especificar os desejados*/
update acervo set titulo = 'Policial', ano = '2019' where id = 4;
update acervo set titulo = 'Os Vingadores – The Avengers' where id = 13;

/*Excluindo apenas um filme, utilizanddo o comando delete junto com o where "id" para especificar apenas um item*/
delete from acervo
where id = 12;

/*Deleta todos os registros da tabela "acervo", sem volta*/
truncate acervo;

/*Deleta a tabela "acervo"*/
drop table acervo;

/*Exclue o banco de dados e tudo o que há nele*/
drop database	locadora;