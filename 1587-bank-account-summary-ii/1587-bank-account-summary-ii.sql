/* Write your T-SQL query statement below */
Select u.name as NAME,it.balance as BALANCE
from Users u
join (Select account,sum(amount) as balance
from Transactions
group by account
having sum(amount)>=10000)it
on u.account=it.account