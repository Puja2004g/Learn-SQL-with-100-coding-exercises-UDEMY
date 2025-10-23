-- From the following tables, write a SQL query to find the employees who work in department 89 or 63. Return emp_idno, emp_fname, emp_lname and emp_dept.

select emp_idno, emp_fname, emp_lname, emp_dept from
emp_details where
emp_dept = 89 or emp_dept = 63;