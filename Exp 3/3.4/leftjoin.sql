SELECT name, Bonus FROM Employee AS E
LEFT JOIN Bonus AS B
ON E.empId = B.empId
where B.Bonus < 1000 OR B.Bonus IS NULL
