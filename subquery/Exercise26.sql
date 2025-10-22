-- From the following tables write a SQL query to find those customers whose grades are higher than those living in New York City. Return customer_id, cust_name, city, grade and salesman_id.

SELECT c1.* 
FROM customer c1 
JOIN customer c2 ON c1.grade > c2.grade 
WHERE c2.city = 'New York';
