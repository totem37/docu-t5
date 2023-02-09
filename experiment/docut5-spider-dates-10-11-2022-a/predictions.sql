select name, country, age from singer order by age desc
select song_name, song_release_year from singer order by age asc limit 1
select song_name, song_release_year from singer order by age asc limit 1
select song_name from singer where age > (select avg(age) from singer)
select count(*) from concert where year = 2014 or year = 2015
select t2.name, t2.capacity from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id where t1.year >= 2014 group by t1.stadium_id order by count(*) desc limit 1
select t2.name, t2.capacity from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id where t1.year > 2013 group by t1.stadium_id order by count(*) desc limit 1
select year from concert group by year order by count(*) desc limit 1
select year from concert group by year order by count(*) desc limit 1
select name from stadium except select t2.name from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id where t1.year = 2014
select t3.name from singer_in_concert as t1 join concert as t2 on t1.concert_id = t2.concert_id join singer as t3 on t1.singer_id = t3.singer_id where t2.year = 2014
select weight from pets order by pet_age asc limit 1
select min(weight) from pets
select count(*) from student as t1 join has_pet as t2 on t1.stuid = t2.stuid where t1.age > 20
select pettype, weight from pets order by pet_age asc limit 1
select pettype, weight from pets order by pet_age asc limit 1
select petid, weight from pets where pet_age > 1
select petid, weight from pets where pet_age > 1
select t1.maker from car_makers as t1 join car_names as t2 on t1.id = t2.makeid join cars_data as t3 on t3.id = t2.makeid where t3.year = 1970
select t2.make, t1.year from cars_data as t1 join car_names as t2 on t1.id = t2.makeid order by t1.year limit 1
select t1.maker, t2.year from car_makers as t1 join cars_data as t2 on t1.maker = t2.id order by t2.year limit 1
select distinct t2.model from cars_data as t1 join model_list as t2 on t1.id = t2.modelid where t1.year > 1980
select distinct t2.model from cars_data as t1 join model_list as t2 on t1.id = t2.modelid where t1.year > 1980
select avg(weight), year from cars_data group by year
select avg(weight), year from cars_data group by year
select avg(horsepower) from cars_data where year < 1980
select avg(horsepower) from cars_data where year < 1980
select max(mpg) from cars_data where id in (select id from cars_data where cylinders = 8 or year < 1980)
select max(mpg) from cars_data where cylinders = 8 or year < 1980
select hometown from teacher order by age asc limit 1
select hometown from teacher order by age asc limit 1
select avg(num_of_staff) from museum where open_year < 2009
select open_year, num_of_staff from museum where name = 'Plaza Museum'
select name from museum where num_of_staff > (select min(num_of_staff) from museum where open_year > 2010)
select t1.name from visitor as t1 join visit as t2 on t1.id = t2.visitor_id join museum as t3 on t2.museum_id = t3.museum_id where t3.open_year < 2009 intersect select t1.name from visitor as t1 join visit as t2 on t1.id = t2.visitor_id join museum as t3 on t2.museum_id = t3.museum_id where t3.open_year > 2011
select count(*) from visitor where id not in ( select visitor_id from visit where open_year > 2010 
select count(*) from museum where open_year > 2013 or open_year < 2008
select first_name, birth_date from players where country_code = 'USA'
select first_name, birth_date from players where country_code = 'USA'
select first_name, country_code from players order by birth_date desc limit 1
select first_name, country_code from players order by birth_date desc limit 1
select first_name, last_name from players order by birth_date
select first_name, last_name from players order by birth_date
select first_name, last_name from players where hand = 'L' order by birth_date
select first_name, last_name from players where hand = 'L' order by birth_date
select year from matches group by year order by count(*) desc limit 1
select year from matches group by year order by count(*) desc limit 1
select ranking_date, count(*) from rankings group by ranking_date
select ranking_date, sum(tours) from rankings group by ranking_date
select count(*), year from matches group by year
select count(*), year from matches group by year
select winner_name, winner_rank from matches order by winner_age asc limit 3
select winner_name, winner_rank from matches order by winner_age asc limit 3
select t1.first_name, t1.country_code, t1.birth_date from players as t1 join matches as t2 on t1.player_id = t2.winner_id order by t2.winner_rank_points desc limit 1
select t1.first_name, t1.country_code, t1.birth_date from players as t1 join rankings as t2 on t1.player_id = t2.player_id group by t2.player_id order by count(*) desc limit 1
select name, date, result from battle
select t1.name, t1.date from battle as t1 join ship as t2 on t1.id = t2.lost_in_battle where t2.name = 'Lettice' intersect select t1.name, t1.date from battle as t1 join ship as t2 on t1.id = t2.lost_in_battle where t2.name = 'HMS Atalanta'
select t1.transcript_date, t1.transcript_id from transcripts as t1 join transcript_contents as t2 on t1.transcript_id = t2.transcript_id group by t1.transcript_id having count(*) >= 2
select t1.transcript_date, t1.transcript_id from transcripts as t1 join transcript_contents as t2 on t1.transcript_id = t2.transcript_id group by t1.transcript_id having count(*) >= 2
select avg(transcript_date) from transcripts
select transcript_date, other_details from transcripts order by transcript_date asc limit 1
select transcript_date, other_details from transcripts
select transcript_date from transcripts order by transcript_date desc limit 1
select transcript_date, transcript_id from transcripts group by transcript_id order by count(*) asc limit 1
select t1.transcript_date, t1.transcript_id from transcripts as t1 join transcript_contents as t2 on t1.transcript_id = t2.transcript_id group by t1.transcript_id order by count(*) asc limit 1
select title, directed_by from cartoon order by original_air_date
select title, directed_by from cartoon order by original_air_date
select air_date from tv_series where episode = "A love of a Lifetime"
select production_code, channel from cartoon order by original_air_date desc limit 1
select t2.birth_date from poker_player as t1 join people as t2 on t1.people_id = t2.people_id order by t1.earnings asc limit 1
select t2.birth_date from poker_player as t1 join people as t2 on t1.people_id = t2.people_id order by t1.earnings asc limit 1
select name, birth_date from people order by name asc
select name, birth_date from people order by name asc
select created from votes where state = 'CA'
select name from country where indepyear > 1950
select name from country where indepyear > 1950
select count(distinct isofficial) from countrylanguage where countrycode = "null" and inde
select count(distinct language) from countrylanguage where countrycode < 1930
select name, indepyear, surfacearea from country order by population asc limit 1
select name, indepyear, surfacearea from country order by population asc limit 1
select t2.name from orchestra as t1 join conductor as t2 on t1.conductor_id = t2.conductor_id where t1.year_of_founded > 2008
select t2.name from orchestra as t1 join conductor as t2 on t1.conductor_id = t2.conductor_id where t1.year_of_founded > 2008
select record_company from orchestra where year_of_founded < 2003 intersect select record_company from orchestra where year_of_founded > 2003
select record_company from orchestra where year_of_founded < 2003 intersect select record_company from orchestra where year_of_founded > 2003
select date_of_treatment, t2.first_name from treatments as t1 join professionals as t2 on t1.professional_id = t2.professional_id
select t1.date_of_treatment, t2.first_name from treatments as t1 join professionals as t2 on t1.professional_id = t2.professional_id
select date_arrived, date_departed from dogs as t1 join treatments as t2 on t1.dog_id = t2.dog_id
select date_arrived, date_departed from dogs as t1 join treatments as t2 on t1.dog_id = t2.dog_id
select t2.last_name from dogs as t1 join owners as t2 on t1.owner_id = t2.owner_id order by t1.age asc limit 1
select t2.last_name from dogs as t1 join owners as t2 on t1.owner_id = t2.owner_id order by t1.age asc limit 1
select date_arrived, date_departed from dogs
select date_arrived, date_departed from dogs
select max(cost_of_treatment) from treatments
select age from dogs order by age desc limit 1
select age from dogs order by age desc limit 1
select birth_year, citizenship from singer
select birth_year, citizenship from singer
select name from singer where birth_year = 1948 or birth_year = 1949
select name from singer where birth_year = 1948 or birth_year = 1949
select citizenship from singer where birth_year < 1945 intersect select citizenship from singer where birth_year > 1955
select citizenship from singer where birth_year < 1945 intersect select citizenship from singer where birth_year > 1955
