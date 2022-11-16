-- Conectar ao Banco de Dados.
USE ecommerce;
-- Quantidade de clientes cadastrados.
SELECT count(*) FROM clients;
-- Verificar os pedidos feito pelos clientes (tabela completa)
SELECT * FROM clients c, orders o WHERE c.idClient = idOrderClient;
-- Verificar os pedidos feito pelos clientes (especificando os itens da tabela)
SELECT Fname, Lname, idOrder, orderStatus FROM clients c, orders o where c.idCliente = idOrderClient;
-- Verificar os pedidos feito pelos clientes (especificando os itens da tabela e melhorando a apresentação com Alias e concatenação)
SELECT concat(Fname, ' ', Lname) AS Client, idOrder AS Request, orderStatus AS Status FROM clients c, orders o WHERE c.idCliente = idOrderClient;
-- Listar quantos pedidos foram realizados por cada cliente
SELECT c.idClient, Fname, count(*) AS Number_of_orders FROM clients c
		INNER JOIN orders o ON c.idClient = o.idOrdersClient
        GROUP BY idClient;
-- Recuperação de pedido com produto associado
SELECT * FROM clients c INNER JOIN orders o ON c.idClient = o.idOrderClient
						INNER JOIN productOrder p ON p.idPOrder = o.idOrder
                        GROUP BY idClient;
-- Listar a quantidade de pedidor com status Confirmado ordenando por nome em ordem alfabetica
SELECT idClient AS 'id', CONCAT(Fname, ' ',Lname) AS 'cliente',
OrderDescription AS 'descrição', OrderStatus AS 'status', COUNT(*) AS 'qtd' FROM Orders,
Clients WHERE OrderStatus = 'Confirmado' AND IdClient = IdOrderClient GROUP BY IdOrderClient ORDER BY Fname ;