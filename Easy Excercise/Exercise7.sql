-- You have a table named employees with columns: employee_id, name, department, and salary. Write an SQL query to select all columns for employees who work in the "Marketing" department.

select id, name, department, salary from employees 
where department = 'Marketing';