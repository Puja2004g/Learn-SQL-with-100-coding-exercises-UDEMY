-- From the following tables write a SQL query to find the salesperson(s) and the customer(s) 
-- he represents. Return Customer Name, city, Salesman, commission.

select c.cust_name as 'Customer Name', c.city, s.name as Salesman, s.commission from
customer c join salesman s on
c.salesman_id = s.salesman_id;