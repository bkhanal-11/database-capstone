## Exercise 1: Set up the Tableau Workspace for data analysis

**Scenario** 

Little Lemon have an Excel sheet file with thousands of records of data on orders made between 2019 and 2023. They want to analyze the sales data to examine how they can increase their profits. They need you to help them to prepare the existing data before they start analyzing it.   


**Prerequisites**

Check that you have the following before you begin these tasks:

- Tableau already installed on your machine 

- Little Lemon DB Excel Sheet should be downloaded on your machine  

**Task instructions**

Complete the following tasks to help Little Lemon set up their Tableau Workspace for data analysis. 

**Task 1**

In this first task, you need to connect to Little Lemon data stored in the Excel Sheet called `LittleLemonDB`. Then filter data in the data source page and select the United States as the country.

Here’s some guidance for completing this task:

- Open Tableau. In the Connection Pane select Excel, then navigate to the data source.

- In the data source page, select Filter Tab.


**Task 2**

In the second task, you need to create two new data fields called First Name and Last Name. Related values should be extracted from the Full Name field.

Here’s some guidance for completing this task:

- You can use the Split feature in Tableau.

- Rename the new fields.

**Task 3**

For your third task, you need to create a new data field that stores the profits for each sale, or order as shown in the screenshot below.

Here’s some guidance for completing this task:

- Select Sales field in the Data Pane, then select `Create Calculated` field. 

- Name the calculated field Profit.

- Write a formula that deducts Cost from Sales. 

## Exercise 2: Create interactive dashboard for sales and profits

**Scenario**

In the previous exercise, you prepared Little Lemon’s data to perform data analytics. Little Lemon now need you to filter the data, analyze it and create visual charts in the form of an interactive dashboard to help them understand their business performance, so they can increase their sales and profits.

**Prerequisites** 

- Tableau already installed on your machine. 

- Little Lemon DB Excel Sheet should be downloaded on your machine.

**Task instructions**

Complete the following tasks to help Little Lemon create interactive dashboards to display their sales and profits.

**Task 1**
In the first task, you need to create a bar chart that shows customers sales and filter data based on sales with at least $70.

Here’s some guidance for completing this task:

- Drag and drop relevant fields from the data pane into the shelves section.

- Use a suitable colour scheme.

- Filter sales based on sales >= $70.

- Name the chart `Customers sales`.

**Task 2**

In the second task, you need to create a line chart to show the sales trend from 2019 to 2022. 

Here’s some guidance for completing this task:

- Drag and drop relevant fields from the data pane.

- Use a suitable colour scheme.

- Filter data to exclude 2023.

- Name the chart `Profit chart`.

**Task 3**

In the third task, you need to create a Bubble chart of sales for all customers. The chart should show the names of all customers. Once you roll over a bubble, the chart should show the name, profit and sale.

Here’s some guidance for completing this task:

- Drag and drop relevant fields from the data pane.

- Use a suitable colour scheme.

- Name the chart `Sales Bubble Chart`.

**Task 4**

In this task, you need to compare the sales of the three different cuisines sold at Little Lemon. Create a Bar chart that shows the sales of the Turkish, Italian and Greek cuisines.

You need to display sales data for 2020, 2021, and 2022 only. Each bar should display the profit of each cuisine. 

Here’s some guidance for completing this task:

- Drag and drop relevant fields from the data pane.

- Use a suitable color scheme.

- Name the worksheet `Cuisine Sales and Profits`.

- Sort data in descending order by the sum of the sale.

**Task 5**

In this final task, you need to create an interactive dashboard that combines the Bar chart called `Customers sales` and the `Sales` Bubble Chart. Once you click a bar, and roll over the related bubble, the name, sales and profit figures should be displayed in the Bubble chart.

## Exercise 3: Set up the client project

**Scenario**

Little Lemon needs you to help them to build a Booking System so that their guests can book tables with the restaurant. Use your knowledge of database clients to help Little Lemon complete this task.


**Prerequisites**
To complete this task, you need to create a folder and then open a command prompt at that location. Next, to start writing code to create the booking system, you first need to ensure that you have Python installed, a working IDE and configured a driver that you can use to interact with your database.


**Task Instructions**
Complete the following tasks to set up the client project.


**Task 1**
Your first task is to navigate to your terminal and ensure that Python is installed and available on the command path. To complete this task, type the following syntax:

```bash
python --version
```

