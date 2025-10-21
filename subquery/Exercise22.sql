-- From the following table write a SQL query to find all those customers with a higher grade than all the customers alphabetically below the city of New York. Return customer_id, cust_name, city, grade, salesman_id.

select * from customer where
 grade > (select max(grade) from customer where
 city < 'New York');