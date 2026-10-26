-- find the date of the first and last order
-- how many year of sales are available
select 
min(order_date) first_order,
max(order_date) last_order,
datediff(year,min(order_date),max(order_date))  order_range_years
from gold.fact_sales

-- find the youngest and oldest customer


select 
min(birthdate) as oldest_birthdate , 
datediff(year , min(birthdate) , getdate()) as oldest_Age,
max(birthdate) as youngest_birthdate,
datediff(year , max(birthdate) , getdate()) as youngest_Age
from gold.dim_customers