This should display the version number of the python installed. Your OS should be running Python version 3. If faced with an earlier version of Python, or a `command not found` message, navigate to https://www.python.org/downloads/ for instructions on how to configure and install an appropriate version for your operating system. 


**Task 2**
Having established that an up-to date version of python is installed on your machine you will need to install Jupyter. You can install Jupyter using the following code: 

```bash
python -m pip install jupyter
```

Once Jupyter is installed, you can open a notebook by typing the following command in the terminal:

```bash
jupyter notebook
``` 

Once you’ve opened Jupyter, you then need to create a new notebook for writing your code by clicking new and then selecting ipykernel. This action creates a new notebook from which you can compile code.

**Task 3**

Your third and final task is to establish a connection between Python and your database using the following steps:

**Step One:** 

Ensure that mysql-connector is installed by running the command:

```python
!pip install mysql-connector-python
```

**Step Two:** 

Import the connector under the alias connector:

```python
import mysql.connector as connector
```

**Step Three:** 

Verify that a connection can be made with your database by calling the connection method from the connector class: 

```python
connection = connector.connect(user = "your_user_name", password = "your_password_for_database")
```

## Exercise 4: Add query functions

**Scenario**

Little Lemon have started building a functional booking system from which they can manage their customer data. An integral part of a well-functioning system is the ability to query data. Little Lemon need you to help them add the search functionality required to query their data. 


**Prerequisites**
At this stage of the project, you should have set up the working environment, configured the connector/python and created a database with all the customer information. To implement a booking system, you will first have to review how to make queries on an existing database using Python syntax.


**Task One**

In the previous exercise you created a Python environment. In the first task of this exercise, you are tasked with extending the environment to connect with your database and interact with the data it holds. 

Your first step is to import the connector module, enter your user details and connect with the database (Hint: you can use an alias when importing the module).

This gives you access to all the functionality available from the connector API, which can be accessed through the variable named connector (or whichever alias you choose). 

To connect with your database, you can call the connect method of the connector class and pass in your details using the following code: 

```python
connection = connector.connect(user = "your_username", password = "your_password", db = "database_name")
```
 
This code should look very familiar to you from the previous course, apart from the parameter db. DB stands for database. When instantiating the connection, you can pass the database name here in place of calling the USE command later. 

The final step is to instantiate an instance of cursor to pass queries and return results (Hint: the cursor is part of the connection class outlined above).

**Task two**

In this second task, you now need to query the database to show all tables within the database. 

Having established a connection in the first task, you need to execute a test query to ensure that there are no issues. You can do this by executing, or passing, a generic query that returns a snapshot of the database tables. 

You need to execute the query on the cursor using the code that follows. The cursor, as you should recall, is the bridge through which you can pass queries and return results. 

```python
show_tables_query = "SHOW tables" 
cursor.execute(show_tables_query)
```
As before, a variable is used to hold the query. To gain a general insight, the query asks to display all tables within the database. 

The second line calls the cursor execute method. This method takes the Python string and ports it into a viable SQL statement. It then passes it to the database and returns the result. 

To view the results of your query, you can create another variable called results (Hint: the cursor has a method that can return all results in one call). 

To view the tables that are associated with a database, you can print out the results variable using the following code: 

```python
print(results)
```

**Task 3**

**Query with table JOIN**

For the third and final task, Little Lemon need you to return specific details from your database. They require the full name and contact details for every customer that has placed an order greater than $60 for a promotional campaign. 

You can use the following steps to implement this functionality in your database directory:


**Step One:** Identify which tables are required. To complete the query, you first need to identify which table has the required data. 

The bill paid can be found in Orders as `TotalCost` and the customer contact information can be found in the Customers table. 

When selecting attributes from a specific table, specify the table name, followed by a dot and the target attribute as below (Hint: select the column attributes that you will need). 


**Step Two:** Next, specify a table (Hint: The `FROM` keyword allows you to identify a table.)

To join two tables, specify the type of `JOIN` and the attribute to join the table on. The tables must be joined on an attribute that is common to both tables (such as a common column).


**Step Three:** Finally, include a clause to filter the data on. (Hint: the `WHERE` clause can be used to add conditional parameters.) 

When you have completed these steps, wrap this query as a string and pass it to the `.execute()` method of the cursor class. When executed, your `SELECT` query must extract the full name, contact details and bill amount for every customer who spent more than $60.
