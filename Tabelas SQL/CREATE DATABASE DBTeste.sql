CREATE DATABASE DBTeste
USE dbTeste

CREATE TABLE PRIMEIRA_TABELA (
    id int IDENTITY NOT NULL PRIMARY KEY ,
    descricao VARCHAR(30) null,

) 

-------------alterando a tebela adicinar FlagAtivo Bit

ALTER TABLE PRIMEIRA_TABELA ADD FlagAtivo BIT

-------------alterando a tebela Deletando o  FlagAtivo Bit

ALTER TABLE PRIMEIRA_TABELA DROP COLUMN FlagAtivo
-------------- Destruir a tabela e todo o conteúdo

DROP TABLE PRIMEIRA_TABELA
