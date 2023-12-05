CREATE DATABASE db_escola;

USE db_escola;

-- Criar a Tabela tb_alunos
CREATE TABLE tb_alunos(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
serie varchar(100) NOT NULL, 
nota decimal (4,2) NOT NULL,
materia varchar(100) NOT NULL,
PRIMARY KEY (id)
);

drop table tb_alunos;

-- Fazendo inserts na tabela tb_alunos
INSERT INTO tb_alunos (nome, serie, nota, materia)
VALUES ("Joãozinho", "4 ano", 7.4 , "Inglês");
INSERT INTO tb_alunos (nome, serie, nota, materia)
VALUES ("Mariazinha", "8 ano", 8.2, "Matemática");
INSERT INTO tb_alunos (nome, serie, nota, materia)
VALUES ("Pedrinho", "5 ano", 6.8, "Ciências");
INSERT INTO tb_alunos (nome, serie, nota, materia)
VALUES ("Aninha", "6 ano", 9.0, "História");
INSERT INTO tb_alunos (nome, serie, nota, materia)
VALUES ("Rafael", "9 ano", 7.5, "Geografia");
INSERT INTO tb_alunos (nome, serie, nota, materia)
VALUES ("Fernando", "8 ano", 6.7, "Física");
INSERT INTO tb_alunos (nome, serie, nota, materia)
VALUES ("Amanda", "8 ano", 9.5, "Química");
INSERT INTO tb_alunos (nome, serie, nota, materia)
VALUES ("Lucas", "6 ano", 7.8, "Educação Física");

-- Fazendo consultas na tb_alunos para notas maiores que 7 e menores que 7
SELECT * FROM tb_alunos WHERE nota > 7.0;
SELECT * FROM tb_alunos WHERE nota < 7.0;

-- Atualizando a nota do aluno de id 4 para 5;
UPDATE tb_alunos SET nota = 5 where id = 4;


