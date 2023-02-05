select name, country, age from singer order by age desc
select t3.name, t2.song_release_year from singer_in_concert as t1 join singer as t2 on t1.song_
select name, song_release_year from singer order by age asc limit 1
select name from singer where age > (select avg(age) from singer)
select count(*) from concert where year = 2014 or year = 2015
select t2.name, t2.capacity from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id where t1.year >= 2014 group by t2.stadium_id order by count(*) desc limit 1
select t2.name, t2.capacity from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id where t1.year > 2013 group by t2.stadium_id order by count(*) desc limit 1
select year from concert group by year order by count(*) desc limit 1
select year from concert group by year order by count(*) desc limit 1
select name from stadium except select t1.name from stadium as t1 join concert as t2 on t1.stadium_id = t2.stadium_id where t2.year = 2014
select t3.name from singer_in_concert as t1 join concert as t2 on t1.song_
select t2.weight from has_pet as t1 join pets as t2 on t1.petid = t2.petid
select min(weight) from pets where pettype = 'dog'
select count(*) from pets as t1 join has_pet as t2 on t1.petid = t2.petid join student as t3 on t2.stuid = t3.stuid where t3.age > 20 or t3.age > 30
select t3.pettype, t2.weight from has_pet as t1 join pets as t2 on t1.petid = t2.petid
select t2.pettype, t2.weight from has_pet as t1 join pets as t2 on t1.petid = t2.petid order by t2.petid asc limit 1
select t2.petid, t2.weight from pets as t1 join pets as t2 on t1.petid + t2.pet_age > 1
select t2.petid, t2.weight from has_pet as t1 join pets as t2 on t1.petid = t2.petid where
select t3.maker from model_list as t1 join car_makers as t2 on t1.modelid = t2.modelid
select t1.make, t2.
select t1.maker, t3.year from car_makers as t1 join cars_data as t2 on
select distinct(model) from model_list where model > 1980
select distinct(model) from model_list where model > 1980
select year, avg(weight), min(year) from cars_data group by year
select avg(weight), year from cars_data group by year
select avg (select avg (select id from car_makers)
select avg (select avg (select id from car_makers where year < 1980
select max(t1.
select max(t2.mpg) from car_names as t1 join cars_data as t2 on t1.model
select hometown from teacher order by age asc limit 1
select hometown from teacher order by age asc limit 1
select avg(t1.num_of_staff) from museum as t1 join museum as t2 on t1.museum_id = t2.museum_id where t2.open_year < 2009
select open_year, num_of_staff from museum where name = 'Palacia Museum'
select name from museum where num_of_staff > (select min(num_of_staff) from museum where open_year > 2010)
select t3.name from visit as t1 join museum as t2 on t1.museum_id = t2.museum_id join visitor as t3 on t1.visitor_id = t3.id where t2.open_year < 2009 intersect select t3.name from visit as t1 join museum as t2 on t1.museum_id = t2.museum_id join visitor as t3 on
select count(*) from visitor where visitor_id not in ( select visitor_id from visit as t1 join museum as t2 on t1.museum_id = t2.museum_id where t2.open_year > 2010
select count(*) from museum where open_year > 2013 or open_year <= 2008
select first_name, birth_date from players where country_code = 'United States'
select first_name, birth_date from players where country_code = "United States"
select first_name, country_code from players order by birth_date asc limit 1
select first_name, country_code from players order by birth_date asc limit 1
select first_name, last_name from players order by birth_date
select first_name, last_name from players order by birth_date
select first_name, last_name from players where hand = 'L' order by birth_date
select first_name, last_name from players order by birth_date
select year from matches group by year order by count(*) desc limit 1
select year from matches group by year order by count(*) desc limit 1
select ranking_date, count(*) from rankings group by ranking_date
select t2.ranking_date, count(*) from players as t1 join rankings as t2 on t1.player_id = t2.player_id group by t2.ranking_date
select count(*), year from matches group by year
select count(*), year from matches group by year
select t2.winner_name, t2.winner_rank from matches as t1 join rankings as t2
select t2.winner_name, t2.winner_rank from matches as t1 join
select t1.first_name, t1.country_code, t1.birth_date from players as t1 join matches as t2 on t1.player_id = t2.winner_id where t2.winner_rank_points = (select max(winner_rank) from matches)
select t1.first_name, t1.country_code, t1.birth_date from players as t1 join matches as t2 on t1.player_id = t2.winner_id where t2.winner_rank_points = (select max(winner_rank) from matches)
select name, date, result from battle
select t1.name, t1.date from battle as t1 join battle as t2 on t1.id = t2.
select transcript_date, t2.transcript_id from student_enrolment_courses as t1 join transcripts as t2 on t1.course_id= 2
select transcript_date, t2.course_id from student_enrolment_courses as t1 join transcripts as t2
select avg(t2.transcript_date) from student_enrolment_courses as t1 join transcripts as t2 on t1.student_enrolment_id = t2.student_i
select t2.date_first_registered, t2.date_left
select t2.date_left, t2.other_details from transcripts as t1 join student_enrolment_courses as t2
select max(t2.transcript_date) from student_enrolment_courses as t1 join transcripts as t2 on t1.student_enrolment_id = t2.student_
select t2.transcript_date, t2.transcript_id from student_enrolment_courses as t1 join transcripts as t2 on t1.student_enrolment_id = t2.student_id
select t2.date
select t1.title, t2.directed_by from cartoon as t1 join t
select t2.title, t2.directed_by from tv_series as t1 join cartoon as t2 on t1.id = t2.
select air_date from tv_series where episode = 'A love of a Lifetime'
select t1.channel, t2.title from cartoon as t1 join tv_channel as
select t2.birth_date from poker_player as t1 join people as t2 on t1.people_id = t2.people_id where t1.money_rank = (select min(money_rank) from poker_player)
select t2.birth_date from poker_player as t1 join people as t2 on t1.people_id = t2.people_id order by t1.money_rank asc limit 1
select name, birth_date from people order by birth_date asc
select name, birth_date from people order by birth_date
select created from votes where state = 'CA'
select name from country where indepyear > 1950
select t1.name from country as t1 join country as t2 on
select count(distinct t2.language) from country as t1 join countrylanguage as t2 on t1.country
select count(*) from country where isofficial = 'T' and
select name, indepyear, surfacearea from country order by population asc limit 1
select t1.name, t1.indepyear, t1.surfacearea from country as t1 join country as t2 on t1.countrycode
select t3.name from orchestra as t1 join show as t2 on t1.orchestr
select t3.name from orchestra as t1 join conductor as t2 on t1.orchestr
select record_company from orchestra where year_of_founded < 2003 intersect select record_company from orchestra where year_of_founded > 2003
select record_company from orchestra where year_of_founded < 2003 intersect select record_company from orchestra where year_of_founded > 2003
select t2.date_of_treatment, t3.first_name from treatments as t1 join professionals as t2
select t2.date_of_treatment, t1.first_name from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id where t1.professional_id = (select professional_id from treatments)
select t2.date_arrived, t2.date_departed from treatments as t1 join dogs as t2 on t1.dog_id = t2.dog_id where t1.treatment_type_code = "null"
select date_arrived, date_departed from treatment
select t2.last_name from dogs as t1 join owners as t2 on t1.dog_id = t2.owner_id order by t1.date_of_birth desc limit 1
select t2.last_name from dogs as t1 join owners as t2 on t1.dog_id = t2.owner_id order by t1.date_of_birth asc limit 1
select date_arrived, date_departed from dogs
select date_arrived, date_departed from dogs
select max(cost_of_treatment) from treatments
select age from dogs order by date_arrived asc limit 1
select age from dogs order by date_arrived asc limit 1
select birth_year, citizenship from singer
select birth_year, citizenship from singer
select name from singer where birth_year = 1948 or birth_year = 1949
select name from singer where birth_year = 1948 or birth_year = 1949
select citizenship from singer where birth_year < 1945 intersect select citizenship from singer where birth_year > 1955
select citizenship from singer where birth_year < 1945 intersect select citizenship from singer where birth_year > 1955
