/* Exclui o banco de dados "teste", caso o banco de dados exista */
drop database if exists teste;

/* Cria o banco de dados, com definições com permitem a utilização de acentos e símbolos ("character set utf8mb4")
e a comparação entre caracteres acentuados e que não diferenciam maiúsculas e minúsculas ("utf8mb4_0900_ai_ci") */
create database teste
character set utf8mb4
collate utf8mb4_0900_ai_ci;

/* Define o banco de dados atual */
use teste;

/* Cria a tabela temporária "letras" (parâmetro "temporary"). A tabela não ficará visível mas poderá ser utilizada
e será excluída quando a conexão for finalizada */
create temporary table letras(
	caracter char(1)
);

/* Insere 5 registros na tabela letras */
insert into letras
values
('A'), ('B'), ('C'), ('D'), ('E');

/* Mostra os registros da tabela letras */
select * from letras;

/* Faça um teste. Saia do do MySQL e, ao retornar, tente executar os comandos a seguir */

/* Define o banco de dados atual */
use teste;

/* Mostra os registros da tabela letras. Será retornado um erro, pois a tabela não existe mais */
select * from letras;
