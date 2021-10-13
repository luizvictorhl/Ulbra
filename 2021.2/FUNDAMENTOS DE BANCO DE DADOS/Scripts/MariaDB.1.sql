INSERT CATEGORIAS (NOME)
	VALUES('TECLADOS');
    
INSERT CATEGORIAS (NOME)
	VALUES('Acessórios');

INSERT CATEGORIAS (CODIGO, NOME)
	VALUES(3,'Monitores');
    
SELECT codigo, nome
FROM CATEGORIAS

/*
DELETE
*/

DELETE FROM CATEGORIAS;

INSERT CATEGORIAS (NOME)
	VALUES
    ('Eletrônicos'),
    ('Monitores'),
    ('Teclados'),
    ('Acessórios');
    
--deletar somente a categoria acessorios

DELETE FROM CATEGORIAS WHERE nome='Acessórios'
DELETE FROM CATEGORIAS WHERE codigo=9;

SELECT * FROM CATEGORIAS

--consultar a categoria com o codigo 6

SELECT * FROM CATEGORIAS WHERE codigo=6
SELECT * FROM CATEGORIAS WHERE nome='Eletrônicos'

/*UPDATE tabela SET coluna='dado'
WHERE coluna=100*/

--alterar o nome da CATEGORIAS

UPDATE CATEGORIAS
	SET nome='Super Eletrônicos'
    WHERE codigo=4;
    
    UPDATE CATEGORIAS
	SET nome='Acessórios'
    WHERE codigo=6;
    
--cadastrar um teclado

SELECT * FROM PRODUTOS
INSERT INTO PRODUTOS(descricao, valor_unitario, cod_categoria)
	VALUES('MONITOR', 255.99, 5);