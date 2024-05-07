SELECT Name,count(1)
FROM history
where medal='gold'
and sex='f'
group by Name
order by count(1) desc;


