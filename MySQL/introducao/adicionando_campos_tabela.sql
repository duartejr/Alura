USE sucos;

DROP TABLE tbvendedores;

CREATE TABLE tabela_de_vendedores
(matricula VARCHAR(5),
nome VARCHAR(100),
percentual_comissao FLOAT,
data_nascimento DATE,
de_ferias BIT);

ALTER TABLE tabela_de_vendedores ADD PRIMARY KEY (matricula);

INSERT INTO tabela_de_vendedores 
(matricula, nome, percentual_comissao, data_nascimento, de_ferias)
VALUES ('00235', 'Márcio Almeida Silva', 0.08, '2014-08-15', 0);

INSERT INTO tabela_de_vendedores 
(matricula, nome, percentual_comissao, data_nascimento, de_ferias)
VALUES ('00236', 'Cláudia Morais', 0.08, '2013-09-17', 1);

INSERT INTO tabela_de_vendedores 
(matricula, nome, percentual_comissao, data_nascimento, de_ferias)
VALUES ('00237', 'Roberta Martins', 0.11, '2017-03-18', 1);

INSERT INTO tabela_de_vendedores 
(matricula, nome, percentual_comissao, data_nascimento, de_ferias)
VALUES ('00238', 'Péricles Alves', 0.11, '2016-08-21', 0);

select * from tabela_de_vendedores;