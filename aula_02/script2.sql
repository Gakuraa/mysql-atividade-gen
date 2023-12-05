create database db_ecommerce;

use db_ecommerce;

-- Criar a Tabela tb_produtos
CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
quantidade int, 
dtvalidade date NULL,
preco decimal(6, 2),
PRIMARY KEY (id)
);

-- Fazendo inserts na tabela tb_produtos
INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco)
VALUES ("BALA 7BELO", 1000, "2022-03-07", 400);
INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco)
VALUES ("CHICLETE ZEZINHO", 2000, "2022-03-07", 1000);
INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco)
VALUES ("CHOCOLATE DO ZÉ", 500, "2023-10-27", 450);
INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco)
VALUES ("BALA DE MENTA", 3000, "2025-08-07", 1500);
INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco)
VALUES ("BALA AZEDA", 250, "2026-09-07", 325);
INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco)
VALUES ("SALGADINHO RUFFLES", 1500, "2024-10-17", 4200);
INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco)
VALUES ("COCA 300ML", 2000, "2025-06-13", 3000);
INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco)
VALUES ("CHOCOLATE BATOM", 700, "2024-05-04", 425);

-- Fazendo consultas na tb_produtos quando preço for maior que 500 e menor que 500
SELECT * FROM tb_produtos WHERE preco > 500;
SELECT * FROM tb_produtos WHERE preco < 500;

-- Atualizando o preço na tb_produtos para o produto de id 1 para 475
UPDATE tb_produtos SET preco = 475 WHERE id = 1;
