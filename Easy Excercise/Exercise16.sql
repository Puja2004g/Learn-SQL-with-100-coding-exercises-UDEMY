-- Suppose you have two tables named

-- employees with columns: employee_id, name, department_id, and salary.

-- departments with columns: department_id and department_name.

-- Write an SQL query to find the department with the highest average salary.

select d.department_name as department_name from
departments d join employees e on
d.department_id = e.department_id
group by d.department_name
order by avg(e.salary) desc
limit 1;