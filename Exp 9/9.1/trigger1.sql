
CREATE TABLE tran_employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary NUMERIC(10,2)
);

INSERT INTO tran_employees VALUES
(1, 'Amit', 30000),
(2, 'Ravi', 40000),
(3, 'Neha', 50000);

select * from tran_employees

-- truncate table  tran_employees

-- drop table tran_employees

BEGIN;


UPDATE tran_employees
SET salary = salary + 5000
WHERE emp_id = 1;

SAVEPOINT salary_update;

UPDATE tran_employees
SET salary = -20000
WHERE emp_id = 2;


ROLLBACK TO SAVEPOINT salary_update;

COMMIT;


SELECT * FROM tran_employees;
