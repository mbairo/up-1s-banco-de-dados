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

/* Cria a tabela "dependentes" */
create table dependentes(
	id_dependente int not null,
    id_funcionario int not null,
    nome_dependente varchar (40) not null,
	parentesco enum('Filho', 'Filha', 'Cônjuge'), 
	primary key (id_dependente),
    foreign key (id_funcionario) references funcionarios(id_funcionario)
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

/* Integridade referencial é um conceito relacionado à chaves estrangeiras.
Este conceito diz que o valor que é chave estrangeira em uma tabela destino, deve ser chave primária de algum registro na tabela origem.
Quando essa regra é desrespeitada, então temos o caso em que a integridade referencial é violada. */

/* Tenta inserir um funcionário não cadastrado para um dependente. O comando resultará em erro devido à constraint "foreign key"
na tabela dependentes. É necessário primeiro cadastrar o funcionário */
insert into dependentes
(id_dependente, id_funcionario, nome_dependente, parentesco)
values
('5', '4', 'Gabriel', 'Filho');

/* Tenta excluir um funcionário que está cadastrado na tabela "dependentes". O comando resultará em erro por conta da relação entre as tabelas.
É necessário excluir todas as ocorrências do funcionário na tabela "dependentes" para efetivar a exclusão do funcionário da tabela "funcionarios" */
delete from funcionarios
where funcionario = '1';
