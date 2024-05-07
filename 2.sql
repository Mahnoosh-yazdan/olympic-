
How many female  participate in swimming which held at every Olympics?
-----------------------------------------

        
        select count(sex) female_count ,sport,Year
        from history
        where sex='f'
        and   sport= 'swimming'
        group by Year
        order by Year

        select count(sex) as male_count ,sport,Year
        from history
        where sex='m'
        and   sport= 'swimming'
        group by Year
        order by Year;
