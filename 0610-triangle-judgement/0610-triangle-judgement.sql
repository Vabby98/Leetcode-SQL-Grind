/* Write your T-SQL query statement below */
select x,y,z, 
case when x+y>z AND y+z>x AND x+z>y THEN 'Yes'  else 'No'end as triangle
from Triangle

