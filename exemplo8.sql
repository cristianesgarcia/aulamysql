-- Exemplo 8
SELECT  F.Pnome,
        F.Unome,
        F.Cidade
FROM    FUNCIONARIO AS F
WHERE   NOT EXISTS (SELECT *
                    FROM DEPARTAMENTO AS D
                    WHERE F.Cidade = D.Cidade);
                    
-- Seleciona os dados dos funcionários cuja cidade não possui nenhum departamento.
