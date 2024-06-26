CREATE DATABASE db_quitanda;

-- usar o banco de dados
USE db_quitanda;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
quantidade INT,
datavalidade DATE,
preco DECIMAL NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_produtos(nome,quantidade,datavalidade,preco)
VALUES ("Tomate",100,"2023-12-15", 8.00),
("Pêra",110,"2023-12-16", 10.00);


SELECT * FROM tb_produtos;

ALTER TABLE tb_produtos MODIFY preco DECIMAL (6,2) NOT NULL;

