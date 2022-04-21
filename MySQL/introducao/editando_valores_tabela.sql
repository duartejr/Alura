USE sucos;

UPDATE tbvendedores 
SET percentual_comissao=0.11
WHERE matricula='00236';

UPDATE tbVendedores
SET nome='José Geraldo da Fonseca Junior'
WHERE matricula='00233';

SELECT * FROM tbvendedores;