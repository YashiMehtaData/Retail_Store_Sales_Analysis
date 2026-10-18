create database retail_store_sales;
use retail_store_sales;

--Import data from the excel csv file to run the sql queries
select * from retail_store_sales;

--Total revenue generated
select sum(Total_Spent) from retail_store_sales;

--Average price per unit by category
select Category ,round(avg(Price_Per_Unit),2) as Average from retail_store_sales group by Category;

--Customer transaction
--Count of transacton by payment method
select Payment_Method ,count(Transaction_ID) as Transaction_count from retail_store_sales group by Payment_Method;

--Find category group by
select Category from retail_store_sales group by Category;

--High-value transactons
select Transaction_ID,Customer_ID,Total_Spent from retail_store_sales 
where Total_Spent>150 order by Total_Spent desc;