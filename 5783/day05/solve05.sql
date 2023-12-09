-- Looking through the products which contain 'cat' in the description, yields a lot 
-- of 'Senior Cat Food' products. 

-- So we a looking for a woman who is living in Queens Village and buys a lot of Senior Cat Food
SELECT customers.name, customers.phone, customers.citystatezip, SUM(orders_items.qty) Cnt
  FROM orders
       JOIN customers ON customers.customerid = orders.customerid
       JOIN orders_items ON orders_items.orderid = orders.orderid
       JOIN products ON products.sku = orders_items.sku
       --JOIN SweaterCustomers ON SweaterCustomers.customerid = customers.customerid
 WHERE products.[desc] LIKE '%Senior Cat Food%'  
   AND customers.citystatezip LIKE '%Queens Village%'
  GROUP BY customers.name,
           customers.phone,
           customers.citystatezip
ORDER BY SUM(orders_items.qty) DESC

-- Solution:
-- There are two results. Only one is a woman:
-- name        phone         citystatezip              Cnt
-- Anita Koch  315-492-7411  Queens Village, NY 11429  149
