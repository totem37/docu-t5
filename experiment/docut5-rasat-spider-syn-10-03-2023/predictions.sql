select count(*) from singer
select count(*) from concert
select t2.name, t2.country, t1.age from singer as t1 join singer as t2 on t1.song_name = t2.song_name order by t1.age desc
select name, country, age from singer order by age desc
select avg(age), min(age), max(age) from singer where country = "France"
select avg(age), min(age), max(age) from singer where country = 'F'
select song_name, song_release_year from singer order by age asc limit 1
select song_name, song_release_year from singer order by age asc limit 1
select distinct country from singer where age > 20
select distinct country from singer where age > 20
select country, count(*) from singer group by country
select country, count(*) from singer group by country
select song_name from singer where age > (select max(age) from singer)
select song_name from singer where age > (select avg(age) from singer)
select location, name from stadium where capacity between 5000 and 10000
select location, name from stadium where capacity between 5000 and 10000
select average, max(capacity) from stadium
select average, max(t2.capacity) from stadium as t1 join
select name, max(t2.capacity), t2.name from stadium as t1 join concert on t1.stadium_id= t2.stadium_id join singer as t3 on t3.singer_id = t3.singer_id
select name, max(t2.capacity), t2.name from stadium as t1 join concert on t1.stadium_id= t2.stadium_id join singer as t3 on t3.singer_id = t3.singer_id
select count(*) from concert where year = 2014 or year = 2015
select count(*) from concert where year = 2014 or year = 2015
select name, count(*) from stadium group by stadium_id
select count(*), location from stadium group by location
select t2.name, t2.capacity from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id where t1.year >= 2014 group by t1.stadium_id order by count(*) desc limit 1
select name, max(t2.capacity) from stadium as t1 join concert on t1.stadium_id = t2.stadium_id join singer as t3 on t3.song_name = t1.song_name
select year from concert group by year order by count(*) desc limit 1
select t1.year from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id group by t1.stadium_id order by count(*) desc limit 1
select name from stadium where stadium_id not in (select stadium_id from concert)
select name from stadium where stadium_id not in (select stadium_id from concert)
select country from singer where age > 40 intersect select country from singer where age < 30
select name from stadium except select t1.name from stadium as t1 join concert as t2 on t1.stadium_id = t2.stadium_id where t2.year = 2014
select name from stadium except select t1.name from stadium as t1 join concert as t2 on t1.stadium_id = t2.stadium_id where t2.year = 2014
select t2.name, t3.theme, count(*) from concert as t1 join singer as t2 on t1.song
select t1.name, t1.song_name, count(*) from singer as t1 join singer_in_concert as t2 on t1.singer_id = t2.singer_id group by t1.song_name
select name, count(*) from singer group by name
select t1.name, count(*) from singer as t1 join singer_in_concert as t2 on t1.singer_id = t2.singer_id group by t1.song_name
select song_name from singer where country = 2014
select t1.name from singer as t1 join concert as t2 on t1.song_name = "Song_id" and t2.year = 2014
select t1.name, t1.country from singer as t1 join singer as t2 on t1.song_name = t2.song_name where t2.song_name like '%hey%'
select distinct song_name, country from singer where song_name like "%hey%"
select t2.name, t2.location from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id where t1.year = 2014 intersect select t2.name, t2.location from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id where t1.year = 2015
select t2.name, t3.name from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id join singer as t3 on t3.singer_id = t3.singer_id where t1.year = 2014 intersect select t2.name, t3.name from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id join singer as t3 on t3.song_release_year = t3.song_name where t1.year = 2015
select count(*), t1.name from stadium as t1 join concert as t2 on t1.stadium_id = t2.stadium_id order by t1.highest
select count(*), t3.name from stadium as t1 join concert as t2 on t1.stadium_id = t2.stadium_id join singer as t3 on t3.singer_id = t3.singer_id where t1.capacity = (select max(capacity) from stadium)
select count(*) from pets where weight > 10
select count(*) from pets where weight > 10
select t1.weight from pets as t1 join has_pet as t2 on t1.petid = t2.petid join student as t3 on t2.stuid = t3.stuid where t3.age = (select min(age) from pets
select count(*) from has_pet as t1 join pets as t2 on t1.petid = t2.petid join student as t3 on t1.stuid = t3.stuid where t3.age = (select min(age) from pets as t4 join has_pet as t5 on t4.petid = t4.petid
select max(weight), max(weight), pettype from pets group by pettype
select max(weight), max(weight), sex, pettype from pets as t1 join has_pet as t2 on t1.petid = t2.petid join student as t3 on t2.stuid = t3.stuid group by t2.stuid
select count(*) from has_pet as t1 join pets as t2 on t1.petid = t2.petid join student as t3 on t1.stuid = t3.stuid where t3.age > 20
select count(*) from has_pet as t1 join pets as t2 on t1.petid = t2.petid join student as t3 on t1.stuid = t3.stuid where t3.age > 20
select count(*) from student where sex = "F"
select count(*) from student where sex = 'F'
select count(distinct pettype) from pets
select count(distinct t2.pettype) from pets as t1 join pets as t2 on t1.petid = t2.petid
select distinct t1.fname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid join pets as t3 on t2.petid = t3.petid where t3.pettype = "cat" or t3.pettype = "dog"
select t1.fname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid join pets as t3 on t2.petid = t3.petid where t3.pettype = "cat" or t3.pettype = "dog"
select t1.fname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid join pets as t3 on t2.petid = t3.petid where t3.pettype = 'kitties' intersect select t1.lname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid where t3.pettype = 'Priet
select t1.fname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid join pets as t3 on t2.petid = t3.petid where t3.pettype = 'cat' intersect select t1.fname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid where t3.pettype = 'cat' and t1.stuid = t2.petid
select major, age from student where stuid not in (select stuid from has_pet)
select distinct t1.stuid, t1.age from student as t1 join has_pet as t2 on t1.stuid = t2.stuid join pets as t3 on t2.petid = t3.petid where t3.pettype not in (select pettype from pets as t4 join has_pet as t5 on t4.petid = t4.petid)
select stuid from student except select t1.stuid from has_pet as t1 join pets as t2 on t1.petid = t2.petid join student as t3 on t1.stuid = t3.stuid where t2.pettype = 'dog'
select stuid from student except select stuid from has_pet as t1 join pets as t2 on t1.stuid = t2.petid where t2.pettype = 'dog'
select t1.fname, t1.age from student as t1 join has_pet as t2 on t1.stuid = t2.stuid join pets as t3 on t2.petid = t3.petid where t3.pettype = 'cat'
select t1.fname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid join pets as t3 on t2.petid = t3.petid where t3.pettype = 'dog' except select t1.fname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid where t3.pettype = 'kittyl
select t1.pettype, t1.weight from pets as t1 join has_pet as t2 on t1.petid = t2.petid join student as t3 on t2.stuid = t3.stuid order by t3.age limit 1
select t2.fname, t3.weight from has_pet as t1 join pets as t2
select t2.petid, t2.weight from student as t1 join pets as t2 on t1.stuid = t2.petid where t1.age > 1
select t2.petid, t2.weight from student as t1 join pets as t2 on t1.stuid = t2.petid where t1.age > 1
select avg(age), max(age), sex from student group by sex
select avg(age), max(age), sex from student group by sex
select avg(weight), pettype from pets group by pettype
select avg(weight), pettype from pets group by pettype
select distinct t1.fname, t1.age from student as t1 join has_pet as t2 on t1.stuid = t2.stuid
select distinct t1.fname, t1.age from student as t1 join has_pet as t2 on t1.stuid = t2.stuid
select t2.petid from has_pet as t1 join pets as t2 on t1.petid = t2.petid join student as t3 on t1.stuid = t3.stuid where t3.lname = 'Smith'
select t2.petid from has_pet as t1 join pets as t2 on t1.petid = t2.petid join student as t3 on t1.stuid = t3.stuid where t3.lname = 'Smith'
select count(*), stuid from has_pet group by stuid
select count(*), t1.stuid from has_pet as t1 join pets as t2 on t1.petid = t2.petid group by t1.stuid
select t1.fname, t1.sex from student as t1 join has_pet as t2 on t1.stuid = t2.stuid group by t1.stuid having count(*) > 1
select t1.fname, t1.sex from student as t1 join has_pet as t2 on t1.stuid = t2.stuid group by t1.stuid having count(*) > 1
select t1.fname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid where t1.age = 3
select t2.lname from has_pet as t1 join student as t2 on t1.stuid = t2.stuid where t2.age = 3
select avg(age) from student where stuid not in (select stuid from has_pet)
select avg(age) from student where stuid not in (select stuid from has_pet)
car_1
select count(*) from continents
select continent, continent, count(*) from continents group by continent
select continent, count(*) from countries group by continent
select count(distinct countryid) from countries
select count(distinct countryid) from countries
select t1.id, count(*) from car_makers as t1 join model_list as t2 on t1.id = t2.modelid group by t1.id
select t1.fullname, t1.id, count(*) from car_makers as t1 join cars_data as t2 on t1.id = t2.con
select t1.model from model_list as t1 join cars_data as t2 on t1.model = t2.modelid
select t1.model from model_list as t1 join cars_data as t2 on t1.model = t2.model
select model from model_list where model < (select avg(model) from car_names)
select t1.model from model_list as t1 join cars_data as t2 on t1.model = t2.model
select t1.maker from car_makers as t1 join cars_data as t2 on t1.id = t2.country
select distinct t1.make from car_names as t1 join countries as t2 on t2.countryid = t2.countryid where t1.model = 1970
select t1.make, "production" from car_names as t1 join countries as t2 on t2.countryid = t2.countryid join cars_data as t3 on t1.model = t3.id order by t3.year limit 1
select t2.maker, t1.year from cars_data as t1 join car_makers as t2 on t1.id = t2.id order by t1.year limit 1
select distinct model from model_list where model > 1980
select distinct model from model_list where model > 1980
select continent, count(*) from continents group by continent
select continent, count(distinct continent) from countries group by continent
select t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.country group by t1.countryname order by count(*) desc limit 1
select countryname from countries group by countryname order by count(*) desc limit 1
select count(*), t1.fullname from car_makers as t1 join model_list as t2 on t1.id = t2.modelid group by t1.maker
select count(*), t1.id, t1.fullname from car_makers as t1 join model_list as t2 on t1.id = t2.modelid group by t1.id
select accelerate from cars_data where model = 'ac' and make = 'amc hornet sportabout (sw
select t1.acc
select count(*) from countries where countryname like "%franchise%"
select count(*) from countries where countryname = "France"
select count(*) from cars_data where countryname = "United States" and year = (select countryid from countries where countryname = "United States"
select count(*) from model_list where countryid in (select t1.countryid from countries as t1 join car_makers as t2 on t1.countryid = t2.countryid
select avg(
select avg(
select min(weight) from cars_data where cylinders = 8
select min(weight) from cars_data where cylinders = 1974
select distinct t1.id, t2.model from car_makers as t1 join
select t1.maker, t1.model from model_list as t1 join countries as t2 on t2.countryid = t2.countryid
select t1.countryname, t1.countryid from countries as t1 join car_makers as t2 on t1.countryid = t2.country
select t2.countryname, t1.id from car_makers as t1 join countries as t2 on t1.country = t2.countryid where t1.maker = "null"
select count(*) from cars_data where horsepower > 150
select count(*) from cars_data where horsepower > 150
select avg(weight), year from cars_data group by year
select avg(weight), year from cars_data group by year
select continent from continents where continent = "europe" group by continent having count(*) >= 3
select countryname from countries where continent = "europe" group by countryname having count(*) >= 3
select max(
select t1.model, t1.maker from model_list as t1 join cars_data as t2 on t1.model = modelid where t2.cylinders = 3
select model from model_list where model not in (select model from car_names)
select t1.model from model_list as t1 join cars_data as t2 on t1.model = modelid order by t2.mpg desc limit 1
select avg(
select avg(
select avg(t2.edispl) from model_list as t1 join cars_data as t2 on t1.modelid = modelid where t1.model = "vovo"
select avg(edispl) from cars_data
select max(acc
select max(acc
select model from car_names group by model order by count(*) desc limit 1
select model from model_list group by model order by count(*) desc limit 1
select count(*) from cars_data where cylinders > 4
select count(*) from cars_data where cylinders > 4
select count(*) from cars_data where year = 1980
select count(*) from car_names where make = 1980
select count(*) from car_makers where fullname = 'American Motor Company'
select count(*) from car_makers as t1 join countries as t2 on t1.country = t2.countryid where t1.fullname = "American Motor Company"
select t1.fullname, t1.id from car_makers as t1 join model_list as t2 on t1.id = t2.modelid group by t1.id having count(*) > 3
select t1.makeid, t1.makeid from car_names as t1 join countries as t2 on t2.countryid = t2.countryid where t1.model!= 3
select distinct t1.model from model_list as t1 join countries as t2 on t2.countryid = t2.countryid join car_makers as t3 on t2.countryid = t3.id where t3.fullname = 'General Motors' union select distinct t1.model from model_list as t1 join cars_data as t2 on t1.model = t2.id where t3.fullname = 'Required up t2.power
select distinct model from model_list where model = 'General Motors' union select distinct model from model_list where model > 3500
select year from cars_data group by year having count(*) < 3000 intersect select year from cars_data group by year having count(*) <= 4000
select distinct year from cars_data where weight < 4000 intersect select distinct year from cars_data where weight > 3000
select horsepower from cars_data order by accelerate desc limit 1
select horsepower from cars_data order by accelerate desc limit 1
select count(*), t1.model from model_list as t1 join cars_data as t2 on t1.modelid = modelid where t1.model = "volvo" group by t1.model order by count(*) asc limit 1
select count(*) from car_names where model = "vovo" group by model order by count(*) asc limit 1
select count(*) from cars_data where accelerate > (select max(acc
select count(*) from cars_data where accelerate > (select max(acc
select count(distinct countryid) from countries group by countryid having count(*) > 2
select count(distinct countryid) from countries group by countryid having count(*) > 2
select count(*) from cars_data where cylinders > 6
select count(*) from cars_data where cylinders > 6
select t1.model from car_names as t1 join cars_data as t2 on t1.model = t2.modelid
select t1.model from car_names as t1 join cars_data as t2 on t1.model = 4
select t2.make, count(*) from cars_data as t1 join car_names as t2 on t2.model = t1.id group by t2.makeid order by count(*) desc limit 3
select t1.id, t1.makeid from car_makers as t2 join cars_data as t3 on t1.id = t3.id
select max(t2.mpg) from cars_data as t1 join cars_data as t2 on t1.id = t2.
select max(mpg) from cars_data where cylinders = 8 union select mpg from cars_data where year < 1980
select model from model_list where model < 3500 except select model from model_list where model = 'Ford Motor Company'
select distinct model from model_list where model = "3500" except select distinct model from model_list where maker = "Ford"
select countryname from countries except select t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.country
select countryname from countries except select t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.country
select t1.id, t1.maker from car_makers as t1 join model_list as t2 on t1.id = t2.modelid group by t1.id having count(*) >= 2 intersect select t1.id, t1.maker from car_makers as t1 join model_list as t2 on t1.id = t2.modelid group by t1.id having count(*) > 3
select t1.id, t1.maker from car_makers as t1 join car_makers as t2 on t1.id = t2.id group by t1.id having count(*) >= 2 intersect select t1.id, t1.maker from car_makers as t1 join car_makers as t2 on t1.id = t2.id group by t1.id having count(*) > 3
select t1.countryid, t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.country where t2.maker = 'fiat' group by t1.countryname having count(*) > 3 union select t1.countryid, t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.country where t2.maker = 'Fiat'
select t1.countryid, t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.country where t2.maker = "fat" group by t1.countryid having count(*) > 3 union select t1.countryid, t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.country where t2.maker = "manufacturer"
select t1.country from airlines as t1 join flights as t2 on t1.uid = t2.airport
select country from airlines where airline = 'JetBlue Airways'
select abbreviation from airlines where airline = "JetBlue Airways"
select abbreviation from airlines where abbreviation = 'JetBlue Airways'
select t1.abbreviation, t2.airportname from airlines as t1 join airports as t2 on t1.uid = t2.airportcode where t1.country = 'USA'
select t1.abbreviation, t1.abbreviation from airlines as t1 join flights as t2 on t1.uid = t2.countryabbrev
select airportcode, airportname from airports where city = 'Anthony'
select airportcode, airportname from airports where city = 'Anthony'
select count(*), t1.airport
select count(*) from
select count(*), t2.airportcode from flights as t1 join airports as t2 on t2.airportcode = t2.airportcode group by t2.airportcode
select count(*), t2.airportcode from flights as t1 join airports as t2 on t2.airportcode = t2.airportcode where t2.airportcode = 'JetBlue Airways' group by t2.airportcode
select count(*) from flights
select count(*) from flights
select 'UAL' from airlines where abbreviation = 'United States'
select 'UAL' from airlines where abbreviation = 'United States'
select count(*) from airlines where country = 'USA'
select count(*) from airlines where country = 'USA'
select city, country from airports where airportname = 'Alon'
select city, country from airports where airportname = 'Alon'
select airportname from airports where airportcode = 'AKO'
select airportname from airports where airportcode = 'AKO'
select 'Abbreviation' from airports where city = 'Aberdeen'
select airportname from airports where city = 'Abernai'
select count(*) from flights where sourceairport = 'APG'
select count(*) from flights where flightno = 'APG'
select count(*) from airports where airportcode = "ATO"
select count(*) from airports where airportcode = "ATO"
select count(*) from airports as t1 join flights as t2 on t1.city = "Aberna"
select count(*) from flights as t1 join airports as t2 on t2.city = t2.city where t2.city = 'Aberge'
select count(*) from flights as t1 join airports as t2 on t2.airportcode = t2.airportcode where t2.city = 'Aberge'
select count(*) from flights as t1 join airports as t2 on t2.airportcode = t2.airportcode where t2.city = 'Aberge'
select count(*) from flights where city = 'Aberdeen' and city = 'Ashley
select count(*) from flights where city = 'Ashley' and airportname = 'Ash
select count(*) from airlines as t1 join flights as t2 on t1.uid = t2.uid
select count(*) from airlines as t1 join flights as t2 on t1.uid = t2.airport
select count(*) from airlines as t1 join flights as t2 on t1.uid = t2.airport
select count(*) from airlines as t1 join flights as t2 on t1.uid = t2.uid
select count(*) from flights where airline = 'United Airlines' and destairport = 'AHD'
select count(*) from flights where flightno = "United Airlines" and destairport = "AHD"
select count(*) from airlines as t1 join flights as t2 on t1.uid = t2.airport
select count(*) from flights join airlines as t1 join airports as t2 on t1.uid = t2.airportcode where t2.city = 'Aberdeen'
select city from airports group by city order by count(*) desc limit 1
select city from airports group by city order by count(*) desc limit 1
select city, count(*), t1.city from airports as t1 join flights as t2 on t1.city = 2 group by t1.city order by count(*) desc limit 1
select city from airports group by city order by count(*) desc limit 1
select flight
select t2.airportcode, t1.airportcode, t1.airportcode, t1.airportcode, t1.airportcode, t1.airportcode, t1.airportcode, t1.airportcode, t1.airportcode, t1.airportcode, t1.airportcode, t1.airportcode, t1.airportcode, t1.airportcode, t1.airportcode, t1.airport
select flight
select flight
select 'airways' from flights group by t1.air
select t1.a
select t1.abbreviation, t1.country from airlines as t1 join flights as t2 on t1.uid = t2.uid
select abbreviation, country from airlines group by abbreviation order by count(*) limit 1
select 'AHD' from flights where flightno = 'Airways' and destairport = 'AHD'
select distinct 'AHD' from flights where sourceairport = "AHD"
select distinct 'Airways' from airports where airportcode = 'AHD'
select distinct 'airways' from airports where airportcode = "AHD"
select 'CVO' intersect select 'Airways' from flights where flightno = 'APG'
select 'APG' intersect select 'CVO' from flights where destairport = "APG"
select 'APG' except select 'Airways' from airports where airportcode = 'CVO'
select 'Airways' from airports where airportcode = 'CVO' except select 'Airways' from flights where sourceairport = 'APG'
select 'airways from flights group by t1.airway having count(*), t1.foot
select 'airways from flights group by t1.airways having count(*), t1.foe
select distinct 'airways' from flights where flightno < 200
select distinct 'airways' from flights where flightno < 200
select flightno from airlines as t1 join flights as t2 on t1.uid = t2.air
select flightno from flights where airline = 'United Airlines'
select flightno from flights where sourceairport = "APG"
select flightno from flights where destairport = "APG"
select flightno from flights where destairport = "APG"
select flightno from flights where sourceairport = "APG"
select flightno from flights as t1 join airports as t2 on t2.airportcode = t2.airportcode where t2.city = "Aberdeen"
select flightno from flights where city = 'Boston' and airportcode = 'Anaid
select flightno from flights as t1 join airports as t2 on t2.airportcode = t2.airportcode where t2.city = "Aberdeen"
select flightno from flights as t1 join airports as t2 on
select flightno from flights as t1 join airports as t2 on t1.airport
select count(*) from flights where city = 'Aberna' or city = 'Abilene
select
select
select count(*) from employee
select count(*) from employee
select name from employee order by age asc
select name from employee order by age asc
select city, count(*) from employee group by city
select city, count(*) from employee group by city
select city from employee group by city having count(*) > 1
select city from employee group by city having count(*) > 1
select district, count(*) from shop group by district
select city, sum(t1.city) from employee as t1 join shop as t2 on t1.employee_id = t2.shop_id group by t1.city
select name, district from shop order by number_products desc limit 1
select t1.name, t2.district from employee as t1 join shop as t2 on t1.employee_id = t2.shop_id group by t1.employee_id order by sum(t2.number_products) desc limit 1
select min(number_products), max(number_products) from shop
select min(number_products), max(number_products) from shop
select t1.name, t1.city, t2.district from employee as t1 join shop as t2 on t1.employee_id = t2.shop_id order by t2.number_products desc
select t2.name, t2.city, t1.district from shop as t1 join employee as t2 on t1.shop_id = t2.shop_id
select t2.name from shop as t1 join shop as t2 on t1.shop_id = t2.shop_id group by t2.shop_id having avg(t1.number_products) > (select avg(number_products) from shop)
select name from shop where number_products > (select avg(number_products) from shop)
select t1.name from employee as t1 join evaluation as t2 on t1.employee_id = t2.employee_id group by t2.employee_id order by count(*) desc limit 1
select t1.name from employee as t1 join evaluation as t2 on t1.employee_id = t2.employee_id group by t1.employee_id order by count(*) desc limit 1
select t1.name from employee as t1 join evaluation as t2 on t1.employee_id = t2.employee_id order by t2.bonus desc limit 1
select t1.name from employee as t1 join evaluation as t2 on t1.employee_id = t2.employee_id order by t2.year_awarded desc limit 1
select name from employee except select t2.name from evaluation as t1 join employee as t2 on t1.employee_id = t2.employee_id
select name from employee where employee_id not in (select employee_id from evaluation)
select t2.name from hiring as t1 join shop as t2 on t1.shop_id = t2.shop_id group by t1.shop_id order by count(*) desc limit 1
select t2.name from hiring as t1 join shop as t2 on t1.shop_id = t2.shop_id group by t1.shop_id order by count(*) desc limit 1
select name from shop where shop_id not in (select shop_id from hiring)
select name from employee except select t3.name from employee as t1 join hiring as t2 on t1.employee_id = t2.employee_id join shop as t3 on t3.shop_id = t2.shop_id where t1.name = "No"
select t3.name, count(*) from hiring as t1 join employee as t2 on t1.employee_id = t2.employee_id join shop as t3 on t1.shop_id = t3.shop_id group by t3.name
select count(*), t3.name from hiring as t1 join employee as t2 on t1.employee_id = t2.employee_id join shop as t3 on t3.shop_id = t1.shop_id
select Sum(t2.bonus), t1.name from employee as t1 join evaluation as t2 on t1.employee_id = t2.employee_id join evaluation as t3 on t2.employee_id = t3.employee_id where t3.year_awarded = '2003-04-19 15:06:20' and t2.year_awarded = 'Employee_id'
select sum(t1.bonus) from evaluation as t1 join employee as t2 on t1.employee_id = t2.employee_id
select * from hiring
select * from hiring
select district from shop where number_products < 3000 intersect select district from shop where number_products > 10000
select district from shop where number_products < 3000 intersect select district from shop where number_products > 10000
select count(distinct city)
select count(distinct city) from shop 
select count(*) from documents
select count(*) from documents
select t2.document_id, t2.document_name, t2.document_description from ref_template_types as t1 join documents as t2 on t1.template_type_code = t2.template_type_code
select document_id, document_name, document_description from documents
select document_name, document_id from documents where document_description like '%w%'
select document_name, template_id from documents where document_name like '%w%'
select t1.document_id, t3.
select document_id,
select count (distinct document_id) from documents
select count(distinct
select count(*) from templates where template_type_code = 'PPT'
select count(*) from templates where template_type_code = "PPT"
select
select count(*) from documents as t1 join templates as t2 on (select t1.document_id from documents as t1 join ref_template_types as t3 on t2.template_type_code = t3.template_type_code where t1.document_name = "Paper" group by t1.
select 'Facility', 'City' from documents group by t
select 'Result', 'Layout' from documents group by document_id order by count(*) desc limit 1
cre_Doc_Template_Mgt
select template_id from templates where template_type_code = "Paper" group by template_id having count(*) > 1
select template_id from templates except select template_id from documents
select template_id from templates except select template_id from documents
select count(*) from templates
select count(*) from templates
select
cre_Doc_Template_Mgt
select distinct 'Latin_type_description' from ref_template_types
select distinct template_type_code from templates
select template_id from templates where template_type_code = "PP" or template_type_code = "PPT"
select template_id from templates where template_type_code = 'PP' or template_type_code = 'PPT'
select count(*) from templates where template_type_code = "CV"
select count(*) from templates where template_type_code = "CV"
select t2.version_number, 'Layer_type_code' from templates as t1 join ref_template_types as t2
select t1.version_number, 'Latin_type_description' from templates as t1 join ref_template_types as t2 on t2.template_type_code = t2.template_type_code where t1.version_number > 5
select'model_type_code', count(*) from templates group by template_type_code
cre_Doc_Template_Mgt
select template_type_code from ref_template_types group by template_type_code order by count(*) desc limit 1
select 'Frame_type_description' from ref_template_types group by t2.
select template_type_code from templates group by template_type_code having count(*) < 3
cre_Doc_Template_Mgt
select avg(version_number), template_type_code from templates group by template_type_code order by count(*) asc limit 1
select t1.date_effective_to, count(*) from templates as t1 join ref_template_types as t2 on t2.template_type_code = t2.template_type_code group by t1.template_type_code order by count(*) asc limit 1
select 'Data base'
select 'Datenbase' from documents where document_name = "Data base"
select t1.document_name from documents as t1 join templates as t2 on t1.
select t1.document_name from documents as t1 join templates as t2 on t1.document_id = t2.document_id
select 'Latin_type_name', count(*) from documents group by t2.
cre_Doc_Template_Mgt
select 'Latin_type_code' from ref_template_types join templates as t3 on 'Film_type_code = t3.model_type_code group by t1.model_type_code
cre_Doc_Template_Mgt
select template_type_code from templates except select template_type_code from templates
select template_type_description from ref_template_types where template_type_code not in (select template_type_code from templates)
select 'Latin_type_name', 'Descriptions' from ref_template_types
select
select template_type_description from ref_template_types where template_type_code = "AD"
select
cre_Doc_Template_Mgt
select 'Book' from ref_template_types where template_type_description = "Red"
select count(distinct template_type_description) from ref_template_types
select distinct template_type_description from paragraphs
select 'Contentation' from ref_template_types where template_type_description like "%presentation%"
select 'Presentation' from ref_template_types as t1 join documents as t2 on t1.template_type_code = t2.template_type_code
select count(*) from paragraphs
select count(*) from paragraphs
select count(*) from documents as t1 join paragraphs as t2 on t1.document_id = t2.document_id where t1.document_name = 'Summer Show'
select count(*) from paragraphs as t1 join documents as t2 on t1.document_id = t2.document_id where t2.document_name = 'Summer Show'
select t1.other_details from paragraphs as t1 join paragraphs as t2 on t1.paragraph_id = t2.paragraph_id where t1.paragraph_text = 'Korea'
select t1.other_details from paragraphs as t1 join paragraphs as t2 on t1.paragraph_id = t2.paragraph_id where t1.paragraph_text like '%korea%'
select t1.paragraph_id, t1.paragraph_text from paragraphs as t1 join documents as t2 on t1.paragraph_id = t2.document_id where t2.document_name = 'Welcome to NY'
select t2.paragraph_id, t2.paragraph_text from paragraphs as t1 join documents
select distinct paragraph_text from paragraphs as t1 join documents as t2 on t1.document_id = t2.document_id where t2.document_name = "Customer reviews"
select t1.paragraph_text from paragraphs as t1 join documents as t2 on t1.document_id = t2.document_id where t2.document_name = 'Customer reviews'
select t1.document_id, count(*) from documents as t1 join paragraphs as t2 on t1.document_id = t2.document_id group by t1.document_id order by t1.document_id
select t1.document_id, count(*) from documents as t1 join paragraphs as t2 on t1.document_id = t2.document_id group by t1.document_id order by t1.document_id
select t1.document_id, t1.document_name, count(*) from documents as t1 join paragraphs as t2 on t1.document_id = t2.document_id group by t1.document_id
select t1.document_id, t1.document_name, count(*) from documents as t1 join paragraphs as t2 on t1.document_id = t2.document_id group by t1.document_id
select document_id from paragraphs group by document_id having count(*) >= 2
select document_id from paragraphs group by document_id having count(*) >= 2
select t1.document_id, t1.document_name from documents as t1 join paragraphs as t2 on t1.document_id = t2.document_id group by t1.document_id order by count(*) desc limit 1
select t1.document_id, t1.document_name from documents as t1 join paragraphs as t2 on t1.document_id = t2.document_id group by t1.document_id order by count(*) desc limit 1
select document_id from paragraphs group by document_id order by count(*) asc limit 1
select t1.document_id from documents as t1 join paragraphs as t2 on t1.document_id = t2.document_id group by t1.document_id order by count(*) asc limit 1
select document_id from paragraphs group by document_id having count(*) between 1 and 2
select document_id from paragraphs group by document_id having count(*) between 1 and 2
select document_id from paragraphs where paragraph_text = 'Brazil' intersect select document_id from paragraphs where paragraph_text = 'Ireland'
select document_id from paragraphs where paragraph_text like '%brazil%' intersect select document_id from paragraphs where paragraph_text = 'Ireland%'
select count(*) from course
select count(*) from course
select name from teacher order by age asc
select name from teacher order by age asc
select t2.age, t2.hometown from course_arrange as t1 join teacher as t2 on t1.teacher_id = t2.teacher_id join course as t3 on t1.course_id = t3.course_id where t2.hometown = "Edward"
select t2.age, t2.hometown from course_arrange as t1 join teacher as t2 on t1.teacher_id = t2.teacher_id join course as t3 on t1.course_id = t3.course_id
select distinct name from teacher where hometown!= "Little Lever Urban District"
select distinct name from teacher where hometown!= "Little lever Urban District"
select t2.name from course_arrange as t1 join teacher as t2 on t1.teacher_id = t2.teacher_id where t2.age = 32 or t2.age = 33
select name from teacher where age = 32 or age = 33
select t2.hometown from course_arrange as t1 join teacher as t2 on t1.teacher_id = t2.teacher_id order by t2.age limit 1
select t2.hometown from course_arrange as t1 join teacher as t2 on t1.teacher_id = t2.teacher_id order by t2.age limit 1
select t2.hometown, count(*) from course_arrange as t1 join teacher as t2 on t1.teacher_id = t2.teacher_id group by t2.hometown
select hometown, count(*) from teacher group by hometown
select hometown from teacher group by hometown order by count(*) desc limit 1
select t2.hometown from course_arrange as t1 join teacher as t2 on t1.teacher_id = t2.teacher_id join course as t3 on t1.course_id = t3.course_id where t2.hometown = "commmon birthplace" group by t2.hometown order by count(*) desc limit 1
select hometown from teacher group by hometown having count(*) >= 2
select t2.hometown from course_arrange as t1 join teacher as t2 on t1.teacher_id = t2.teacher_id group by t2.hometown having count(*) >= 2
select t2.name, t3.name from course_arrange as t1 join teacher as t2 on t1.teacher_id = t2.teacher_id join teacher as t3 on t1.teacher_id = t3.teacher_id
select t2.name, t3.name from course_arrange as t1 join teacher as t2 on t1.teacher_id = t2.teacher_id join teacher as t3 on t1.teacher_id = t3.teacher_id
select t2.name, t2.name from course_arrange as t1 join teacher as t2 on t1.teacher_id = t2.teacher_id join course as t3 on t1.course_id = t3.course_id order by t2.name asc
select t2.name, t2.name from course_arrange as t1 join teacher as t2 on t1.teacher_id = t2.teacher_id order by t2.name asc
select t2.name from course_arrange as t1 join teacher as t2 on t1.teacher_id = t2.teacher_id join course as t3 on t1.course_id = t3.course_id where t3.course = 'Math'
select t2.name from course_arrange as t1 join teacher as t2 on t1.teacher_id = t2.teacher_id join course as t3 on t1.course_id = t3.course_id where t3.course = 'Math'
select t2.name, count(*) from course_arrange as t1 join teacher as t2 on t1.teacher_id = t2.teacher_id group by t2.name
select t2.name, count(*) from course_arrange as t1 join teacher as t2 on t1.teacher_id = t2.teacher_id group by t2.name
select t2.name from course_arrange as t1 join teacher as t2 on t1.teacher_id = t2.teacher_id group by t2.name having count(*) >= 2
select t2.name from course_arrange as t1 join teacher as t2 on t1.teacher_id = t2.teacher_id group by t2.name having count(*) >= 2
select name from teacher where teacher_id not in (select teacher_id from course_arrange)
select name from teacher where teacher_id not in (select teacher_id from course_arrange)
select count(*) from visitor where age < 30
select name from visitor where level_of_membership > 4 order by level_of_membership desc
select avg(age) from visitor where level_of_membership!= 4
select name, level_of_membership from visitor where level_of_membership > 4 order by age desc
select t1.museum_id, t1.name from museum as t1 join visit as t2 on t1.museum_id = t2.museum_id group by t1.museum_id order by count(*) desc limit 1
select avg(num_of_staff) from museum where open_year < 2009
select open_year, num_of_staff from museum where name = "Pala Museum"
select name from museum where num_of_staff > (select min(num_of_staff) from museum where open_year > 2010)
select t1.museum_id, t1.name, t1.age from visitor as t2 join visit as t3 on t1.id = t3.visitor_id
select t1.id, t1.name, t1.level_of_membership from visitor as t1 join visit as t2 on t1.id = t2.
select t1.museum_id, t1.name from museum as t1 join visit as t2 on t1.museum_id = t2.museum_id group by t1.museum_id order by count(*) desc limit 1
select name from museum where museum_id not in (select museum_id from visit)
select t1.name, t1.age from visitor as t1 join visit as t2 on t1.id = t2.visitor_id group by t2.visitor_id order by sum(t2.num_of_ticket) desc limit 1
select avg(num_of_ticket), max(num_of_ticket) from visit
select sum(t1.total_spent) from visit as t1 join visit as t2 on t1.museum_id = t2.museum_id join visitor as t3 on t3.id = t3.id where t3.level_of_membership = 1
select t1.name from visitor as t1 join visit as t2 on t1.id = t2.visitor_id join museum as t3 on t2.museum_id = t3.museum_id where t3.open_year < 2009 intersect select t2.name from visit as t1 join museum as t2 on t1.museum_id = t2.museum_id join visit as t3 on t1.museum_id = t3.museum_id where t2.open_year > 2011
select count(*) from visitor where id not in (select t1.museum_id from museum as t1 join visit as t2 on t1.museum_id = t2.museum_id where t1.open_year > 2010)
select count(*) from museum where open_year > 2013 or open_year < 2008
select count(*) from rankings
select count(*) from players
select count(*) from matches
select count(*) from matches
select t1.first_name, t1.birth_date from players as t1 join rankings as t2 on t1.player_id = t2.player_id where t1.country_code = 'USA'
select t1.first_name, t1.birth_date from players as t1 join rankings as t2 on t1.player_id = t2.player_id where t1.country_code = 'USA'
select avg(t1.loser_age), avg(t1.winner_age) from matches as t1 join rankings as t2 on t1.winner_id = t2.winner_
select avg(t1.loser_age), avg(t1.winner_age) from matches as t1 join matches as t2 on t1.loser_id = t2.loser_id group by t1.loser_age
select avg(t2.rank
select avg(t2.rank
select max(t2.rank
select best_of from matches
select count(distinct
select count(distinct country_code) from players
select count(distinct t1.first_name) from players as t1 join matches as t2 on t1.player_id =
select count(distinct loser_name) from matches
select tourney_name from matches group by tourney_name having count(*) > 10
select t1.first_name from players as t1 join rankings as t2 on t1.player_id = t2.player_id group by t2.player_id having count(*) > 10
select winner_name from matches where year = 2013 intersect select winner_name from matches where year = 2016
select winner_name from matches where year = 2013 intersect select winner_name from matches where year = 2016
select count(*) from matches where year = 2013 or year = 2016
select count(*) from matches where year = 2013 or year = 2016
select t1.country_code, t1.first_name from players as t1 join matches as t2 on t1.player_id = t2.winner_id where t2.winner_name = "Australian Open" intersect select t1.country_code, t1.first_name from players as t1 join matches as t2 on t1.player_id = t2.winner_id where t2.winner_name = "WTA Championships"
select t1.first_name, t1.country_code from players as t1 join matches as t2 on t1.player_id = t2.winner_id where t2.winner_name = "Australian Open" intersect select t1.first_name, t1.country_code from players as t1 join rankings as t2 on t1.player_id = t2.winner_id
select t1.first_name, "state_code" from players as t1 join rankings as t2 on t1.player_id = t2.player_id where t1.birth_date = (select max(birth_date) from players)
select t1.first_name, t1.country_code from players as t1 join rankings as t2 on t1.player_id = t2.player_id where t1.birth_date = (select max(birth_date) from players)
select t1.first_name, t1.last_name from players as t1 join rankings as t2 on t1.player_id = t2.player_id order by t1.birth_date
select first_name, last_name from players order by birth_date
select t1.first_name, t1.last_name from players as t1 join rankings as t2 on t1.player_id = t2.player_id join players as t3 on t2.player_id = t3.player_id where t1.first_name = 'R' and t3.birth_date = 'L' order by t3.birth_date
select t1.first_name, t1.last_name from players as t1 join rankings as t2 on t1.player_id = t2.player_id where t1.first_name = 'R' order by t1.birth_date
select t1.first_name, t1.country_code from players as t1 join rankings as t2 on t1.player_id = t2.player_id group by t2.player_id order by count(*) desc limit 1
select t1.first_name, t1.country_code from players as t1 join rankings as t2 on t1.player_id = t2.player_id group by t2.player_id order by count(*) desc limit 1
select year from matches group by year order by count(*) desc limit 1
select year from matches group by year order by count(*) desc limit 1
select t1.
select t1.winner_name, count(*) from matches as t1 join rankings as t2 on t1.winner_id = t2.winner_
select t1.winner_name, t3.winner_rank_points from matches as t1 join rankings as t2 on t1.winner_id = t2.winner_id
select t1.winner_name, t1.winner_rank_points from matches as t1 join rankings as t2 on t1.winner_id = t2.winner_id
select loser_name, winner_rank from matches order by minutes desc limit 1
select t1.winner_name, t1.loser_name from matches as t1 join matches as t2 on t1.loser_id = t2.loser_id order by t2.year desc limit 1
select avg(ranking_points), t1.first_name from players as t1 join rankings as t2 on t1.player_id = t2.player_id group by t1.player_id
select t1.first_name, avg(t2.ranking_points) from players as t1 join rankings as t2 on t1.player_id = t2.player_id group by t2.player_id
select ranking_points, count(*) from rankings group by ranking_points
select t1.first_name, sum(t2.ranking_points) from players as t1 join rankings as t2 on t1.player_id = t2.player_id group by t2.player_id
select country_code, count(*) from players group by country_code
select country_code, count(*) from players group by country_code
select t1.country_code from players as t1 join rankings as t2 on t1.player_id = t2.player_id group by t1.country_code order by count(*) desc limit 1
select 'National abbreviation'
select t1.country_code from players as t1 join rankings as t2 on t1.player_id = t2.player_id group by t1.country_code having count(*) > 50
select t1.country_code from players as t1 join rankings as t2 on t1.player_id = t2.player_id where t1.country_code > 50
select ranking_date, count(*) from rankings group by ranking_date
select ranking_date, count(*) from rankings group by ranking_date
select year, count(*) from matches group by year
select year, count(*) from matches group by year
select t1.first_name, t1.rank
select t1.first_name, count(*) from players as t1 join matches as t2 on t1.player_id = t2.winner_id where t1.birth_date = '2003-03-15 00:33:18'
select count(distinct winner_rank) from matches where tourney_name = 'WTA Championships' intersect select winner_rank from matches where winner_id in (select winner_id from matches where tourney_name = 'WTA Championships')
select count(distinct winner_rank) from matches where tourney_name = 'WTA Championships'
select t1.first_name, t3.country_code, t1.birth_date from players as t1 join rankings as t2 on t1.player_id = t2.winner_id
select t1.first_name, "nation_abbreviation", t1.birth_date from players as t1 join rankings as t2 on t1.player_id = t2.winner_id
select hand, count(*) from players group by hand
select hand, count(*) from players group by hand
select count (*) from ship where disposition_of_ship = 'Captured'
select name, tonnage from ship order by tonnage desc
select name, date, result from battle
select max(t1.killed), min(t2.injured), t2.injured
select avg(injured), t1.name from battle as t1 join death as t2 on t1.id = t2.caused_by_ship_id group by t1.id
select killed, injured from death as t1 join ship as t2 on t1.caused_by_ship_id = t2.id where t2.tonnage = 't'
select name, result from battle where bulgarian_commander!= 'Boril'
select distinct t1.id, t1.name from battle as t1 join ship as t2 on t1.id = t2.lost_in_battle where t2.ship_type = 'Brig'
select t1.id, t1.name from battle as t1 join death as t2 on t1.id = t2.killed group by t1.id having count(*) > 10
select t1.id, t1.name from ship as t1 join death as t2 on t1.id = t2.caused_by_ship_id group by t1.id order by sum(t2.injured) desc limit 1
select distinct name from battle where bulgarian_commander = 'Kaloyan' and latin_commander = 'Baldwin I'
select count(distinct result) from battle
select count(*) from battle where id not in ( select lost_in_battle from ship where tonnage = 225 );
select t1.name, t1.date from battle as t1 join ship as t2 on t1.id = t2.lost_in_battle where t2.name = 'Lettice' and t2.name = 'HMS Atalanta'
select name, result, bulgarian_commander from battle except select t1.result from battle as t1 join ship as t2 on t1.id = t2.lost_in_battle where t2.location = 'English Channel'
select death
select t1.line_1, t2.line_2 from addresses as t1 join addresses as t2 on t1.address_id = t2.address_id where t1.line_1 = 1 and t1.line_2 = 2
select t1.line_1, t1.line_2 from addresses as t1 join addresses as t2 on t1.address_id = t2.address_id
select count(*) from courses
select count(*) from courses
select course_description from courses where course_name = "mathroom"
select course_description from courses where course_name ='math'
select zip_postcode from addresses where city = "Port Chelsea"
select zip_postcode from addresses where city = "Port Chelsea"
select degree_program_id, t2.department_name from degree_programs as t1 join departments as t2 on t1.department_id = t2.department_id group by t2.department_name order by count(*) desc limit 1
select t1.department_name, t2.degree_program_id from departments as t1 join degree_programs as t2 on t1.department_id = t2.department_id group by t2.department_id order by count(*) desc limit 1
select count(distinct department_id) from degree_programs
select count(distinct department_id) from degree_programs
select count(distinct degree_summary_name) from degree_programs
select count(distinct degree_summary_name) from degree_programs
select degree_summary_name from degree_programs where degree_program_id in ( select degree_program_id from degree_programs )
select count(*) from degree_programs as t1 join departments as t2 on t1.department_id = t2.department_id
select section_name, section_description from sections
select section_name, section_description from sections
select t1.course_name, t1.course_id from courses as t1 join sections as t2 on t1.course_id = t2.course_id group by t1.course_id having count(*) <= 2
select t1.course_name, t1.course_id from courses as t1 join sections as t2 on t1.course_id = t2.course_id group by t1.course_id having count(*) < 2
select section_name from sections order by section_name desc
select section_name from sections order by section_name desc
select t1.first_name, t1.student_id from students as t1 join student_enrolment as t2 on t1.student_id = t2.student_id group by t1.student_id order by count(*) desc limit 1
select t2.semester_name, t1.student_id from student_enrolment as t1 join semesters as t2 on t1.semester_id = t2.semester_id group by t1.semester_id order by count(*) desc limit 1
select t1.other_details from addresses as t2 join departments as t3 on t1.department_id = t3.department_id
select t2.department_name, t2.other_details from addresses as t1 join departments as t2 on t2.department_id = t2.department_id where t2.other_details like '%computer%'
select t1.first_name, t1.middle_name, t1.student_id from students as t1 join student_enrolment_courses as t2 on t1.student_id = t2.student_enrolment_id group by t1.student_id having count(*) = 2
select t1.first_name, t1.middle_name, t1.f
select t1.first_name, t1.middle_name, t1.f
select t1.first_name, t1.middle_name,
select t2.degree_program_id from student_enrolment as t1 join student_enrolment as t2 on t1.student_enrolment_id = t2.student_enrolment_id group by t2.degree_program_id order by count(*) desc limit 1
select t2.degree_summary_name from student_enrolment as t1 join degree_programs as t2 on t1.degree_program_id = t2.degree_program_id group by t2.degree_summary_name order by count(*) desc limit 1
select t1.degree_program_id, t1.student_enrolment_id from student_enrolment as t1 join student_enrolment_courses as t2 on t1.student_enrolment_id = t2.student_enrolment_id group by t1.student_id order by count(*) desc limit 1
select t1.degree_program_id, t1.degree_summary_name from degree_programs as t1 join student_enrolment as t2 on t1.degree_program_id = t2.degree_program_id group by t1.degree_program_id order by count(*) desc limit 1
select t1.student_id, t1.first_name, t1.middle_name, t1.student_id from students as t1 join student_enrolment as t2 on t1.student_id = t2.student_id group by t1.student_id order by count(*) desc limit 1
select t1.first_name, t1.middle_name, count(*), t1.student_id from students as t1 join student_enrolment as t2 on t1.student_id = t2.student_id group by t1.student_id order by count(*) desc limit 1
select distinct
select t1.first_name from students as t1 join student_enrolment as t2 on t1.student_id = t2.student_id
select t1.course_name from courses as t1 join student_enrolment_courses as t2 on t1.course_id = t2.course_id
select distinct t1.course_name from courses as t1 join student_enrolment_courses as t2 on t1.course_id = t2.course_id
select t1.course_name from courses as t1 join student_enrolment_courses as t2 on t1.course_id = t2.course_id group by t1.course_name order by count(*) desc limit 1
select t1.course_name from courses as t1 join student_enrolment_courses as t2 on t1.course_id = t2.course_id group by t1.course_name order by count(*) desc limit 1
select t1.first_name, t1.last_name from students as t1 join student_enrolment as t2 on t1.student_id = t2.student_id join addresses as t3 on t
select t2.first_name, t2.last_name from student_enrolment as t1 join students as t2 on t1.student_id = t2.student_id join courses as t3 on t1.student_id = t3.student_id
select t2.date_first_registered, t2.student_id from student_enrolment as t1 join students as t2 on t1.student_id = t2.student_id group by t2.student_id having count(*) >= 2
select t2.date_first_registered, t2.student_id from student_enrolment as t1 join students as t2 on t1.student_id = t2.student_id group by t2.student_id having count(*) >= 2
select cell_mobile_number from students where first_name = 'Timmothy' and last_name ='Ward'
select cell_mobile_number from students where first_name = "Ttimber Ward"
select avg(first_name), avg(middle_name), avg (last_name) from students as t1 join student_enrolment as t2 on t1.student_id = t2.student_id order by t2.student_enrolment_id limit 1
select t1.first_name, t1.middle_name, t1.f
select t2.first_name, t2.middle_name, t2.f
select t2.first_name, t2.middle_name
select distinct
select t1.first_name, t1.last_name from students as t1 join student_enrolment as t2 on t1.student_id = t2.student_id group by t1.student_id having count(*) >= 2
select avg(student_id), t1.line_3 from addresses as t1 join student_enrolment as t2 on t1.address_id = t2.student_id group by t1.address_id order by count(*) desc limit 1
select t1.address_id, t1.line_1, t1.line_2 from addresses as t1 join students as t2 on t1.address_id = t2.address_id
select avg(date_first_registered) from students
select avg(date_
select date_first_registered, date_first_registered from students order by date_first_registered asc limit 1
select transcript_date, other_details from transcripts order by transcript_date asc limit 1
select count(*) from student_enrolment
select count(*) from student_enrolment
select last_name, date_left from student_enrolment as t1 join students as t2 on t1.student_id = t2.student_id
select max(date_first_registered) from student_enrolment as t1 join students as t2 on t1.student_id = t2.student_id
select t1.student_enrolment_id, count(*) from student_enrolment as t1 join students as t2 on t1.student_id = t2.student_id group by t1.student_id order by count(*) desc limit 1
select max(t1.student_enrolment_id), t2.student_id from student_enrolment as t1 join students as t2 on t1.student_id = t2.student_id group by t2.student_id
select date_left, date_left from students group by date_left order by count(*) asc limit 1
select date_first_registered, student_id from students group by student_id order by count(*) asc limit 1
select t2.course_name from student_enrolment as t1 join courses as t2 on t2.course_id = t2.course_id join degree_programs as t3 on t1.degree_program_id = t3.degree_program_id where t3.degree_summary_name = 'Math' intersect select t2.course_name from student_enrolment as t1 join student_enrolment_course
select student_id from student_enrolment where student_enrolment_id = 'MA' intersect select student_id from student_enrolment where student_enrolment_id = 'Boston'
select count(distinct t1.address_id) from addresses as t1 join students as t2 on t1.address_id = t2.current_address_id
select distinct t1.city from addresses as t1 join student_enrolment as t2 on t1.address_id = t2.student_id
select student_id from student_enrolment order by student_id desc
select other_student_details from students order by other_student_details desc
select section_name from sections
select section_description from sections where section_name = "h"
select t1.first_name, t1.last_name from students as t1 join addresses as t2 on t1.student_id = t2.address_id where t2.country = "Hait" or t1.cell_mobile_number = "09700166582"
select t2.first_name, t2.last_name from addresses as t1 join students as t2 on t1.address_id = t2.student_id where t1.country = "Hait Haiti" or t2.student_id = "09700166582"
select title from cartoon order by title
select title from cartoon order by title
select title from cartoon where directed_by = "Ben Jones"
select title from cartoon where directed_by = "Benjamin Jones"
select count(*) from cartoon where written_by = "Joseph Kuhr"
select count(*) from cartoon where written_by = "Joseph Kuhr"
select t1.title, t2.directed_by from cartoon as t1 join cartoon as t2 on t1.id = t2.directed_by order by t1.directed_by
select t2.title, t2.directed_by from cartoon as t1 join cartoon as t2 on t1.directed_by = t2.directed_by order by "releasedate"
select title from cartoon where directed_by = "Ben Jones" or directed_by = "Brandon Vietti"
select title from cartoon where directed_by = "Ben Jones" or directed_by = "Ben Jones"
select country, count(*) from tv_channel group by country order by count(*) desc limit 1
select country, count(*) from tv_channel group by country order by count(*) desc limit 1
select count(distinct series_name), content from tv_channel
select count(distinct t1.series_name), t1.content from tv_channel as t1 join
select content from tv_channel where series_name = "Sky Radio"
select content from tv_channel where series_name = 'City Radio'
select package_option from tv_channel where series_name = "Sky Radio"
select package_option from tv_channel where series_name = 'City Radio'
select count(*) from tv_channel where language = 'English'
select count(*) from tv_channel where language = "English"
select language, count(*) from tv_channel group by language order by count(*) limit 1
select language, count(*) from tv_channel group by language order by count(*) limit 1
select language, count(*) from tv_channel group by language
select count(*), language from tv_channel group by language
select t1.series_name from tv_channel as t1 join cartoon as t2 on t1.id = t2.id where t2.title = "The Rise of the blue betle!"
select t1.series_name from tv_channel as t1 join cartoon as t2 on t1.id = t2.id where t2.title = "The Rise of the blue Beetle"
select t1.title from cartoon as t1 join tv_channel as t2 on t1.id = t2.id where t2.series_name = "Sky Radio"
select t1.title from cartoon as t1 join tv_channel as t2 on t1.id = t2.id where t2.series_name = "Sky Radio"
select episode from tv_series order by rating
select episode from tv_series order by rating
select episode, rating from tv_series order by rating desc limit 3
select episode, rating from tv_series order by rating desc limit 3
select min(share), max(share) from tv_series
select max(share), min(share) from tv_series
select air_date from tv_series where episode = "A love of a Lifetime"
select 'A love of a Lifetime' from tv_series where episode = "A love_of a Lifetime"
select weekly_rank from tv_series where episode = "A love of a Lifetime"
select weekly_rank from tv_series where episode = "A love of a Lifetime"
select 'Tv_channel' from tv_series where episode = "A love of a Lifetime"
select 'Tv_series' from tv_series where episode = "A love of a Lifetime"
select t1.Episode from tv_series as t1 join
select t2.episode from tv_series as t1 join
select directed_by, count(*) from cartoon group by directed_by
select directed_by, count(*) from cartoon group by directed_by
select t1.production_code, t1.channel from cartoon as t1 join t
select t2.directed_by, t1.channel from cartoon as t1 join t
select package_option, series_name from tv_channel where t2.channel = t1.hight_definition_tv
select package_option, series_name from tv_channel where t1.series_name = 'Facility' and t1.id = t1.id
select t1.country from tv_channel as t1 join cartoon as t2 on t1.id = t2.channel where t2.written_by = "Tony Casey"
select t1.country from tv_channel as t1 join cartoon as t2 on t1.id = t2.id where t2.written_by = "Tony Casey"
select country from tv_channel except select t1.country from tv_channel as t1 join cartoon as t2 on t1.id = t2.channel where t2.written_by = "Tony Casey"
select country from
select t1.series_name, 'State' from tv_channel as t1 join cartoon as t2 on t1.id = t2.directed_by where t2.directed_by = "Bern Jones" intersect select t1.series_name, avg(t1.series_name) from tv_channel as t1 join cartoon as t2 on t1.id = t2.directed_by where t2.directed_by = "Michael Chang"
select t1.series_name, t1.country from tv_channel as t1 join cartoon as t2 on t1.id = t2.id where t2.directed_by = "Ben Jones" intersect select t1.series_name, t1.country from tv_channel as t1 join cartoon as t2 on t1.id = t2.directed_by where t2.directed_by = "Michael Chang"
select pixel_aspect_ratio_par, country from tv_channel where language!= 'English'
select pixel_aspect_ratio_par, country from tv_channel where language!= 'English'
select id from tv_channel where country = "USA" group by id having count(*) > 2
select id from tv_channel group by id having count(*) > 2
select id from tv_channel except select t1.id from tv_channel as t1 join cartoon as t2 on t1.id = t2.channel where t2.directed_by = "Benjamin Jones"
select id from TV_channel except select t1.id from tv_channel as t1 join cartoon as t2 on t1.id = t2.channel where t2.directed_by = "Benjamin Jones"
select package_option from tv_channel where id not in (select t1.id from tv_channel as t1 join cartoon as t2 on t1.id = t2.channel where t2.directed_by = "Benjamin Jones")
select package_option from tv_channel where id not in (select t1.id from tv_channel as t1 join cartoon as t2 on t1.id = t2.channel where t2.directed_by = "Benjamin Jones")
select count(*) from poker_player
select count(*) from poker_player
select earnings from poker_player order by earnings desc
select earnings from poker_player order by earnings desc
select final_table_made, best_finish from poker_player
select final_table_made, max(t1.best_finish) from poker_player as t1 join people as t2 on t1.people_id = t2.people_id where t1.final_table_made = (select max(t1.final_table_made) from poker_player)
select avg(e
select avg(e
select money_rank from poker_player order by earnings desc limit 1
select money_rank from poker_player order by earnings desc limit 1
select max(t1.final_table_made) from poker_player as t1 join people as t2 on t1.people_id = t2.people_id where t2.e
select max(t1.final_table_made) from poker_player as t1 join people as t2 on t1.people_id = t2.people_id where t2.e
select t2.name from poker_player as t1 join people as t2 on t1.people_id = t2.people_id where t2.name = "car gamer"
select t2.name from poker_player as t1 join people as t2 on t1.people_id = t2.people_id
select t2.name from poker_player as t1 join people as t2 on t1.people_id = t2.people_id
select t2.name from poker_player as t1 join people as t2 on t1.people_id = t2.people_id where t1.e
select t2.name from poker_player as t1 join people as t2 on t1.people_id = t2.people_id order by t1.final_table_made asc
select t2.name from poker_player as t1 join people as t2 on t1.people_id = t2.people_id order by t1.final_table_made asc
select t2.birth_date from poker_player as t1 join people as t2 on t1.people_id = t2.people_id order by t1.e
select t1.birth_date from people as t1 join poker_player as t2 on t1.people_id = t2.people_id order by t2.e
select t1.money_rank from poker_player as t1 join people as t2 on t1.people_id = t2.people_id order by t2.height desc limit 1
select t1.money_rank from poker_player as t1 join people as t2 on t1.people_id = t2.people_id order by t2.height desc limit 1
select avg(t1.e
select avg(t1.e
select t2.name from poker_player as t1 join people as t2 on t1.people_id = t2.people_id join people as t3 on t1.people_id = t3.people_id order by t3.e
select t2.name from poker_player as t1 join people as t2 on t1.people_id = t2.people_id
select nationality, count(*) from people group by nationality
select nationality, count(*) from people group by nationality
select nationality from people group by nationality order by count(*) desc limit 1
select nationality from people group by nationality order by count(*) desc limit 1
select nationality from people group by nationality having count(*) >= 2
select nationality from people group by nationality having count(*) >= 2
select name, birth_date from people order by name asc
select name, birth_date from people order by name
select name from people where nationality!= "Russia"
select name from people where nationality!= 'Russia'
select name from people where people_id not in (select people_id from poker_player)
select name from people where people_id not in (select people_id from poker_player)
select count(distinct nationality) from people
select count(distinct nationality) from people
select count(distinct state) from area_code_state
select t1.con
select t1.vote_id, t1.phone_number, t1.state from votes as t1 join votes as t2 on t1.vote_id = t2.vote_id
select max(area_code), min(area_code) from area_code_state
select max(created) from votes where state = 'CA'
select contestant_name from contestants where contestant_name!= 'Jessie Alloway'
select distinct t1.state, t2.created from area_code_state as t1 join votes as t2 on t1.area_code = t2.state
select t2.contestant_number, t2.contestant_name from votes as t1 join contestants as t2 on t1.contestant_number = t2.contestant_number group by t1.contestant_number having count(*) >= 2
select t1.contestant_number, t1.contestant_name from contestants as t1 join votes as t2 on t1.contestant_number = t2.contestant_number group by t2.contestant_number order by count(*) asc limit 1
select count(*) from votes where state = 'NY' or state = 'CA'
select count(*) from contestants where contestant_number not in (select contestant_number from votes)
select count(*) from votes group by vote_id order by count(*) desc limit 1
select t1.state, t1.phone_number from votes as t1 join contestants as t2 on t1.contestant_number = t2.contestant_number where t2.contestant_name = 'Tabatha Gehling'
select t3.area_code from contestants as t1 join contestants as t2 join area_code_state as t3 on t1.contestant_number = t2.contestant_number join votes as t4 on t1.contestant_number = t4.contestant_number where t1.contestant_name = 'Tabatha Gehling' intersect select t3.area_code from contestants as t1 join contestants as t2 on t1.contestant_number = t2.contestant_number join area_code_state as t4 on t3.contestant_number = t5.contestant_number join votes as t5 on t3.vote_id = t4.contestant_number
select contestant_name from contestants where contestant_name like '%al%'
select name from country where indepyear > 1950
select name from country where indepyear > 1950
select count(*) from country where governmentform = 'Republik'
select count(distinct name) from country where governmentform = 'Republik'
select sum(t1.surfacearea) from country as t1 join country as t2 on t1.code = t2.code where t1.region = 'Caribbean'
select count(*) from country where region = 'Caribbean'
select continent from country where name = 'Anguilla'
select continent from country where name = 'Anguilla'
select district from city where name = 'Babad'
select region from country where name = 'Babad'
select language from countrylanguage group by language order by count(*) desc limit 1
select t1.language from countrylanguage as t1 join country as t2 on t1.countrycode = t2.code where t2.localname = 'Aruba'
select population, lifeexpectancy from country where name = 'Brazil'
select population, lifeexpectancy from country where name = 'Brazil'
select region, population from country where name = 'Angola'
select region, population from country where localname = 'Angola'
select avg(lifeexpectancy) from country where region = 'Central Africa'
select avg(lifeexpectancy) from country where region = 'Central Africa'
select name from country where continent = 'Asie' order by lifeexpectancy limit 1
select name from country where continent = 'Asie' order by lifeexpectancy limit 1
select sum(gnp), max(gnp) from country where continent = 'Asie'
select count(*), gnp from country where continent = 'Asie' group by gnp order by count(*) desc limit 1
select avg(lifeexpectancy) from country where continent = 'Africa'
select avg(lifeexpectancy) from country where continent = 'Africa'
select sum(t1.population) from country as t1 join country as t2 on t1.code = t2.code where t1.continent = 'Asia' intersect select sum(t1.population) from country as t1 join country as t2 on t1.code = t2.code where t1.continent = 'Europe'
select sum(surfacearea) from country where continent = 'Asie' or continent = 'Europe'
select sum(population) from city where district = 'Gelderland'
select sum(population) from city where district = 'Gelderland'
select avg(gnp), sum(population) from country where governmentform = 'US Territory'
select avg(gnp), sum(population) from country where code2 = 'US Territory'
select count(distinct language) from countrylanguage
select count(distinct language) from countrylanguage
select count(distinct governmentform) from country where continent = 'Africa'
select count(distinct governmentform) from country where continent = 'Africa'
select count(*) from countrylanguage as t1 join country as t2 on t1.countrycode = t2.code where t2.name = 'Aruba'
select count(*) from countrylanguage as t1 join country as t2 on t1.countrycode = t2.code where t2.name = 'Aruba'
select count(*) from countrylanguage where language = 'Afghanistan'
select count(*) from countrylanguage where language = 'Afghanistan'
select t1.name from country as t1 join countrylanguage as t2 on t1.code = t2.countrycode group by t2.countrycode order by count(*) desc limit 1
select t1.name from country as t1 join countrylanguage as t2 on t1.code = t2.countrycode group by t1.name order by count(*) desc limit 1
select continent from country group by continent order by count(*) desc limit 1
select continent from country group by continent order by count(*) desc limit 1
select count(distinct t1.name) from country as t1 join countrylanguage as t2 on t1.code = t2.countrycode where t2.language = 'England' intersect select t1.localname from country as t1 join countrylanguage as t2 on t2.countrycode = t2.countrycode where t2.language = 'Holstein'
select count(*) from countrylanguage where language = 'English' or language = 'Houston'
select t1.name from country as t1 join countrylanguage as t2 on t1.code = t2.countrycode where t2.language = 'England' intersect select t1.name from country as t1 join countrylanguage as t2 on t2.countrycode = t2.countrycode where t2.language = 'France'
select t1.name from country as t1 join countrylanguage as t2 on t2.countrycode = t2.countrycode where t2.language = 'England' intersect select t1.name from country as t1 join countrylanguage as t2 on t2.countrycode = t2.countrycode where t2.language = 'France'
select t1.localname from country as t1 join countrylanguage as t2 on t1.code = t2.countrycode where t2.language = 'England' intersect select t1.localname from country as t1 join countrylanguage as t2 on t2.countrycode = t2.countrycode where t2.language = 'France'
select t1.name from country as t1 join countrylanguage as t2 on t2.countrycode = t2.countrycode where t2.language = 'English' intersect select t1.name from country as t1 join countrylanguage as t2 on t2.countrycode = t2.countrycode where t2.language = 'France'
select count(distinct t1.continent) from country as t1 join countrylanguage as t2 on t2.countrycode = t2.countrycode where t2.language = 'Chinese'
select count(*) from countrylanguage where language = 'Chinese'
select t1.region from country as t1 join countrylanguage as t2 on t1.code = t2.countrycode where t2.language = 'English' or t2.language = 'Houston'
select t1.region from country as t1 join countrylanguage as t2 on t2.countrycode = t2.countrycode where t2.language = 'Holstein' or t2.language = 'Anglish'
select t1.name from country as t1 join countrylanguage as t2 on t2.countrycode = t2.countrycode where t2.language = 'English' or t2.language = 'Houston'
select t1.name from country as t1 join countrylanguage as t2 on t2.countrycode = t2.countrycode where t2.language = 'English' or t2.language = 'Holstein'
select t1.language from countrylanguage as t1 join country as t2 on t1.countrycode = t2.code where t2.continent = 'Asie' group by t1.language order by count(*) desc limit 1
select t1.language from countrylanguage as t1 join country as t2 on t1.countrycode = t2.code where t2.continent = 'Asie' group by t1.countrycode order by count(*) desc limit 1
select t1.language from countrylanguage as t1 join country as t2 on t1.countrycode = t2.code where t2.governmentform = 'Republik' group by t1.countrycode having count(*) = 1
select t1.language from countrylanguage as t1 join country as t2 on t1.countrycode = t2.code where t2.governmentform = 'Republik'
select t1.name from city as t1 join countrylanguage as t2 on t1.countrycode = t2.countrycode where t2.language = 'English' group by t1.name order by count(*) desc limit 1
select t1.name from city as t1 join countrylanguage as t2 on t1.id = t2.countrycode where t2.language = 'English' group by t1.id order by count(*) desc limit 1
select name, population, lifeexpectancy from country where continent = 'Asie' order by surfacearea desc limit 1
select name, population, lifeexpectancy from country where continent = 'Asie' order by population desc limit 1
select avg(t1.lifeexpectancy) from country as t1 join countrylanguage as t2 on t2.countrycode = t2.countrycode where t2.language!= 'English'
select avg(t1.lifeexpectancy) from country as t1 join countrylanguage as t2 on t2.countrycode = t2.countrycode where t2.language!= 'English'
select sum(population) from country as t1 join countrylanguage as t2 on t2.countrycode = t2.countrycode where t2.language!= 'English'
select count(*) from country as t1 join countrylanguage as t2 on t2.countrycode = t2.countrycode where t2.language!= 'English'
select t1.language from countrylanguage as t1 join country as t2 on t1.countrycode = t2.code where t2.headofstate = 'Brix'
select t1.language from countrylanguage as t1 join country as t2 on t1.countrycode = t2.code where t2.headofstate = 'Brittrix'
select sum(t1.isofficial) from countrylanguage as t1 join country as t2 on t1.countrycode = t2.code where t2.indepyear < 1930
select count(distinct t2.language) from country as t1 join countrylanguage as t2 on t2.countrycode = t2.countrycode where t1.indepyear < 1930
select name from country where surfacearea > (select max(surfacearea) from country where continent = 'Europe')
select name from country where surfacearea > (select max(surfacearea) from country where continent = 'Europe')
select name from country where population < (select min(population) from country where continent = 'Asie')
select name from country where population < (select max(population) from country where continent = 'Asie')
select name from country where population > (select max(population) from country where continent = 'Asie')
select name from country where population > (select max(population) from country where continent = 'Asie')
select t1.name from country as t1 join countrylanguage as t2 on t2.countrycode = t2.countrycode where t2.language!= 'English'
Select 'T' from country except select t1.name from country as t1 join countrylanguage as t2 on t1.code = t2.countrycode where t2.language = 'English'
select t1.name from country as t1 join countrylanguage as t2 on t2.countrycode = t2.countrycode where t2.language!= 'English'
select t1.name from country as t1 join countrylanguage as t2 on t2.countrycode = t2.countrycode where t2.language!= 'English'
select language from country
select t1.localname from country as t1 join countrylanguage as t2 on t1.code = t2.countrycode where t2.language!= 'English' except select t1.localname from country as t1 join countrylanguage as t2 on t2.countrycode = t2.countrycode where t2.language = 'Republica'
select t1.name from city as t1 join countrylanguage as t2 on t1.id = t2.countrycode where t2.language!= 'England'
select t1.name from city as t1 join countrylanguage as t2 on t1.id = t2.countrycode where t2.language!= 'England'
select distinct t1.population from city as t1 join countrylanguage as t2 on t1.id = t2.countrycode where t2.language = 'Asia' and t2.language = 'Chinese'
select distinct t1.name from city as t1 join countrylanguage as t2 on t1.countrycode = t2.countrycode where t2.language = 'Asia' intersect select distinct t1.name from city as t1 join countrylanguage as t2 on t1.id = t2.countrycode where t2.language = 'Chinese'
select t1.name, t2.indepyear, t2.population from country as t1 join country as t2 on t1.country
select 'New country', 'Jahres', 'Territorialname' from country order by population limit 1
select population, name, headofstate from country order by surfacearea desc limit 1
select name, population, headofstate from country order by surfacearea desc limit 1
select t2.name, count(*) from countrylanguage as t1 join country as t2 on t1.countrycode = t2.code group by t1.countrycode having count(*) >= 3
select t2.name, count(*) from countrylanguage as t1 join country as t2 on t1.countrycode = t2.code group by t1.countrycode having count(*) > 2
select count(*), district from city where population > (select avg(population) from city) group by district
select count(*), district from city group by district having avg(population) > (select avg(population) from city)
select t1.name, sum(t2.population) from city as t1 join country as t2 on t1.countrycode = t2.code group by t2.governmentform having avg(t1.population) > 72
select governmentform, avg(population) from country group by governmentform having avg(population) >= 72
select continent, avg(lifeexpectancy) from country group by continent having avg(lifeexpectancy) < 72
select continent, sum(population), avg(lifeexpectancy) from country group by continent having avg(lifeexpectancy) < 72
select name, surfacearea from country order by surfacearea desc limit 5
select name,
select name from country order by population desc limit 3
select name from country order by population desc limit 3
select name from country order by population limit 3
select name from country order by population asc limit 3
select count(*) from country where continent = 'Asie'
select count(*) from country where continent = 'Asie'
select name from country where continent = 'Europe' and population >= 80000
select name from country where continent = 'Europe' and population >= 80000
select sum(population), avg(population) from country where continent = 'North America' and population > 3000
select sum(population), avg(population) from country where region = 'North America' and avg(population) > 3000
select t1.name from city as t1 join country as t2 on t1.countrycode = t2.code where t1.population between 160000 and 900000
select t1.name from city as t1 join country as t2 on t1.countrycode = t2.code where t1.population between 160000 and 900000
select language from countrylanguage group by language order by count(*) desc limit 1
select language from country
select language from countrylanguage group by language order by count(*) desc limit 1
select language, count(*) from countrylanguage group by language order by count(*) desc limit 1
select count(*) from countrylanguage where language = 'Spanish' group by countrycode order by count(*) desc limit 1
select count(*) from countrylanguage where language = 'Spanish' group by language order by count(*) desc limit 1
select language from countrylanguage where language = 'Spanish' group by language order by count(*) desc limit 1
select t1.code from country as t1 join countrylanguage as t2 on t1.code = t2.countrycode where t2.language = 'Spanish' group by t1.code order by count(*) desc limit 1
select count(*) from conductor
select count(*) from conductor
select name from conductor order by age asc
select name from conductor order by age
select t1.name from conductor as t1 join performance as t2 on t2.performance_id = t2.performance_id where t1.nationality!= 'USA'
select name from conductor where nationality!= 'USA'
select record_company from orchestra order by year_of_founded desc
select record_company from orchestra order by year_of_founded desc
select avg(attendance) from show
select avg(attendance) from show
select max(share), min(share) from performance where type!= "Live final"
select max(share), min(share) from performance where type!= "Live final"
select count(distinct nationality) from conductor
select count(distinct nationality) from conductor
select t1.name from conductor as t1 join performance as t2 on t2.performance_id = t2.performance_id join orchestra as t3 on t3.orchestr
select t1.name from conductor as t1 join performance as t2 on t2.performance_id = t2.performance_id order by t2.year_of_work
select t2.name from performance as t1 join conductor as t2 on t1.performance_id = t2.performance_id
select t2.name from performance as t1 join conductor as t2 on t1.performance_id = t1.performance_id where t2.year_of_work = (select max(year_of_work) from conductor)
select t3.name, t2.orchest
select t2.name, t3.name from performance as t1 join conductor as t2 on t1.orchestr
select t
select t
select t2.name from performance as t1 join conductor as t2 on t1.performance_id = t1.performance_id join orchestra as t3 on t2.orchestr
select t1.name from conductor as t1 join orchestra as t2 on t1.orchestr
select t2.name from performance as t1 join conductor as t2 on t1.performance_id = t2.performance_id
select distinct year_of_work from conductor where year_of_work > 2008
select record_company, count(*) from orchestra group by record_company
select count(*), orchestra from orchestra group by orchestra
select type from performance order by count(*) asc
select major_record_format from orchestra order by major_record_format
select record_company from performance
select record_company from orchestra group by record_company order by count(*) desc limit 1
select orchestra from orchestra where orchestra_id not in (select orchestra_id from performance)
select orchestra from orchestra where orchestra_id not in (select orchestra_id from performance)
select record_company from orchestra where year_of_founded < 2003 intersect select record_company from orchestra where year_of_founded > 2003
select record_company from orchestra where year_of_founded < 2003 intersect select record_company from orchestra where year_of_founded > 2003
select count(*) from orchestra where major_record_format = "CD" or major_record_format = "DVD"
select count(*) from orchestra where major_record_format = 'CD' or major_record_format = 'DVD'
select t2.year_of_work from performance as t1 join orchestra
select t2.year_of_work from performance as t1 join orchestra as
select count(*) from highschooler
select count(*) from highschooler
select name, grade from highschooler
select name, grade from highschooler
select distinct grade from highschooler
select distinct grade from highschooler
select grade from highschooler where name = "Knowy"
select grade from highschooler where name = "Knowy"
select name from highschooler where grade = 10
select name from highschooler where grade = 10
select id from highschooler where name = 'Knowy'
select id from highschooler where name = 'Knowy'
select count(*) from highschooler where grade = 9 or grade = 10
select count(*) from highschooler where grade = 9 or grade = 10
select grade, count(*) from highschooler group by grade
select grade, count(*) from highschooler group by grade
select grade from highschooler group by grade order by count(*) desc limit 1
select grade from highschooler group by grade order by count(*) desc limit 1
select distinct grade from highschooler group by grade having count(*) >= 4
select grade from highschooler group by grade having count(*) >= 4
select student_id, count(distinct friend_id) from friend group by student_id
select count(t2.friend_id) from highschooler as t1 join friend as t2 on t1.id = t2.friend_id group by t2.friend_id
select t1.name, count(t2.friend_id) from highschooler as t1 join friend as t2 on t1.id = t2.student_id group by t2.student_id
select t1.name, count(t2.friend_id) from highschooler as t1 join friend as t2 on t1.id = t2.student_id group by t2.friend_id
select t1.name from highschooler as t1 join friend as t2 on t1.id = t2.student_id group by t2.student_id order by count(t2.friend_id) desc limit 1
select t1.name from highschooler as t1 join friend as t2 on t1.id = t2.student_id group by t2.student_id order by count(t2.friend_id) desc limit 1
select t1.name from highschooler as t1 join friend as t2 on t1.id = t2.student_id group by t2.student_id having count(*) >= 3
select t1.name from highschooler as t1 join friend as t2 on t1.id = t2.student_id group by t2.student_id having count(*) >= 3
select t3.name from highschooler as t1 join friend as t2 on t1.id = t2.friend_id join highschooler as t3 on t2.student_id = t3.id where t1.name = 'Knowy'
select t2.friend_id from highschooler as t1 join friend as t2 on t1.id = t2.friend_id where t1.name = "Knowy"
select count(t2.friend_id) from highschooler as t1 join friend as t2 on t1.id = t2.friend_id where t1.name = "Knowy"
select count(t2.friend_id) from highschooler as t1 join friend as t2 on t1.id = t2.friend_id where t1.name = "Knowy"
select student_id from
select student_id from
select name from highschooler where id not in (select student_id from friend)
select name from highschooler except select t1.name from highschooler as t1 join friend as t2 on t1.id = t2.student_id
select student_id from likes intersect select student_id from likes
select student_id from friend intersect select student_id from likes
select t1.name from highschooler as t1 join likes as t2 on t1.id = t2.student_id
select t1.name from highschooler as t1 join friend as t2 on t1.id = t2.friend_id intersect select t1.name from highschooler as t1 join likes as t2 on t1.id = t2.student_id
select count(*), student_id from likes group by student_id
select student_id, count(*) from likes group by student_id
select t2.name, count(*) from likes as t1 join highschooler as t2 on t1.student_id = t2.id group by t1.student_id
select t1.name, count(*) from highschooler as t1 join likes as t2 on t1.id = t2.student_id group by t2.student_id
select t2.name from likes as t1 join highschooler as t2 on t1.student_id = t2.id group by t1.student_id order by count(*) desc limit 1
select t2.name from likes as t1 join highschooler as t2 on t1.student_id = t2.id group by t1.student_id order by count(*) desc limit 1
select t2.name from likes as t1 join highschooler as t2 on t1.student_id = t2.id group by t1.student_id having count(*) >= 2
select name from highschooler group by name having count(*) >= 2
select name from highschooler where grade > 5 intersect select t1.name from highschooler as t1 join friend as t2 on t1.id = t2.friend_id group by t2.friend_id having count(*) >= 2
select t2.name from highschooler as t1 join highschooler as t2 on t1.id = t2.student_id
select count(distinct name) from highschooler where name = "Knowy"
select count(*) from highschooler where name = "Knowy"
select avg(t1.grade) from highschooler as t1 join friend as t2 on t1.id = t2.student_id
select avg(t1.grade) from highschooler as t1 join friend as t2 on t1.id = t2.student_id
select min(grade) from highschooler where student_id not in (select min(grade) from highschooler
select min(grade) from highschooler where id not in (select min(grade) from highschooler)
select state from owners intersect select state from owners
select state from professionals intersect select state from professionals
select avg(age) from dogs where abandoned_yn not in (select dog_id from dogs)
select avg(age) from dogs where date_arrived in ( select t1.dog_id from dogs as t1 join treatments as t2 on t1.dog_id = t2.dog_id group by t1.dog_id order by avg(age) limit 1)
select t1.
select first_name, last_name, cell_number from professionals where state = "Indiana" or count(*) > 2
select name from dogs except select t1.name from dogs as t1 join treatments as t2 on t1.dog_id = t2.dog_id where t2.cost_of_treatment > 1000
select t1.name from dogs as t1 join treatments as t2 on t1.dog_id = t2.dog_id where t1.age > 1000
select first_name from owners where owner_id not in (select dog_id from dogs)
select first_name from owners where owner_id not in (select dog_id from dogs)
select dog_id, role_code, email_address from professionals
select dog_id, role_code, email_address from professionals
select t1.owner_id, t1.first_name, t1.last_name from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id group by t1.owner_id order by count(*) desc limit 1
select owner_id, first_name, last_name from owners group by owner_id order by count(*) desc limit 1
select t1.
select t1.
select breed_name from breeds group by breed_code order by count(*) desc limit 1
select breed_name from breeds group by breed_code order by count(*) desc limit 1
select t1.
select t2.
select t1.treatment_type_description from treatment_types as t1 join treatments as t2 on t1.treatment_type_code = t2.treatment_type_code group by t1.treatment_type_code order by sum(t2.cost_of_treatment) asc limit 1
select 'Health check', sum(cost_of_treatment) from treatments group by t2.cost_of_treatment
select t1.
select t1.w
select t2.
select t2.da
select t1.first_name, t1.last_name from owners as t1 join treatments as t2 on t1.owner_id = t2.dog_id where t2.cost_of_treatment < (select avg(cost_of_treatment) from treatments)
select t1.first_name, t1.last_name from owners as t1 join treatments as t2 on t1.owner_id = t2.dog_id where t2.cost_of_treatment < ( select avg(cost_of_treatment) from treatments )
select t1.date_of_treatment, t2.name from treatments as t1 join dogs as t2 on t1.dog_id = t2.dog_id join professionals as t3 on t1.professional_id = t3.professional_id
select t1.date_of_treatment, t2.name from treatments as t1 join dogs as t2 on t1.dog_id = t2.dog_id
select cost_of_treatment, t3.treatment_type_description from dogs as t1 join treatments as t2 on t1.dog_id = t2.dog_id join treatment_types as t3 on t2.treatment_type_code = t3.treatment_type_code where t1.date_arrived = (select t1.dog_id from dogs as t1 join treatments as t2 on t1.dog_id = t2.dog_id group by cost_of_treatment)
select t1.cost_of_treatment, t2.name from treatments as t1 join dogs as t2 on t1.dog_id = t2.dog_id
select t1.first_name, t1.last_name, t1.size_code from sizes as t2 join dogs as t3 on t1.size_code = t2.size_code join owners as t4 on t3.owner_id =
select distinct t1.first_name, t1.last_name, t1.size_code from sizes as t2 join dogs as t3 on t1.size_code = t2.size_code
select t1.first_name, t1.last_name from owners as t1 join dogs as t2 on t1.owner_id = t2.dog_id
select t1.first_name, t1.last_name from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id
select t2.name, t2.date_arrived from dogs as t1 join dogs as t2 on t1.dog_id = t2.dog_id group by t2.dog_id order by count(*) desc limit 1
select name, date_arrived from dogs group by breed_code order by count(*) asc limit 1
select first_name, last_name from owners where state = 'Virgina'
select t1.first_name, t1.last_name, t2.name from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id where t1.state = 'Virgin'
select date_arrived, date_departed from dogs where abandoned_yn = '1'
select date_arrived, date_departed from dogs order by date_arrived asc limit 1
select t1.first_name, t1.last_name from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id order by t2.date_of_birth limit 1
select t1.last_name from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id order by t2.date_of_birth limit 1
select email_address from owners where state = "Hawaii" or state = "Wisconsin"
select email_address from professionals where state = "Hawaii" or state = "Wisconsin"
select date_arrived, date_departed from dogs
select date_arrived, date_departed from dogs
select count(*) from dogs where abandoned_yn not in ( select dogs.dog_id from dogs as t1 join treatments as t2 on t1.dog_id = t2.dog_id )
select count(*) from dogs where abandoned_yn = '1'
select count(*) from treatments as t1 join dogs as t2 on t1.dog_id = t2.dog_id
select count(*) from dogs where abandoned_yn = '1'
select t2.role_code, t1.street, t1.city, t1.state from owners as t1 join professionals as t2 on t1.owner_id = t2.owner_id
select t1.role_code, t1.street, t1.city, t1.state from professionals as t1 join dogs as t2 on t1.professional_id = t2.dog_id where t2.abandoned_yn like '%west%'
select t1.first_name, t1.last_name, t1.email_address from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id where state like '%n%'
select t1.first_name, t1.last_name, t1.email_address from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id where state like '%ny%'
select count(*) from dogs where age < (select avg(age) from dogs)
select count(*) from dogs where age < (select avg(age) from dogs)
select max(cost_of_treatment) from treatments
select cost_of_treatment from treatments order by date_of_treatment desc limit 1
select count(*), t1.dog_id from dogs as t1 join treatments as t2 on t1.dog_id = t2.dog_id where t1.date_arrived not in ( select t1.dog_id from dogs as t3 join treatments as t4 on t3.dog_id = t4.dog_id )
select count(*) from dogs where abandoned_yn not in ( select dog_id from dogs )
select count(*) from dogs where dog_id not in ( select dog_id from dogs )
select count(*) from owners where owner_id not in ( select owner_id from dogs )
select count(*) from dogs where dog_id not in ( select dog_id from treatments )
select count(*) from dogs where dog_id not in ( select dog_id from treatments )
select name, age, weight from dogs where abandoned_yn = 1 and abandoned_yn = 0
select name, age, weight from dogs where abandoned_yn = 1 and abandoned_yn = 0
select avg(age) from dogs
select avg(age) from dogs
select age from dogs order by age desc limit 1
select age from dogs order by age desc limit 1
select charge_type, charge_amount from charges group by charge_type
select charge_type, charge_amount from charges group by charge_type
select max(charge_amount) from charges
select charge_amount from charges order by charge_amount desc limit 1
select email_address, cell_number, home_phone from professionals
select email_address, cell_number, home_phone from professionals
select distinct 'type_code','size_code' from sizes
select distinct breed_code, size_code from dogs
select t2.first_name, t2.first_name, t2.last_name from treatments as t1 join dogs on t1.dog_id = t2.dog_id join treatments as t3 on t1.treatment_type_code = t3.treatment_type_code
select t1.first_name, t1.last_name, t3.treatment_type_description from dogs as t2 join treatment_types as t3 on t1.dog_id = t2.dog_id
select count(*) from singer
select count(*) from singer
select name from singer order by net_worth_millions asc
select name from singer order by net_worth_millions asc
select birth_year, citizenship from singer
select birth_year, citizenship from singer
select name from singer where citizenship!= "France"
select name from singer where citizenship!= "France"
select name from singer where birth_year = 1948 or birth_year = 1949
select name from singer where birth_year = 1948 or birth_year = 1949
select name from singer order by net_worth_millions desc limit 1
select name from singer order by net_worth_millions desc limit 1
select citizenship, count(*) from singer group by citizenship
select
select t1.
select t1.name from singer as t01 join song as t2 on t1.song_id = t2.song_id join singer as t3 on t2.song_id = t3.song_id
select t
select t1.name, max(t1.net_worth_millions) from singer as t1 join song as t2 on t1.song
select t1.title, t2.name from song as t1 join singer as t2 on t1.song_id = t1.song_id join singer as t3 on t1.song_id = t1.song_id
select t1.title, t2.name from song as t1 join singer as t2 on t1.song_id = t1.song_id
select distinct t2.name from song as t1 join singer as t2 on t1.song_id = t1.song_id where t1.sales > 300000
select distinct t2.name from song as t1 join singer as t2 on t1.song_id = t1.song_id where t1.sales > 300000
select t2.name, count(*) from song as t1 join singer as t2 on t1.song_id = t1.song_id group by t1.song_id having count(*) > 1
select t2.name from song as t1 join singer as t2 on t1.song_id = t1.song_id group by t1.song_id having count(*) > 1
select t2.name, sum(t1.sales) from song as t1 join singer as t2 on t1.song_id = t1.song_id group by t1.song_id
select sum(sales), t2.name from song as t1 join singer as t2 on t1.song_id = t1.song_id group by t2.name
select name from singer where singer_id not in (select singer_id from song)
select name from singer where singer_id not in (select singer_id from song)
select citizenship from singer where birth_year < 1945 intersect select citizenship from singer where birth_year > 1955
select birth_year from singer where birth_year < 1945 intersect select citizenship from singer where birth_year > 1955
select count(*) from ref_property_types
select t3.feature_type_name from other_available_features as t1 join ref_feature_types as t2 on t1.feature_type_code = t2.feature_type_code join ref_feature_types as t3 on t2.feature_type_code = t3.feature_type_code where t1.feature_name = "AirCon"
select t1.property_type_description from ref_property_types as t1 join properties as t2 on t1.property_type_code = t2.property_type_code
select property_name from properties where property_type_code = "Haus" or room_count > 1
