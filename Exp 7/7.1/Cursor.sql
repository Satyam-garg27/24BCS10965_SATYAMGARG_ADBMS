
CREATE TABLE Staff (
    Staff_ID NUMBER PRIMARY KEY,
    Name     VARCHAR2(50),
    Salary   NUMBER(10,2)
);
INSERT INTO Staff VALUES (1, 'Rahul', 45000);
INSERT INTO Staff VALUES (2, 'Priya', 75000);
INSERT INTO Staff VALUES (3, 'Amit', 60000);
INSERT INTO Staff VALUES (4, 'Neha', 90000);
INSERT INTO Staff VALUES (5, 'Rohan', 55000);
INSERT INTO Staff VALUES (6, 'Sneha', 85000);
INSERT INTO Staff VALUES (7, 'Vikas', 70000);
INSERT INTO Staff VALUES (8, 'Anjali', 95000);
INSERT INTO Staff VALUES (9, 'Karan', 50000);
INSERT INTO Staff VALUES (10, 'Pooja', 80000);

COMMIT;

DECLARE
    CURSOR emp_cursor IS
    SELECT Name,Salary
    FROM Staff
    ORDER BY SALARY DESC
    FETCH FIRST 5 ROWS ONLY;
BEGIN
    FOR emp IN emp_cursor LOOP
        DBMS_OUTPUT.PUT_LINE(emp.Name || '-' || emp.Salary);
    END LOOP;
END;