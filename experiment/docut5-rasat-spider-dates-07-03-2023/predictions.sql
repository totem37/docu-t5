select name, country, age from singer order by age desc
select name, song_release_year from singer order by age limit 1
select name, song_release_year from singer order by age limit 1
select song_name from singer where age > (select avg(age) from singer)
select count(*) from concert where year = 2014 or year = 2015
select t2.name, t2.capacity from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id where t1.year >= 2014 group by t1.stadium_id order by count(*) desc limit 1
select t1.name, t1.capacity from stadium as t1 join concert as t2 on t1.stadium_id = t2.stadium_id where t2.year > 2013 group by t2.stadium_id order by count(*) desc limit 1
select year from concert group by year order by count(*) desc limit 1
select year from concert group by year order by count(*) desc limit 1
select name from stadium except select t1.name from stadium as t1 join concert as t2 on t1.stadium_id = t2.stadium_id where t2.year = 2014
select t1.name from singer as t1 join singer_in_concert as t2 on t1.singer_id = t2.singer_id join concert as t3 on t2.co
select t1.weight from pets as t1 join has_pet as t2 on t1.petid = t2.petid join student as t3 on t2.stuid = t3.stuid order by t3.age limit 1
select weight from pets order by weight asc limit 1
select count(*) from has_pet as t1 join pets as t2 on t1.petid = t2.petid join student as t3 on t1.stuid = t3.stuid where t3.age > 20
select t1.pettype, t1.weight from pets as t1 join has_pet as t2 on t1.petid = t2.petid join student as t3 on t2.stuid = t3.stuid order by t3.age limit 1
select t1.pettype, t1.weight from pets as t1 join has_pet as t2 on t1.petid = t2.petid join student as t3 on t2.stuid = t3.stuid where t3.age = min(age)
select t1.petid, t1.weight from pets as t1 join has_pet as t2 on t1.petid = t2.petid join student as t3 on t2.stuid = t3.stuid where t3.age > 1
select t1.petid, t1.weight from pets as t1 join has_pet as t2 on t1.petid = t2.petid join student as t3 on t2.stuid = t3.stuid where t3.age > 1
select t1.maker from car_makers as t1 join countries as t2 on t1.country
select t1.make, t2.year from car_names as t1 join cars_data as t2 on t1.makeid = t2.id order by t2.year limit 1
select maker, year from car_makers
select distinct model from model_list where model > 1980
select distinct model from model_list where model > 1980
select avg(weight), year from cars_data group by year
select avg(weight), year from cars_data group by year
select avg(h
select avg(h
select max(t2.mpg) from cars_data as t1 join cars_data as t2 on t1.id = t2.
select max(mpg) from cars_data where cylinders = 8 union select mpg from cars_data where year < 1980
select hometown from teacher order by age asc limit 1
select name from teacher order by age asc limit 1
select avg(num_of_staff) from museum where open_year < 2009
select open_year, num_of_staff from museum where name = "Pala Museum"
select name from museum where num_of_staff > (select min(num_of_staff) from museum where open_year > 2010)
select t1.name from visitor as t1 join visit as t2 on t1.id = t2.visitor_id join museum as t3 on t2.museum_id = t3.museum_id where t3.open_year < 2009 intersect select t1.name from visitor as t1 join visit as t2 on t1.id = t2.visitor_id join museum as t3 on t2.museum_id = t3.museum_id where t3.open_year > 2011
select count(*) from visitor where visitor_id not in ( select visitor_id from visit where open_year > 2010
select count(*) from museum where open_year > 2013 or open_year < 2008
select first_name, birth_date from players where country_code = 'USA'
select first_name, birth_date from players where country_code = 'USA'
select first_name, country_code from players order by birth_date desc limit 1
select first_name, country_code from players order by birth_date desc limit 1
select first_name, last_name from players order by birth_date
select first_name, last_name from players order by birth_date
select first_name, last_name from players where hand = 'L' order by birth_date
select first_name, last_name from players order by birth_date
select year from matches group by year order by count(*) desc limit 1
select year from matches group by year order by count(*) desc limit 1
select ranking_date, count(*) from rankings group by ranking_date
select ranking_date, count(*) from rankings group by ranking_date
select year, count(*) from matches group by year
select year, count(*) from matches group by year
select t1.first_name, t1.rank
select t1.first_name, t1.last_name, t2.winner_rank from players as t1 join matches as t2 on t1.player_id = t2.winner_id order by t2.year asc limit 3
select t1.first_name, t1.country_code, t1.birth_date from players as t1 join matches as t2 on t1.player_id = t2.winner_id order by t2.rank
select t1.first_name, t1.country_code, t1.birth_date from players as t1 join matches as t2 on t1.player_id = t2.winner_id group by t2.winner_id order by count(*) desc limit 1
select name, date, result from battle
select t1.name, t1.date from battle as t1 join ship as t2 on t1.id = t2.lost_in_battle where t2.name = 'Lettice' and t2.name = 'HMS Atalanta'
select transcript_date, transcript_id from transcripts group by transcript_id having count(*) >= 2
select transcript_date, transcript_id from transcripts group by transcript_id having count(*) >= 2
select avg(transcript_date) from transcripts
select transcript_date, other_details from transcripts order by transcript_date asc limit 1
select transcript_date, other_details from transcripts order by transcript_date asc limit 1
select transcript_date from transcripts order by transcript_date desc limit 1
select transcript_date, transcript_id from transcripts group by transcript_id order by count(*) asc limit 1
select transcript_date, transcript_id from transcripts group by transcript_id order by count(*) asc limit 1
select title, directed_by from cartoon order by directed_by
select t2.title, t2.directed_by from cartoon as t1 join cartoon as t2 on t1.id = t2.directed_by order by "air_date"
tv
select t1.title, t1.channel from cartoon as t1 join t
select t2.birth_date from poker_player as t1 join people as t2 on t1.people_id = t2.people_id order by t1.e
select t2.birth_date from poker_player as t1 join people as t2 on t1.people_id = t2.people_id order by t1.e
select name, birth_date from people order by name asc
select name, birth_date from people order by name
select max(created) from votes where state = 'CA'
select name from country where indepyear > 1950
select name from country where indepyear > 1950
select count(distinct t1.language) from countrylanguage as t1 join country as t2 on t1.countrycode = t2.code where t2.indepyear < 1930
select count(distinct language) from countrylanguage where
select t1.name, t1.name, t1.surfacearea from country as t1 join city as t2 on t1.code = t2.countrycode order by t2.population limit 1
select t1.name, t1.name, t1.surfacearea from country as t1 join city as t2 on t1.code = t2.countrycode order by t2.population limit 1
select t2.name from orchestra as t1 join conductor as t2 on t1.orchest
select t2.name from orchestra as t1 join conductor as t2 on t1.d
select record_company from orchestra where year_of_founded < 2003 intersect select record_company from orchestra where year_of_founded > 2003
select record_company from orchestra where year_of_founded < 2003 intersect select record_company from orchestra where year_of_founded > 2003
select t1.date_of_treatment, t2.first_name from treatments as t1 join professionals as t2 on t1.professional_id = t2.professional_id
select t1.date_of_treatment, t2.first_name from treatments as t1 join professionals as t2 on t1.professional_id = t2.professional_id
select date_arrived, date_departed from dogs as t1 join treatments as t2 on t1.dog_id = t2.dog_id
select date_arrived, date_departed from dogs
select t1.last_name from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id order by t2.date_adopted limit 1
select t1.last_name from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id order by t2.date_adopted limit 1
select date_arrived, date_departed from dogs
select date_arrived, date_arrived from dogs
select sum(cost_of_treatment) from treatments order by date_of_treatment desc limit 1
select age from dogs order by age desc limit 1
select age from dogs order by age desc limit 1
select birth_year, citizenship from singer
select birth_year, citizenship from singer
select name from singer where birth_year = 1948 or birth_year = 1949
select name from singer where birth_year = 1948 or birth_year = 1949
select citizenship from singer where birth_year < 1945 intersect select citizenship from singer where birth_year > 1955
select citizenship from singer where birth_year < 1945 intersect select citizenship from singer where birth_year > 1955
