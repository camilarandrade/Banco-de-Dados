CREATE DATABASE bd_ecommerce;

USE bd_ecommerce; 

CREATE TABLE produtos (
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
descricao VARCHAR(255) NOT NULL,
marca VARCHAR(255) NOT NULL,
categoria VARCHAR(255),
cor VARCHAR (255) NOT NULL,
preco DECIMAL (10, 2) NOT NULL, 
quantidade INT,
PRIMARY KEY (id)
); 

INSERT INTO produtos (nome,descricao,marca,categoria,cor,preco,quantidade)
VALUES ("SMART TV LED","Com Conversor Digital Externo","HQ","Eletrodoméstico","Preto",859.00, 100),
("Smartphone  Moto G04","4G 128GB Tela 6.6 4GB RAM Câmera 16MP Selfie 5MP","Motorola","Celular","Preto",699.00, 250),
("Geladeira / Refrigerator","Duplex BRM44 Frost Free 375 Litros","Brastemp","Eletrodoméstico","Branco",2598.00, 300),
("Smartphone  Moto G04","4G 128GB Tela 6.6 4GB RAM Câmera 16MP Selfie 5MP","Motorola","Celular","Branco",699.00, 250),
("Sofá 3 Lugares Retrátil","InBox Compact 1,80m","Cama inBox","Móvel","Marrom",499.99, 5),
("IPhone 11","128GB","Apple","Celular","Branco",1610.00, 1),
("Smartphone Redmi Note 13","Pro 4G 256GB - 8GB Ram - Versao Global","Xiaomi","Celular","Preto",2099.00, 10),
("Kit Chuveiro Acqua Plus","Com Desviador Universal E Ducha Max","Deca","Casa & Construção","Cromado",250.00, 10);

SELECT * FROM produtos;

SELECT * FROM produtos WHERE preco > 500.00;
SELECT * FROM produtos WHERE preco < 500.00;

UPDATE produtos SET descricao= "128GB- Produto Usado" WHERE id= 6;





