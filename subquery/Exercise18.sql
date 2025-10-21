-- From the following tables, write a SQL query to find the salespeople who deal the customers with more than one order. Return salesman_id, name, city and commission.
select * from salesman where
salesman_id in 
(select salesman_id from orders group by customer_id 
having count(ord_no) > 1);