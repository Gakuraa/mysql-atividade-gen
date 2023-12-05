CREATE DATABASE db_curso_da_minha_vida;
USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias (
    id_categoria INT PRIMARY KEY,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao VARCHAR(255)
);

-- Inserção de 5 registros na tabela tb_categorias
INSERT INTO tb_categorias (id_categoria, nome_categoria, descricao) VALUES
(1, 'Programação', 'Cursos relacionados a programação'),
(2, 'Design', 'Cursos relacionados a design'),
(3, 'Marketing', 'Cursos relacionados a marketing'),
(4, 'Idiomas', 'Cursos de idiomas'),
(5, 'Negócios', 'Cursos relacionados a negócios');

CREATE TABLE tb_cursos (
    id_curso INT PRIMARY KEY,
    nome_curso VARCHAR(100) NOT NULL,
    valor DECIMAL(10, 2) NOT NULL,
    duracao_horas INT,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

-- Inserção de 8 registros na tabela tb_cursos
INSERT INTO tb_cursos (id_curso, nome_curso, valor, duracao_horas, id_categoria) VALUES
(1, 'Java Programming', 599.99, 30, 1),
(2, 'Web Design Basics', 299.50, 20, 2),
(3, 'Digital Marketing Fundamentals', 799.00, 40, 3),
(4, 'Spanish for Beginners', 149.99, 25, 4),
(5, 'Business Strategy Essentials', 899.99, 35, 5),
(6, 'Python Fundamentals', 449.99, 28, 1),
(7, 'Graphic Design Masterclass', 699.50, 45, 2),
(8, 'Social Media Marketing', 599.00, 30, 3);

SELECT * FROM tb_cursos WHERE valor > 500.00;
SELECT * FROM tb_cursos WHERE valor BETWEEN 600.00 AND 1000.00;
SELECT * FROM tb_cursos WHERE nome_curso LIKE '%J%';

SELECT * FROM tb_cursos
INNER JOIN tb_categorias 
ON tb_cursos.id_categoria = tb_categorias.id_categoria;

SELECT * FROM tb_cursos
INNER JOIN tb_categorias ON tb_cursos.id_categoria = tb_categorias.id_categoria
WHERE tb_categorias.nome_categoria = 'Java';

