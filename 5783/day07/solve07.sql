-- Emily Randolph 914-868-0316 has customerid 8342

-- Subquery of all purchases of Emily Randolph
;WITH buy1 AS(
SELECT customers.customerid, orders.ordered, products.[desc]
  FROM orders
       JOIN customers ON customers.customerid = orders.customerid
       JOIN orders_items ON orders_items.orderid = orders.orderid
       JOIN products ON products.sku = orders_items.sku
 WHERE orders.customerid = 8342
)

-- Find all purchases of other people who purchased something within 10 minutes of Emily. 
-- Also the product has to start with the same letters.
SELECT customers.name, customers.phone, orders.ordered, products.[desc], buy1.ordered, buy1.[desc]
  FROM orders
       JOIN customers ON customers.customerid = orders.customerid
       JOIN orders_items ON orders_items.orderid = orders.orderid
       JOIN products ON products.sku = orders_items.sku
       JOIN buy1 ON orders.customerid != buy1.customerid AND ABS(DATEDIFF(MINUTE, buy1.ordered, orders.ordered)) < 10
 WHERE LEFT(buy1.[desc], 3) = LEFT(products.[desc], 3)
   AND RIGHT(products.[desc], 1) = ')'  -- all colored products end with ')' like '(red)'

-- Solution:
-- name            phone         ordered                  desc                       ordered                  desc
-- Jonathan Adams  315-618-5263  2019-06-01 12:50:25.000  Electric Machine (purple)  2019-06-01 12:50:16.000  Electric Machine (amber)
