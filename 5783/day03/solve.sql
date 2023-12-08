-- Year of the Dog:
-- 1934 and then every 12 years

-- Aries:
-- March 21 - April 20

-- citystate like Jeremy Davis (the solution of day 2)
-- South Ozone Park, NY 11420

SELECT *
  FROM customers
 WHERE customers.citystatezip = 'South Ozone Park, NY 11420'
   AND YEAR(customers.birthdate) IN (2030, 2018, 2006, 1994, 1982, 1970, 1958, 1946, 1934)
   AND MONTH(customers.birthdate) IN (3, 4)
 ORDER BY customers.birthdate

-- Solution:
-- customerid  name          first  last    address          citystatezip                birthdate   phone
--       2274  Brent Nguyen  Brent  Nguyen  109-19 110th St  South Ozone Park, NY 11420  1958-03-25  516-636-7397
