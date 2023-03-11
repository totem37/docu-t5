select name, country from singer order by birthday asc
select t3.name, t2.song_release_year from singer_in_concert as t1 join singer as t2 on
select name, song_release_year from singer order by birthday asc limit 1
select distinct(country) from singer where birthday = '2001'
select distinct(country) from singer where birthday = '2001'
select name from singer where birthday > (select avg(birthday) from singer)
select count(*) from concert where year >= 2014
select count(*) from concert where year >= 2014
select t2.name, t2.capacity from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id where t1.year >= 2014 group by t2.stadium_id order by count(*) desc limit 1
select t2.name, t2.highest from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id where t1.year > 2013 group by t2.stadium_id order by count(*) desc limit 1
select concert_name from concert order by year asc limit 1
select concert_name from concert order by year asc limit 1
select country from singer where birthday = 1981 or birthday = 1991
select avg(t1.average) from stadium as t1 join concert as t2 on t1.stadium_id = t2.stadium_id where t2.year!= 2014
select t3.name from singer_in_concert as t1 join concert as t2 on t1.song_
select t3.name from singer_in_concert as t1 join concert as t2 on t1.song_
select weight from pets where pettype = 'dog' order by birthdate desc limit 1
select weight from pets where pettype = 'dog' order by weight asc limit 1
select count(*) from pets as t1 join has_pet as t2 on t1.petid = t2.petid join student as t3 on t2.stuid = t3.stuid where t3.age > 20 or t3.age > 30
select t2.pettype, t2.weight from has_pet as t1 join pets as t2 on t1.petid = t2.petid order by t2.birthdate desc limit 1
select t2.pettype, t2.weight from has_pet as t1 join pets as t2 on t1.petid = t2.petid order by t2.weight asc limit 1
select t2.petid, t2.weight from has_pet as t1 join pets as t2 on t1.petid = t2.petid where
select t2.petid, t2.weight from student as t1 join pets as t2 on t1.stuid = t1.stuid where t1.age > t1.birthdate
select lname from student where t1.stuid in ( select stuid from has_pet as t1 join pets as t2 on t1.petid = t2.petid where t2.pettype = 'cat' and t2.birthdate = 2001
select lname from student where t1.stuid in ( select stuid from has_pet as t1 join pets as t2 on t1.petid = t2.petid where t2.pettype = 'cat' and t2.birthdate = 2001
select t1.make, t2.
select t1.maker, t3.year from car_makers as t1 join cars_data as t2 on
select distinct(model) from car_makers as t1 join model_list as t2 on t1.model
select distinct(model) from model_list where model = "1980"
select year, avg(weight), min(year) from cars_data group by year
select avg(weight), year from cars_data group by year
select avg (select avg (select id from car_makers) union select avg (select avg (select mpg from cars_data)
select avg (select id from cars_data where year <= 1980)
select max(t1.
select max(t2.mpg) from car_names as t1 join cars_data as t2 on t1.model
select t1.date_effective_from, t1.date_effective_to from templates as t1 join documents as t2 on
select t1.date_effective_from, t1.date_effective_to from templates as t1 join documents as t2 on
select date_effective_from, template_type_code from templates
select date_effective_from, template_type_code from templates
select date_effective_from, date_effective_to from templates
select date_effective_from from templates
select date_effective_from from templates where template_type_code = "PP" or template_type_code = "PPT"
select date_effective_from from templates where template_type_code = "PP" or template_type_code = "PPT"
select date_effective_from, date_effective_to from templates where template_type_code = "CV"
select date_effective_from, date_effective_to from templates where template_type_code = "CV"
select date_effective_from, template_type_code from templates where version_number < 5
select date_effective_from, template_type_code from templates where version_number > 5
select date_effective_from, count(*) from templates group by date_effective_from
select date_effective_from, count(*) from templates group by date_effective_from
select date_effective_from from templates group by date_effective_to order by count(*) desc limit 1
select date_effective_from, date_effective_to from templates group by date_effective_to order by count(*) desc limit 1
select date_effective_from from templates where version_number < 3
select date_effective_from from templates group by date_effective_to having count(*) < 3
select min(version_number), date_effective_to from templates order by date_effective_from
select version_number, date_effective_to from templates order by date_effective_from asc limit 1
select t1.date_effective_from, t1.date_effective_to from templates as t1 join documents as t2 on t1.
select t1.date_effective_from, t1.date_effective_to from templates as t1 join documents as t2 on
select date_effective_from, count(*) from documents
select date_effective_from, date_effective_to, count(*) from documents
select date_effective_from, date_effective_to from documents
select date_effective_from, date_effective_to from documents
select date_effective_from, date_effective_to from documents
select date_effective_from, date_effective_to from documents
select t1.date_effective_from from templates as t1 join ref_template_types as t2 on t1.
select t1.date_effective_from, t1.date_effective_to from templates as t1 join ref_template_types as t2 on
select first_name, birth_date from players where country_code = (select country_code from players)
select first_name, birth_date from players where country_code = (select country_code from players)
select t2.player_
select first_name, country_code from players order by birth_date asc limit 1
select first_name, country_code from players order by birth_date asc limit 1
select first_name, last_name from players order by birth_date
select first_name, last_name from players order by birth_date
select first_name, last_name from players where hand = 'L' order by birth_date
select first_name from players where hand = 'left' order by birth_date asc
select year from matches group by year order by count(*) desc limit 1
select year from matches group by year order by count(*) desc limit 1
select ranking_date, count(*) from rankings group by ranking_date
select t2.ranking_date, count(*) from players as t1 join rankings as t2 on t1.player_id = t2.player_id group by t2.ranking_date
select count(*), year from matches group by year
select count(*), year from matches group by year
select t2.winner_name, t2.winner_rank from matches as t1 join rankings as t2
select t2.winner_name, t2.winner_rank from matches as t1 join
select t2.winner_name, t2.birth_date from matches as t1 join
select t1.player
select record_company from orchestra order by year_of_founded
select record_company from orchestra order by year_of_founded
select t3.name from performance as t1 join orchestra as t2 on t1.orchestr
select record_company from orchestra order by share asc
select record_company from orchestra order by year_of_founded desc limit 1
select record_company from orchestra where year_of_founded <= 2003
select record_company from orchestra where year_of_founded >= 2003
select t2.date_of_treatment, t3.name from treatment_types as t1 join treatments as t2 on t1
select t2.date_of_treatment, t1.first_name from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id
select date_arrived, date_departed from dogs order by date_arrived asc limit 1
select date_of_treatment from treatments order by date_arrived
select t2.last_name from dogs as t1 join owners as t2 on t1.dog_id = t2.owner_id order by t1.date_of_birth desc limit 1
select t2.last_name from dogs as t1 join owners as t2 on t1.dog_id = t2.owner_id order by t1.date_of_birth asc limit 1
select date_arrived, date_departed from dogs
select date_arrived, date_departed from dogs
select max(cost_of_treatment) from treatments
select age from dogs order by date_arrived asc limit 1
select age from dogs order by date_arrived asc limit 1
select birth_year, citizenship from singer
select birth_year, citizenship from singer
select name from singer where birth_year < 1948
select name from singer where birth_year < 1948
select name from singer order by birth_year asc limit 1
select name from singer order by birth_year asc limit 1
select citizenship from singer where birth_year <= 1945
select citizenship from singer where birth_year <= 1945
