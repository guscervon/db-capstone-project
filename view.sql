CREATE VIEW IF NOT EXISTS OrdersView
SELECT
    idOrders,
    quantity,
    totalCost
FROM
    Orders;
