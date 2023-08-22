-- SELECT nomeCliente
-- FROM clientes
-- JOIN cidades ON clientes.idCliente = pedidos.idCliente
-- JOIN cidades ON clientes.idCidade = cidades.idCidade
-- WHERE cidades.nomeCidade IN ("São Paulo", "Rio de Janeiro");

-- GROUP BY--

-- SELECT nomeCidade
	-- AVG(clientes.idCliente) AS media_idade
-- FROM cidades
	-- JOIN clientes ON cidades.idCidade = clientes.idCidade
-- GROUP BY cidades.nomeCidade

-- SUBQUERY --

-- Obter o nome das cidades que tem clientes que fizeram pedidos em datas diferentes
-- SELECT nomeCidade FROM cidades;
-- SELECT * FROM clientes INNER JOIN pedidos ON pedidos.idCliente = clientes.idadeCliente
-- SELECT nomeCidade FROM cidades
-- WHERE idCidade IN (
-- SELECT clientes.idCidade FROM clientes
--    INNER JOIN pedidos ON pedidos.idCliente = clientes.idCliente
--    GROUP BY clientes.idCidade
--    HAVING COUNT(DISTINCT dataPedido) > 1
-- )

-- Obter o nome das cidades que tem clientes que fizeram pedidos em mais de um mes
-- SELECT nomeCidade
-- FROM cidades
-- WHERE idCidade IN (
--	SELECT clientes.idCidade FROM clientes
--    INNER JOIN pedidos ON pedidos.idCliente = clientes.idCliente
--    GROUP BY clientes.idCidade
--    HAVING COUNT(DISTINCT MONTH(dataPedido)) > 1
-- )

-- Obter o nome dos clientes que fizeram mais de tres pedidos

-- SELECT nomeCliente FROM clientes
-- WHERE idCliente IN (

-- SELECT idCliente
-- FROM pedidos
--    GROUP BY pedidos.idCliente
--    HAVING COUNT(*) > 3
-- )    
    
-- Obter o nome das cidades que tem clientes com idade entre 25 e 35 anos

SELECT nomeCidade FROM cidades
WHERE idCidade IN (

	SELECT idCidade FROM clientes
    WHERE idadeCliente BETWEEN 25 AND 35
)