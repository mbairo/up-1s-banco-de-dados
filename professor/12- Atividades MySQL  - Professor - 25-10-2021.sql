/* Exclui o banco de dados "empresa", caso o banco de dados exista */
drop database if exists empresa;

/* Cria o banco de dados "empresa" */
create database empresa;

/* Define o banco de dados "empresa" como o banco de dados atual */
use empresa;

/* Cria a tabela "fornecedores" */
create table fornecedores(
	id_fornecedor int not null,
    nome_fornecedor varchar (40) not null,
	cidade varchar(20),
    uf char(2),
	primary key (id_fornecedor)
);

/* Cria a tabela "unidades" */
create table unidades(
	id_unidade int not null,
    nome_unidade varchar (30) not null,
	primary key (id_unidade)
);

/* Cria a tabela "materiais" */
create table materiais(
	id_material int not null,
    id_fornecedor int not null,
    nome_material varchar (40) not null,
    quantidade_estoque int,
    quantidade_estoque_minima int,
    id_unidade int not null,
	primary key (id_material),
    foreign key (id_fornecedor) references fornecedores(id_fornecedor),
    foreign key (id_unidade) references unidades(id_unidade)
);

/* Cria a tabela "pedidos" */
create table pedidos(
	id_pedido int not null,
    data_pedido date,
	primary key (id_pedido)
);

/* Cria a tabela "itens_pedido" */
create table itens_pedido(
	id_item_pedido int not null,
    id_pedido int not null,
    id_material int not null,
    quantidade_pedida int,
	valor_unitario decimal(5,2),
    primary key (id_item_pedido),
    foreign key (id_pedido) references pedidos(id_pedido),
    foreign key (id_material) references materiais(id_material)
);

/* Insere registros na tabela "Fornecedores" */
insert into fornecedores
(id_fornecedor, nome_fornecedor, cidade, uf)
values
('1', 'ABC Materiais Elétricos', 'Curitiba', 'PR'),
('2', 'XYZ Materiais de Escritório', 'Rio de Janeiro', 'RJ'),
('3', 'Hidra Materiais Hidraulicos', 'São Paulo', 'SP'),
('4', 'HidraX Materiais Elétricos e Hidraulicos', 'Porto Alegre', 'RS');

/* Mostra os registros da tabela "Fornecedores" */
select * from fornecedores;

/* Insere registros na tabela "Unidades" */
insert into unidades
(id_unidade, nome_unidade)
values
('1', 'Unidades'),
('2', 'Kg'),
('3', 'Litros'),
('4', 'Caixa com 12 unidades'),
('5', 'Caixa com 100 unidades'),
('6', 'Metros');

/* Mostra os registros da tabela "Unidades" */
select * from unidades;

/* Insere registros na tabela "Materiais" */
insert into materiais
(id_material , id_fornecedor, nome_material, quantidade_estoque, quantidade_estoque_minima, id_unidade)
values
('1', '1', 'Tomada elétrica 10A padrão novo', '12', '5', '1'),
('2', '1', 'Disjuntor elétrico 25A', '10', '5', '1'),
('3', '2', 'Resma papel branco A4', '32', '20', '4'),
('4', '2', 'Toner impressora HR5522', '6', '10', '1'),
('5', '3', 'Cano PVC 1/2 pol', '6', '10', '6'),
('6', '3', 'Cano PVC 3/4 pol', '8', '10', '6'),
('7', '3', 'Medidor hidráulico 1/2 pol', '3', '2', '1'),
('8', '3', 'Conector Joelho 1/2 pol', '18', '15', '1'),
('9', '1', 'Tomada elétrica 20A padrão novo', '8', '5', '1'),
('10', '2', 'Caneta esferográfica azul', '80', '120', '1'),
('11', '2', 'Grampeador mesa pequeno', '5', '5', '1'),
('12', '2', 'Caneta Marca Texto Amarela', '6', '15', '5'),
('13', '2', 'Lápis Preto HB', '15', '25', '1');

/* Mostra os registros da tabela "Materiais" */
select * from materiais;

/* Insere registros na tabela "Pedidos" */
insert into pedidos
(id_pedido, data_pedido)
values
('1', '2015-02-25'),
('2', '2014-02-10'),
('3', '2015-03-01');

