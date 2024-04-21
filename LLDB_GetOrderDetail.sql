PREPARE GetOrderDetail FROM 
'SELECT 
    O.OrderID, 
    O.Quantity, 
    O.TotalCost 
 FROM 
    Customer C
    INNER JOIN 
	Bookings B ON C.CustomerID = B.CustomerID
	INNER JOIN
	Orders O ON B.BookingID = O.BookingID
 WHERE 
    C.CustomerID = ?';