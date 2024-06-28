CREATE DATABASE db_generation_game_online; 
USE db_generation_game_online;

CREATE TABLE tb_classes (
id INT PRIMARY KEY AUTO_INCREMENT,
descricao VARCHAR (255) NOT NULL,
pontoforte VARCHAR (255) NOT NULL
);

INSERT INTO tb_classes(descricao,pontoforte) 
VALUES ("Guerreiro","Força"),
("Mago","Resistência"),
("Cavaleiro","Inteligência"),
("Fada","Agilidade"),
("Bruxa","Inteligência");

CREATE TABLE tb_personagens (
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
habilidades VARCHAR (255) NOT NULL,
poderAtaque INT,
poderDefesa INT,
idclasse INT,
FOREIGN KEY (idclasse) REFERENCES tb_classes(id)
);

INSERT INTO tb_personagens (nome,habilidades,poderAtaque,poderDefesa, idclasse) 
VALUES ("Aragorn","Espada Dupla",5000,3500,1),
("Saturn","Teleporte",3000,5000,2),
("Frodo","Cavalo que voa",1500,2600,3),
("Flora","Muito Veloz",2500,1000,4),
("Louie","Vidente",1500,2600,5); 

INSERT INTO tb_personagens (nome,habilidades,poderAtaque,poderDefesa, idclasse) 
VALUES ("Crowley","Escudo Imbátivel",6000,5500,1);

SELECT * FROM tb_personagens;
SELECT * FROM tb_classes;
SELECT * FROM tb_personagens WHERE poderAtaque > 2000;
SELECT * FROM tb_personagens WHERE poderDefesa BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

SELECT nome, habilidades, tb_classes.descricao, tb_classes.pontoforte
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.idclasse= tb_classes.id;

SELECT nome, habilidades, tb_classes.descricao, tb_classes.pontoforte
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.idclasse= tb_classes.id WHERE idclasse=1;