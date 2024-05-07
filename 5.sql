select noc,
        COUNT(CASE
          WHEN sex = 'f'
          THEN 1 
           END) AS female_count,
    COUNT(CASE 
          WHEN sex = 'm'
          THEN 1 
          END) AS male_count,
    COUNT(*) 
    AS total_count
    from history
    where sport='swimming'
    group by noc
    order by female_count desc
    limit 5;