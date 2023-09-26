-- 1: Crie uma Stored Procedure para inserir um novo corredor no banco de dados.

SELECT * FROM corredores

    DELIMITER //
CREATE PROCEDURE inserirCorredor(
IN nome VARCHAR(50),
IN idade INT,
IN sexo CHAR(1),
IN cidade VARCHAR(50),
IN estado VARCHAR (2)
)
BEGIN
	INSERT INTO corredores(Nome, Idade, Sexo, Cidade, Estado) 
    VALUES (nome, idade, sexo, cidade, estado);
END
//
DELIMITER ;

CALL inserirCorredor("José", 28, "M", "Rio de Janeiro", "RJ")

-- 2: Crie uma Stored Procedure para atualizar os detalhes de uma corrida.

SELECT * FROM corridas

DELIMITER //
CREATE PROCEDURE AtualizarDetalhesCorrida(
    IN pCorridaID INT,
    IN pNome VARCHAR(100),
    IN pData DATE,
    IN pLocal VARCHAR(100),
    IN pDistancia DECIMAL(5, 2)
)
BEGIN
    UPDATE corridas
    SET Nome=pNome, Data=pData, Local= pLocal, Distancia= pDistancia
    WHERE CorridaID = pCorridaID;
END //
DELIMITER ;
CALL AtualizarDetalhesCorrida(1, 'Corrida da paz', '2023-09-30', 'Parque Itu', 12.3);


-- 3: Crie uma Stored Procedure para excluir um corredor pelo seu ID.

select * from corredores;

DELIMITER //
CREATE PROCEDURE ExcluirCorredorPorID(IN pCorredorID INT)
BEGIN
    -- Desativar verificação de chaves estrangeiras
    SET FOREIGN_KEY_CHECKS = 0;

    -- Excluir o corredor
    DELETE FROM Corredores
    WHERE CorredorID = pCorredorID;

    -- Reativar verificação de chaves estrangeiras
    SET FOREIGN_KEY_CHECKS = 1;
END //
DELIMITER ;
CALL ExcluirCorredorPorID(8);

-- 4: Crie uma Stored Procedure para buscar todos os corredores de uma determinada cidade.

select * from corredores

DELIMITER //
CREATE PROCEDURE BuscarCorredoresPorCidade(IN pCidade VARCHAR(50))
BEGIN
    SELECT * FROM Corredores
    WHERE Cidade = pCidade;
END //
DELIMITER ;
CALL BuscarCorredoresPorCidade('Rio de Janeiro');

-- 5: Crie uma Stored Procedure para contar o número de corridas que ocorreram antes de uma
-- determinada data.

select * from corridas

DELIMITER //
CREATE PROCEDURE ContarCorridasAntesDeData(IN pData DATE)
BEGIN
    DECLARE total INT;
    SELECT COUNT(*) INTO total
    FROM Corridas
    WHERE Data < pData;
    
    SELECT total AS TotalCorridasAntesDeData;
END 
//
DELIMITER ;
CALL ContarCorridasAntesDeData('2023-12-25');

-- 6: Crie uma Stored Procedure para registrar a inscrição de um corredor em uma corrida.

select * from inscricoes

DELIMITER //
CREATE PROCEDURE RegistrarInscricao(
    IN pCorredorID INT,
    IN pCorridaID INT,
    IN pData DATE
)
BEGIN
    INSERT INTO Inscricoes (CorredorID, CorridaID, DataInscricao)
    VALUES (pCorredorID, pCorridaID, pData);
END 
//
DELIMITER ;
CALL RegistrarInscricao(1, 1, '2023-08-28');

-- 7: Crie uma Stored Procedure para retornar o nome e a data das últimas N corridas.

DELIMITER //
CREATE PROCEDURE UltimasNCorridas(IN pQuantidade INT)
BEGIN
    SELECT Nome, Data
    FROM Corridas
    ORDER BY Data DESC
    LIMIT pQuantidade;
END 
//DELIMITER ;
CALL UltimasNCorridas(3);
