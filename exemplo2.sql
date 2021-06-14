-- Exemplo 2
SELECT  Pnome,
        Unome,
        Salario
FROM    FUNCIONARIO,
        DEPARTAMENTO
WHERE   Dnome   = 'Pesquisa'
AND     Dnumero = Dnr;

-- Seleciona os dados dos funcionários que são vinculados ao departamento 'Pesquisa'
