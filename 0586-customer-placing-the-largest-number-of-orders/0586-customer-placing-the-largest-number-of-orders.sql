/* Write your T-SQL query statement below */
Select Top 1 customer_number
from orders
Group by customer_number
order by Count(*) Desc;