-- From the following tables write a SQL query to find those customers with a 
-- grade less than 300. Return cust_name, customer city, grade, Salesman, 
-- salesmancity. The result should be ordered by ascending customer_id.

select c.cust_name, c.city as 'customer_city', c.grade,
s.name as Salesman, s.city as 'salesman_city'
from
customer c join Salesman s 
on 
c.salesman_id = s.salesman_id
where c.grade<300 
order by c.customer_id;
