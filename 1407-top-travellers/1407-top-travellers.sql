/* Write your T-SQL query statement below */
select u.name,sum(case when r.distance is null then 0 else r.distance end) as travelled_distance
from users u
left join rides r
on u.id = r.user_id
group by r.user_id,u.name
order by travelled_distance desc,u.name