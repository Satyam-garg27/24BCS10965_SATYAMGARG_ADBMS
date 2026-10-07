CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    salary NUMERIC(10,2)
);

INSERT INTO employee (emp_id, emp_name, salary)
VALUES
(101, 'Amit', 50000),
(102, 'Rahul', 60000),
(103, 'Priya', 55000);



SELECT * FROM EMPLOYEE



CREATE OR REPLACE FUNCTION GET_10_PER_BONUS()
RETURNS TABLE (
   emp_id INT,
    emp_name VARCHAR(100),
    salary NUMERIC(10,2),
	Bonus NUMERIC(10,2)
)
AS
$$
	BEGIN

	RETURN QUERY SELECT E1.emp_id ,E1.emp_name , E1.salary,(E1.salary*0.10)::numeric(10,2)
	from Employee AS E1;
	END;

$$ LANGUAGE PLPGSQL

SELECT * FROM GET_10_PER_BONUS();