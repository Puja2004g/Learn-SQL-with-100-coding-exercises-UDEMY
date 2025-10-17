-- From the following tables, write a SQL query to find the salesperson and customer who reside in the same city. Return Salesman, cust_name, and city.

-- Sample table: salesman

-- salesman_id

-- name

-- city

-- commission

-- Sample table: customer

-- customer_id

-- cust_name

-- city

-- grade

-- salesman_id

select s.name as Salesman, c.cust_name as cust_name, s.city as city
from
salesman s join customer c on
s.city = c.city;