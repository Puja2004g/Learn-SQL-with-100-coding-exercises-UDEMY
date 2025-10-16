-- Consider two tables named

-- students with columns: student_id, name, and age.

-- courses with columns: course_id, course_name, and student_id indicating which student is enrolled in which course.

-- Write an SQL query to find the number of courses each student is enrolled in.

select s.student_id, s.name, count(c.course_id) as enrolled_courses
from
students s join courses c
on 
s.student_id = c.student_id
group by s.student_id;