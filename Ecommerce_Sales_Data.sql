create database sales_forcasting;

show tables;

select * from sales;

# Q.1 Total sales
select round(sum(sales),2) as Total_sales
from sales;

# Q.2 Total profit
select round(sum(profit),2) as Total_profit
from sales;

# Q.3 Top 5 Categories by Sales
select category, round(sum(sales),2) as total_sales 
from sales
group by category
order by total_sales desc
limit 5;

# Q.4 Category-wise Profit
select category, round(sum(profit),2) as Total_profit
from sales
group by category
order by Total_profit desc;

# Q.5 Region-wise Sales
select region, round(sum(sales),2) as revenue
from sales
group by region
order by revenue desc;

# Q.6 Payment Mode Analysis
select `payment mode` , round(sum(sales),2) as revenue
from sales
group by `payment mode`
order by revenue desc;

# Q.7 Highest Profit Margin Category
select category, round(sum(Profit),2) as Total_profit,
round(sum(Sales),2) as Total_sales,
round(sum(Profit) /Sum(Sales)*100,2) as Profit_margin_percentage
from sales
group by category
order by Profit_margin_percentage desc;

# Q.8 Top Customers by Revenue
select `customer name`, count(`order id`) as Total_orders,
round(sum(sales),2) as Revenue
from sales
group by `customer name`
order by revenue desc
limit 10;

# Q.9 Region-wise Profit Analysis
select Region, ROUND(SUM(Profit),2) AS Total_Profit
FROM sales
GROUP BY Region
ORDER BY Total_Profit DESC;

# Q.10 Cities in Each Region
select city, region, ROUND(SUM(Sales),2) AS Revenue
FROM sales
GROUP BY city, region
ORDER BY Revenue DESC
LIMIT 10;
