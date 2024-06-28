CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_pizzas (
id INT PRIMARY KEY AUTO_INCREMENT,
sabor VARCHAR(255) NOT NULL,
tipo VARCHAR(255) NOT NULL,
preco DECIMAL(6,2) NOT NULL,
categoriaid INT,
FOREIGN KEY (categoriaid) REFERENCES tb_categorias(id)
);

INSERT INTO tb_pizzas(sabor,tipo,preco,categoriaid)
VALUES ("Mussarela", "Broto - 4 Pedaços", 25.00,1),
("Mussarela", "Grande - 8 Pedaços", 50.00,2),
("Calabresa", "Grande - 8 Pedaços ", 50.00,2),
("Calabresa", "Broto - 4 Pedaços ", 25.00,3),
("Frango", "Grande - 8 Pedaços", 55.00,4),
("Atum", "Broto - 4 Pedaços", 35.00,2),
("Marguerita", "Grande- 8 Pedaços", 60.00,3),
("Romeu e Julieta", "Grande - 8 Pedaços", 80.00,5),
("Brigadeiro", "Broto- 4 Pedaços", 40.00,5),
("Nutella", "Grande - 8 Pedaços", 85.00,5);



CREATE TABLE tb_categorias (
id INT PRIMARY KEY AUTO_INCREMENT,
borda VARCHAR(255) NOT NULL,
descricao VARCHAR(255) NOT NULL
);

INSERT INTO tb_categorias (borda,descricao)
VALUES ("Sem borda recheada", "Salgada"),
("Borda recheada com cheedar", "Salgada"),
("Borda recheada com catupiry", "Salgada"),
("Borda recheada com mussarela", "Salgada"),
("Sem borda recheada", "Doce");

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE sabor LIKE "%m%";

SELECT sabor, tipo, preco, tb_categorias.borda, tb_categorias.descricao
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoriaid= tb_categorias.id;

SELECT sabor, tipo, preco, tb_categorias.borda, tb_categorias.descricao
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoriaid= tb_categorias.id WHERE tb_categorias.descricao="Doce";

