SELECT Menu.description 
FROM 
    Menu 
WHERE
    Menu.idMenu = ANY (SELECT Orders.Menu_idMenu FROM Orders HAVING COUNT(idOrders) > 2 GROUP BY Orders.Menu_idMenu);
