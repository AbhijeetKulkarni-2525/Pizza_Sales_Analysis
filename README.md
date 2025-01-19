
# Pizza Sales Analysis with SQL and Power BI
This project aims to analyze and visualize key performance indicators (KPIs) for pizza sales to gain insights into the business performance. The analysis includes calculating important KPIs and creating interactive dashboards to visualize the trends and sales data for various pizzas.

Objective
1. KPI Analysis:
Total Revenue: Calculate the overall revenue generated.
Average Order Value: Determine the average value of an order.
Total Pizzas Sold: Analyze the total number of pizzas sold.
Total Orders: Calculate the total number of pizza orders.
Average Pizzas Per Order: Measure how many pizzas are ordered on average per transaction.
2. Data Visualization:
Daily Trend for Total Orders: Visualize the trend of total orders by day.
Monthly Trend for Total Orders: Show the trend of total orders across different months.
Percentage Sales by Pizza Category: Visualize the contribution of each pizza category to total sales.
Percentage of Sales by Pizza Size: Analyze sales distribution across different pizza sizes.
Total Pizzas Sold by Pizza Category: Visualize the total number of pizzas sold by category.
Top 5 Best-Selling Pizzas by Revenue, Quantity, and Orders: Display the top 5 best-sellers across these metrics.
Bottom 5 Best-Selling Pizzas by Revenue, Quantity, and Orders: Show the bottom 5 best-sellers.
Steps Taken
Data Understanding and Importing:

Gained an understanding of the raw pizza sales data and imported it into SQL Server.
Database Creation:

Created a new database in SQL Server to manage the data.
SQL Query Writing:

Wrote SQL queries to extract the necessary data and answer the problem statements.
Connecting SQL Server to Power BI:

Established a connection between SQL Server and Power BI to import and analyze the data.
Data Cleaning in Power BI:

Used Power Query Editor to clean the data:
Replaced pizza size abbreviations with full names.
Extracted day names from order dates and applied conditional formatting for sorting.
Extracted month names from order dates for better trend analysis.
DAX Functionality for Data Processing:

Used DAX (Data Analysis Expressions) to calculate KPIs such as 
total revenue 
average order value 
total pizzas sold 
total orders, and 
average pizzas per order

Dashboard Creation:

Developed two interactive Power BI dashboards:
Pizza Sales Dashboard: Displaying overall sales insights and trends.
Best/Worst Selling Pizzas Dashboard: Highlighting the top and bottom-selling pizzas across various metrics.
Insights
Total Revenue: $817.86K
Average Order Value: $38.31
Total Pizzas Sold: 49,574
Total Orders: 21,350
Average Pizzas Per Order: 2.32
Key Trends and Findings:
Orders are highest on Fridays and Saturdays.
Maximum orders are observed in January and July.
The 'Classic' pizza category contributes the most to both sales and total orders.
Large-size pizzas generate the highest sales revenue.
'Thai Chicken' pizza contributes the maximum revenue.
'Classic Deluxe' pizza is the best-seller in terms of quantity and orders.
'Brie Carre' pizza ranks lowest in revenue, quantity sold, and orders.
Visualizations
The project includes the following key visualizations:

Daily and monthly order trends.
Sales breakdown by pizza category and size.
Revenue and order insights for the best and worst-selling pizzas.
Conclusion
This project provides valuable insights into pizza sales data, helping the business understand key performance drivers. With interactive dashboards, stakeholders can easily monitor trends, identify best and worst-selling pizzas, and make data-driven decisions to optimize sales and inventory.
