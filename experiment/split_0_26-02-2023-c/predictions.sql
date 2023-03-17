select birth_year, citizenship from singer
select birth_year, citizenship from singer
select name from singer where birth_year < 1948 or birth_year >= "Song_id"
select name from singer where birth_year < 1948 or birth_year >= "Song_id"
select name from singer order by birth_year asc limit 1
select name from singer order by birth_year asc limit 1
select citizenship from singer where birth_year < 1945 or birth_year = 1945
select citizenship from singer where birth_year < 1945 or birth_year = 1945
select count(*) from pets as t1 join has_pet as t2 on t1.petid = t2.petid join student as t3 on t2.stuid = t3.stuid where t3.age > 20
select distinct t1.pettype, t1.weight from pets as t1 join has_pet as t2 on t1.petid = t2.petid order by t1.birthdate desc limit 1
select pettype, weight from pets order by weight asc limit 1
select petid, weight from pets where birthdate > (select max(birthdate) from pets where birthdate like "2020%")
select petid, weight from pets where birthdate > (select max(birthdate) from pets where birthdate like "2020%")
select weight from pets order by birthdate desc limit 1
select weight from pets order by weight asc limit 1
select t1.lname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid join pets as t3 on t3.petid = t2.petid where t3.birthdate = 2001 and t3.pettype = 'cat'
select t1.lname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid join pets as t3 on t3.petid = t2.petid where t3.birthdate = 2001 and t3.pettype = 'cat'
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
select record_company from orchestra order by year_of_founded desc
select record_company from orchestra order by year_of_founded
select t1.name from conductor as t1 join orchestra as t2 on t1.orchestr
select t2.record_company from performance as t1 join orchestra as t2 on t1.orchestr
select record_company from orchestra order by year_of_founded desc limit 1
select record_company from orchestra where year_of_founded < 2003
select record_company from orchestra where year_of_founded >= 2003
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
