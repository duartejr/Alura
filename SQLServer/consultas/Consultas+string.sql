


SELECT LTRIM('      OLA')

SELECT RTRIM('OLA      ')

SELECT CONCAT('OLA ','TUDO BEM')

SELECT 'OLA ' + 'TUDO BEM'

SELECT LEFT('RUA AUGUSTA',3) 

SELECT RIGHT('RUA AUGUSTA',7) 

SELECT UPPER('rua augusta')   

SELECT LOWER('RUA AUGUSTA')   

SELECT REPLACE('R. AUGUSTA','R.','RUA') 

SELECT SUBSTRING('RUA AUGUSTA', 1, 3) 

SELECT SUBSTRING('RUA AUGUSTA', 2, 4) 

SELECT LEN('RUA AUGUSTA')  

SELECT * FROM [TABELA DE CLIENTES]

SELECT CONCAT(NOME, ' (', CPF, ') ') FROM [TABELA DE CLIENTES]

SELECT NOME, CONCAT([ENDERECO 1], ', ', BAIRRO, ', ', CIDADE, '-', ESTADO) AS ENDERECO_COMPLETO FROM [TABELA DE CLIENTES]







