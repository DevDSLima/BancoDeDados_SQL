CREATE DATABASE CURSO;

USE CURSO;

CREATE TABLE CURSOS(
CURSOID INT PRIMARY KEY AUTO_INCREMENT,
NOMECURSO VARCHAR(255) NOT NULL,
PROFESSOR VARCHAR(255) NOT NULL,
DATAINICIO DATE NOT NULL,
DATAFIM DATE NOT NULL
);

CREATE TABLE ALUNOS(
MATRICULA INT PRIMARY KEY AUTO_INCREMENT,
NOMEALUNO VARCHAR(255) NOT NULL,
DATANASCIMENTO DATE NOT NULL,
ENDERECO VARCHAR(255) NOT NULL,
TELEFONE VARCHAR(12) NOT NULL
);

CREATE TABLE INSCRICOES(
INSCRICAOID INT PRIMARY KEY AUTO_INCREMENT,
MATRICULAALUNO INT,
CURSOID INT,
FOREIGN KEY (MATRICULAALUNO) REFERENCES ALUNOS(MATRICULA),
FOREIGN KEY (CURSOID) REFERENCES CURSOS(CURSOID)
);

INSERT INTO CURSOS (NOMECURSO, PROFESSOR, DATAINICIO, DATAFIM)
VALUES
  ('Curso de Matemática', 'Prof. Silva', '2023-01-15', '2023-05-30'),
  ('Curso de Inglês', 'Prof. Calor', '2023-02-10', '2023-06-20'),
  ('Curso de História', 'Prof. Paulo', '2023-03-20', '2023-07-15'),
  ('Curso de Ciência da Computação', 'Prof. Tido', '2023-04-05', '2023-08-25'),
  ('Curso de Artes', 'Prof. Lucas', '2023-05-10', '2023-09-10');


INSERT INTO ALUNOS (NOMEALUNO, DATANASCIMENTO, ENDERECO, TELEFONE)
VALUES
  ('João da Silva', '2000-03-15', '123 Rua Principal', '7195555-5555'),
  ('Maria Santos', '1998-05-20', '456 Avenida Secundária', '7196666-6666'),
  ('Pedro Oliveira', '2001-07-10', '789 Avenida Central', '7197777-7777'),
  ('Ana Ferreira', '1999-01-25', '1010 Rua Secundária', '7198888-8888'),
  ('Carlos Martins', '2002-09-05', '222 Rua da Praça', '7199999-9999');
  
  INSERT INTO INSCRICOES(MATRICULAALUNO, CURSOID)
  VALUES 
	(1,1),
    (2,2),
    (3,3),
    (4,4),
    (5,5);

SELECT * FROM INSCRICOES;

SELECT A.NOMEALUNO, C.NOMECURSO
FROM INSCRICOES AS I
JOIN ALUNOS AS A ON I.MATRICULAALUNO = A.MATRICULA
JOIN CURSOS AS C ON I.CURSOID = C.CURSOID;

