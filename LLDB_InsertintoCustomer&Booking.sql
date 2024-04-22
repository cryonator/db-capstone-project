USE LittleLemonDB;
Insert into Customer (CustomerID, CustomerName, Contact)
VALUES
(1, "Anna Aramis","8th Alp Strt"),
(2, "Dave Mumbio","7th Alp Strt"),
(3, "Alice Wonder","6th Alp Strt");
Insert into Bookings (BookingID, BookingDate, TableNumber, CustomerID) 
VALUES
(1,"2022-10-10",5,1),
(2,"2022-11-12",3,3),
(3,"2022-10-11",2,2),
(4,"2022-10-13",2,1);
