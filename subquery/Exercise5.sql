-- From the following tables, write a SQL query to find all the orders generated in New York City. Return ord_no, purch_amt, ord_date, customer_id and salesman_id.


select ord_no, purch_amt, ord_date, customer_id, salesman_id from orders
where customer_id IN (select customer_id from customer where city = 'New York');