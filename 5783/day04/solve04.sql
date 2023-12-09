-- find customer who regularly buys pastries in the morning
SELECT customers.name, customers.phone, COUNT(*) cnt
  FROM orders
       JOIN customers ON customers.customerid = orders.customerid
       JOIN orders_items ON orders_items.orderid = orders.orderid
       JOIN products ON products.sku = orders_items.sku
 WHERE DATEPART(HOUR, orders.shipped) < 6
   AND products.sku LIKE 'BKY%'
 GROUP BY customers.name,
          customers.phone
ORDER BY COUNT(*) DESC

-- Solution:
-- name              phone         cnt
-- Christina Booker  718-649-9036  10
