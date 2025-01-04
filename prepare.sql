PREPARE GetOrderDetail FROM (SELECT idOrders, quantity, totalCost FROM Orders WHERE Orders.idOrders = ?);
