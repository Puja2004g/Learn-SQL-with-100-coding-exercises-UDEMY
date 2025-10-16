-- Imagine you have two tables named

-- employees with columns: employee_id, name, department_id, and salary.

-- departments with columns: department_id and department_name.

-- Write an SQL query to retrieve the average salary for each department.


select d.department_id, d.department_name, avg(e.salary) as average_salary
from 
employees e join departments d
on
e.department_id=d.department_id
group by d.department_id;