-- From the following tables write a SQL query to find employees whose last name is Gabriel or Dosio. Return emp_idno, emp_fname, emp_lname and emp_dept.
select emp_idno, emp_fname, emp_lname, emp_dept from
emp_details where
emp_lname = 'Gabriel' or emp_lname = 'Dosio';