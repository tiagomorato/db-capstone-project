-- Task 1
CREATE VIEW OrdersView AS
SELECT OrderID, OrderQty, OrderCost
FROM littlelemondb.`order`
WHERE OrderQty > 1;
SELECT * FROM OrdersView;

-- Task 2
SELECT c.CustomerID, c.CustomerName, o.OrderID, o.OrderCost, m.MenuName, mi.MenuItemCourse, mi.MenuItemStarter
FROM customer c, `order` o, menu m, menuitem mi
WHERE m.MenuItemID = mi.MenuItemID 
    AND o.MenuID = m.MenuID 
    AND o.CustomerID = c.CustomerID 
    AND OrderCost > 150
ORDER BY o.OrderCost ASC;

-- Task 3
SELECT MenuName
FROM menu
WHERE MenuID = ANY (
    SELECT MenuID
    FROM `order`
    WHERE OrderQty > 2
);

-- Task 1: Stored Procedure
DELIMITER //
CREATE PROCEDURE GetMaxQuantity ()
BEGIN
SELECT MAX(OrderQty)
FROM `order`;
END //
DELIMITER ;
CALL GetMaxQuantity();

-- Task 2: Prepared Statement
PREPARE GetOrderDetail FROM 'SELECT OrderID, OrderQty, OrderCost FROM `order` WHERE CustomerID = ?';
SET @CustomerID = 1;
EXECUTE GetOrderDetail USING @CustomerID;

-- Task 3: Stored Procedure
DELIMITER //
CREATE PROCEDURE CancelOrder(IN order_id INT)
BEGIN
DELETE FROM `order` WHERE OrderID = order_id;
END //
DELIMITER ;
CALL CancelOrder(1);
