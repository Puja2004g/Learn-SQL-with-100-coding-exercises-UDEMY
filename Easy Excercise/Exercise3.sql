-- Suppose you have a table named employees with the following columns: employee_id, name, department, and salary. How would you write an SQL query to select the names of employees who work in the "Sales" department and have a salary greater than $50,000?

select name from employees where department = 'Sales' and salary>50000;