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
