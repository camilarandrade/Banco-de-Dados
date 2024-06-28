-- Derrubar/Apagar um Banco de Dados
-- DROP DATABASE db_quitanda;

CREATE DATABASE db_quitanda;

USE db_quitanda;

-- Tabela independente
CREATE TABLE tb_categorias (
	id BIGINT AUTO_INCREMENT, -- Não tem a necessidade de usar NOT NULL com AUTO INCREMENT
    descricao VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
    );
    
-- Tabela dependente
    CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    quantidade INT,
    data_validade DATE,
    preco DECIMAL(6,2) NOT NULL, 
    categoriaid BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (categoriaid) REFERENCES tb_categorias(id) 	-- Criando a chave estrangeira informando a referencia
	); 													    -- ID da tabela categorias
    
 -- Inserindo os tipos de categorias na tabela de categorias    
	INSERT INTO tb_categorias (descricao)
	VALUES 	("Frutas"),
			("Verduras"),
			("Legumes"),
			("Temperos"),
			("Ovos"),
			('Outros');
        
 -- Inserindo os produtos na tabela
	INSERT INTO tb_produtos (nome, quantidade, data_validade, preco, categoriaid)
	VALUES 	("Batata doce", 2000, "2022-03-09", 10.00, 3),
			("Alface", 300, "2022-03-10", 7.00, 2),
			("Cebola", 1020, "2022-03-08", 5.00, 3),
			("Ovo Branco", 1000, "2022-03-07", 15.00, 5),
			("Agrião", 1500, "2022-03-06", 3.00, 2),
			("Cenoura", 1800, "2022-03-09", 3.50, 3),
			("Pimenta", 1100, "2022-03-15", 10.00, 4),
			("Alecrim", 130, "2022-03-10", 5.00, 4),
			("Manga", 200, "2022-03-07", 5.49, 1),
			("Couve", 100, "2022-03-12", 1.50, 2),
			("Rabanete", 1200, "2022-03-15", 13.00, 3),
			("Grapefruit", 3000, "2022-03-13", 50.00, 1);
        
-- Inserindo os produtos sem data de validade e categoria id
	INSERT INTO tb_produtos (nome, quantidade, preco)
	VALUES	("Sacola Cinza", 1118, 0.50),
			("Sacola Verde", 1118, 0.50);
	
    SELECT * FROM tb_produtos WHERE preco >= 5 AND preco <= 10;
    
    -- BETWEEN = Entre um intervalo de 5 a 10
	SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 10.00;
    
    -- Coringa = %
    SELECT * FROM tb_produtos WHERE nome LIKE "%ra"; -- Final da palavra
    
    SELECT * FROM tb_produtos WHERE nome LIKE "ra%"; -- Começo da palavra
    
    SELECT * FROM tb_produtos WHERE nome LIKE "%ra%"; -- Começo e final da palavra
    
    -- INNER JOIN = Junção entre as tabelas / Mostra somente os produtos que tenha uma categoria
    SELECT nome, preco, quantidade, tb_categorias.descricao -- Mostra a descrição da tabela de categoria
	FROM tb_produtos INNER JOIN tb_categorias 
	ON tb_produtos.categoriaid = tb_categorias.id;
    
    -- LEFT JOIN = Junção entre as tabelas mas prioriza a tabela que está a esquerda / Mostra os produtos independente se possui uma categoria associada
    SELECT nome, preco, quantidade, tb_categorias.descricao
	FROM tb_produtos LEFT JOIN tb_categorias 
	ON tb_produtos.categoriaid = tb_categorias.id;
    
    -- RIGHT JOIN = Junção entre as tabelas mas prioriza a tabela que está a direita / Mostra as categorias independente se possui um produto associado
    SELECT nome, preco, quantidade, tb_categorias.descricao
	FROM tb_produtos RIGHT JOIN tb_categorias 
	ON tb_produtos.categoriaid = tb_categorias.id;