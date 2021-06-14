-- Exemplo 7
SELECT  Unome,
        Pnome
FROM    FUNCIONARIO
WHERE   Salario > ALL (SELECT   Salario
                       FROM     FUNCIONARIO
                       WHERE    Dnr = 5);

-- Seleciona os dados dos funcionários cujos salários são maiores do que os salários pagos ao
-- departamento 5
