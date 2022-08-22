/* Exclui o banco de dados "loja", caso o banco de dados exista */
drop database if exists loja;

/* Cria o banco de dados "loja", com definições com permitem a utilização de acentos e símbolos ("character set utf8mb4")
e a comparação entre caracteres acentuados e que não diferenciam maiúsculas e minúsculas ("utf8mb4_0900_ai_ci") */
create database loja
character set utf8mb4
collate utf8mb4_0900_ai_ci;

/* Define o banco de dados loja como o banco de dados atual */
use loja;

/* Cria a tabela produtos */
create table produtos(
	id int not null,
    nome varchar (40) not null,
	categoria enum ('Bebidas', 'Carnes/Aves', 'Condimentos', 'Confeitos', 'Frutos do Mar', 'Grãos/Cereais', 'Hortigranjeiros', 'Laticínios'),
	preco_unitario decimal (6,2),
    unidades_estoque tinyint unsigned,
    descontinuado enum ('Sim', 'Não'),
	primary key(id)
);

/* Descreve a estrutura da tabela produtos*/
describe produtos;

/* Insere registros na tabela produtos */
insert into produtos
(id, nome, categoria, preco_unitario, unidades_estoque, descontinuado)
values
('1', 'Chai', 'Bebidas', '18', '39', 'Não'),
('2', 'Chang', 'Bebidas', '19', '17', 'Não'),
('3', 'Aniseed Syrup', 'Condimentos', '10', '13', 'Não'),
('4', 'Chef Anton Cajun Seasoning', 'Condimentos', '22', '53', 'Não'),
('5', 'Chef Anton Gumbo Mix', 'Condimentos', '21.35', '0', 'Sim'), 
('6', 'Grandmas Boysenberry Spread', 'Condimentos', '25', '120', 'Não'),
('7', 'Uncle Bobs Organic Dried Pears', 'Hortigranjeiros', '30', '15', 'Não'),
('8', 'Northwoods Cranberry Sauce', 'Condimentos', '40', '6', 'Não'),
('9', 'Mishi Kobe Niku', 'Carnes/Aves', '97', '29', 'Sim'), 
('10', 'Ikura', 'Frutos do Mar', '31', '31', 'Não'), 
('11', 'Queso Cabrales', 'Laticínios', '21', '22', 'Não'),
('12', 'Queso Manchego La Pastora', 'Laticínios', '38', '86', 'Não'),
('13', 'Konbu', 'Frutos do Mar', '6', '24', 'Não'),
('14', 'Tofu', 'Hortigranjeiros', '23.25', '35', 'Não'), 
('15', 'Genen Shouyu', 'Condimentos', '15.5', '39', 'Não'),
('16', 'Pavlova', 'Confeitos', '17.45', '29', 'Não'),
('17', 'Alice Mutton', 'Carnes/Aves', '39', '0', 'Sim'),
('18', 'Carnarvon Tigers', 'Frutos do Mar', '62.5', '42', 'Não'),
('19', 'Teatime Chocolate Biscuits', 'Confeitos', '9.2', '25', 'Não'),
('20', 'Sir Rodneys Marmalade', 'Confeitos', '81', '40', 'Não'),
('21', 'Sir Rodneys Scones', 'Confeitos', '10', '3', 'Não'),
('22', 'Gustafs Knäckebröd', 'Grãos/Cereais', '21', '104', 'Não'),
('23', 'Tunnbröd', 'Grãos/Cereais', '9', '61', 'Não'),
('24', 'Guaraná Fantástica', 'Bebidas', '4.5', '20', 'Sim'),
('25', 'NuNuCa Nuß-Nougat-Creme', 'Confeitos', '14', '76', 'Não'),
('26', 'Gumbär Gummibärchen', 'Confeitos', '31.23', '15', 'Não'),
('27', 'Schoggi Schokolade', 'Confeitos', '43.9', '49', 'Não'),
('28', 'Rössle Sauerkraut', 'Hortigranjeiros', '45.6', '26', 'Sim'),
('29', 'Thüringer Rostbratwurst', 'Carnes/Aves', '123.79', '0', 'Sim'),
('30', 'Nord-Ost Matjeshering', 'Frutos do Mar', '25.89', '10', 'Não'),
('31', 'Gorgonzola Telino', 'Laticínios', '12.5', '0', 'Não'),
('32', 'Mascarpone Fabioli', 'Laticínios', '32', '9', 'Não'),
('33', 'Geitost', 'Laticínios', '2.5', '112', 'Não'),
('34', 'Sasquatch Ale', 'Bebidas', '14', '111', 'Não'),
('35', 'Steeleye Stout', 'Bebidas', '18', '20', 'Não'),
('36', 'Inlagd Sill', 'Frutos do Mar', '19', '112', 'Não'),
('37', 'Gravad lax', 'Frutos do Mar', '26', '11', 'Não'),
('38', 'Côte de Blaye', 'Bebidas', '263.5', '17', 'Não'),
('39', 'Chartreuse verte', 'Bebidas', '18', '69', 'Não'),
('40', 'Boston Crab Meat', 'Frutos do Mar', '18.4', '123', 'Não'),
('41', 'Jacks New England Clam Chowder', 'Frutos do Mar', '9.65', '85', 'Não'),
('42', 'Singaporean Hokkien Fried Mee', 'Grãos/Cereais', '14', '26', 'Sim'),
('43', 'Ipoh Coffee', 'Bebidas', '46', '17', 'Não'),
('44', 'Gula Malacca', 'Condimentos', '19.45', '27', 'Não'),
('45', 'Røgede sild', 'Frutos do Mar', '9.5', '5', 'Não'),
('46', 'Spegesild', 'Frutos do Mar', '12', '95', 'Não'),
('47', 'Zaanse Koeken', 'Confeitos', '9.5', '36', 'Não'),
('48', 'Chocolade', 'Confeitos', '12.75', '15', 'Não'),
('49', 'Maxilaku', 'Confeitos', '20', '10', 'Não'),
('50', 'Valkoinen Suklaa', 'Confeitos', '16.25', '65', 'Não'),
('51', 'Manjimup Dried Apples', 'Hortigranjeiros', '53', '20', 'Não'),
('52', 'Filo Mix', 'Grãos/Cereais', '7', '38', 'Não'),
('53', 'Perth Pasties', 'Carnes/Aves', '32.8', '0', 'Sim'),
('54', 'Tourtière', 'Carnes/Aves', '7.45', '21', 'Não'),
('55', 'Pâté Chinois', 'Carnes/Aves', '24', '115', 'Não'),
('56', 'Gnocchi di Nonna Alice', 'Grãos/Cereais', '38', '21', 'Não'),
('57', 'Ravioli Angelo', 'Grãos/Cereais', '19.5', '36', 'Não'),
('58', 'Escargots de Bourgogne', 'Frutos do Mar', '13.25', '62', 'Não'),
('59', 'Raclette Courdavault', 'Laticínios', '55', '79', 'Não'),
('60', 'Camembert Pierrot', 'Laticínios', '34', '19', 'Não'),
('61', 'Sirop dérable', 'Condimentos', '28.5', '113', 'Não'),
('62', 'Tarte au sucre', 'Confeitos', '49.3', '17', 'Não'),
('63', 'Vegie-spread', 'Condimentos', '43.9', '24', 'Não'),
('64', 'Wimmers Gute Semmelknödel', 'Grãos/Cereais', '33.25', '22', 'Não'),
('65', 'Louisiana Fiery Hot Pepper Sauce', 'Condimentos', '21.05', '76', 'Não'),
('66', 'Louisiana Hot Spiced Okra', 'Condimentos', '17', '4', 'Não'),
('67', 'Laughing Lumberjack Lager', 'Bebidas', '14', '52', 'Não'),
('68', 'Scottish Longbreads', 'Confeitos', '12.5', '6', 'Não'),
('69', 'Gudbrandsdalsost', 'Laticínios', '36', '26', 'Não'),
('70', 'Outback Lager', 'Bebidas', '15', '15', 'Não'),
('71', 'Flotemysost', 'Laticínios', '21.5', '26', 'Não'),
('72', 'Mozzarella di Giovanni', 'Laticínios', '34.8', '14', 'Não'),
('73', 'Röd Kaviar', 'Frutos do Mar', '15', '101', 'Não'),
('74', 'Longlife Tofu', 'Hortigranjeiros', '10', '4', 'Não'),
('75', 'Rhonbrau Klosterbier', 'Bebidas', '7.75', '125', 'Não'),
('76', 'Lakkalikoori', 'Bebidas', '18', '57', 'Não'),
('77', 'Original Frankfurter grüne Soe', 'Condimentos', '13', '32', 'Não');

