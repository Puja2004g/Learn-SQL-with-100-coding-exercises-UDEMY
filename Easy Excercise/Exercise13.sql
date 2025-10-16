-- Consider two tables named orders and customers.

-- The orders table contains columns:

-- order_id,

-- customer_id,

-- order_date, and

-- total_amount.

-- The customers table contains columns:

-- customer_id,

-- name, and

-- country.

-- Write an SQL query to retrieve the total amount of orders placed by customers from each country.

select c.country as country, 
sum(o.total_amount) as total_order_amount from 
orders o join customers c
on
o.customer_id = c.customer_id
group by c.country;