USE VENDAS

CREATE TABLE produtos(
    produto_id     INT IDENTITY(1,1) NOT NULL,
    nome           VARCHAR(60) NULL,
    descricao      VARCHAR(225) NULL,
    valor          DECIMAL(18,5) DEFAULT 0.00000 NULL,
    quantidade     DECIMAL(18,5) DEFAULT 0.00000 NULL,
    categoria_id   INT NULL,
    PRIMARY KEY    (produto_id),
    CONSTRAINT     fk_ProdutosCategorias
    FOREIGN KEY    (categoria_id) REFERENCES categorias(categoria_id)
);

------//    //-----------------

SELECT  P.produto_id,
        p.nome,
        p.descricao,
        p.valor,
        p.quantidade,
        p.categoria_id,
        c.descricao as DescricaoCategoria
   FROM produtos as p
   LEFT JOIN Categorias as c ON c.categoria_id = p.categoria_id

   SELECT categoria_id, descricao FROM Categorias
