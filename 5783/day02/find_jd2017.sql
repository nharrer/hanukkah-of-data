-- Find all orders placed by customers whose initials start with J and D
-- in 2017, that contain a product with the word "bagel" in its description.

SELECT orders.orderid, customers.name, customers.phone, products.[desc]
  FROM orders
       JOIN customers ON customers.customerid = orders.customerid
       JOIN orders_items ON orders_items.orderid = orders.orderid
       JOIN products ON products.sku = orders_items.sku
 WHERE LEFT(customers.first, 1) = 'J'
   AND LEFT(customers.last, 1) = 'D'
   AND YEAR(orders.ordered) = 2017
   AND products.[desc] LIKE '%bagel%'
 ORDER BY orders.ordered

-- Solution:
--   orderid  name          phone         desc
--      7409  Jeremy Davis  212-771-8924  Sesame Bagel