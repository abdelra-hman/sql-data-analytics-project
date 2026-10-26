/* segment products into cost ranges and
count how many products fall into each segment*/

with product_segment as
(
select 
product_key,
product_name,
cost,
case 
when cost < 100 then 'Below 100'
when cost between 100 and 500 then '100-500'
when cost between 500 and 1000 then '500-1000'
Else 'Above 1000'
end cost_range
from gold.dim_products p )

select 
cost_range,
count(product_key) product_count
from product_segment
group by cost_range 
order by product_count desc


/*Group customers into three segments based on their spending behavior:
	- VIP: Customers with at least 12 months of history and spending more than €5,000.
	- Regular: Customers with at least 12 months of history but spending €5,000 or less.
	- New: Customers with a lifespan less than 12 months.
And find the total number of customers by each group
*/

with group_segment as (
select 
c.customer_key customer_key,
sum(f.sales_amount) total_spend,
Min(order_date) as first_order , 
max(order_date) as last_order,
datediff(month , min(order_date) , max(order_date) ) lifespan
from gold.fact_sales f
left join  gold.dim_customers c 
on c.customer_key= f.customer_key
group by c.customer_key 
)

select 
custoemr_segment,
count(*) total_customer
from
(select 
customer_key,
lifespan , 
total_spend,
case 
   when (lifespan >= 12 and  total_spend >5000) then 'VIP'
   when (lifespan >= 12 and  total_spend<= 5000) then 'Regular'
   else 'New'
end custoemr_segment
from group_segment
)t
group by custoemr_segment
order by total_customer desc
