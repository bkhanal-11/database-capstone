USE `littlelemondb`;
SELECT c.CustomerID, c.FullName, o.OrderID, o.TotalCost, m.MenuName, mi.CourseName, mi.StarterName 
FROM Customers AS c INNER JOIN Orders AS o ON c.CustomerID=o.CustomerID 
INNER JOIN Menus AS m ON o.MenuID=m.MenuID
WHERE o.TotalCost > 150;