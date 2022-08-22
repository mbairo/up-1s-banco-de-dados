/*ATIVIDADE 2*/

/*Marcos Bairo*/
/*2 - "Uma nação possui vários estados, e um estado, muitas cidades. Um estado só poderá estar vinculado a uma nação e uma cidade só poderá estar vinculada a um estado". 
Insira nesse banco de dados pelo menos 3 nações. Para cada nação, insira pelo menos 2 estados e, para cada estado, insira pelo menos 2 cidades.*/

create database atividade_2;
use atividade_2;

/*Criando Tabelas*/

create table nacoes(
nacao varchar(65) not null,
populacao_pais varchar(11),
idioma varchar(35),
qdt_estados int not null,
melhor_vinicola varchar(50),
primary key (nacao)
);

create table estados(
estado varchar(65) not null unique,
populacao_est varchar(11),
qdt_cidades varchar(4),
nacao varchar(65) not null,
primary key(estado),
foreign key(nacao) references nacoes(nacao)
);

create table cidades(
cidade varchar(65) not null unique,
populacao_cid varchar(11),
estado varchar(65) not null,
primary key(cidade),
foreign key(estado) references estados(estado)
);

/*Inserção de dados*/

insert into nacoes
(nacao, populacao_pais, idioma, qdt_estados, melhor_vinicola)
values
('Brasil','213 Milhões','Português','27','Garibaldi - Rio Grande do Sul'),
('Chile','19 Milhões','Castelhano','57','Montes - Santa Cruz'),
('Argentina','45 Milhões','Castelhano','23','Zuccardi Valle de Uco - Mendoza');
select * from nacoes;

insert into estados
(estado, populacao_est, qdt_cidades, nacao)
values
('Paraná','12 Milhões','399','Brasil'),
('Santa Catarina','08 Milhões','295','Brasil'),

('Colchagua','196 Mil','17','Chile'),
('Santiago','5 Milhões','32','Chile'),

('Buenos Aires','16 Milhões','135','Argentina'), /*O estado possui o mesmo nome da Famosa cidade Buenos Aires*/
('Terra do Fogo','127 Mil','3','Argentina');
select * from estados;

insert into cidades
(cidade, populacao_cid, estado)
values
('Curitiba','2 Milhões','Paraná'),
('Maringa','440 Mil','Paraná'),
('Florianópolis','510 Mil','Santa Catarina'),
('Tubarão','110 Mil','Santa Catarina'),

('Santa Cruz','40 Mil','Colchagua'),
('Peralillo','12 Mil','Colchagua'),
('Cerrillos ','73 Mil','Santiago'),
('Santiago','190 Mil','Santiago'),

('Buenos Aires','3 Milhões','Buenos Aires'),
('La Plata','1 Milhão','Buenos Aires'),
('Ushuaia','56 Mil','Terra do Fogo'),
('Tolhuin','3 Mil','Terra do Fogo');
select * from cidades;





