DELIMITER //

CREATE PROCEDURE AddValidBooking(
    IN booking_date DATE,
    IN table_number INT,
    IN customer_id INT,
    IN bookingID INT
)
BEGIN
    DECLARE table_status INT;

    START TRANSACTION;  -- Start a transaction for this operation

    -- Check if the table is already booked on the given date
    SELECT COUNT(*) INTO table_status
    FROM Bookings
    WHERE BookingDate = booking_date
        AND TableNumber = table_number;

    IF table_status > 0 THEN
        -- Table is already booked, rollback the transaction
        ROLLBACK;
        SELECT 'Table is already booked, booking cancelled.' AS Status;
    ELSE
        -- Table is available, proceed with the booking
        INSERT INTO littlelemondb.bookings (BookingID, BookingDate, TableNumber, CustomerID)
        VALUES (bookingID, booking_date, table_number, customer_id);

        COMMIT;  -- Commit the transaction
        SELECT 'Booking confirmed.' AS Status;
    END IF;
END//

DELIMITER ;
