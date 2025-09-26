/* Write your T-SQL query statement below */
SELECT p.product_id, p.product_name
FROM
    Product p
    JOIN Sales s on p.product_id = s.product_id
GROUP BY p.product_id, p.product_name
HAVING min(sale_date)>='2019-01-01' and max(sale_date)<='2019-03-31';