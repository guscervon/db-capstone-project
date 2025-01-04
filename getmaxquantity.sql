DELIMITER $$
CREATE PROCEDURE GetMaxQuantity()
BEGIN
SELECT
    MAX(quantity) AS Max_quantity_order
FROM
    Orders;
END $$
DELIMITER $$
