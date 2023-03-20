--Joke Obasanmi data Science Postres Assignment 2

/* Q1 How many countries played in the world cup?*/

        WITH
            all_world_cup AS (
            SELECT 
            'wc 2002' AS worldcupyear,
            team,
            points
        FROM fifa_2002
        UNION ALL
        SELECT 
            'wc 2006' AS worldcupyear,
            team,
            points
        FROM fifa_2006
        UNION ALL
        SELECT 
            'wc 2010' AS worldcupyear,
            team,
            points
        FROM fifa_2010
        UNION ALL
        SELECT 
            'wc 2014' AS worldcupyear,
            team,
            points
        FROM fifa_2014
        UNION ALL
        SELECT 
            'wc 2018' AS worldcupyear,
            team,
            points
        FROM fifa_2018
            )
            
SELECT 
	COUNT (DISTINCT team)
FROM
	all_world_cup
;

/*Q2* Total games played, win, loss, goals for/against/

        WITH
            all_world_cup AS (
            SELECT 
            'wc 2002' AS worldcupyear,
            team,
            points,
            games_played,
            win,
            loss,
            goals_for,
            goals_against
        FROM fifa_2002
        UNION ALL
        SELECT 
            'wc 2006' AS worldcupyear,
            team,
            points,
            games_played,
            win,
            loss,
            goals_for,
            goals_against
        FROM fifa_2006
        UNION ALL
        SELECT 
            'wc 2010' AS worldcupyear,
            team,
            points,
            games_played,
            win,
            loss,
            goals_for,
            goals_against
        FROM fifa_2010
        UNION ALL
        SELECT 
            'wc 2014' AS worldcupyear,
            team,
            points,
            games_played,
            win,
            loss,
            goals_for,
            goals_against
        FROM fifa_2014
        UNION ALL
        SELECT 
            'wc 2018' AS worldcupyear,
            team,
            points,
            games_played,
            win,
            loss,
            goals_for,
            goals_against
        FROM fifa_2018
            )
            
SELECT 
	SUM(games_played) AS total_games_played,
	SUM(win) AS total_win,
	SUM(loss) AS total_loss,
	SUM(goals_for) AS total_gf,
	SUM(goals_against) AS total_ga
FROM
	all_world_cup
;


/*Q3 Country with the highest and lowest appearance*/


/*Q4 Country with the highest and lowest games played*/

        WITH
            all_world_cup AS (
            SELECT 
            'wc 2002' AS worldcupyear,
            team,
            points,
            games_played,
            win,
            loss,
            goals_for,
            goals_against
        FROM fifa_2002
        UNION ALL
        SELECT 
            'wc 2006' AS worldcupyear,
            team,
            points,
            games_played,
            win,
            loss,
            goals_for,
            goals_against
        FROM fifa_2006
        UNION ALL
        SELECT 
            'wc 2010' AS worldcupyear,
            team,
            points,
            games_played,
            win,
            loss,
            goals_for,
            goals_against
        FROM fifa_2010
        UNION ALL
        SELECT 
            'wc 2014' AS worldcupyear,
            team,
            points,
            games_played,
            win,
            loss,
            goals_for,
            goals_against
        FROM fifa_2014
        UNION ALL
        SELECT 
            'wc 2018' AS worldcupyear,
            team,
            points,
            games_played,
            win,
            loss,
            goals_for,
            goals_against
        FROM fifa_2018
            )
            
SELECT  
    team, 
	games_played
FROM
	all_world_cup
ORDER BY
	games_played DESC;


/*Q5 Country with the highest and lowest games won*/
        WITH
            all_world_cup AS (
            SELECT 
            'wc 2002' AS worldcupyear,
            team,
            points,
            games_played,
            win,
            loss,
            goals_for,
            goals_against
        FROM fifa_2002
        UNION ALL
        SELECT 
            'wc 2006' AS worldcupyear,
            team,
            points,
            games_played,
            win,
            loss,
            goals_for,
            goals_against
        FROM fifa_2006
        UNION ALL
        SELECT 
            'wc 2010' AS worldcupyear,
            team,
            points,
            games_played,
            win,
            loss,
            goals_for,
            goals_against
        FROM fifa_2010
        UNION ALL
        SELECT 
            'wc 2014' AS worldcupyear,
            team,
            points,
            games_played,
            win,
            loss,
            goals_for,
            goals_against
        FROM fifa_2014
        UNION ALL
        SELECT 
            'wc 2018' AS worldcupyear,
            team,
            points,
            games_played,
            win,
            loss,
            goals_for,
            goals_against
        FROM fifa_2018
            )
	
SELECT  
    team, 
	win
FROM
	all_world_cup
ORDER BY
	win DESC;


/*Q6 Country with the hihest games lost*/
        WITH
            all_world_cup AS (
            SELECT 
            'wc 2002' AS worldcupyear,
            team,
            points,
            games_played,
            win,
            loss,
            goals_for,
            goals_against
        FROM fifa_2002
        UNION ALL
        SELECT 
            'wc 2006' AS worldcupyear,
            team,
            points,
            games_played,
            win,
            loss,
            goals_for,
            goals_against
        FROM fifa_2006
        UNION ALL
        SELECT 
            'wc 2010' AS worldcupyear,
            team,
            points,
            games_played,
            win,
            loss,
            goals_for,
            goals_against
        FROM fifa_2010
        UNION ALL
        SELECT 
            'wc 2014' AS worldcupyear,
            team,
            points,
            games_played,
            win,
            loss,
            goals_for,
            goals_against
        FROM fifa_2014
        UNION ALL
        SELECT 
            'wc 2018' AS worldcupyear,
            team,
            points,
            games_played,
            win,
            loss,
            goals_for,
            goals_against
        FROM fifa_2018
            )
            
