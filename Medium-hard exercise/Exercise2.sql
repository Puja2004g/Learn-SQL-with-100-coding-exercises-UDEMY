-- From the following tables, write a SQL query to find those orders where the order amount exists between 500 and 2000. Return ord_no, purch_amt, cust_name, and city.

-- Sample table: customer

-- customer_id

-- cust_name

-- city

-- grade

-- salesman_id

-- Sample table: orders

-- ord_no

-- purch_amt

-- ord_date

-- customer_id

-- salesman_id

select o.ord_no, o.purch_amt, c.cust_name, c.city 
from 
orders o join customer c on
o.customer_id = c.customer_id
where o.purch_amt between 500 and 2000;