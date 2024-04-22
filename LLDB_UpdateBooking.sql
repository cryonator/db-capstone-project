DELIMITER //

CREATE PROCEDURE UpdateBooking(
    IN booking_id INT,
    IN new_booking_date DATE
)
BEGIN
    -- Update the booking date for the specified booking ID
    UPDATE Bookings
    SET BookingDate = new_booking_date
    WHERE BookingID = booking_id;

    -- Return a confirmation message
    SELECT 'Booking date updated.' AS Message;
END//

DELIMITER ;
