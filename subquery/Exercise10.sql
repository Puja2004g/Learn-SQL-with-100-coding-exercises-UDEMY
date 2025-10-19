-- From the following tables write SQL query to find the customers who placed orders on 17th August 2012. Return ord_no, purch_amt, ord_date, customer_id, salesman_id and cust_name.

select o.ord_no, o.purch_amt, o.ord_date, o.customer_id,
o.salesman_id, c.cust_name from
Orders o join Customer c 
on
o.customer_id = c.customer_id
where o.ord_date = '2012-08-17';