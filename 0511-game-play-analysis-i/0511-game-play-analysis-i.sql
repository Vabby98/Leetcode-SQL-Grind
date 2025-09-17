/* Write your T-SQL query statement below */
with cte1 as (select player_id, event_date as first_login,
            row_number() over (partition by player_id order by event_date) as rn
            from activity)
    select player_id, first_login from cte1
    where rn=1