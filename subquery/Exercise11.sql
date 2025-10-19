-- From the following tables write a SQL query to find salespeople who had more than one customer. Return salesman_id and name.

SELECT salesman_id,name FROM salesman a WHERE 
1 < (SELECT COUNT(*) FROM customer WHERE 
salesman_id=a.salesman_id);

select s.salesman_id, s.name from 
salesman s join customer c
on
s.salesman_id = c.salesman_id
group by s.salesman_id 
having
count(c.customer_id) >1;