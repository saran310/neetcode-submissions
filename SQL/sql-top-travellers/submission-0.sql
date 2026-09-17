-- Write your query below
select t1.name , COALESCE(sum(t2.distance),0) as travelled_distance from users t1 left join rides t2
on t1.id=t2.user_id
group by name
order by travelled_distance desc,name asc;