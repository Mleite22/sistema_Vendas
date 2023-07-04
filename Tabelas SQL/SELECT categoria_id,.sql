USE VENDAS

SELECT  categoria_id,
        descricao
    FROM Categorias
    WHERE categoria_id = categoria_id

SELECT descricao FROM Categorias

UPDATE Categorias
SET descricao = descricao
WHERE categoria_id = categoria_id