-- From the following tables write a SQL query to find the details of an order.
--  Return ord_no, ord_date, purch_amt, Customer Name, grade, Salesman, commission.

-- table - orders, customer, salesman

select o.ord_no, o.ord_date, o.purch_amt, 
c.cust_name as 'Customer Name', c.grade,
s.name as Salesman, s.commission from
orders o join customer c 
on 
o.customer_id = c.customer_id
join
salesman s on
s.salesman_id = c.salesman_id;