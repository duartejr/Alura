USE sucos;

SELECT NOME, MATRICULA FROM tabela_de_vendedores;

SELECT * FROM tabela_de_vendedores WHERE NOME = 'Claudia Morais';

SELECT * FROM tabela_de_vendedores WHERE percentual_comissao > 0.1;

select * from tabela_de_vendedores where year(data_nascimento) >= '2016';

select * from tabela_de_vendedores where de_ferias = 1 and year(data_nascimento) < '2016';