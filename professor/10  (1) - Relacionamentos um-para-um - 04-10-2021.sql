/* Exclui o banco de dados "um_para_um", caso o banco de dados exista */
drop database if exists um_para_um;

/* Cria o banco de dados "um_para_um" */
create database um_para_um;

/* Define o banco de dados "um_para_um" como o banco de dados atual */
use um_para_um;

/* Cria a tabela "maridos" */
create table maridos(
	id_marido int not null,
    nome_marido varchar (40) not null,
	data_nascimento date, 
	primary key (id_marido)
);

/* Cria a tabela "esposas" */
create table esposas(
	id_esposa int not null,
    id_marido int not null unique,
    nome_esposa varchar (40) not null,
	data_nascimento date, 
	primary key (id_esposa),
    foreign key (id_marido) references maridos(id_marido)
);

/* Insere registros na tabela "maridos" */
insert into maridos
(id_marido, nome_marido, data_nascimento)
values
('1', 'Marcelo', '1969-03-02'),
('2', 'Antonio', '1977-12-30'),
('3', 'Pedro', '1992-06-25');

/* Mostra os registros da tabela "maridos" */
select * from maridos;

/* Insere registros na tabela "esposas" */
insert into esposas
(id_esposa, id_marido, nome_esposa, data_nascimento)
values
('1', '1', 'Sonia', '1973-03-28'),
('2', '2', 'Ana', '1981-11-15');

/* Mostra os registros da tabela "esposas" */
select * from esposas;

/* Tenta inserir um marido já cadastrado para uma esposa. O comando resultará em erro, devido a constraint "unique" para a 
coluna "id_marido" na tabela "esposas" */
insert into esposas
(id_esposa, id_marido, nome_esposa, data_nascimento)
values
('3', '1', 'Beatriz', '1973-03-28');

/* Integridade referencial é um conceito relacionado à chaves estrangeiras.
Este conceito diz que o valor que é chave estrangeira em uma tabela destino, deve ser chave primária de algum registro na tabela origem.
Quando essa regra é desrespeitada, então temos o caso em que a integridade referencial é violada. */

/* Tenta inserir um marido não cadastrado para uma esposa. O comando resultará em erro devido à constraint "foreign key"
na tabela esposas. É necessário primeiro cadastrar o marido */
insert into esposas
(id_esposa, id_marido, nome_esposa, data_nascimento)
values
('3', '4', 'Beatriz', '1990-12-28');

/* Tenta excluir um marido que está cadastrado na tabela "esposas". O comando resultará em erro por conta da relação entre as tabelas.
É necessário excluir todas as ocorrência do marido na tabela "esposas" para efetivar a exclusão do marido da tabela "maridos" */
delete from maridos
where id_marido = '1';
