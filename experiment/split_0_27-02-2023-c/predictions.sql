select birth_year, citizenship from singer
select birth_year, citizenship from singer
select name from singer where birth_year < 1948
select name from singer where birth_year < 1948
select name from singer order by birth_year asc limit 1
select name from singer order by birth_year asc limit 1
select citizenship from singer where birth_year <= 1945
select citizenship from singer where birth_year <= 1945
select count(*) from pets as t1 join has_pet as t2 on t1.petid = t2.petid join student as t3 on t2.stuid = t3.stuid where t3.age > 20 or t3.age > 30
select t2.pettype, t2.weight from has_pet as t1 join pets as t2 on t1.petid = t2.petid order by t2.birthdate desc limit 1
select t2.pettype, t2.weight from has_pet as t1 join pets as t2 on t1.petid = t2.petid order by t2.weight asc limit 1
select t2.petid, t2.weight from has_pet as t1 join pets as t2 on t1.petid = t2.petid where
select t2.petid, t2.weight from student as t1 join pets as t2 on t1.stuid = t1.stuid where t1.age > t1.birthdate
select weight from pets where pettype = 'dog' order by birthdate desc limit 1
select weight from pets where pettype = 'dog' order by weight asc limit 1
select lname from student where t1.stuid in ( select stuid from has_pet as t1 join pets as t2 on t1.petid = t2.petid where t2.pettype = 'cat' and t2.birthdate = 2001
select lname from student where t1.stuid in ( select stuid from has_pet as t1 join pets as t2 on t1.petid = t2.petid where t2.pettype = 'cat' and t2.birthdate = 2001
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
select record_company from orchestra order by year_of_founded
select record_company from orchestra order by year_of_founded
select t3.name from performance as t1 join orchestra as t2 on t1.orchestr
select record_company from orchestra order by share asc
select record_company from orchestra order by year_of_founded desc limit 1
select record_company from orchestra where year_of_founded <= 2003
select record_company from orchestra where year_of_founded >= 2003
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
