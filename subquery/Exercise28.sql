-- From the following tables write a SQL query to find those customers whose grades are not the same as those who live in London City. Return customer_id, cust_name, city, grade and salesman_id.

select * from customer where
 grade not in 
 (select grade from customer where city = 'London');