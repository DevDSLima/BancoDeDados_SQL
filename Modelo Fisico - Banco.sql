CREATE DATABASE BANCO;

USE BANCO;

CREATE TABLE CLIENTES(
CPF VARCHAR(11) PRIMARY KEY,
NOME VARCHAR(255) NOT NULL,
ENDERECO VARCHAR(255) NOT NULL,
TELEFONE VARCHAR(12) NOT NULL ,
EMAIL VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE CONTASBANCARIAS(
NUMEROCONTA INT AUTO_INCREMENT PRIMARY KEY,
AGENCIA INT NOT NULL,
TIPOCONTA VARCHAR(10) NOT NULL,
SALDO DECIMAL(10,2) NOT NULL,
CPF_CLIENTES VARCHAR(11),
FOREIGN KEY (CPF_CLIENTES) REFERENCES CLIENTES(CPF)
);

INSERT INTO CLIENTES(CPF,NOME,ENDERECO,TELEFONE,EMAIL) VALUES
('12345678910','Lara','Lauro', '7199876-5423','luz@gmail.com');

INSERT INTO CLIENTES(CPF, NOME, ENDERECO, TELEFONE, EMAIL) VALUES
('98765432101', 'Carlos', 'Rua das Flores', '8198765-1234', 'carlos@email.com');

INSERT INTO CLIENTES(CPF, NOME, ENDERECO, TELEFONE, EMAIL) VALUES
('56789012345', 'Mariana', 'Avenida Principal', '8196542-4781', 'mariana@email.com');

INSERT INTO CLIENTES(CPF, NOME, ENDERECO, TELEFONE, EMAIL) VALUES
('98765432109', 'João', 'Rua do Comércio', '2198765-4321', 'joao@email.com');

INSERT INTO CLIENTES(CPF, NOME, ENDERECO, TELEFONE, EMAIL) VALUES
('54321098765', 'Camila', 'Praça Central', '1199888-7766', 'camila@email.com');


INSERT INTO CONTASBANCARIAS( AGENCIA, TIPOCONTA, SALDO, CPF_CLIENTES) VALUES
('4561', 'CORRENTE', 900000, '12345678910');


INSERT INTO CONTASBANCARIAS( AGENCIA, TIPOCONTA, SALDO, CPF_CLIENTES) VALUES
('4561', 'CORRENTE', 900000, '98765432101');


INSERT INTO CONTASBANCARIAS( AGENCIA, TIPOCONTA, SALDO, CPF_CLIENTES) VALUES
('7892', 'POUPANCA', 5000, '56789012345');


INSERT INTO CONTASBANCARIAS( AGENCIA, TIPOCONTA, SALDO, CPF_CLIENTES) VALUES
('1010', 'CORRENTE', 25000, '98765432109');


INSERT INTO CONTASBANCARIAS( AGENCIA, TIPOCONTA, SALDO, CPF_CLIENTES) VALUES
('2020', 'POUPANCA', 10000, '54321098765');

SELECT * FROM CONTASBANCARIAS;

SELECT C.NOME AS "Nome do Cliente", CC.SALDO AS "Saldo" 
FROM CLIENTES C
INNER JOIN CONTASBANCARIAS CC
ON C.CPF = CC.CPF_CLIENTES ;

UPDATE CONTASBANCARIAS SET SALDO = 845 WHERE NUMEROCONTA = '987657321192' ;
