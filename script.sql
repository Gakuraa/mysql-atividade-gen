create database db_rhcompany;

use db_rhcompany;

CREATE TABLE tb_colaboradores(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	cpf BIGINT NOT NULL,
    salario DOUBLE NOT NULL,
    datanascimento DATE NOT NULL,
	funcao VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_colaboradores(nome, cpf, salario, datanascimento, funcao) 
VALUES ("João", 12312312312 , 3200, "1990-10-15", "Desenvolvedor Java Junior");
INSERT INTO tb_colaboradores(nome, cpf, salario, datanascimento, funcao) 
VALUES ("Maria", 98765432198, 4000, "1985-05-20", "Analista de Dados");
INSERT INTO tb_colaboradores(nome, cpf, salario, datanascimento, funcao) 
VALUES ("Carlos", 45678901234, 3500, "1992-03-08", "Engenheiro de Software");
INSERT INTO tb_colaboradores(nome, cpf, salario, datanascimento, funcao) 
VALUES ("Ana", 78901234567, 2800, "1988-12-12", "QA Tester");
INSERT INTO tb_colaboradores(nome, cpf, salario, datanascimento, funcao) 
VALUES ("Lucas", 56789012345, 3000, "1995-07-25", "Desenvolvedor Front-end");

SELECT * FROM tb_colaboradores;

SELECT * FROM tb_colaboradores WHERE salario > 2000;
SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET salario = 1900 WHERE id = 4;
