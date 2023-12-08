-- if imported with Flat File Importer, this fixes some things

BEGIN TRAN

UPDATE orders_items
   SET sku =REPLACE(sku, '"', '')
      ,orders_items.unit_price = orders_items.unit_price / 100.0
 WHERE 1 = 1

SELECT * 
  FROM orders_items
 ORDER BY orders_items.orderid, orders_items.sku

COMMIT TRAN
