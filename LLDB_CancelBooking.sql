DELIMITER //

CREATE PROCEDURE CancelBooking(
    IN booking_id INT
)
BEGIN
    -- Delete the booking with the specified booking ID
    DELETE FROM Bookings
    WHERE BookingID = booking_id;

    -- Return a confirmation message
    SELECT 'Booking cancelled.' AS Message;
END//

DELIMITER ;
