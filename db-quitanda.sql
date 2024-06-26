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