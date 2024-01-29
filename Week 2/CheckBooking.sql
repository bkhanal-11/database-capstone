USE littlelemondb;
DROP PROCEDURE IF EXISTS CheckBooking;
DELIMITER // 

CREATE PROCEDURE CheckBooking(IN BookDate DATE, IN TableNum INT)
BEGIN
    DECLARE bookingCount INT;
    SELECT COUNT(*) INTO bookingCount
    FROM Bookings
    WHERE BookingDate = BookDate AND TableNumber = TableNum;

    IF bookingCount > 0 THEN
        SELECT concat("Table ", TableNum, " is already booked") AS "Booking status"; 
    ELSE
        SELECT concat("Table ", TableNum, " is available") AS "Booking status"; 
    END IF;
END//

DELIMITER ; 

CALL CheckBooking('2022-11-12', 3);
