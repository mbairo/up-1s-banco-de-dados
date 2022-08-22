/*ATIVIDADE 1*/

/*Marcos Bairo*/
/*1 - Em um banco de dados MySQL intitulado "atividade_1", estruture o seguinte relacionamento: 
"Uma aeronave pode ter muitos passageiros, mas um passageiro só pode estar em um vôo de cada vez". 
Insira nesse banco de dados, pelo menos 3 vôos com 5 passageiros em cada vôo.*/

create database atividade_1;
use atividade_1;

/*Criando Tabelas*/

create table voos(
id_voo int not null,
nome_voo char(7) not null,
dia_hora datetime not null,
primary key(id_voo)
);
select * from voos;

create table passageiros(
id_passageiro int auto_increment,
nome_passageiro varchar(50) not null,
nacionalidade varchar(30) not null,
primary key (id_passageiro)
);
select * from passageiros;

/*Seria necessário um primary key para a tabela "a_bordo"? */
create table a_bordo(
id_voo int not null,
id_passageiro int not null unique,
foreign key (id_voo) references voos(id_voo),
foreign key (id_passageiro) references passageiros(id_passageiro)
);
select * from a_bordo;


/*Inserção de dados*/

insert into voos
(id_voo, nome_voo, dia_hora)
values
('100', 'CWBxCGH', '2021-10-31 23:52:00'),
('200', 'FLNxCWB', '2021-10-31 23:30:00'),
('300', 'BYOxPVH', '2021-10-31 23:22:00');
select * from voos;


insert into passageiros
(nome_passageiro, nacionalidade)
values
('Marcos','Brasileiro'),
('Loiara','Brasileira'),
('Guilherme','Brasileiro'),
('Elisa','Brasileira'),
('Larissa','Brasileira'),
('Gambit','Francesa'),
('Edmund Burke','Irlandês'),
('Chaves','Mexicano'),
('Churchill','Britanico'),
('Aleksander H. Laks','Polonês'),
('Pedro de Alcântara','Português'),
('Dostoievski','Russo'),
('Margaret','Britanica'),
('Reagan','Norte Americano'),
('Ruy Barbosa','Brasileiro');
select * from passageiros;

insert into a_bordo 
(id_voo, id_passageiro)
values
('100','1'),
('100','2'),
('100','3'),
('100','4'),
('100','5'),
('200','14'),
('200','11'),
('200','6'),
('200','9'),
('200','7'),
('300','12'),
('300','13'),
('300','15'),
('300','10'),
('300','8');
select * from a_bordo;






