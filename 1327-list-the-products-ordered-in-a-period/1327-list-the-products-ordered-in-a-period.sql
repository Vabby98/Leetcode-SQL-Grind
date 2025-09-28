/* Write your T-SQL query statement below */
select p.product_name,a.unit
from (Select product_id,sum(unit) as unit
from Orders
where order_date between '2020-02-01' and '2020-02-29'
group by product_id having sum(unit)>=100)a
join Products p on p.product_id=a.product_id
