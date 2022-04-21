select * from notas_fiscais A, itens_notas_fiscais B;

select * from itens_notas_fiscais limit 10;
select * from notas_fiscais limit 10;

select year(B.DATA_VENDA) as ano, sum(A.QUANTIDADE * A.PRECO) as total_venda 
from itens_notas_fiscais A inner join notas_fiscais B
on A.NUMERO = B.NUMERO
group by year(B.DATA_VENDA);

  SELECT CPF, COUNT(*) FROM notas_fiscais
  WHERE YEAR(DATA_VENDA) = 2016
  GROUP BY CPF
  HAVING COUNT(*) > 2000;

SELECT sub.CPF, sub.TOTAL FROM 
(SELECT CPF, COUNT(*) as TOTAL FROM notas_fiscais WHERE YEAR(DATA_VENDA) = 2016 group by CPF) sub
WHERE sub.TOTAL > 2000;

SELECT * FROM tabela_de_vendedores;
SELECT * FROM notas_fiscais;
SELECT * FROM tabela_de_vendedores A
INNER JOIN notas_fiscais B
ON A.MATRICULA = B.MATRICULA;
SELECT A.MATRICULA, A.NOME, COUNT(*) FROM
tabela_de_vendedores A
INNER JOIN notas_fiscais B
ON A.MATRICULA = B.MATRICULA
GROUP BY A.MATRICULA, A.NOME;
SELECT COUNT(*) FROM tabela_de_clientes;

SELECT DISTINCT TB1.CPF, TB2.NOME, TB2.CPF FROM
notas_fiscais TB1
INNER JOIN tabela_de_clientes TB2
ON TB1.CPF = TB2.CPF;

SELECT DISTINCT A.CPF, A.NOME, B.CPF FROM tabela_de_clientes A
LEFT JOIN notas_fiscais B ON A.CPF = B.CPF;

SELECT DISTINCT A.CPF, A.NOME, B.CPF FROM tabela_de_clientes A
LEFT JOIN notas_fiscais B ON A.CPF = B.CPF
WHERE B.CPF IS NULL;

SELECT DISTINCT BAIRRO FROM tabela_de_clientes
UNION
SELECT DISTINCT BAIRRO FROM tabela_de_vendedores;

SELECT DISTINCT BAIRRO FROM tabela_de_clientes
UNION ALL
SELECT DISTINCT BAIRRO FROM tabela_de_vendedores;

SELECT tabela_de_vendedores.BAIRRO,
tabela_de_vendedores.NOME, DE_FERIAS,
tabela_de_clientes.BAIRRO,
tabela_de_clientes.NOME  FROM tabela_de_vendedores LEFT JOIN tabela_de_clientes
ON tabela_de_vendedores.BAIRRO = tabela_de_clientes.BAIRRO
UNION
SELECT tabela_de_vendedores.BAIRRO,
tabela_de_vendedores.NOME, DE_FERIAS,
tabela_de_clientes.BAIRRO,
tabela_de_clientes.NOME  FROM tabela_de_vendedores RIGHT JOIN tabela_de_clientes
ON tabela_de_vendedores.BAIRRO = tabela_de_clientes.BAIRRO;

SELECT * FROM tabela_de_clientes WHERE BAIRRO 
IN (SELECT DISTINCT BAIRRO FROM tabela_de_vendedores);

SELECT X.EMBALAGEM, X.PRECO_MAXIMO FROM 
(SELECT EMBALAGEM, MAX(PRECO_DE_LISTA) AS PRECO_MAXIMO FROM tabela_de_produtos
GROUP BY EMBALAGEM) X WHERE X.PRECO_MAXIMO >= 10;

SELECT * FROM VW_MAIORES_EMBALAGENS;

SELECT X.EMBALAGEM, X.PRECO_MAXIMO FROM 
VW_MAIORES_EMBALAGENS X WHERE X.PRECO_MAXIMO >= 10;