/* Mostra todos os registros da tabela de produtos. */
select * from produtos;

/* Atividades - Filtragem de colunas. */

/* 1. Nome dos produtos, em ordem crescente. */
select nome from produtos
order by nome;

/* 2. Nome, categoria e preço dos produtos, ordenado por nome. */
select nome, categoria, preco_unitario from produtos
order by nome;

/* 3. Categoria e nome dos produtos, ordenado por categoria e por nome. */
select categoria, nome from produtos
order by categoria, nome;

/* 4. Nome e preço dos produtos, ordenado por ordem decrescente de preço. */
select nome, preco_unitario from produtos
order by preco_unitario desc;

/* 5. Nome dos produtos e unidades em estoque, ordenado por unidades em estoque. */
select nome, unidades_estoque from produtos
order by unidades_estoque;

/* Atividades - Filtragem de linhas. */

/* 6. Produtos da categoria Laticínios. */
select nome, categoria from produtos
where categoria = 'Laticínios'
order by nome;

/* 7. Todos os produtos, exceto da categoria Bebidas. */
select nome, categoria from produtos
where categoria != 'Bebidas'
order by nome;

/* 8. Produtos descontinuados. */
select nome, categoria, descontinuado from produtos
where descontinuado = 'Sim'
order by nome;

/* 9. Produtos com unidades em estoque igual a 0. */
select nome, unidades_estoque from produtos
where unidades_estoque = '0'
order by nome;