/* Mostra os registros da tabela "Pedidos" */
select * from pedidos;

/* Insere registros na tabela "Itens pedido" */
insert into itens_pedido
(id_item_pedido, id_pedido, id_material, quantidade_pedida, valor_unitario)
values
('1', '1', '10', '100', '0.50'),
('2', '1', '13', '100', '0.25'),
('3', '2', '8', '50', '1.30'),
('4', '3', '11', '5', '76.00');

/* Mostra os registros da tabela "Itens pedidos" */
select * from itens_pedido;

/* 1 - Nome do material e nome da unidade */


/* 2 - Nome do material e nome da unidade dos materiais vendidos em unidades */


/* 3 - Quantidade de materiais por nome de unidade */


/* 4 - Quantidade de materiais por nome de unidade, incluindo as unidade sem nenhum material relacionado */


/* 5 - Nome do material, nome do fornecedor e nome da unidade */


/* 6 - Nome do material e nome da unidade dos materiais vendidos por metro */


/* 7 - Nome do material e nome da unidade dos materiais vendidos em caixas com 12 ou com 100 unidades */


/* 8 - Nome do material e sua quantidade em estoque */


/* 9 - Nome do material e sua quantidade em estoque, apenas para materiais com menos de 10 unidades em estoque */


/* 10 - Nome do material, sua quantidade em estoque e sua quantidade mínima em estoque */


/* 11 - Nome do material, sua quantidade em estoque e sua quantidade mínima em estoque,
apenas para materiais onde a quantidade em estoque esteja abaixo da quantidade mínima em estoque */


/* 12 - Nome e cidade dos fornecedores */


/* 13 - Nome e cidade dos fornecedores da cidade de Curitiba */


/* 14 - Nome dos fornecedores e seus materiais */


/* 15 - Nome dos fornecedores e seus materiais, inluindo os fornecedores sem nenhum material reacionado */


/* 16 - Nome dos fornecedores e quantidade de materiais fornecidos pelo mesmo */


/* 17 - Nome dos fornecedores e quantidade de materiais fornecidos pelo mesmo,
incluindo os fornecedores sem nenhum material relacionado */


/* 18 - Nome dos fornecedores e quantidade de materiais fornecidos pelo mesmo,
incluindo os fornecedores sem nenhum material relacionado,
apenas para fornecedores com menos de 5 materiais relacionados */


/* 19 - Nome dos fornecedores, nome do material e sua quantidade em estoque */


/* 20 - Nome dos fornecedores, nome do material e sua quantidade em estoque,
apenas para quatidade em estoque entre 10 e 20 */


/* 21 - Nome do fornecedor, nome do material e nome da unidade,
apenas para fornecedores de materiais em unidades ou metros */


/* 22 - Pedidos realizados em 2015 */


/* 23 - Pedidos realizados em fevereiro de 2015 */


/* 24 - Número do pedido e o nome dos materiais constantes no pedido */


/* 25 - Materiais que constam nos pedidos */


/* 26 - Materiais que não constam nos pedidos */


/* 27 - Número do pedido e a quantidade de itens em cada pedido */


/* 28 - Número do pedido e o valor total do pedido */


/* 29 - Número do pedido e o valor total do pedido, apenas para pedidos com valor total abaixo de 100,00 */


/* 30 - Insira mais um fornecedor no banco de dados */


/* 31 - Insira mais 2 materiais para o fornecedor inserido no item 30 */


/* 32 - Insira mais um pedido no banco de dados */


/* 33 - Insira 2 itens de pedido no banco de dados, utilizando os dados inseridos nos itens 30, 31 e 32 */ 


/* 34 - Número do pedido e o valor total do pedido inserido no item 32 */


/* 35 - Exclua o material "Tomada elétrica 10A padrão novo" do banco de dados */


/* 36 - Exclua o material "Lápis Preto HB" do banco de dados */


/* 37 - Exclua o fornecedor "HidraX Materiais Elétricos e Hidraulicos" do banco de dados */


/* 38 - Exclua o fornecedor "XYZ Materiais de Escritório" do banco de dados */
