create database db_generation_game_online;
use db_generation_game_online;

-- Criar a Tabela tb_personagens
CREATE TABLE tb_classes(
id bigint AUTO_INCREMENT,
classe varchar(255) NOT NULL,
descricao varchar(255) NOT NULL, 
PRIMARY KEY (id)
);

INSERT INTO tb_classes (classe, descricao)
VALUES ("Bardo", "Cura e aumenta o poder de  ataque do grupo");
INSERT INTO tb_classes (classe, descricao)
VALUES ("Cavaleiro", "Utiliza de sua espada e causa dano crítico aumentado");
INSERT INTO tb_classes (classe, descricao)
VALUES ("Paladino", "Tem grande poder de ataque e consegue curar a sí mesmo");
INSERT INTO tb_classes (classe, descricao)
VALUES ("Ladino", "Utiliza de subterfúgios para atacar seu inimigo desprevinido e causar grande dano");
INSERT INTO tb_classes (classe, descricao)
VALUES ("Caçador", "Possui grande perícia com armas de longo alcance");

-- Criar a Tabela tb_personagens
CREATE TABLE tb_personagens(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
nivel INT,
poderAtaque INT(100), 
poderDefesa INT(100),
classe_id bigint, 
PRIMARY KEY (id),
FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_personagens (nome, nivel, poderAtaque, poderDefesa, classe_id)
VALUES ("XNoobKillerX", 99, 4200, 1500, 4);
INSERT INTO tb_personagens (nome, nivel, poderAtaque, poderDefesa, classe_id)
VALUES ("DarkDestroyer", 87, 2900, 2400, 2);
INSERT INTO tb_personagens (nome, nivel, poderAtaque, poderDefesa, classe_id)
VALUES ("MysticMage", 105, 5000, 1460, 1);
INSERT INTO tb_personagens (nome, nivel, poderAtaque, poderDefesa, classe_id)
VALUES ("ShadowSlayer", 75, 1000, 2370, 4);
INSERT INTO tb_personagens (nome, nivel, poderAtaque, poderDefesa, classe_id)
VALUES ("SwiftArrow", 92, 2000, 1255, 5);
INSERT INTO tb_personagens (nome, nivel, poderAtaque, poderDefesa, classe_id)
VALUES ("IronGuardian", 110, 1300, 6200, 3);
INSERT INTO tb_personagens (nome, nivel, poderAtaque, poderDefesa, classe_id)
VALUES ("SilentStalker", 80, 2100, 1065, 4);
INSERT INTO tb_personagens (nome, nivel, poderAtaque, poderDefesa, classe_id)
VALUES ("EagleEye", 4, 150, 300, 5);
INSERT INTO tb_personagens (nome, nivel, poderAtaque, poderDefesa, classe_id)
VALUES ("CreatureKiller", 124, 7200, 1900, 1);

SELECT * FROM tb_personagens WHERE poderAtaque > 2000;
SELECT * FROM tb_personagens WHERE poderDefesa BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagens WHERE nome LIKE "c%";

SELECT nome, nivel, poderAtaque, poderDefesa, tb_classes.classe
FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.classe_id = tb_classes.id;

SELECT nome, nivel, poderAtaque, poderDefesa, tb_classes.classe
FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.classe_id = tb_classes.id WHERE classe = "Bardo";

