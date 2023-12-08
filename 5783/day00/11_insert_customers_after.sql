-- split name into first and last name

DECLARE @temp TABLE(name NVARCHAR(100), ord int, value nvarchar(100))

INSERT INTO @temp (name, ord, value)
SELECT customers.name, ROW_NUMBER() OVER (PARTITION BY customers.name ORDER BY customers.name), dims.value
  FROM customers
       CROSS APPLY STRING_SPLIT(customers.name, ' ') AS dims

UPDATE customers
   SET [first] = tt.value
  FROM customers
       JOIN @temp tt ON tt.name = customers.name AND tt.ord = 1
 WHERE 1 = 1

UPDATE customers
   SET [last] = tt.value
  FROM customers
       JOIN @temp tt ON tt.name = customers.name AND tt.ord = 2
 WHERE 1 = 1

SELECT name, [first], [last]
      ,[first] + ' ' + [last]
  FROM customers
 WHERE [first] + ' ' + [last] != name
