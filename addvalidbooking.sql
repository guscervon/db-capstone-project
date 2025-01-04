DELIMITER $$

CREATE PROCEDURE AddValidBooking(IN date_booking DATE, IN table_number)
BEGIN
	DELCARATE status_booking VARCHAR(25);

	SELECT
		status
		INTO status_booking
	FROM
		Orders
	INNER JOIN Bookings
	ON
		Bookings.idOrders = Orders.id
	WHERE
		BookingDate = date_booking
		AND TableNumber = table_number:
	
	
	IF status_booking
		START TRANSACTION
		INSERT INTO Bookings (BookingDate, TableNumber)
		VALUES (date_booking, table_number);
	ELSE

