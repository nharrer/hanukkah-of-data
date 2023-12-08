-- if imported with Flat File Importer, this fixes some things

UPDATE orders
   SET orders.total = total / 100.0

SELECT * 
  FROM orders
 ORDER BY orders.orderid, orders.customerid