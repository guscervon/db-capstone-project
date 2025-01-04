DELIMITER $$

CREATE PROCEDURE CancelBooking(IN booking_id INT)
BEING
	DELETE FROM Booking
	WHERE BookingID = booking_id;
END $$

DELIMITE ;
