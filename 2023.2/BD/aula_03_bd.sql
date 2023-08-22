SELECT c.idCliente, c.nomeCliente AS nomeCliente, p.idPedido, p.dataPedido, p.valorPedido 
FROM clientes c JOIN pedidos p ON c.idCliente = p.idCliente ORDER BY c.idCliente, p.idPedido;

SELECT c.nomeCliente AS nomeCliente, c.cidadeCliente 
FROM clientes c JOIN pedidos p ON c.idCliente = p.idCliente GROUP BY c.nomeCliente, c.cidadeCliente;

SELECT nomeCliente FROM clientes WHERE idCliente NOT IN (SELECT DISTINCT idCliente FROM pedidos);

SELECT c.nomeCliente, c.cidadeCliente FROM clientes JOIN pedidos ON idCliente = pedidos.idCliente WHERE pedidos.valorPedido > 200;


