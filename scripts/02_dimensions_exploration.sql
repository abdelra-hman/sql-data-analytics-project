-- Explore All Countries our custoemrs come from 

select 
distinct country
from gold.dim_customers

-- Explore All Categories "The major Divisions" 

select 
distinct category , subcategory , product_name
from gold.dim_products
order by 1,2,3