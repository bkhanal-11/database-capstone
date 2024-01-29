USE littlelemondb;
DROP PROCEDURE IF EXISTS AddBooking;
DELIMITER //
CREATE PROCEDURE AddBooking(IN BookID INT, IN CustomID INT, IN BookDate DATE, IN TableNum INT)
BEGIN
INSERT INTO Bookings (BookingID, BookingDate, TableNumber, CustomerID)
VALUES(BookID, BookDate, TableNum, CustomID);
SELECT CONCAT("New Booking Added") AS Confirmation;
END $$ 
DELIMITER ;

CALL AddBooking(9, 3, '2022-12-30', 4);