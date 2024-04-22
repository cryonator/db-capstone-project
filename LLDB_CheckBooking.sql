DELIMITER //

CREATE PROCEDURE CheckBooking(
    IN booking_date DATE,
    IN table_number INT
)
BEGIN
    DECLARE booking_status VARCHAR(50);

    -- Check if the table is booked on the given date and time
    SELECT
        CASE
            WHEN COUNT(*) > 0 THEN 'booked'
            ELSE 'available'
        END INTO booking_status
    FROM
        Bookings
    WHERE
        BookingDate = booking_date
        AND TableNumber = table_number;

    -- Output the booking status
    SELECT booking_status;
END//

DELIMITER ;
