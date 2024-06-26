CREATE DATABASE bd_escola;

USE bd_escola;

CREATE TABLE estudantes (
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
sobrenome VARCHAR(255) NOT NULL,
datanascimento DATE,
turma VARCHAR(255) NOT NULL,
nota DECIMAL (3,2) NOT NULL,
PRIMARY KEY (id)
);

ALTER TABLE estudantes MODIFY nota DECIMAL (3,1);


INSERT INTO estudantes(nome,sobrenome,datanascimento,turma,nota)
VALUES ("Fernanda","Souza","2005-02-15","TI-001",7.5),
("Maria","Silva","2005-03-01","TI-001",9.0),
("Lurdes","Rocha","2005-12-10","TI-003",5.0),
("Elena","Andrade","2006-07-09","TI-003",6.0),
("Julia","Moraes","2006-04-06","TI-003",10.0),
("Marli","Conceição","2007-05-11","TI-002",6.5),
("José","Rosa","2007-10-18","TI-002",7.5),
("Rafael","Rocha","2005-03-02","TI-002",4.5);

SELECT * FROM estudantes;

SELECT nome,nota FROM estudantes WHERE nota >=7;
SELECT nome,nota FROM estudantes WHERE nota <=7;

UPDATE estudantes SET datanascimento ="2007-01-20" WHERE id=6;