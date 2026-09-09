CREATE TABLE Orders(
    order_ID NUMBER PRIMARY KEY,
    Product_name     VARCHAR2(50),
    Amount   NUMBER(10,2)
);
INSERT INTO Orders VALUES (1, 'Bat', 10000);
INSERT INTO Orders VALUES (2, 'Ball', 9000);
INSERT INTO Orders VALUES (3, 'hat', 8000);
INSERT INTO Orders VALUES (4, 'car', 11000);
INSERT INTO Orders VALUES (5, 'toy', 13000);


COMMIT;


DECLARE 
    CURSOR order_cursor IS SELECT Amount FROM ORDERS; 
BEGIN 
    FOR r_order IN order_cursor LOOP 
        IF r_order.Amount > 10000 THEN 
            DBMS_OUTPUT.PUT_LINE('High Value'); 
        END IF; 
    END LOOP; 
END;
