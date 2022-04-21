CREATE PROCEDURE BuscaPorEntidadeCompleta @ENTIDADE AS VARCHAR(10)
AS
BEGIN
IF @ENTIDADE = 'CLIENTES'
    SELECT [CPF] AS IDENTIFICADOR, [NOME] AS DESCRITOR FROM [TABELA DE CLIENTES]
ELSE IF @ENTIDADE = 'VENDEDORES'
    SELECT [MATRICULA] AS IDENTIFICADOR, [NOME] AS DESCRITOR FROM [TABELA DE VENDEDORES]
ELSE IF @ENTIDADE = 'PRODUTOS'
	SELECT [CODIGO DO PRODUTO] AS IDENTIFICADOR, [NOME DO PRODUTO] AS DESCRITOR FROM [TABELA DE PRODUTOS]
END

EXEC BuscaPorEntidadeCompleta @ENTIDADE = 'CLIENTES'
EXEC BuscaPorEntidadeCompleta @ENTIDADE = 'VENDEDORES'
EXEC BuscaPorEntidadeCompleta @ENTIDADE = 'PRODUTOS'