/* 10. Produtos com preço unitário acima de 70,0. */
select nome, preco_unitario from produtos
where preco_unitario > '70'
order by nome;

/* 11. Produtos com preço unitário entre 10,0 e 15,0. */
select nome, preco_unitario from produtos
where preco_unitario between '10' and '15'
order by nome;

/* 12. Produtos das categorias Bebidas, Condimentos ou Confeitos. */
select categoria, nome from produtos
where categoria in ('Bebidas', 'Condimentos', 'Confeitos')
order by categoria, nome;

/* 13. Produtos da categoria Bebidas com mais de 100 unidades em estoque. */
select categoria, nome, unidades_estoque from produtos
where unidades_estoque > '100'
order by categoria, nome;

/* 14. Produtos da categoria Bebidas ou Laticínios com mais de 100 unidades em estoque. */
select categoria, nome, unidades_estoque from produtos
where (categoria = 'Bebidas' or categoria = 'Laticínios') and unidades_estoque > '100'
order by categoria, nome;

/* 15. Produtos descontinuados com unidades em estoque diferente de 0. */
select nome, descontinuado, unidades_estoque from produtos
where descontinuado = 'Sim' and unidades_estoque != '0'
order by nome;

/* 16. Produtos iniciando com a letra Q. */
select nome from produtos
where nome like 'M%'
order by nome;

/* 17. Categorias distintas dos produtos. */
select distinct categoria from produtos;

/* Funções de agregação */

/* 18. Quantidade de produtos da lista. */
select count(*) as total_produtos from produtos;

/* 19. Quantidade de produtos da categoria Confeitos. */
select count(*) as total_produtos from produtos
where categoria = 'Confeitos';

/* 20. Quantidade de produtos da categoria Confeitos com preço maior que 15,0. */
select count(*) as total_produtos from produtos
where categoria = 'Confeitos' and preco_unitario > '15';

/* 21. Quantidade de produtos da categoria Confeitos com preço maior que 15,0 e unidades em estoque maior que 50. */
select count(*) as total_produtos from produtos
where categoria = 'Confeitos' and preco_unitario > '15' and unidades_estoque > '50';

/* 22. Maior preço da categoria Bebidas. */
select max(preco_unitario) as maior_preco from produtos
where categoria = 'Bebidas';

/* 23. Menor preço da categoria Bebidas. */
select min(preco_unitario) as menor_preco from produtos
where categoria = 'Confeitos';

/* 24. Preço médio dos produtos da categoria Bebidas. */
select avg(preco_unitario) as preco_medio from produtos
where categoria = 'Bebidas';

/* 25. Total de unidades em estoque da categoria Confeitos. */
select sum(unidades_estoque) as total_estoque from produtos
where categoria = 'Confeitos';

/* 26. Número de produtos descontinuados. */
select count(*) as total_produtos from produtos
where descontinuado = 'Sim';

/* 27. Preço dos produtos da categoria Bebidas com 10% de aumento. */
select nome, preco_unitario, preco_unitario * 1.1 as novo_preco from produtos order by nome;

/* 28. Preço dos produtos da categoria Laticínios com 5% de desconto. */
select nome, preco_unitario, preco_unitario * 0.95 as novo_preco from produtos order by nome;

/* 29. Preço dos produtos com preço unitário acima de 40,0 com 7% de desconto. */
select nome, preco_unitario, preco_unitario * 0.93 as novo_preco from produtos where preco_unitario > 40 order by nome;

/* Funções de agrupamento */

/* 30. Quantidade de produtos por categoria. */
select categoria, count(*) as total_produtos from produtos
group by categoria;

/* 31. Quantidade de produtos descontinuados por categoria. */
select categoria, count(*) as total_produtos from produtos
where descontinuado = 'Sim'
group by categoria
order by categoria;

/* 32. Categorias com mais de um produto descontinuado. */
select categoria, count(*) as total_produtos from produtos
where descontinuado = 'Sim'
group by categoria
having total_produtos > 1
order by categoria;

/* 33. Categorias com mais de 500 unidades de produtos em estoque. */
select categoria, sum(unidades_estoque) as total_estoque from produtos
group by categoria
having total_estoque > 500
order by categoria;

/* 34. Categorias com até 5 produtos. */
select categoria, count(*) as total_produtos from produtos
group by categoria
having total_produtos <= 5
order by categoria;

/* 35. Categorias com mais de 10 produtos. */
select categoria, count(*) as total_produtos from produtos
group by categoria
having total_produtos > 10
order by categoria;

/* Exclui a tabela de produtos. */
drop table produtos;

/* Exclui o banco de dados loja. */
drop database loja;
