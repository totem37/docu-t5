select name, country, age from singer order by age desc
select t3.name, t2.song_release_year from singer_in_concert as t1 join concert as t2
select name, song_release_year from singer order by age limit 1
select name from singer where age > (select avg(age) from singer)
select count(*) from concert where year = 2014 or year = 2015
select name, capacity from stadium order by capacity desc limit 1
select name, capacity from stadium order by capacity desc limit 1
select year from concert group by year order by count(*) desc limit 1
select year from concert group by year order by count(*) desc limit 1
select name from stadium except select t2.name from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id where t1.year = 2014
select t3.name from singer_in_concert as t1 join concert as t2 on t1.concert_id = t2.concert_id join singer as t3 on
select weight from pets where pet_age = (select min(weight) from pets)
select weight from pets order by weight asc limit 1
select count(*) from pets as t1 join has_pet as t2 on t1.petid = t2.petid join student as t3 on t2.stuid = t3.stuid where t3.age > 20
select distinct t1.pettype, t1.weight from pets as t1 join has_pet as t2 on t1.petid = t2.petid order by t2.pet
select pettype, weight from pets order by weight asc limit 1
select petid, weight from pets where pet_age > 1
select petid, weight from pets where pet_age > 1
select t3.maker from model_list as t1 join car_makers as t2 on t1.model = t2.id join car_makers as t3 on t1.maker = t3.id where t1.year
select t3.make, t2.year from model_list as t1 join car_makers on t1.model = t2.id join car_names as t3 on t1.model = t3.id
select t1.maker, t2.year from car_makers as t1 join cars_data as t2 on t1.id = t2.modelid
select distinct model from model_list where model > 1980
select distinct t1.model from model_list as t1 join car_makers as t2 on t1.modelid = t2.id where t
select avg(weight), year from cars_data group by year
select avg(weight), year from cars_data group by year
select avg(h
select avg(s
select max(t2.mpg) from cars_data as t1 join car_makers as
select max(mpg) from cars_data where cylinders = 8 union select max(mpg) from cars_data where year < 1980
select hometown from teacher order by age asc limit 1
select hometown from teacher order by age asc limit 1
select avg(num_of_staff) from museum where open_year < 2009
select open_year, num_of_staff from museum where name = 'Pala Museum'
select name from museum where num_of_staff > (select min(num_of_staff) from museum where open_year > 2010)
select t1.name from visitor as t1 join visit as t2 on t1.id = t2.visitor_id join museum as t3 on t3.museum_id = t2.museum_id where t3.open_year < 2009 intersect select t1.name from visitor as t1 join visit as t2 on t1.id = t2.visitor_id join museum as t3 on t3.museum_id = t3.museum_id where t3.open_year > 2011
select count(*) from visitor where visitor_id not in ( select visitor_id from visit where museum_id not in
select count(*) from museum where open_year > 2013 or open_year < 2008
select first_name, birth_date from players where country_code = "USA"
select first_name, birth_date from players where country_code = "USA"
select first_name, country_code from players order by birth_date desc limit 1
select first_name, country_code from players order by birth_date desc limit 1
select first_name, last_name from players order by birth_date
select first_name, last_name from players order by birth_date
select first_name, last_name from players where hand = 'L' order by birth_date
select first_name, last_name from players where hand = 'left' order by birth_date
select year from matches group by year order by count(*) desc limit 1
select year from matches group by year order by count(*) desc limit 1
select sum(t1.tours), t2.rank
select count(*), sum(t1.tours) from rankings as t1 join players as t2 on t1.player_id = t2.player_id group by t1.ranking_date
select count(*), year from matches group by year
select year, count(*) from matches group by year
select winner_name, winner_rank from matches order by winner_age asc limit 3
select winner_name, winner_rank from matches order by winner_age asc limit 3
select t1.first_name, t1.country_code, t1.birth_date from players as t1 join matches as t2 on t1.player_id = t2.winner_id order by t2.winner_rank desc limit 1
select t2.first_name, t2.country_code, t2.birth_date from rankings as t1 join players as t2 on t1.player_id = t2.player_id group by t1.player_id order by count(*) desc limit 1
select name, date, result from battle
select t1.name, t1.date from battle as t1 join ship as t2 on
select transcript_date, transcript_id from transcripts group by transcript_id having count(*) >= 2
select transcript_date, transcript_id from transcripts group by transcript_id having count(*) >= 2
select avg(transcript_date) from transcripts
select t2.date_first_registered, t2.date_left, t1.other_details from transcripts as t1 join students as t2 on t1.transcript_id = t2.transcript_date
select date_left, other_details from transcripts
student_transcripts_tracking
select transcript_date, transcript_id from transcripts group by transcript_id order by count(*) asc limit 1
select transcript_date, transcript_id from transcripts group by transcript_id order by count(*) asc limit 1
select t1.title, t1.directed_by from cartoon as t1 join tv_series as t2 on t1.id =
select t1.title, t1.directed_by from cartoon as t1 join tv_series as t2 on t2.id = t1.id order by t2.air_date
select air_date from tv_series where episode = "A love of a Lifetime"
select t1.channel, t1.id from cartoon as t1 join tv_channel as t2 on t1.channel = t2.id group by t1.channel order by count(*) desc limit 1
select t2.birth_date from poker_player as t1 join people as t2 on t1.people_id = t2.people_id order by t1.e
select t2.birth_date from poker_player as t1 join people as t2 on t1.people_id = t2.people_id order by t1.e
select name, birth_date from people order by name asc
select name, birth_date from people order by name asc
select created from votes where state = 'CA'
select name from country where indepyear > 1950
select name from country where indepyear > 1950
select count(distinct language) from countrylanguage where countrycode > 1930
select count(distinct language) from countrylanguage where isofficial > 1930
select name, indepyear, surfacearea from country order by population limit 1
select name, indepyear, surfacearea from country order by population limit 1
select t1.name from conductor as t1 join orchestra as t2 on t1.orchestr
select t1.name from conductor as t1 join orchestra as t2 on t1.orchestr
select record_company from orchestra where year_of_founded < 2003 intersect select record_company from orchestra where year_of_founded > 2003
select record_company from orchestra where year_of_founded < 2003 intersect select record_company from orchestra where year_of_founded > 2003
select t1.date_of_treatment, t2.first_name from treatments as t1 join professionals as t2 on t1.professional_id = t2.professional_id
select t1.date_of_treatment, t1.first_name from treatments as t2 join professionals as t3 on t1.professional_id = t3.prof
select date_arrived, date_departed from treatments as t1 join dogs as t2 on t1.dog_id = t2.dog_id
select date_arrived, date_departed from treatments as t1 join dogs as t2 on t1.dog_id = t2.dog_id
select t1.last_name from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id order by t2.date_of_birth desc limit 1
select t2.last_name from dogs as t1 join owners as t2 on t1.owner_id = t2.owner_id order by t1.age limit 1
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
