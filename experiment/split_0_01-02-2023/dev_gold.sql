SELECT Birth_Year ,  Citizenship FROM singer	singer
SELECT Birth_Year ,  Citizenship FROM singer	singer
SELECT Name FROM singer WHERE Birth_Year  =  1948 OR Birth_Year  =  1949	singer
SELECT Name FROM singer WHERE Birth_Year  =  1948 OR Birth_Year  =  1949	singer
SELECT Citizenship FROM singer WHERE Birth_Year  <  1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year  >  1955	singer
SELECT Citizenship FROM singer WHERE Birth_Year  <  1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year  >  1955	singer
SELECT count(*) FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid WHERE T1.age  >  20	pets_1
SELECT pettype ,  weight FROM pets ORDER BY pet_age LIMIT 1	pets_1
SELECT pettype ,  weight FROM pets ORDER BY pet_age LIMIT 1	pets_1
SELECT petid ,  weight FROM pets WHERE pet_age  >  1	pets_1
SELECT petid ,  weight FROM pets WHERE pet_age  >  1	pets_1
SELECT weight FROM pets ORDER BY pet_age LIMIT 1	pets_1
SELECT weight FROM pets ORDER BY pet_age LIMIT 1	pets_1
SELECT T1.Birth_Date FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T2.Earnings ASC LIMIT 1	poker_player
SELECT T1.Birth_Date FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T2.Earnings ASC LIMIT 1	poker_player
SELECT Name ,  Birth_Date FROM people ORDER BY Name ASC	poker_player
SELECT Name ,  Birth_Date FROM people ORDER BY Name ASC	poker_player
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1	course_teach
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1	course_teach
SELECT avg(num_of_staff) FROM museum WHERE open_year  <  2009	museum_visit
SELECT name FROM museum WHERE num_of_staff  >  (SELECT min(num_of_staff) FROM museum WHERE open_year  >  2010)	museum_visit
SELECT t1.name FROM visitor AS t1 JOIN visit AS t2 ON t1.id  =  t2.visitor_id JOIN museum AS t3 ON t3.Museum_ID  =  t2.Museum_ID WHERE t3.open_year  <  2009 INTERSECT SELECT t1.name FROM visitor AS t1 JOIN visit AS t2 ON t1.id  =  t2.visitor_id JOIN museum AS t3 ON t3.Museum_ID  =  t2.Museum_ID WHERE t3.open_year  >  2011	museum_visit
SELECT count(*) FROM visitor WHERE id NOT IN (SELECT t2.visitor_id FROM museum AS t1 JOIN visit AS t2 ON t1.Museum_ID  =  t2.Museum_ID WHERE t1.open_year  >  2010)	museum_visit
SELECT count(*) FROM museum WHERE open_year  >  2013 OR open_year  <  2008	museum_visit
SELECT Num_of_Staff ,  Open_Year FROM museum WHERE name  =  'Plaza Museum'	museum_visit
SELECT max(created) FROM votes WHERE state  =  'CA'	voter_1
SELECT name ,  date FROM battle	battle_death
SELECT T1.name ,  T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id  =  T2.lost_in_battle WHERE T2.name  =  'Lettice' INTERSECT SELECT T1.name ,  T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id  =  T2.lost_in_battle WHERE T2.name  =  'HMS Atalanta'	battle_death
SELECT Name FROM country WHERE IndepYear  >  1950	world_1
SELECT count(DISTINCT T2.Language) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode WHERE  IndepYear  <  1930 AND T2.IsOfficial  =  "T"	world_1
SELECT count(DISTINCT T2.Language) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode WHERE  IndepYear  <  1930 AND T2.IsOfficial  =  "T"	world_1
SELECT name ,  country ,  age FROM singer ORDER BY age DESC	concert_singer
SELECT song_name ,  song_release_year FROM singer ORDER BY age LIMIT 1	concert_singer
SELECT song_name ,  song_release_year FROM singer ORDER BY age LIMIT 1	concert_singer
SELECT song_name FROM singer WHERE age  >  (SELECT avg(age) FROM singer)	concert_singer
SELECT count(*) FROM concert WHERE YEAR  =  2014 OR YEAR  =  2015	concert_singer
SELECT T2.name ,  T2.capacity FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id  =  T2.stadium_id WHERE T1.year  >=  2014 GROUP BY T2.stadium_id ORDER BY count(*) DESC LIMIT 1	concert_singer
select t2.name ,  t2.capacity from concert as t1 join stadium as t2 on t1.stadium_id  =  t2.stadium_id where t1.year  >  2013 group by t2.stadium_id order by count(*) desc limit 1	concert_singer
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1	concert_singer
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1	concert_singer
SELECT name FROM stadium EXCEPT SELECT T2.name FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id  =  T2.stadium_id WHERE T1.year  =  2014	concert_singer
SELECT T2.name FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.singer_id  =  T2.singer_id JOIN concert AS T3 ON T1.concert_id  =  T3.concert_id WHERE T3.year  =  2014	concert_singer
SELECT Name FROM country WHERE IndepYear  >  1950	world_1
SELECT Name ,  SurfaceArea ,  IndepYear FROM country ORDER BY Population LIMIT 1	world_1
SELECT Name ,  SurfaceArea ,  IndepYear FROM country ORDER BY Population LIMIT 1	world_1
SELECT title ,  Directed_by FROM Cartoon ORDER BY Original_air_date	tvshow
SELECT title ,  Directed_by FROM Cartoon ORDER BY Original_air_date	tvshow
select production_code ,  channel from cartoon order by original_air_date desc limit 1	tvshow
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime";	tvshow
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID  =  T2.Conductor_ID WHERE Year_of_Founded  >  2008	orchestra
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID  =  T2.Conductor_ID WHERE Year_of_Founded  >  2008	orchestra