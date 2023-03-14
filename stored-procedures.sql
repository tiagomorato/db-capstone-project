-- GetMaxQuantity()
	DELIMITER //
	CREATE PROCEDURE GetMaxQuantity ()
	BEGIN
	SELECT MAX(OrderQty)
	FROM `order`;
	END //
	DELIMITER ;
	CALL GetMaxQuantity();


-- ManageBooking()
-- checks if a table is already booked for a specific day
	DELIMITER //
	CREATE PROCEDURE ManageBooking (
		IN booking_date DATE,
		IN table_number INT
	)
	BEGIN
		-- Declare a variable to store the booking status
		DECLARE booking_status BOOL;

		-- Check if the table is already booked
		SELECT COUNT(*) INTO booking_status
		FROM bookings
		WHERE booking_date = @booking_date AND table_number = @table_number;

		-- Output a message indicating whether the table is available or already booked
		IF booking_status = TRUE THEN
			SELECT CONCAT('Table ', table_number, ' is already booked') AS message;
		ELSE
			SELECT CONCAT('Table ', table_number, ' is available') AS message;
		END IF;
	END //
	DELIMITER ;
	CALL ManageBooking('2023-03-15', 1);


-- UpdateBooking() 
-- alters an existing booking in the Little Lemon database
	DELIMITER //
	CREATE PROCEDURE UpdateBooking(
		IN BookingID INT,
		IN UpdatedTable INT,
		IN UpdatedDate DATE
	)
	BEGIN
		UPDATE booking 
		SET BookingTable = UpdatedTable, BookingDate = UpdatedDate 
		WHERE BookingID = BookingID;
	END //
	DELIMITER ;
	CALL UpdateBooking(1, 1, '2022-10-11');

-- AddBooking()
	DELIMITER //
	CREATE PROCEDURE AddBooking (
		IN table_number INT,
		IN booking_date DATE
	)
	BEGIN
		-- Check if the table is available on the booking date
		DECLARE booking_status BOOL;
		SELECT COUNT(*) INTO booking_status
		FROM booking
		WHERE BookingTable = table_number AND BookingDate = booking_date;
		
		-- Insert the booking if the table is available
		IF booking_status = 0 THEN
			INSERT INTO booking (BookingTable, BookingDate)
			VALUES (table_number, booking_date);
			SELECT CONCAT('Booking for table ', table_number, ' on ', booking_date, ' was successful') AS message;
		ELSE
			SELECT CONCAT('Table ', table_number, ' is already booked on ', booking_date) AS message;
		END IF;
	END //
	DELIMITER ;

-- CancelBooking() 
-- remove bookings from the Little Lemon database?
	DELIMITER //
	CREATE PROCEDURE CancelBooking(IN BookingID INT)
	BEGIN
	DELETE FROM booking WHERE BookingID = @BookingID;
	END //
	DELIMITER ;
	CALL CancelOrder(1);