-- Find purchases where the products purchase price was bigger then the selling price (a sale with loss).
-- Now list the customers, who made most of those purchases.
SELECT customers.name, customers.phone, COUNT(*) cnt
  FROM orders
       JOIN customers ON customers.customerid = orders.customerid
       JOIN orders_items ON orders_items.orderid = orders.orderid
       JOIN products ON products.sku = orders_items.sku
 WHERE products.wholesale_cost > orders_items.unit_price
 GROUP BY customers.name,
          customers.phone
 ORDER BY cnt DESC

-- Solution
-- name            phone         cnt
-- Emily Randolph  914-868-0316  26
