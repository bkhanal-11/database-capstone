## Exercise 1: Create a virtual table to summarize data

**Scenario**

Little Lemon needs to retrieve data from their database. You can use your knowledge of MySQL to help them. As part of this task, you need to:

- Create a virtual table to summarize data.

- Use a JOIN statement to query data from multiple tables.

- Create a SQL statement with a subquery.

You can carry out these steps using your knowledge of virtual tables, JOIN statements and SQL queries. Review the instructions that follow for guidance on completing these tasks.


**Prerequisites**

In the previous module, you developed a data model for Little Lemon and implemented it in your MySQL server. Your database should now contain several tables including the following:

- Menus, 

- Orders, 

- MenuItems,

- and Customers.

**Task instructions**

Little Lemon need you to create some reports on the orders placed in the restaurant. Complete the following tasks to help Little Lemon obtain the relevant information about the menu’s orders.


**Task 1**

In the first task, Little Lemon need you to create a virtual table called `OrdersView` that focuses on `OrderID`, Quantity and Cost columns within the Orders table for all orders with a quantity greater than 2. 

Here’s some guidance around completing this task: 

- Use a `CREATE VIEW` statement.

- Extract the order id, quantity and cost data from the Orders table.

- Filter data from the orders table based on orders with a quantity greater than 2. 

**Task 2**

For your second task, Little Lemon need information from four tables on all customers with orders that cost more than $150. Extract the required information from each of the following tables by using the relevant JOIN clause: 

- `Customers` table: The customer id and full name.

- `Orders` table: The order id and cost.

- `Menus` table: The menus name.

- `MenusItems` table: course name and starter name.

The result set should be sorted by the lowest cost amount.

**Task 3**

For the third and final task, Little Lemon need you to find all menu items for which more than 2 orders have been placed. You can carry out this task by creating a subquery that lists the menu names from the menus table for any order quantity with more than 2.

Here’s some guidance around completing this task: 

- Use the `ANY` operator in a subquery

- The outer query should be used to select the menu name from the menus table.

- The inner query should check if any item quantity in the order table is more than 2. 

## Exercise 2: Create optimized queries to manage and analyze data

**Scenario**

Little Lemon need to query the data in their database. To do this, they need your help with creating optimized queries using stored procedures and prepared statements.


**Prerequisites**

In the previous module, you developed a data model for Little Lemon and implemented it in your MySQL server. Your database should now contain several tables including the following:

- Menus, 

- Orders, 

- MenuItems,

- and Customers.

You also need to use MySQL Workbench SQL editor to write the required stored procedures and prepared statements.


**Task 1**

In this first task, Little Lemon need you to create a procedure that displays the maximum ordered quantity in the Orders table. 

Creating this procedure will allow Little Lemon to reuse the logic implemented in the procedure easily without retyping the same code over again and again to check the maximum quantity. 

You can call the procedure `GetMaxQuantity` and invoke it as follows:

```sql
CALL GetMaxQuantity();
```

**Task 2**

In the second task, Little Lemon need you to help them to create a prepared statement called `GetOrderDetail`. This prepared statement will help to reduce the parsing time of queries. It will also help to secure the database from SQL injections.

The prepared statement should accept one input argument, the `CustomerID` value, from a variable. 

The statement should return the order id, the quantity and the order cost from the Orders table. 

Once you create the prepared statement, you can create a variable called `id` and assign it value of 1. 

Then execute the `GetOrderDetail` prepared statement using the following syntax:

```sql
SET @id = 1;
EXECUTE GetOrderDetail USING @id;
```

**Task 3**

Your third and final task is to create a stored procedure called `CancelOrder`. Little Lemon want to use this stored procedure to delete an order record based on the user input of the order id.

Creating this procedure will allow Little Lemon to cancel any order by specifying the order id value in the procedure parameter without typing the entire SQL delete statement.   

## Exercise 3: Create SQL queries to check available bookings based on user input

**Scenario**

Little Lemon’s data model must include a Bookings table so that they can store data for table bookings. They also need a stored procedure that checks available bookings based on user input, and a MySQL transaction that can be used to cancel bookings. Use your knowledge of MySQL to help them out.


**Prerequisites**
You should have created the Little Lemon database in an earlier module. This database should contain a basic Bookings table linked to a Customers table as illustrated below. Your tables can differ slightly from those provided in the example once the required relationship exists between the two.

You also require access to MySQL Workbench SQL editor to write the required queries.

**Task 1**

Little Lemon wants to populate the Bookings table of their database with some records of data. Your first task is to replicate the list of records in the following table by adding them to the Little Lemon booking table. 

You can use simple INSERT statements to complete this task.

|BookingID|BookingDate|TableNumber|CustomerID|
|---------|-----------|-----------|----------|
|1        |2022-10-10 |5          |1         |
|2        |2022-11-12 |3          |3         |
|3        |2022-10-11 |2          |2         |
|4        |2022-10-13 |2          |1         |

**Task 2**

For your second task, Little Lemon need you to create a stored procedure called `CheckBooking` to check whether a table in the restaurant is already booked. Creating this procedure helps to minimize the effort involved in repeatedly coding the same SQL statements.

The procedure should have two input parameters in the form of booking date and table number. You can also create a variable in the procedure to check the status of each table.

**Task 3**

For your third and final task, Little Lemon need to verify a booking, and decline any reservations for tables that are already booked under another name. 

Since integrity is not optional, Little Lemon need to ensure that every booking attempt includes these verification and decline steps. However, implementing these steps requires a stored procedure and a transaction. 

To implement these steps, you need to create a new procedure called `AddValidBooking`. This procedure must use a transaction statement to perform a rollback if a customer reserves a table that’s already booked under another name.  

Use the following guidelines to complete this task:

- The procedure should include two input parameters in the form of booking date and table number.

- It also requires at least one variable and should begin with a `START TRANSACTION` statement.

- Your INSERT statement must add a new booking record using the input parameter's values.

- Use an IF ELSE statement to check if a table is already booked on the given date. 

- If the table is already booked, then rollback the transaction. If the table is available, then commit the transaction. 

## Exercise 4: Create SQL queries to add and update bookings

**Scenario**

Little Lemon needs your help with managing their bookings. They need you to create stored procedures that they can invoke as required to add, update and delete bookings in their database.


**Prerequisites**

You should have a basic Bookings table in your Little Lemon database that’s linked to a Customers table.

**Task 1**

In this first task you need to create a new procedure called `AddBooking` to add a new table booking record.

The procedure should include four input parameters in the form of the following bookings parameters:

- booking id, 

- customer id, 

- booking date,

- and table number.

**Task 2**

For your second task, Little Lemon need you to create a new procedure called `UpdateBooking` that they can use to update existing bookings in the booking table.

The procedure should have two input parameters in the form of booking id and booking date. You must also include an `UPDATE` statement inside the procedure. 

**Task 3**

For the third and final task, Little Lemon need you to create a new procedure called `CancelBooking` that they can use to cancel or remove a booking.

The procedure should have one input parameter in the form of booking id. You must also write a `DELETE` statement inside the procedure. 
