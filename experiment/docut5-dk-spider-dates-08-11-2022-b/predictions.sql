select name, country from singer order by birthday
select song_name, song_release_year from singer order by birthday desc limit 1
select song_name, song_release_year from singer order by birthday desc limit 1
select distinct country from singer where birthday like "2001%"
select distinct country from singer where birthday = 2001
select song_name from singer where birthday > (select avg(birthday) from singer)
select count(*) from concert where year > 2014
select count(*) from concert where year > 2014
select t2.name, t2.capacity from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id where t1.year >= 2014 group by t1.stadium_id order by count(*) desc limit 1
select t2.name, t2.highest, t2.average from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id where t1.year > 2013 group by t1.stadium_id order by count(*) desc limit 1
select concert_name, year from concert order by year desc limit 1
select concert_name from concert order by year asc limit 1
select country from singer where birthday like "1981" or birthday like "911"
select average from stadium except select t1.average from stadium as t1 join concert as t2 on t1.stadium_id = t2.stadium_id where t2.year = 2014
select t3.name from singer_in_concert as t1 join concert as t2 on t1.concert_id = t2.concert_id join singer as t3 on t1.singer_id = t3.singer_id where t2.year > 2014
select t3.name from singer_in_concert as t1 join concert as t2 on t1.concert_id = t2.concert_id join singer as t3 on t1.singer_id = t3.singer_id where t2.year < 2014
select weight from pets order by birthdate asc limit 1
select min(weight) from pets
select count(*) from student as t1 join has_pet as t2 on t1.stuid = t2.stuid where t1.age > 20
select pettype, weight from pets order by birthdate desc limit 1
select pettype, weight from pets order by birthdate desc limit 1
select petid, weight from pets where birthdate > 2020
select petid, weight from pets where birthdate > 2020
select t2.lname from has_pet as t1 join student as t2 on t1.stuid = t2.stuid join pets as t3 on t1.petid = t3.petid where t3.birthdate = 2001
select t2.lname from has_pet as t1 join student as t2 on t1.stuid = t2.stuid join pets as t3 on t1.petid = t3.petid where t3.birthdate = 2001
select t2.make, t1.year from cars_data as t1 join car_names as t2 on t1.id = t2.makeid order by t1.year limit 1
select t1.maker, t2.year from car_makers as t1 join cars_data as t2 on t1.maker = t2.id order by t2.year limit 1
select distinct model from model_list where modelid not in (select id from cars_data where year < 1980)
select distinct t2.model from cars_data as t1 join model_list as t2 on t1.id = t2.modelid where t1.year < 1980
select avg(weight), year from cars_data group by year
select avg(weight), year from cars_data group by year
select avg(horsepower) from cars_data where year < 1980
select avg(horsepower) from cars_data where year < 1980
select max(mpg) from cars_data where id in (select id from cars_data where cylinders = 8 union select id from cars_data where year < 1980)
select max(mpg) from cars_data where cylinders = 8 union select max(mpg) from cars_data where year < 1980
select date_effective_from from templates group by date_effective_to order by count(*) desc limit 1
select t1.date_effective_from, t1.date_effective_to from templates as t1 join documents as t2 on t1.template_id = t2.template_id group by t1.template_id order by count(*) desc limit 1
select date_effective_from, template_type_code from templates
select date_effective_from, template_type_code from templates
select distinct date_effective_from, date_effective_to from templates
select date_effective_from, date_effective_to from templates
select date_effective_from, date_effective_to from templates where template_type_code = "PP" or template_type_code = "PPT"
select date_effective_from from templates where template_type_code = "PP" or template_type_code = "PPT"
select date_effective_from from templates where template_type_code = "CV"
select date_effective_from from templates where template_type_code = "CV"
select date_effective_from, template_type_code from templates where version_number > 5
select date_effective_from, template_type_code from templates where version_number > 5
select date_effective_from, count(*) from templates group by date_effective_from
select date_effective_from, count(*) from templates group by date_effective_to
select date_effective_from from templates group by date_effective_to order by count(*) desc limit 1
select date_effective_from from templates group by date_effective_to order by count(*) desc limit 1
select date_effective_from from templates group by date_effective_to having count(*) < 3
select date_effective_to from templates group by date_effective_to having count(*) < 3
select version_number, date_effective_from, date_effective_to from templates order by version_number asc limit 1
select version_number, date_effective_from, date_effective_to from templates order by version_number asc limit 1
select t2.date_effective_from, t2.date_effective_to from documents as t1 join templates as t2 on t1.template_id = t2.template_id where t1.document_name = "Data base"
select t2.date_effective_from from documents as t1 join templates as t2 on t1.template_id = t2.template_id where t1.document_name = "Data base"
select date_effective_from, date_effective_to, count(*) from templates group by template_type_code
select t1.date_effective_from, t1.date_effective_to, count(*) from templates as t1 join documents as t2 on t1.template_id = t2.template_id group by t1.template_type_code
select t1.date_effective_from from templates as t1 join documents as t2 on t1.template_id = t2.template_id group by t1.date_effective_to order by count(*) desc limit 1
select date_effective_from from templates group by date_effective_to order by count(*) desc limit 1
select date_effective_from, date_effective_to from templates except select t1.date_effective_from, t1.date_effective_to from templates as t1 join documents as t2 on t1.template_id = t2.template_id
select date_effective_from, date_effective_to from templates except select t1.date_effective_from, t1.date_effective_to from templates as t1 join documents as t2 on t1.template_id = t2.template_id
select t1.date_effective_from, t1.date_effective_to from templates as t1 join ref_template_types as t2 on t1.template_type_code = t2.template_type_code where t2.template_type_description = "Presentation"
select t1.date_effective_from from templates as t1 join ref_template_types as t2 on t1.template_type_code = t2.template_type_code where t2.template_type_description = "Presentation"
select first_name, birth_date from players where country_code = 'USA'
select first_name, birth_date from players where country_code = 'USA'
select winner_name, loser_name from matches where year = 2013 or year = 2016
select first_name, country_code from players order by birth_date desc limit 1
select first_name, country_code from players order by birth_date desc limit 1
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
select winner_name, birth_date from matches as t1 join rankings as t2 on t1.winner_ioc = t2.winner_id
select t1.first_name, t1.last_name, t1.birth_date from players as t1 join matches as t2 on t1.player_id = t2.winner_id group by t2.winner_id order by count(*) desc limit 1
select record_company from orchestra order by year_of_founded asc
select record_company from orchestra order by year_of_founded asc
select t2.name from orchestra as t1 join conductor as t2 on t1.conductor_id = t2.conductor_id order by t1.year_of_work
select record_company from orchestra order by year_of_founded asc
select record_company from orchestra order by year_of_founded desc limit 1
select record_company from orchestra where year_of_founded < 2003
select record_company from orchestra where year_of_founded > 2003 intersect select record_company from orchestra where year_of_founded < 2003
select date_of_treatment, t3.first_name, t3.last_name from treatments as t1 join professionals as t2 on t1.professional_id = t2.professional_id join treatment_types as
select t1.date_of_treatment, t2.first_name, t2.last_name from treatments as t1 join professionals as t2 on t1.professional_id = t2.professional_id
select t1.date_of_treatment from treatments as t1 join dogs as t2 on t1.dog_id = t2.dog_id order by t2.date_arrived - t2.date_departed
select date_of_treatment, date_arrived from treatments as t1 join dogs as t2 on t1.dog_id = t2.dog_id order by t2.date_arrived, t2.date_departed
select t2.last_name from dogs as t1 join owners as t2 on t1.owner_id = t2.owner_id order by t1.age asc limit 1
dog
select date_arrived, date_departed from dogs where abandoned_yn = '1'
select date_arrived, date_departed from dogs where abandoned_yn = '1'
select max(cost_of_treatment) from treatments
select age from dogs order by age desc limit 1
select age from dogs order by age desc limit 1
select birth_year, citizenship from singer
select birth_year, citizenship from singer
select name from singer where birth_year <
select name from singer where birth_year <
select name from singer order by birth_year asc limit 1
select name from singer order by birth_year asc limit 1
select citizenship from singer where birth_year <= 1945 or birth_year > 1945
