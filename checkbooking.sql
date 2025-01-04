DELIMITE $$

CREATE PROCEDURE CheckBooking(IN booking_date DATE, IN table_number INT)
BEGIN
	SELECT
		*
	FROM
		Bookings
	WHERE
		BookingDate = booking_date
		AND TableNumber = table_number
END $$

DELIMITER ;
