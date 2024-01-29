use littlelemondb;
DROP PROCEDURE IF EXISTS CancelBooking;
DELIMITER //
 
CREATE PROCEDURE CancelBooking(IN BookID INT) 
BEGIN
DELETE FROM bookings WHERE BookingID = BookID; 
SELECT CONCAT("Booking ", BookID, " cancelled") AS "Confirmation"; 
END//

DELIMITER ; 

CALL CancelBooking(5);