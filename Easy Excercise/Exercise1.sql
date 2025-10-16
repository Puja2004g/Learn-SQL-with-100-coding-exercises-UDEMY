--You are given a database table named paperwork which contains two columns: n and m. Each row 
-- in the table represents a pair of integers. You need to write an SQL query to select the 
-- following:
-- The value of n.
-- The value of m.
-- A calculated result, res, which is defined as follows:
-- If either n or m is negative, res should be 0.
-- Otherwise, res should be the product of n and m.
-- The goal is to produce a result set where each row contains the values of n, m, and 
-- the computed res based on the specified conditions.

SELECT n, m , case
when n<0 or m<0 then 0
else n*m
end as res 
from paperwork;