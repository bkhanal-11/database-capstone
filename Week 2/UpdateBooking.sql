USE littlelemondb;
DROP PROCEDURE IF EXISTS UpdateBooking;
DELIMITER // 

CREATE PROCEDURE UpdateBooking(IN BookingID INT, IN BookDate DATE) 
BEGIN
UPDATE Bookings SET BookingDate = BookDate WHERE BookingID = BookingID; 
SELECT CONCAT("Booking ", BookingID, " updated") AS "Confirmation"; 
END//
 
DELIMITER ; 

CALL UpdateBooking(9, "2022-12-17");