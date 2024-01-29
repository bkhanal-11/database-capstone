USE littlelemondb;
DROP PROCEDURE IF EXISTS AddValidBooking;
DELIMITER // 

CREATE PROCEDURE AddValidBooking(IN BookDate DATE, IN TableNum INT, IN CustomID INT)
BEGIN
    DECLARE bookingCount INT;

    START TRANSACTION;
    SELECT COUNT(*) INTO bookingCount
    FROM Bookings
    WHERE BookingDate = BookDate AND TableNumber = TableNum;
	
    INSERT INTO Bookings (BookingDate, TableNumber, CustomerID)
        VALUES (BookDate, TableNum, CustomID);
    
    IF bookingCount > 0 THEN
        ROLLBACK;
        SELECT CONCAT("Table ", TableNum, " is already booked - booking cancelled") AS "Booking status";
    ELSE
        COMMIT;
        SELECT 'Booking successful.' AS Message;
    END IF;
END//

DELIMITER ; 

CALL AddValidBooking('2022-11-12', 5, 1);