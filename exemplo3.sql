-- Exemplo 3
SELECT  Pnome,
        Unome,
        FUNCIONARIO.Cidade,
        DEPARTAMENTO.Cidade
FROM    FUNCIONARIO,
        DEPARTAMENTO
WHERE   Dnome   = 'Pesquisa'
AND     Dnumero = Dnr;

-- Seleciona os dados dos funcionários que são vinculados ao departamento 'Pesquisa'
