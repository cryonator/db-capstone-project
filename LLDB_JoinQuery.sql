Select 
C.CustomerID AS "Customer ID",
C.CustomerName AS "Customer Name",
O.OrderID AS "Order ID",
O.TotalCost AS Cost,
M.ItemName AS Menu,
M.Category AS "Menu Type"
from 
Customer C
INNER JOIN 
Bookings B ON C.CustomerID = B.CustomerID
INNER JOIN
Orders O ON B.BookingID = O.BookingID
INNER JOIN
Menu M ON O.MenuID = M.MenuID
WHERE 
O.TotalCost > 150
ORDER BY
O.TotalCost ASC;
