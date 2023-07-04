
--------CRIAÇÃO do DB(Vendas) e TB(Categorias)
--CREATE DATABASE VENDAS

USE VENDAS

/*
CREATE TABLE Categorias(
    categoria_id INTEGER NOT NULL IDENTITY PRIMARY KEY,
    descricao VARCHAR(30) NULL
)
*/
-------------Insert na Produtos na TB categorias --------------------

INSERT into Categorias (descricao) VALUES ('Alimentação')
INSERT into Categorias (descricao) VALUES ('Basar'), ('Brinquedos'), ('Higene')

SELECT * FROM Categorias


INSERT into Categorias (descricao) VALUES ('CPU'), ('Fonte'), ('Cabo HDMI')

INSERT into Categorias(descricao) VALUES ('Tablet'), ('Celular')

------------------Alteração de produtos ------------

UPDATE Categorias
SET descricao = 'Monitor' 
WHERE categoria_id = 1

UPDATE Categorias
SET descricao = 'Mouse' 
WHERE categoria_id = 2

UPDATE Categorias
SET descricao = 'Teclado' 
WHERE categoria_id = 3

UPDATE Categorias
SET descricao = 'Noteboock' 
WHERE categoria_id = 4

----------------------------------
-----------Buscando Informações da Tabela -----------------------

--sp_help categorias

