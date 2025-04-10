SELECT distinct(num) as ConsecutiveNums
FROM (select id, num, lag(num, 1) over (order by id) as prev1,
lag(num, 2) over (order by id) as prev2 from logs) temp
where num = prev1 and num = prev2;