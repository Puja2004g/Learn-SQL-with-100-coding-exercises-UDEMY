-- Imagine you have two tables named

-- employees with columns: employee_id, name, department_id, and salary.

-- departments with columns: department_id and department_name.

-- Write an SQL query to retrieve the department names along with the total number of employees in each department.

select d.department_name, count(e.employee_id) as total_employees
from
departments d join employees e
on
d.department_id = e.department_id
group by d.department_name;