-- Consider two tables:

-- students with columns: student_id, name, and age.

-- grades with columns: student_id, course, and grade.

-- Write an SQL query to find the average grade for each student.

select s.student_id, s.name, avg(g.grade) as average_grade from
students s join grades g
on
s.student_id = g.student_id
group by s.student_id;