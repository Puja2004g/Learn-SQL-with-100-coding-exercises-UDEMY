-- From the following tables write a SQL query to find which departments have more than two employees. Return dpt_name.

select d.dpt_name from 
emp_department d join emp_details e
on 
d.dpt_code  = e.emp_dept
group by d.dpt_name having 
count(e.emp_idno) > 2;

select dpt_name from emp_department
where dpt_code in 
(select emp_dept from emp_details
group by emp_dept 
having count(*)>2);