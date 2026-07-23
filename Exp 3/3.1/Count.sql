SELECT department ,
COUNT(CASE WHEN marks > 80 THEN 1 ELSE NULL END ) AS dept_HighScore_count
FROM students
GROUP BY department;