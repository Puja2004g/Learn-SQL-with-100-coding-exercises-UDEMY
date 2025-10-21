-- From the following tables write a SQL query to find all those salespeople whose names appear alphabetically lower than the customer’s name. Return salesman_id, name, city, commission.

select * from salesman
where 
name < (select cust_name from customer);