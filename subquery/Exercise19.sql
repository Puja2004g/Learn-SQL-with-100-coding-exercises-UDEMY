-- From the following tables write a SQL query to find the salespeople who deal with those customers who live in the same city. Return salesman_id, name, city and commission.


select distinct s.salesman_id, s.name, s.city, s.commission from salesman s 
join
customer c on
c.city = s.city;