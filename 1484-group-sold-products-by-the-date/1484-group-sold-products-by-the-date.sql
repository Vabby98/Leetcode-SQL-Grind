/* Write your T-SQL query statement below */
select sell_date,count(*) as num_sold
,string_agg(product,',') within group (order by product) as products
from (
    select distinct sell_date,product
    from activities
) a
group by sell_date
order by sell_date
