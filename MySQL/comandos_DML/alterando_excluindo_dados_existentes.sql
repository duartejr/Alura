SELECT * FROM PRODUTOS;

UPDATE produtos SET PRECO_LISTA = 5.0 WHERE CODIGO = '1000889';

UPDATE produtos SET EMBALAGEM = 'PET', TAMANHO = '1 Litro',
DESCRITOR = 'Sabor da Montanha - 1 Litro - Uva' WHERE CODIGO = '1000889';

SELECT * FROM produtos WHERE SABOR = 'Maracujá';

UPDATE produtos SET PRECO_LISTA = PRECO_LISTA * 1.10 WHERE SABOR = 'Maracujá';

UPDATE clientes SET ENDERECO = 'R. Jorge Emílio 23', BAIRRO = 'Santo Amaro',
CIDADE='São Paulo', ESTADO='SP', CEP='8833223' WHERE CPF = '19290992743';

UPDATE VENDEDORES A INNER JOIN sucos_vendas.TABELA_DE_VENDEDORES B
ON A.MATRICULA = SUBSTRING(B.MATRICULA, 3, 3)
SET A.FERIAS = B.DE_FERIAS;

UPDATE CLIENTES A INNER JOIN VENDEDORES B
ON A.BAIRRO = B.BAIRRO
SET A.VOLUME_COMPRA = A.VOLUME_COMPRA * 1.3;

  INSERT INTO PRODUTOS (CODIGO,DESCRITOR,SABOR,TAMANHO,EMBALAGEM,PRECO_LISTA)
     VALUES ('1001001','Sabor dos Alpes 700 ml - Manga','Manga','700 ml','Garrafa',7.50),
            ('1001000','Sabor dos Alpes 700 ml - Melão','Melão','700 ml','Garrafa',7.50),
            ('1001002','Sabor dos Alpes 700 ml - Graviola','Graviola','700 ml','Garrafa',7.50),
            ('1001003','Sabor dos Alpes 700 ml - Tangerina','Tangerina','700 ml','Garrafa',7.50),
            ('1001004','Sabor dos Alpes 700 ml - Abacate','Abacate','700 ml','Garrafa',7.50),
            ('1001005','Sabor dos Alpes 700 ml - Açai','Açai','700 ml','Garrafa',7.50),
            ('1001006','Sabor dos Alpes 1 Litro - Manga','Manga','1 Litro','Garrafa',7.50),
            ('1001007','Sabor dos Alpes 1 Litro - Melão','Melão','1 Litro','Garrafa',7.50),
			('1001008','Sabor dos Alpes 1 Litro - Graviola','Graviola','1 Litro','Garrafa',7.50),
            ('1001009','Sabor dos Alpes 1 Litro - Tangerina','Tangerina','1 Litro','Garrafa',7.50),
            ('1001010','Sabor dos Alpes 1 Litro - Abacate','Abacate','1 Litro','Garrafa',7.50),
			('1001011','Sabor dos Alpes 1 Litro - Açai','Açai','1 Litro','Garrafa',7.50);

DELETE FROM PRODUTOS WHERE CODIGO = '1001000';

DELETE FROM PRODUTOS WHERE TAMANHO = '1 Litro' AND SUBSTRING(DESCRITOR, 1, 15) = 'Sabor dos Alpes';

SELECT CODIGO_DO_PRODUTO FROM sucos_vendas.tabela_de_produtos;

SELECT CODIGO FROM PRODUTOS WHERE CODIGO NOT IN (SELECT CODIGO_DO_PRODUTO FROM sucos_vendas.tabela_de_produtos);

DELETE FROM PRODUTOS WHERE CODIGO NOT IN (SELECT CODIGO_DO_PRODUTO FROM sucos_vendas.tabela_de_produtos);

SELECT * FROM PRODUTOS WHERE SUBSTRING(DESCRITOR, 1, 15) = 'Sabor dos Alpes';

/* ERRADO 
DELETE FROM NOTAS WHERE NUMERO IN (SELECT A.NUMERO FROM NOTAS A
INNER JOIN CLIENTES B ON A.CPF = B.CPF
WHERE B.IDADE <= 18);
*/

DELETE A FROM NOTAS A INNER JOIN CLIENTES B ON A.CPF = B.CPF WHERE B.IDADE <= 18;


