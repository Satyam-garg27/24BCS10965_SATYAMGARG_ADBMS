select 

ROUND(
(SUM(CASE WHEN CUISINE='American' THEN price ELSE 0 END) *100)
/SUM(PRICE)
,2) as American_Revenue
FROM ORDERS