SELECT  
    team, 
	loss
FROM
	all_world_cup
ORDER BY
	loss DESC;


    /*Q7 Country with the highest and lowest goals for*/
        WITH
            all_world_cup AS (
            SELECT 
            'wc 2002' AS worldcupyear,
            team,
            points,
            games_played,
            win,
            loss,
            goals_for,
            goals_against
        FROM fifa_2002
        UNION ALL
        SELECT 
            'wc 2006' AS worldcupyear,
            team,
            points,
            games_played,
            win,
            loss,
            goals_for,
            goals_against
        FROM fifa_2006
        UNION ALL
        SELECT 
            'wc 2010' AS worldcupyear,
            team,
            points,
            games_played,
            win,
            loss,
            goals_for,
            goals_against
        FROM fifa_2010
        UNION ALL
        SELECT 
            'wc 2014' AS worldcupyear,
            team,
            points,
            games_played,
            win,
            loss,
            goals_for,
            goals_against
        FROM fifa_2014
        UNION ALL
        SELECT 
            'wc 2018' AS worldcupyear,
            team,
            points,
            games_played,
            win,
            loss,
            goals_for,
            goals_against
        FROM fifa_2018
            )
	
SELECT  
    team, 
	goals_for
FROM
	all_world_cup
ORDER BY
	goals_for DESC;


/*Q8 countrty with the highest and lowest goals against*/
        WITH
            all_world_cup AS (
            SELECT 
            'wc 2002' AS worldcupyear,
            team,
            points,
            games_played,
            win,
            loss,
            goals_for,
            goals_against
        FROM fifa_2002
        UNION ALL
        SELECT 
            'wc 2006' AS worldcupyear,
            team,
            points,
            games_played,
            win,
            loss,
            goals_for,
            goals_against
        FROM fifa_2006
        UNION ALL
        SELECT 
            'wc 2010' AS worldcupyear,
            team,
            points,
            games_played,
            win,
            loss,
            goals_for,
            goals_against
        FROM fifa_2010
        UNION ALL
        SELECT 
            'wc 2014' AS worldcupyear,
            team,
            points,
            games_played,
            win,
            loss,
            goals_for,
            goals_against
        FROM fifa_2014
        UNION ALL
        SELECT 
            'wc 2018' AS worldcupyear,
            team,
            points,
            games_played,
            win,
            loss,
            goals_for,
            goals_against
        FROM fifa_2018
            )
	
SELECT  
    team, 
	goals_against
FROM
	all_world_cup
ORDER BY
	goals_against DESC;


    /*Q9 Country with tghe highest and lowest goals difference*/
WITH
            all_world_cup AS (
            SELECT 
            'wc 2002' AS worldcupyear,
            team,
            points,
            games_played,
            win,
            loss,
            goals_for,
            goals_against,
			goals_difference
        FROM fifa_2002
        UNION ALL
        SELECT 
            'wc 2006' AS worldcupyear,
            team,
            points,
            games_played,
            win,
            loss,
            goals_for,
            goals_against,
			goals_difference
        FROM fifa_2006
        UNION ALL
        SELECT 
            'wc 2010' AS worldcupyear,
            team,
            points,
            games_played,
            win,
            loss,
            goals_for,
            goals_against,
			goals_difference
        FROM fifa_2010
        UNION ALL
        SELECT 
            'wc 2014' AS worldcupyear,
            team,
            points,
            games_played,
            win,
            loss,
            goals_for,
            goals_against,
			goals_difference
        FROM fifa_2014
        UNION ALL
        SELECT 
            'wc 2018' AS worldcupyear,
            team,
            points,
            games_played,
            win,
            loss,
            goals_for,
            goals_against,
			goals_difference
        FROM fifa_2018
            )
	
SELECT  
    team, 
	goals_difference
FROM
	all_world_cup
ORDER BY
	goals_difference DESC;


    /*Q10 Country with the highest and lowest points*/
WITH
            all_world_cup AS (
            SELECT 
            'wc 2002' AS worldcupyear,
            team,
            points,
            games_played,
            win,
            loss,
            goals_for,
            goals_against
        FROM fifa_2002
        UNION ALL
        SELECT 
            'wc 2006' AS worldcupyear,
            team,
            points,
            games_played,
            win,
            loss,
            goals_for,
            goals_against
        FROM fifa_2006
        UNION ALL
        SELECT 
            'wc 2010' AS worldcupyear,
            team,
            points,
            games_played,
            win,
            loss,
            goals_for,
            goals_against
        FROM fifa_2010
        UNION ALL
        SELECT 
            'wc 2014' AS worldcupyear,
            team,
            points,
            games_played,
            win,
            loss,
            goals_for,
            goals_against
        FROM fifa_2014
        UNION ALL
        SELECT 
            'wc 2018' AS worldcupyear,
            team,
            points,
            games_played,
            win,
            loss,
            goals_for,
            goals_against
        FROM fifa_2018
            )
	
SELECT  
    team, 
	SUM(points)
FROM
	all_world_cup
GROUP BY
	team
ORDER BY
	SUM(points) DESC ;