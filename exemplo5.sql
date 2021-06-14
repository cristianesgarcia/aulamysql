-- Exemplo 5
SELECT  Pnome,
        Salario
FROM    FUNCIONARIO
WHERE   Cidade  LIKE '%SP%'
AND     Salario BETWEEN 35000 AND 100000
AND     Cpf_supervisor IS NOT NULL;

-- Seleciona dos dados dos funcionários selecionando a cidade, a faixa salarial e que possuem supervisor
