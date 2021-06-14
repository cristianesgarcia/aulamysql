-- Destrói, recria e usa o banco de dados aula1
DROP DATABASE IF EXISTS aula1;
CREATE DATABASE aula1;
USE aula1;

-- Cria as tabelas FUNCIONARIO, DEPARTAMENTO e DEPENDENTE
CREATE TABLE FUNCIONARIO (
    Pnome           VARCHAR(15)     NOT NULL,
    Unome           VARCHAR(15)     NOT NULL,
    Cpf             CHAR(11)        NOT NULL PRIMARY KEY,
    Cidade          VARCHAR(30),
    Salario         DECIMAL(10,2),
    Cpf_supervisor  CHAR(11)        REFERENCES FUNCIONARIO(Cpf),
    Dnr             INT             REFERENCES DEPARTAMENTO(Dnumero) );
    
CREATE TABLE DEPARTAMENTO (
    Dnome               VARCHAR(15) NOT NULL UNIQUE,
    Dnumero             INT         NOT NULL PRIMARY KEY,
    Cpf_gerente         CHAR(11)    NOT NULL REFERENCES FUNCIONARIO(Cpf),
    Data_inicio_gerente DATE,
    Cidade              VARCHAR(30) );
    
CREATE TABLE DEPENDENTE (
    Fcpf            CHAR(11)    NOT NULL REFERENCES FUNCIONARIO(Cpf),
    Nome_dependente VARCHAR(15) NOT NULL PRIMARY KEY,
    Parentesco      VARCHAR(8) );

-- Popula a tabela FUNCIONARIO
INSERT INTO FUNCIONARIO VALUES
ROW('João',     'Silva',   '12345678966', 'São Paulo, SP',   30000, '33344555587', 5),
ROW('Fernando', 'Wong',    '33344555587', 'São Paulo, SP',   40000, '88866555576', 1),
ROW('Alice',    'Zelaya',  '99988777767', 'Curitiba, PR',    25000, '98765432168', 4),
ROW('Jennifer', 'Souza',   '98765432168', 'Santo André, SP', 43000, '88866555576', 4),
ROW('Ronaldo',  'Lima',    '66688444476', 'Piracicaba, SP',  38000, '33344555587', 5),
ROW('Joice',    'Leite',   '45345345376', 'São Paulo, SP',   25000, '33344555587', 5),
ROW('André',    'Pereira', '98798798733', 'São Paulo, SP',   25000, '98765432168', 4),
ROW('Jorge',    'Brito',   '88866555576', 'São Paulo, SP',   55000, NULL,          1);

-- Popula a tabela DEPARTAMENTO
INSERT INTO DEPARTAMENTO VALUES
ROW ('Pesquisa', 5, '33344555587', '1988-05-22', 'São Paulo, SP'),
ROW ('Administração', 4, '98765432168', '1996-01-01', 'São Paulo, SP'),
ROW ('Matriz', 1, '88866555576', '1981-06-19', 'Santo André, SP');

-- Popula a tabela DEPENDENTE
INSERT INTO DEPENDENTE VALUES
ROW ('33344555587', 'Alicia',  'Filha'),
ROW ('33344555587', 'Tiago',   'Filho'),
ROW ('33344555587', 'Janaína', 'Esposa'),
ROW ('98765432168', 'Antonio', 'Marido');
