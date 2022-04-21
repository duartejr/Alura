call sp_Exerc01;

select * from clientes;
call Calcula_Idade;
select * from clientes;

select * from vendedores;
call Reajuste_Comissao(0.1);
select * from vendedores;

call Quantidade_Notas('2017-01-01');

select * from notas;

use sucos_vendas;
call Quantidade_Notas('2017-01-01');
select * from notas_fiscais;
call testa_numero_notas('20170101');
call comparativo_vendas('20150101', '20150104');