select t1.name, t1.country from singer as t1 join singer_in_concert as t2 on
select name, song_release_year from singer order by birthday limit 1
select name, song_release_year from singer order by birthday limit 1
select distinct country from singer as t1 join singer_in_concert as t2 on
select distinct country from singer as t1 join singer_in_concert as t2 on
select name from singer where birthday > (select avg(birthday) from singer)
select count(*) from concert where year > 2014
select count(*) from concert where year > 2014
select name, capacity from stadium order by capacity desc limit 1
select t2.name, t2.highest from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id group by t1.stadium_id order by avg(t1.year) desc limit 1
select concert_name from concert order by year desc limit 1
select concert_name from concert order by year desc limit 1
select country from singer where birth
select average from stadium except select t2.name from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id where t1.year = 2014
select t2.song_name from singer_in_concert as t1 join concert as t2
select t2.song_name from singer_in_concert as t1 join concert as t2
select weight from pets order by birthdate desc limit 1
select weight from pets order by weight asc limit 1
select count(*) from pets as t1 join has_pet as t2 on t1.petid = t2.petid join student as t3 on t2.stuid = t3.stuid where t3.age > 20
select pettype, weight from pets order by birthdate desc limit 1
select pettype, weight from pets order by weight asc limit 1
select petid, weight from pets where birthdate > (select max(birthdate) from pets where birthdate like "2020%")
select petid, weight from pets where birthdate > (select max(birthdate) from pets where birthdate like "2020%")
select t1.lname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid join pets as t3 on t3.petid = t2.petid where t3.birthdate = 2001 and t3.pettype = 'cat'
select lname from student where stuid in (select t1.stuid from has_pet as t1 join pets as t2 on t1.petid = t2.petid where t2.pettype = 'cat' and t2.birthdate = 2001)
select t1.make, t1.year from car_makers as t1
select t1.maker, t2.year from car_makers as t1 join cars_data as t2 on t1.id = t2.modelid
select distinct model from model_list where
select distinct t1.model from model_list as t1 join car_makers as t2 on t1.model
select avg(weight), year from cars_data group by year
select avg(weight), year from cars_data group by year
select t1.id, avg(t2.
select avg(h
select t1.mpg, t2.mpg from cars_data as t1 join cars_data as t2 on t1.id = t2.c
select max(mpg) from cars_data where cylinders >= 8 union select max(mpg) from cars_data where year < 1980
select date_effective_to from templates group by date_effective_to order by count(*) desc limit 1
select t1.date_effective_to from templates as t1 join documents as t2 on t1.
select date_effective_from, template_type_code from templates
select date_effective_from, template_type_code from templates
select date_effective_to from templates
select date_effective_from from templates
select date_effective_to from templates where template_type_code = 'PP' or template_type_code = 'PPT'
select date_effective_to from templates where template_type_code = 'PP' or template_type_code = 'PPT'
select date_effective_to from templates where template_type_code = "CV"
select date_effective_to from templates where template_type_code = "CV"
select date_effective_from, template_type_code from templates where version_number < 5
select date_effective_from, template_type_code from templates where version_number > 5
select date_effective_from, count(*) from templates group by date_effective_to
select date_effective_to, count(*) from templates group by date_effective_to
select date_effective_to from templates group by date_effective_to order by count(*) desc limit 1
select date_effective_to from templates group by date_effective_to order by count(*) desc limit 1
select date_effective_to from templates group by date_effective_to having count(*) < 3
select date_effective_to from templates group by date_effective_to having count(*) < 3
select min(version_number), date_effective_to from templates
select version_number, date_effective_to from templates order by date_effective_from limit 1
select t1.date_effective_to from templates as t1 join documents as t2 on
select t1.date_effective_to from templates as t1 join documents as t2 on t1.
select date_effective_from, date_effective_to, count(*) from documents
select date_effective_from, date_effective_to, count(*) from documents
select date_effective_to from documents
select date_effective_to from documents
select date_effective_from from templates where template_id not in (select template_id from documents)
select date_effective_from, date_effective_to from templates where template_id not in (select template_id from documents)
select date_effective_from from templates where template_type_description like '%presentation%
select t1.date_effective_to from templates as t1 join ref_template_types as t2 on t1.template_type_code = t2.template_type_code where t2.
select first_name, birth_date from players where country_code = "USA"
select first_name, birth_date from players where country_code = "USA"
select t2.player_
select first_name, country_code from players order by birth_date desc limit 1
select first_name, country_code from players order by birth_date desc limit 1
select first_name, last_name from players order by birth_date
select first_name, last_name from players order by birth_date desc
select t1.first_name, t1.last_name from players as t1 join players as t2 on t1.player_id = t2.player_id where t2.hand = 'L' order by t2.birth_date
select hand from players where birth_date like '%jung%' order by birth_date
select year from matches group by year order by count(*) desc limit 1
select year from matches group by year order by count(*) desc limit 1
select sum(t1.tours), t2.rank
select sum(t1.tours), t1.rank
select count(*), year from matches group by year
select year, count(*) from matches group by year
select winner_name, winner_rank from matches order by winner_age asc limit 3
select winner_name, winner_rank from matches order by winner_rank limit 3
select t2.winner_name, t2.birth_date from rankings as t1 join matches as t2
select t1.first_name, t1.birth_date from players as t1 join rankings as t2 on t1.player_id = t2.player_id group by t1.player_id order by count(*) desc limit 1
select record_company from orchestra order by year_of_founded desc
select record_company from orchestra order by year_of_founded
select t2.name from performance as t1 join conductor as t2 on t1.orchestr
select t2.record_company from performance as t1 join orchestra as t2 on t1.orchestr
select record_company from orchestra order by year_of_founded desc limit 1
select record_company from orchestra where year_of_founded < 2003
select record_company from orchestra where year_of_founded >= 2003
select date_of_treatment, professional_id from treatments
select date_of_treatment, professional_id from treatments
select date_arrived, date_departed from treatments
select date_of_treatment from treatments
select t1.last_name from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id order by t2.date_adopted limit 1
select name from dogs order by age asc limit 1
select date_arrived, date_adopted from dogs where abandoned_yn = '1'
select date_arrived, date_adopted from dogs where abandoned_yn = '1'
select max(cost_of_treatment) from treatments
select age from dogs order by age desc limit 1
select age from dogs order by age desc limit 1
select birth_year, citizenship from singer
select birth_year, citizenship from singer
select name from singer where birth_year < 1948 or birth_year >= "Song_id"
select name from singer where birth_year < 1948 or birth_year >= "Song_id"
select name from singer order by birth_year asc limit 1
select name from singer order by birth_year asc limit 1
select citizenship from singer where birth_year < 1945 or birth_year = 1945
select citizenship from singer where birth_year < 1945 or birth_year = 1945
