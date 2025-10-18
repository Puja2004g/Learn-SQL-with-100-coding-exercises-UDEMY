-- Write a SQL statement to make a report with customer name, city, order number, 
-- order date, and order amount in ascending order according to the order date to determine
--  whether any of the existing customers have placed an order or not.

select c.cust_name ,c.city,
o.ord_no, o.ord_date, o.purch_amt
from 
customer c left join orders o 
on
c.customer_id = o.customer_id
order by o.ord_date asc;