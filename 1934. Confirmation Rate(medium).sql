SELECT ROUND( SUM( CASE WHEN c.action = 'confirmed' then 1 else 0 END) * 1.0 / count(*) ,2) as confirmation_rate, s.user_id
From Signups s 
left join Confirmations c on s.user_id = c.user_id
group by s.user_id;
