select t1.name, t1.country from singer as t1 join singer_in_concert as t2 on
select name, song_release_year from singer order by birthday limit 1
select name, song_release_year from singer order by birthday limit 1
select distinct country from singer as t1 join singer_in_concert as t2 on
select distinct country from singer as t1 join singer_in_concert as t2 on
select name from singer where birthday > (select avg(birthday) from singer)
select count(*) from concert where year > 2014
select count(*) from concert where year > 2014
select name, capacity from stadium order by capacity desc limit 1
select t2.name, t2.highest from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id join concert as t3 on t1.concert_id = t3.concert_id where t1.year > 2013 group by t1.stadium_id order by count(*) desc limit 1
select concert_name from concert order by year desc limit 1
select concert_name from concert order by year desc limit 1
select country from singer where birth
select average from stadium except select t2.name from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id where t1.year = 2014
select t3.name from singer_in_concert as t1 join concert as t2 on t1.concert_id = t2.concert_id join singer as t3 on
select t3.name from singer_in_concert as t1 join concert as t2 on t1.concert_id = t2.concert_id join
select weight from pets order by birthdate desc limit 1
select weight from pets order by weight asc limit 1
select count(*) from pets as t1 join has_pet as t2 on t1.petid = t2.petid join student as t3 on t2.stuid = t3.stuid where t3.age > 20
select distinct t1.pettype, t1.weight from pets as t1 join has_pet as t2 on t1.petid = t2.petid order by t1.birthdate desc limit 1
select pettype, weight from pets order by weight asc limit 1
select petid, weight from pets where birthdate > (select max(birthdate) from pets where birthdate like "2020%")
select petid, weight from pets where birthdate > (select max(birthdate) from pets where birthdate like "2020%")
select t1.lname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid join pets as t3 on t3.petid = t2.petid where t3.birthdate = 2001 and t3.pettype = 'cat'
select t1.lname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid join pets as t3 on t3.petid = t2.petid where t3.birthdate = 2001 and t3.pettype = 'cat'
select t3.make, t2.year from model_list as t1 join car_makers on t1.model = t2.id join car_names as t3 on t1.model = t3.id
select t1.maker, t2.year from car_makers as t1 join cars_data as t2 on t1.id = t2.modelid
select distinct model from model_list where year < 1980 or year = "null
select distinct t1.model from model_list as t1 join car_makers as t2 on t1.modelid = t2.id where t
select avg(weight), year from cars_data group by year
select avg(weight), year from cars_data group by year
select avg(s
select avg(h
select max(t2.mpg) from cars_data as t1 join car_makers as t2
select max(mpg) from cars_data where cylinders >= 8 union select max(mpg) from cars_data where year < 1980
select t1.date_effective_to from templates as t1 join documents as t2 on t2.template_id = t1.template_id group by t1.template_type_code order by count(*) desc limit 1
select t1.date_effective_to from templates as t1 join documents as t2 on t2.template_id = t1.template_id group By t1.template_id order by count(*) desc limit 1
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
select t2.date_effective_to from documents as t1 join templates as t2 on t1.document_id = t2.document_id
select t1.date_effective_to from templates as t1 join documents as t2 on t1.
select date_effective_from, date_effective_to, count(*) from documents
select date_effective_from, date_effective_to, count(*) from documents
select date_effective_to from documents
select date_effective_to from documents
select date_effective_from, date_effective_to from documents
select date_effective_to, date_effective_to from templates where template_id not in (select template_id from documents)
select date_effective_from from templates where template_type_description like "%presentation%" 
select t1.date_effective_to from templates as t1 join ref_template_types as t2 on t1.template_type_code = t2.template_type_code where t2.
select first_name, birth_date from players where country_code = "USA"
select first_name, birth_date from players where country_code = "USA"
select t2.player_
select first_name, country_code from players order by birth_date desc limit 1
select first_name, country_code from players order by birth_date desc limit 1
select first_name, last_name from players order by birth_date
select first_name, last_name from players order by birth_date desc
select t1.first_name, t1.last_name from players as t1 join matches as t2 on t1.player_id = t2.loser_id where t1.hand = 'L' order by t1.birth_date desc
select hand from players where birth_date like '%jung%' order by birth_date
select year from matches group by year order by count(*) desc limit 1
select year from matches group by year order by count(*) desc limit 1
select sum(t1.tours), t2.rank
select count(*), sum(t1.tours) from rankings as t1 join players as t2 on t1.player_id = t2.player_id group by t1.ranking_date
select count(*), year from matches group by year
select year, count(*) from matches group by year
select winner_name, winner_rank from matches order by winner_age asc limit 3
select winner_name, winner_rank from matches order by winner_age asc limit 3
select t2.winner_name, t2.birth_date from matches as t1 join players as t2
select t1.first_name, t1.birth_date from players as t1 join matches as t2 on t1.player_id = t2.winner_id group by t2.winner_id order by count(*) desc limit 1
select record_company from orchestra order by year_of_founded desc
select record_company from orchestra order by year_of_founded
select t1.name from conductor as t1 join orchestra as t2 on t1.orchestr
select t2.record_company from performance as t1 join orchestra as t2 on t1.orchestr
select record_company from orchestra order by year_of_founded desc limit 1
select record_company from orchestra where year_of_founded < 2003
select record_company from orchestra where year_of_founded >= 2003
select t1.date_of_treatment, t1.name from treatment_types as t2 join professionals as t3 on t1.professional_id = t2.prof
select t2.date_of_treatment, t1.first_name, t1.last_name from treatments as t1
select date_arrived, date_departed from treatments as t1 join dogs as t2 on t1.dog_id = t2.dog_id
select date_of_treatment from treatments where date_departed >= '2004-04-19 15:06:20' and date_arrived < '2016-03-15 00:33:18
select t1.last_name from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id order by t2.date_of_birth desc limit 1
select t2.last_name from dogs as t1 join owners as t2 on t1.owner_id = t2.owner_id order by t1.age limit 1
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
