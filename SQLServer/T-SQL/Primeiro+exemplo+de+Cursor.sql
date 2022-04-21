
DECLARE @NOME VARCHAR(200)
DECLARE CURSOR1 CURSOR FOR SELECT TOP 4 NOME FROM [TABELA DE CLIENTES]
OPEN CURSOR1
FETCH NEXT FROM CURSOR1 INTO @NOME
WHILE @@FETCH_STATUS = 0
BEGIN
   PRINT @NOME
   FETCH NEXT FROM CURSOR1 INTO @NOME
END
CLOSE CURSOR1
DEALLOCATE CURSOR1


-- Crie um script usando um cursor para achar o valor total de todos os cr�ditos de todos os clientes.

DECLARE @LIMITETOTAL FLOAT
DECLARE @LIMITECURSOR FLOAT
SET @LIMITETOTAL = 0
DECLARE CURSOR2 CURSOR FOR SELECT [LIMITE DE CREDITO] FROM [TABELA DE CLIENTES]
OPEN CURSOR2
FETCH NEXT FROM CURSOR2 INTO @LIMITECURSOR
WHILE @@FETCH_STATUS = 0
BEGIN
	SET @LIMITETOTAL = @LIMITETOTAL + @LIMITECURSOR
	FETCH NEXT FROM CURSOR2 INTO @LIMITECURSOR
END
CLOSE CURSOR2
DEALLOCATE CURSOR2
PRINT @LIMITETOTAL