-- From the following tables write a SQL query to find orders where the order amount is less than the order amount of a customer residing in London City. Return ord_no, purch_amt, ord_date, customer_id and salesman_id.

select * from orders where
purch_amt < (select purch_amt from orders where customer_id = 
(select customer_id from customer where city = 'London'));