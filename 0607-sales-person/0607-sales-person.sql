/* Write your T-SQL query statement below */
select name from salesperson where sales_id not in (
select s.sales_id
from orders o 
join salesperson s on s.sales_id=o.sales_id
join company c on o.com_id=c.com_id and c.name='RED');
