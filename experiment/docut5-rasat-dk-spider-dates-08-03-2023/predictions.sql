select name, country from singer order by year desc 
select name, song_release_year from singer order by song_release_year asc limit 1
select name, song_release_year from singer order by birthday desc limit 1
select distinct country from singer where birth
select distinct country from singer where birth
select song_name from singer where average > (select avg(average) from singer
select count(*) from concert where year >= 2014 or year >= "2014"
select count(*) from concert where year > 2014 or year >= 1
select t1.name, t1.capacity from stadium as t1 join concert as t2 on t1.stadium_id = t2.stadium_id where t2.year >= 2014 group by t1.stadium_id order by count(*) desc limit 1
select t1.name, max(t1.highest) from stadium as t1 join concert as t2 on t1.stadium_id = t2.stadium_id where t2.year > 2013 group by t1.stadium_id order by count(*) desc limit 1
select concert_name from concert order by year desc limit 1
select concert_name from concert order by year desc limit 1
select country from singer where birth
select average from stadium except select t1.average from stadium as t1 join concert as t2 on t1.stadium_id = t2.stadium_id where t2.year = 2014
select t1.name from singer as t1 join singer_in_concert as t2 on t1.singer_id = t2.singer_id where year > 2014 or year >=
select t1.name from singer as t1 join singer_in_concert as t2 on t1.singer_id = t2.singer_id where year < 2014 or year <
select t1.weight from pets as t1 join has_pet as t2 on t1.petid = t2.petid join student as t3 on t2.stuid = t3.stuid where t1.pettype = 'dog' and t3.age = (select min(age) from pets as t1 join has_pet as t2 on t1.petid = t2.petid join student as t3 on t2.stuid = t3.stuid where t1.pettype = 'dog')
select t2.weight from has_pet as t1 join pets as t2 on t1.petid = t2.petid join student as t3 on t1.stuid = t3.stuid where t2.pettype = 'dog' order by t3.age limit 1
select count(*) from has_pet as t1 join pets as t2 on t1.petid = t2.petid join student as t3 on t1.stuid = t3.stuid where t3.age > 20
select pettype, weight from pets order by birthdate desc limit 1
select pettype, count(*) from pets group by pettype order by count(*) asc limit 1
select petid, weight from pets where birthdate > (select max(birthdate) from pets where birthdate like "2020%")
select petid, weight from pets where birthdate > (select max(birthdate) from pets where birthdate like "2020%")
select t1.lname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid join pets as t3 on t2.petid = t3.petid where t3.pettype = 'cat' and t2.birthdate
select t1.lname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid join pets as t3 on t2.petid = t3.petid where t3.birthdate = 2001
select t1.make, "production" from car_names as t1 join cars_data as t2 on t1.makeid = t2.id order by t2.year limit 1
select maker, year from car_makers
select distinct model from model_list where model < 1980 or year =
select distinct model from model_list where year < 1980 or year =
select avg(weight), year from cars_data group by year
select avg(weight), year from cars_data group by year
select avg(h
select avg(
select max(t2.mpg) from cars_data as t1 join cars_data as t2 on t1.id = t2.
select max(mpg) from cars_data where cylinders = 8 union select mpg from cars_data where cylinders < 1980
select date_effective_to from templates group by date_effective_to order by count(*) desc limit 1
select date_effective_to from templates group by date_effective_to order by count(*) desc limit 1
select date_effective_from, template_type_code from templates
select date_effective_from, template_type_code from templates
select date_effective_to from templates
select date_effective_from from templates
select date_effective_to from templates where template_type_code = 'PP' or template_type_code = 'PPT'
select date_effective_from from templates where template_type_code = 'PP' or template_type_code = 'PPT'
select date_effective_to from templates where template_type_code = "CV"
select date_effective_to from templates where template_type_code = "CV"
select date_effective_from, template_type_code from templates where version_number > 5
select date_effective_from, template_type_code from templates where version_number > 5
select date_effective_from, count(*) from templates group by date_effective_to
select date_effective_from, count(*) from templates group by date_effective_to
select date_effective_to from templates group by date_effective_to order by count(*) desc limit 1
select date_effective_to from templates group by date_effective_to order by count(*) desc limit 1
select date_effective_to from templates group by date_effective_to having count(*) < 3
select date_effective_to from templates group by date_effective_to having count(*) < 3
select min(date_effective_from), date_effective_to from templates group by date_effective_from
select min(date_effective_from), date_effective_to from templates group by date_effective_from
select t1.date_effective_to from templates as t1 join documents as t2 on t1.
select 'Datenbase' from documents where document_name = "Data base"
select t1.date_effective_from, t1.date_effective_to, count(*) from templates as t1 join documents as t2 on t1.date_effective_from = t2.document_id group by t1.date_effective_to
select t1.date_effective_from, t1.date_effective_to, count(*) from templates as t1 join documents as t2 on t1.date_effective_from = t2.document_id group by t1.date_effective_to
Select t1.date_effective_from, t1.date_effective_to from templates as t1 join documents as t2 on t2.document_id = t2.document_id group by t1.date_effective_to order by count(*) desc limit 1
select date_effective_to from documents
select date_effective_from from templates where template_id not in (select template_id from documents)
select date_effective_from from templates where template_id not in (select template_id from documents)
select date_effective_to from templates where template_type_description like "%presentation%
select date_effective_to from templates where template_type_description like '%presentation%' 
select first_name, birth_date from players where country_code = 'USA'
select first_name, birth_date from players where country_code = 'USA'
select t1.winner_name, t2.loser_name from matches as t1 join matches as t2 on t1.winner_id = t2.winner_id where t1.year = 2013 or t1.year = 2016
select first_name, country_code from players order by birth_date desc limit 1
select first_name, country_code from players order by birth_date desc limit 1
select first_name, last_name from players order by birth_date
select first_name, last_name from players order by birth_date desc
select first_name, last_name from players where hand = 'L' order by birth_date desc
select first_name from players where first_name = 'Full' order by birth_date
select year from matches group by year order by count(*) desc limit 1
select year from matches group by year order by count(*) desc limit 1
select ranking_date, count(*) from rankings group by ranking_date
select ranking_date, count(*) from rankings group by ranking_date
select year, count(*) from matches group by year
select year, count(*) from matches group by year
select t1.first_name, t1.rank
select t1.first_name, t1.last_name from players as t1 join rankings as t2 on t1.player_id = t2.player_id where t1.birth_date = 3 order by t2.year
select t1.first_name, t1.birth_date from players as t1 join rankings as t2 on t1.player_id = t2.player_id order by ranking_points desc limit 1
select t1.first_name, t1.birth_date from players as t1 join rankings as t2 on t1.player_id = t2.player_id where ranking_points = (select ranking_points from rankings group by ranking_points order by count(*) desc limit 1)
select record_company from orchestra order by year_of_founded desc
select record_company from orchestra order by year_of_founded desc
select t2.name from performance as t1 join conductor as t2 on t1.
select record_company from orchestra order by year_of_founded desc limit 1
select record_company from orchestra order by year_of_founded desc limit 1
select record_company from orchestra where year_of_founded < 2003 or year_of_founded = '2003'
select record_company from orchestra where year_of_founded > 2003 intersect select record_company from orchestra
select t1.date_of_treatment, t3.name from treatments as t1 join professionals as t2 on t1.professional_id = t2.professional_id join
select t1.date_of_treatment, t1.professional_id from treatments as t1 join professionals as t2 on t1.professional_id = t2.professional_id
select date_arrived from dogs order by date_departed desc limit 1
select date_arrived from dogs order by date_departed asc
select t1.last_name from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id order by t2.date_adopted limit 1
select t1.last_name from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id order by t2.date_adopted limit 1
select date_arrived, date_departed from dogs
select date_arrived, date_arrived from dogs where abandoned_yn = '1'
select max(cost_of_treatment) from treatments
select age from dogs order by age desc limit 1
select age from dogs order by age desc limit 1
select birth_year, citizenship from singer
select birth_year, citizenship from singer
select name from singer where birth_year < 1948 or birth_year <= 50
select name from singer where birth_year < 1948 union select name from singer where birth_year > (select max(birth_year) from singer)
select name from singer order by birth_year desc limit 1
select name from singer order by birth_year desc limit 1
select citizenship from singer where birth_year < 1945 or birth_year <= 1945
select citizenship from singer where birth_year < 1945 or birth_year <= 1945
