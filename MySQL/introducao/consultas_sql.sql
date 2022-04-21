use sucos_vendas;

select * from tabela_de_clientes where nome like '%Mattos';

select distinct bairro from tabela_de_clientes where cidade = 'Rio de Janeiro';

select * from notas_fiscais where data_venda = '2017-01-01' limit 10;

select * from tabela_de_produtos where sabor in ('Morango', 'Limão');
SELECT * FROM tabela_de_produtos WHERE nome_do_produto = 'Linha Refrescante - 1 Litro - Morango/Limão';

select * from itens_notas_fiscais where CODIGO_DO_PRODUTO = '1101035' order by QUANTIDADE desc;

select max(quantidade) as MAIOR_QUANTIDADE from itens_notas_fiscais
where CODIGO_DO_PRODUTO = '1101035';
select count(*) from itens_notas_fiscais where CODIGO_DO_PRODUTO = '1101035' and QUANTIDADE=99;

select cpf, count(*) as quantidade_compras from notas_fiscais 
where year(data_venda) = 2016
group by cpf having count(*) > 2000;
select nome from tabela_de_clientes where cpf in ('3623344710', '492472718', '50534475787');

select nome,
case
  when year(data_de_nascimento) < 1990 then 'velho'
  when year(data_de_nascimento) >= 1990 and year(data_de_nascimento) <= 1995 then 'jovem'
  else 'crianca'
end as classificacao_por_idade
from tabela_de_clientes
order by nome;