DELIMITER //

CREATE PROCEDURE GetMaxOrderedQuantity()
BEGIN
    SELECT MAX(Quantity) AS Max_Quantity
    FROM Orders;
END//

DELIMITER ;