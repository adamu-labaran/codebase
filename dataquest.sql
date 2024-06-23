SELECT order_id, product_name, sales, quantity,
       CASE 
       WHEN sales BETWEEN 0 AND 50 THEN 'small sale'
       WHEN sales BETWEEN 51 AND 100 THEN 'medium sale'
       ELSE 'large sale'
       END AS sales_amount                        
  FROM orders
 WHERE order_id LIKE 'CA%'
 ORDER BY quantity
 LIMIT 10;
 
 -- limiting the query to 3
 SELECT order_id, product_name, sales, quantity,
       CASE 
       WHEN sales BETWEEN 0 AND 50 THEN 'small sale'
       WHEN sales BETWEEN 51 AND 100 THEN 'medium sale'
       ELSE 'large sale'
       END AS sales_amount                        
  FROM orders
 WHERE order_id LIKE 'CA%'
 ORDER BY quantity
 LIMIT 3;