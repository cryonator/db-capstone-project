DELIMITER //

CREATE PROCEDURE CancelOrder(IN order_id_to_delete INT)
BEGIN
    DELETE FROM Orders
    WHERE OrderID = order_id_to_delete;
END//

DELIMITER ;