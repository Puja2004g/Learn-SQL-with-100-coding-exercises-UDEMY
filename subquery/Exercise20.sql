-- From the following tables write a SQL query to find salespeople whose place of residence matches any city where customers live. Return salesman_id, name, city and commission.

select * from salesman
where city in (select DISTINCT city from customer)