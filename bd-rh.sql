CREATE DATABASE bd_rh;

USE bd_rh;

-- Crie uma tabela de colaboradores e determine 5 atributos relevantes dos colaboradores para se trabalhar com o serviço deste RH.

CREATE TABLE colaboradores (
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
sobrenome VARCHAR(255) NOT NULL,
salario DECIMAL (10, 2) NOT NULL, -- 10 digitos no total e 2 são após a virgula
data_nascimento DATE NOT NULL,
PRIMARY KEY (id)
);

-- Insira nesta tabela no mínimo 5 dados (registros).

INSERT INTO colaboradores (nome,sobrenome,salario,data_nascimento)
VALUES ("Daiane","Nogueira",1100.00, "1993-02-28"),
("Camila","Andrade",2100.00, "1997-04-06"),
("João","Almeida",2500.00, "1998-03-10"),
("Fernando","Silva",3800.00, "1992-09-01"),
("Luana","Oliveira",1900.00, "1997-06-26");

SELECT * FROM colaboradores;

-- Faça um SELECT que retorne todes os colaboradores com o salário maior do que 2000.

SELECT * FROM colaboradores WHERE salario > 2000.00;
SELECT * FROM colaboradores WHERE salario < 2000.00;

UPDATE colaboradores SET salario = 3000.00 WHERE id= 2;