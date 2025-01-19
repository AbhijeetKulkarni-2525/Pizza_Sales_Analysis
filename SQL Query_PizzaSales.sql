--Checking Dataset
SELECT 
  * 
FROM 
  [dbo].[pizza_sales]



--Find out the total revenue
SELECT 
  SUM(total_price) AS total_revenue 
FROM 
  pizza_sales



--Calculate the average order value
SELECT 
  ROUND(
    SUM(total_price), 
    2
  ) AS total_revenue, 
  COUNT(DISTINCT order_id), 
  SUM(total_price)/ COUNT(DISTINCT order_id) AS avg_order_value 
FROM 
  pizza_sales



--Find out total number of pizzas sold
SELECT 
  SUM(quantity) AS total_pizzas_sold 
FROM 
  pizza_sales



--Find out total orders placed
SELECT 
  COUNT(
    DISTINCT(order_id)
  ) AS total_orders_placed 
FROM 
  pizza_sales



--Find out average pizzas sold per order
SELECT 
  SUM(quantity) AS total_pizzas_sold, 
  COUNT(
    DISTINCT(order_id)
  ) AS total_orders_placed, 
  SUM(quantity)/ COUNT(
    DISTINCT(order_id)
  ) AS pizzas_per_order 
FROM 
  pizza_sales



--Find out daily trend for orders
SELECT 
  DATENAME(DW, order_date) AS order_day, 
  COUNT(
    DISTINCT(order_id)
  ) AS orders_placed 
FROM 
  pizza_sales 
GROUP BY 
  DATENAME(DW, order_date) 
ORDER BY 
  orders_placed DESC




--Find out monthly trend for orders
SELECT 
  DATENAME(MONTH, order_date) AS month_name, 
  COUNT(
    DISTINCT(order_id)
  ) AS total_orders_placed 
FROM 
  pizza_sales 
GROUP BY 
  DATENAME(MONTH, order_date) 
ORDER BY 
  total_orders_placed DESC



--Calculate the percentage of sales by pizza category for January
SELECT 
  pizza_category, 
  SUM(total_price)* 100 /(
    SELECT 
      SUM(total_price) 
    FROM 
      pizza_sales 
    WHERE 
      MONTH(order_date)= 1
  ) AS pct_sales 
FROM 
  pizza_sales 
WHERE 
  MONTH(order_date)= 1 
GROUP BY 
  pizza_category 
ORDER BY 
  pct_sales DESC



--Calculate the percentage of sales by pizza size
SELECT 
  pizza_size, 
  ROUND(
    SUM(total_price)* 100 /(
      SELECT 
        SUM(total_price) 
      FROM 
        pizza_sales
    ), 
    2
  ) AS pct_by_size 
FROM 
  pizza_sales 
GROUP BY 
  pizza_size 
ORDER BY 
  pct_by_size DESC



--Identify 5 TOP and BOTTOM selling pizzas by Revenue, Total Quantity and Total Orders
SELECT 
  TOP 5 pizza_name, 
  ROUND(
    SUM(total_price), 
    2
  ) AS total_revenue 
FROM 
  pizza_sales 
GROUP BY 
  pizza_name 
ORDER BY 
  total_revenue DESC



SELECT 
  TOP 5 pizza_name, 
  SUM(quantity) AS total_quantity_sold 
FROM 
  pizza_sales 
GROUP BY 
  pizza_name 
ORDER BY 
  total_quantity_sold DESC


       

SELECT 
  TOP 5 pizza_name, 
  COUNT(
    DISTINCT(order_id)
  ) AS total_orders 
FROM 
  pizza_sales 
GROUP BY 
  pizza_name 
ORDER BY 
  total_orders DESC



--Finding out bottom 5 (just use top 5 but order by ASC)
SELECT 
  TOP 5 pizza_name, 
  ROUND(
    SUM(total_price), 
    2
  ) AS total_revenue 
FROM 
  pizza_sales 
GROUP BY 
  pizza_name 
ORDER BY 
  total_revenue





SELECT 
  TOP 5 pizza_name, 
  SUM(quantity) AS total_quantity_sold 
FROM 
  pizza_sales 
GROUP BY 
  pizza_name 
ORDER BY 
  total_quantity_sold



SELECT 
  TOP 5 pizza_name, 
  COUNT(
    DISTINCT(order_id)
  ) AS total_orders 
FROM 
  pizza_sales 
GROUP BY 
  pizza_name 
ORDER BY 
  total_orders