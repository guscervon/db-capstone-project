SELECT
    CustomersDetails.idCustomersDetails AS customerID,
    CustomersDetails.customerName AS customerFullname,
    Orders.idOrders AS OrderID,
    Orders.totalCost,
    Menu.description AS menuName,
    menuCategory.description AS courseName
FROM
    Orders
INNER JOIN CustomersDetails
ON
    Orders.CustomersDetails_idCustomersDetails = CustomersDetails.idCustomersDetails
INNER JOIN Menu
ON
    Orders.Menu_idMenu = Menu.idMenu
INNER JOIN menuCategory
ON
    Menu.menuCategory_idmenuCategory = menuCategory.idmenuCategory;
