/* Exclui o banco de dados "um_para_muitos", caso o banco de dados exista */
drop database if exists um_para_muitos;

/* Cria o banco de dados "um_para_muitos" */
create database um_para_muitos;

/* Define o banco de dados "um_para_muitos" como o banco de dados atual */
use um_para_muitos;

/* Cria a tabela "funcionarios" */
create table funcionarios(
	id_funcionario int not null,
    nome_funcionario varchar (40) not null,
	cargo varchar(20), 
	primary key (id_funcionario)
);

/* Cria a tabela "dependentes". A opção "delete cascade" permite excluir os registros relacionados na tabela "muitos" automaticamente,
quando um registro da tabela "um" for excluído, garantindo a integridade referencial no banco de dados */

create table dependentes(
	id_dependente int not null,
    id_funcionario int not null,
    nome_dependente varchar (40) not null,
	parentesco enum('Filho', 'Filha', 'Cônjuge'), 
	primary key (id_dependente),
    foreign key (id_funcionario) references funcionarios(id_funcionario) on delete cascade
);

/* Insere registros na tabela "funcionarios" */
insert into funcionarios
(id_funcionario, nome_funcionario, cargo)
values
('1', 'Marcelo', 'Auxiliar'),
('2', 'Antonio', 'Gerente'),
('3', 'Pedro', 'Técnico');

/* Mostra os registros da tabela "funcionarios" */
select * from funcionarios;

/* Insere registros na tabela "dependentes" */
insert into dependentes
(id_dependente, id_funcionario, nome_dependente, parentesco)
values
('1', '1', 'Sonia', 'Cônjuge'),
('2', '1', 'Ana', 'Filha'),
('3', '1', 'Pedro', 'Filho'),
('4', '2', 'Beatriz', 'Cônjuge');

/* Mostra os registros da tabela "dependentes" */
select * from dependentes;

/* Exclui o registro do funcionário de id = 1. Ao excluir o registro, todos os dependentes relacionados ao registro serão excluídos */
delete from funcionarios
where id_funcionario = '1';

/* Mostra os registros da tabela "dependentes" */
select * from dependentes;
