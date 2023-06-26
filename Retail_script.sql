Select * from products.data; 

describe products.data;
# selecting data ordered by stockcode starting from the sixth element, converting it to int... 
select * from products.data order by cast(substring(StockCode,5) as unsigned);

#Select fifth row (1 row starting from the fifth row) of data in the products.data table
SELECT * FROM products.data LIMIT 4,1;
-- SELECT * FROM products.data LIMIT 1 OFFSET 1;

#select the third costliest product name and its price

select Description, UnitPrice, Country from products.data group by Country;
SELECT Description, UnitPrice
FROM products.data
GROUP BY Description
ORDER BY UnitPrice DESC
LIMIT 2, 1;
SELECT Description, UnitPrice
FROM (
  SELECT Description, UnitPrice
  FROM products.data
  GROUP BY Description
  ORDER BY UnitPrice DESC
  LIMIT 3
) AS subquery
ORDER BY UnitPrice ASC
LIMIT 1;

SELECT Country, UnitPrice,Quantity FROM products.data group by Country
