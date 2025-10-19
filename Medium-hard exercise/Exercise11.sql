-- Write a SQL statement to generate a list in ascending order of salespersons who 
-- work either for one or more customers or have not yet joined any of the customers.

select s.salesman_id, s.name as salesman_name, s.city as salesman_city
from 
salesman s left join customer c 
on 
s.salesman_id = c.customer_id
group by s.salesman_id, s.name, s.city
order by s.salesman_id;