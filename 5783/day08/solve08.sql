-- All of Noah's Action Figures
;WITH collectibles AS (
    SELECT products.sku
      FROM products
     WHERE products.[desc] LIKE 'Noah''s Action Figure%'
)

-- Now find the person who has bought every single action figure
SELECT customers.name, customers.phone, COUNT(DISTINCT orders_items.sku) cnt
  FROM customers
       JOIN orders ON orders.customerid = customers.customerid
       JOIN orders_items ON orders_items.orderid = orders.orderid
       JOIN collectibles ON collectibles.sku = orders_items.sku
 GROUP BY customers.name, customers.phone
HAVING COUNT(DISTINCT orders_items.sku) = (SELECT COUNT(*) FROM collectibles)

-- Solution: 
-- name             phone         cnt
-- Travis Bartlett  929-906-5980  11