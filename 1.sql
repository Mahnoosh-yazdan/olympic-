
        	Identify the sports which was played in all summer olympics.
-------------------------------------------------------------------------------


with
 t1 as
   ( select count(distinct Games) as total_summer_game
    from history 
    where Season='summer'
	order by Games),
t2 as
   (select distinct sport,games
   from history
   where Season='summer'
    order by Games),
    t3 as
       (select sport ,count(games) as no_of_games
        from t2
        group by sport)
        select * 
        from t3
        where no_of_games='29';
        
   
  
