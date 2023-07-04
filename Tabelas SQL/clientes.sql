

USE VENDAS
CREATE TABLE Clientes(
    cliente_id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    nome VARCHAR(60) NOT NULL,
    endereco VARCHAR(60) NULL,
    cidade VARCHAR(50) NULL,
    bairro VARCHAR(50) NULL,
    estado VARCHAR(2) NULL,
    cep VARCHAR(10) NULL,
    telefone VARCHAR(14) NULL,
    email VARCHAR(100) NULL,
    data_Nascimento DATETIME NULL

);

SELECT  cliente_id,
        nome,
        endereco,
        cidade,
        bairro,
        estado,
        cep,
        telefone,
        email,
        data_Nascimento
FROM Clientes

sp_RENAME 'Clientes.endreco', 'endereco', 'column'

SELECT * FROM Clientes

--sp_RENAME '[Tabela.NomeColuna]', '[NovoNomeColuna]' , 'COLUMN'