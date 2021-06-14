-- Exemplo 4
SELECT  Pnome AS Nome,
        Unome,
        F.Cidade AS 'Cidade funcionário',
        D.Cidade AS 'Cidade departamento'
FROM    FUNCIONARIO  AS F,
        DEPARTAMENTO AS D
WHERE   Dnome   = 'Pesquisa'
AND     Dnumero = Dnr;

-- Seleciona os dados dos funcionários que são vinculados ao departamento 'Pesquisa' utilizando
-- apelidos para as tabelas e cria apelidos para os campos Cidade
