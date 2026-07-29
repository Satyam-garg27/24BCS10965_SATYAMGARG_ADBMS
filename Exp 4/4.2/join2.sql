/* Write a query to do the following:
 - JOIN the tables 'student' and 'course' using 'Course_id' to match both the tables and output the joined table.
 - LEFT JOIN the tables 'student' and 'course' using 'Course_id' to match both the tables and output the joined table. */
 
 select * From student
 JOIN Course
 
 on student.Course_id = Course.Course_id;
 
  select * From student
 LEFT JOIN Course
 
 on student.Course_id = Course.Course_id;