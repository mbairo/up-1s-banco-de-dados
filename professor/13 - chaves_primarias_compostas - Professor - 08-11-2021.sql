/* Cria o banco de dados "estados"*/
create database estados;

/* Define o banco de dados "estados" como o banco de dados atual
use estados;

/* Cria a tabela de cidades usando a coluna cidade como chave primária */
create table cidades(
	cidade varchar(50),
    uf char(2),
    populacao int,
    primary key (cidade)
);

/* Insere um registro na tabela cidades */
insert into cidades
(cidade, uf, populacao)
values
('Rio Claro', 'SP', '185421');

/* Mostra os registros da tabela "cidades" */
select * from cidades;

/* Tenta inserir uma cidade com um nome já cadastrado. Será apresentado um erro,
visto que a coluna cidade é chave primária na tabela "cidades" */
insert into cidades
(cidade, uf, populacao)
values
('Rio Claro', 'RJ', '17216');

/* Exclui a tabela cidades */
drop table cidades;

/* Cria a tabela de cidade usando uma chave primária composta (cidade + uf) para a tabela "cidades" */
create table cidades(
	cidade varchar(50),
    uf char(2),
    populacao int,
    primary key (cidade, uf)
);

/* Insere um registro na tabela cidades */
insert into cidades
(cidade, uf, populacao)
values
('Rio Claro', 'SP', '185421'),
('Rio Claro', 'RJ', '17216');

/* Mostra os registros da tabela "cidades" */
select * from cidades;
