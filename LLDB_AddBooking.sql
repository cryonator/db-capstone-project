USE LITTLELEMONDB;
DELIMITER //

CREATE PROCEDURE AddBooking(
    IN booking_id INT,
    IN customer_id INT,
    IN booking_date DATE,
    IN table_number INT
)
BEGIN
    -- Insert the new booking into the Bookings table
    INSERT INTO Bookings (BookingID, BookingDate, TableNumber, CustomerID)
    VALUES (booking_id, booking_date, table_number, customer_id);
    
    SELECT 'New Booking added.' AS Message;
END//

DELIMITER ;
