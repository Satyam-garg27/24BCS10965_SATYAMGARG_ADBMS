select s1.St_id, s1.St_Name, s1.department, s2.St_id, s2.St_Name, s2.department from student as s1
join student as s2
on s1.department = s2.department
where s1.St_id is not s2.St_id;

select s1.St_id, s1.St_Name, s1.Course_id from student as s1
join student as s2
on s1.Course_id = s2.Course_id
where s1.St_id != s2.St_id
order by s1.Course_id;