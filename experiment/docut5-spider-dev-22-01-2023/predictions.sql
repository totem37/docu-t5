select count(*) from singer
select count(*) from singer
select name, country, age from singer order by age desc
select name, country, age from singer order by age desc
select avg(age), min(age), max(age) from singer where country = 'France'
select avg(age), min(age), max(age) from singer where country = 'F'
select t3.name, t2.song_release_year from singer_in_concert as t1 join concert as t2
select name, song_release_year from singer order by age limit 1
select distinct country from singer where age > 20
select distinct country from singer where age > 20
select country, count(*) from singer group by country
select country, count(*) from singer group by country
select song_name from singer where age > (select avg(age) from singer)
select name from singer where age > (select avg(age) from singer)
select location, name from stadium where capacity between 5000 and 10000
select location, name from stadium where capacity between 5000 and 10000
select max(capacity), avg(capacity) from stadium
select avg(capacity), max(capacity) from stadium
select name, capacity from stadium order by average desc limit 1
select name, capacity from stadium order by average desc limit 1
select count(*) from concert where year = 2014 or year = 2015
select count(*) from concert where year = 2014 or year = 2015
select t2.name, count(*) from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id group by t1.stadium_id
select t2.name, count(*) from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id group by t1.stadium_id
select name, capacity from stadium order by capacity desc limit 1
select name, capacity from stadium order by capacity desc limit 1
select year from concert group by year order by count(*) desc limit 1
select year from concert group by year order by count(*) desc limit 1
select name from stadium where stadium_id not in (select stadium_id from concert)
select name from stadium where stadium_id not in (select stadium_id from concert)
select country from singer where age > 40 intersect select country from singer where age < 30
select name from stadium except select t2.name from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id where t1.year = 2014
select name from stadium except select t2.name from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id where t1.year = 2014
select t2.concert_name, t2.theme, count(*) from singer_in_concert as t1 join concert as t2 on t1.concert_id = t2.concert_id group by t1.concert_id
select t3.theme, count(*) from concert as t1 join singer_in_concert as t2 on t1.concert_id = t2.concert_id join concert as t3 on t3.concert_id = t2.concert_id group by t1.concert_id
select t3.name, count(*) from singer_in_concert as t1 join concert as t2 on t1.concert_id = t2.concert_id join singer as t3 on t1.singer_id = t3.singer_id group by t3.name
select t1.name, count(*) from singer as t1 join singer_in_concert as t2 on t1.singer_id = t2.singer_id group by t1.singer_id
select t3.name from singer_in_concert as t1 join concert as t2 on t1.concert_id = t2.concert_id join singer as t3 on
select t3.song_name from concert as t1 join singer_in_concert as t2 on t1.concert_id = t2.concert_id join
select name, country from singer where song_name like '%hey%'
select name, country from singer where song_name like '%hey%'
select t2.name, t2.location from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id where t1.year = 2014 intersect select t2.name, t2.location from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id where t1.year = 2015
select t2.name, t2.location from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id where t1.year = 2014 intersect select t2.name, t2.location from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id where t1.year = 2015
select count(*) from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id where t2.capacity = (select max(capacity) from stadium)
select count(*) from stadium as t1 join concert as t2 on t1.stadium_id = t2.stadium_id where t1.capacity = (select max(capacity) from stadium)
select count(*) from pets where weight > 10
select count(*) from pets where weight > 10
select weight from pets where pet_age = (select min(weight) from pets)
select weight from pets order by weight asc limit 1
select max(weight), pettype from pets group by pettype
select pettype, max(weight), max(weight) from pets group by pettype
select count(*) from pets as t1 join has_pet as t2 on t1.petid = t2.petid join student as t3 on t2.stuid = t3.stuid where t3.age > 20
select count(*) from pets as t1 join has_pet as t2 on t1.petid = t2.petid join student as t3 on t2.stuid = t3.stuid where t3.age > 20;
select count(*) from pets as t1 join has_pet as t2 on t1.petid = t2.petid join student as t3 on t2.stuid = t3.stuid where t3.sex = 'F'
select count(*) from pets where sex = 'F' and stuid in (select stuid from has_pet where pettype = "dog"
select count(distinct pettype) from pets
select count(distinct pettype) from pets
select distinct t1.fname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid join pets as t3 on t3.petid = t2.petid where t3.pettype = 'cat' or t3.pettype = 'dog'
select distinct t1.fname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid where t2.pet
select t1.fname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid join pets as t3 on t3.petid = t2.petid where t3.pettype = 'cat' intersect select t1.fname from student as t1 join has_pet
select t1.fname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid join pets as t3 on t3.petid = t2.petid where t3.pettype = 'cat' intersect select t1.fname from student as t1 join has_pet
select major, age from student where stuid not in (select t1.stuid from has_pet as t1 join pets as t2 on t1.petid = t2.petid where t2.pettype = 'cat')
select major, age from student where stuid not in (select t1.stuid from has_pet as t1 join pets as t2 on t1.petid = t2.petid where t2.pettype = 'cat')
select stuid from student where stuid not in (select stuid from has_pet as t1 join pets as t2 on t1.petid = t2.petid where t2.pettype = 'cat')
select stuid from has_pet where pettype!= 'cat"; and pet_type!= "cat"; and pet_type!= "cat"; and pet_type
select t1.fname, t1.age from student as t1 join has_pet as t2 on t1.stuid = t2.stuid where t2.pettype
select distinct t1.fname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid where t2.p
select distinct t1.pettype, t1.weight from pets as t1 join has_pet as t2 on t1.petid = t2.petid order by t2.pet
select pettype, weight from pets order by weight asc limit 1
select petid, weight from pets where pet_age > 1
select petid, weight from pets where pet_age > 1
select pettype, avg(age), max(age) from pets
select pettype, avg(age), max(age) from pets
select pettype, avg(weight) from pets group by pettype
select pettype, avg(weight) from pets group by pettype
select distinct t1.fname, t1.age from student as t1 join has_pet as t2 on t1.stuid = t2.stuid
select distinct t3.fname, t3.age from has_pet as t1 join pets as t2 on t1.petid = t2.petid join student as t3 on t1.stuid = t3.stuid
select stuid from has_pet as t1 join pets as t2 on t1.petid = t2.petid join has_pet as t3 on t2.petid = t3.petid join student as t4 on t4.stuid = t1.stuid
select stuid from has_pet as t1 join pets as t2 on t1.stuid = t2.petid join student as t3 on t3.stuid = t1.stuid
select count(*), t1.stuid from has_pet as t1 join pets as t2 on t1.petid = t2.petid group by t1.stuid
select t1.stuid, count(*) from has_pet as t1 join pets as t2 on t1.petid = t2.petid group by t1.stuid
select t1.fname, t1.sex from student as t1 join has_pet as t2 on t1.stuid = t2.stuid group by t1.stuid having count(*) > 1
select t1.fname, t1.sex from student as t1 join has_pet as t2 on t1.stuid = t2.stuid group by t1.stuid having count(*) > 1
select t1.lname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid join pets as t3 on t3.petid = t2.petid where t3.pettype =
select t1.lname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid join pets as t3 on t3.petid = t2.petid where t3.pettype =
select avg(age) from student where stuid not in (select stuid from has_pet)
select avg(age) from student where stuid not in (select stuid from has_pet)
select count(*) from continents
select count(*) from continents
select continent, continent, count(*) from countries group by continent
select continent, countryname, count(*) from countries group by continent
select count(distinct countryid) from countries
select count(distinct countryid) from countries
select t1.maker, count(*) from car_makers as t1 join model_list as t2 on t1.id = t2.modelid group by t1.maker
select t1.maker, count(*) from car_makers as t1 join model_list as t2 on t2.maker = t1.id group by t1.id
select t1.model from model_list as t1 join cars_data as t2 on t1.model = t2.id where t2.
select t2.model from cars_data as t1 join model_list as t2 on t1.id = t2.modelid where t1.
select model from car_names where weight < (select avg(weight) from car_makers
select model from car_names where weight < (select avg(weight) from car_makers
select t3.maker from model_list as t1 join car_makers as t2 on t1.model = t2.id join car_makers as t3 on t1.maker = t3.id where t1.year
select distinct t3.maker from model_list as t1 join car_names as t2 on t1.model = t2.model join car_makers as t3 on t1.maker = t3.id where t1.model = 1970
select t3.make, t2.year from model_list as t1 join car_makers on t1.model = t2.id join car_names as t3 on t1.model = t3.id
select t1.maker, t2.year from car_makers as t1 join cars_data as t2 on t1.id = t2.modelid
select distinct model from model_list where model > 1980
select distinct t1.model from model_list as t1 join car_makers as t2 on t1.modelid = t2.id where t
select count(*), continent from continents group by continent
select t1.continent, count(*) from continents as t1 join car_makers as t2 on t1.contid = t2.id group by t1.contid
select t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.country group by t1.countryid order by count(*) desc limit 1
select t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.country group by t1.countryid order by count(*) desc limit 1
select count(*), t1.maker from car_makers as t1 join model_list as t2 on t1.id = t2.modelid group by t1.maker
select t1.id, t1.fullname from car_makers as t1 join model_list as t2 on t1.id = t2.modelid group by t1.id
select accelerate from car_names as t1 join model_list as t2 on t2.modelid = t2.modelid join cars_data as t3 on t2.modelid = t3.id where t1.make = "amc" and t3.ac
select sum(avg(acc
select count(*) from countries where countryname = "franchise"
select count(distinct t2.maker) from countries as t1 join car_makers as t2 on t1.countryid = t2.country where t1.countryname = "France"
select count(distinct t1.id) from car_makers as t1 join cars_data as t2 on
select count(*) from car_makers where country = "United States"
select avg(m
select t1.id, avg(t2.
select min(weight) from cars_data where year = 1974 and cylinders = 8
select min(weight) from cars_data where year = 1974
select distinct maker, model from model_list
select maker, model from model_list
select t1.countryname, t1.countryid from countries as t1 join car_makers as t2 on t1.countryid = t2.country group by t1.countryid having count(*) >= 1
select t1.countryname, t2.id from countries as t1 join car_makers as t2 on t1.countryid = t2.country group by t1.countryid having count(*) >= 1
select count(*) from cars_data where horsepower > 150
select count(*) from cars_data where horsepower > 150
select avg(weight), year from cars_data group by year
select avg(weight), year from cars_data group by year
select t1.countryname from countries as t1 join car_makers as t2 on t1.continent = t2.id group by t1.countryid having count(*) >= 3
select t1.countryname from countries as t1 join continents as t2 on t1.countryid = t2.continent where t2.continent = "europe" group by t1.countryid having count(*) >= 3
select t3.mpg, t3.make from model_list as t1 join car_makers as t2 on t1.model = t2.id join car_names as t3
select t1.make, t3.h
select id from cars_data group by id order by sum(m
select t1.model from model_list as t1 join cars_data as t2 on t1.model = t2.id where t2.mpg = (select max(mpg) from cars_data)
select avg(h
select avg(s
select avg(t2.edispl) from model_list as t1 join cars_data as t2 on t1.modelid = t2.id where t1.model = "volvo"
select avg(edispl) from model_list as t1 join car_makers as t2 on t1.modelid = t2.id
select max(accelerate), cylinders from cars_data group by cylinders
select max(accelerate), cylinders from cars_data group by cylinders
select model from car_names group by model order by count(*) desc limit 1
select model from model_list group by model order by count(*) desc limit 1
select count(*) from cars_data where cylinders > 4
select t1.id, count(*) from cars_data as t1 join cars_data as t2 on t1.id = 4
select count(distinct id) from cars_data where year = 1980
select count(*) from car_makers where maker = "80%"
select count(*) from car_makers where maker = "American Motor Company" and fullname = "USA"
select count(*) from car_makers where maker = "American Motor Company"
select t1.fullname, t1.id from car_makers as t1 join model_list as t2 on t1.id = t2.maker group by t1.id having count(*) > 3
select t1.maker, t1.id from car_makers as t1 join model_list as t2 on t1.id = t2.maker group by t1.maker having count(*) > 3
select distinct t1.model from model_list as t1 join car_makers as t2 on t1.maker = t2.id where t2.fullname = "General Motors" union select distinct t1.model from model_list as t1 join car_makers as t2 on t1.model = t2.id where t2.maker = "3500"
select distinct t1.model from model_list as t1 join car_makers as t2 on t1.maker = t2.id where t2.fullname = "General Motors" union select distinct t1.model from model_list as t1 join car_makers as t2 on t1.model = t2.id where t2.maker = "3500"
select year from cars_data where weight < 3000 intersect select year from cars_data group by year having count(*) < 4000
select distinct year from cars_data where weight <= 4000 intersect select distinct year from cars_data where weight > 3000
select horsepower from cars_data order by accelerate desc limit 1
select horsepower from cars_data order by accelerate desc limit 1
select count(*) from car_makers as t1 join model_list as t2 on t1.id = t2.modelid where t1.maker = "Volvo"
select t1.cylinders, count(*) from model_list as t2 join car_makers as t3 on t1.modelid = t3.id
select count(distinct id) from cars_data where horsepower > (select max(h
select count(*) from cars_data where accelerate > (select max (select accelerate from cars_data) order by horsepower desc limit 1)
select count(distinct country) from car_makers group by country having count(*) > 2
select count(distinct t1.countryid) from countries as t1 join car_makers as t2 on t1.countryid = t2.id group by t1.countryid having count(*) > 2
select count(*), t1.id from cars_data as t1 join cars_data as t2 on t1.id = t2.c
select count(*) from cars_data where cylinders > 6
select t1.model from car_names as t1 join cars_data as t2 on t1.model = t2.id where t2.cylinders = 4
select t3.id from model_list as t1 join car_names as t2 on t1.model = t2.model join cars_data as t3 on t2.model = t3.id where t1.cylinders
select t1.makeid, t1.makeid from car_names as t1 join cars_data as t2 on t1.model = t2.id join car_names as t3 group by t1.makeid having count(*) > 3 union select t1.makeid, t1.makeid from car_names as t1 join cars_data as t2 on t1.model = t2.model
select id, t3.make from cars_data as t1 join cars_data as t2 on t1.id = t2.c
select max(t2.mpg) from cars_data as t1 join car_makers as
select max(mpg) from cars_data where cylinders = 8 union select max(mpg) from cars_data where year < 1980
select t1.model from model_list as t1 join car_makers as t2 on t1.model = t2.id where t2.fullname = 'Ford Motor Company' except select t1.model from model_list as t1 join car_makers as t2 on t1.model = t2.id where t2.fullname = 'Ford Motor Company'
select distinct model from model_list where weight < 3500
select countryname from countries except select t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.country
select countryname from countries except select t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.country
select t1.id, t1.maker from car_makers as t1 join model_list as t2 on t1.id = t2.modelid group by t1.id having count(*) >= 2 union select t1.id, t1.maker from car_makers as t1 join model_list as t2 on t1.id = t2.maker group by t1.id having count(*) > 3
select t2.id, t2.maker from model_list as t1 join car_makers as t2 on t1.maker = t2.id group by t2.maker having count(*) >= 2 union select t2.id, t2.maker from model_list as t1 join car_makers as t2 on t1.maker = t2.id group by t2.maker having count(*) > 3
select t1.countryid, t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.country where t2.maker = 'fiat' group by t1.countryid having count(*) > 3 union select t1.countryid, t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.country where t2.maker = 'Fiat'
select t1.countryid, t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.country where t2.maker = "Fiat" group by t1.countryid having count(*) > 3 union select t1.countryid, t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.country where t2.maker = "Film"
select country from airlines where airline = 'JetBlue Airways'
select country from airlines where airline = 'JetBlue Airways'
select abbreviation from airlines where airline = 'JetBlue Airways'
select abbreviation from airlines where airline = 'JetBlue Airways'
select airline, abbreviation from airlines where country = 'USA'
select airline, abbreviation from airlines where country = 'USA'
select airportcode, airportname from airports where city = 'Antonio'
select airportcode, airportname from airports where city = 'Anthony'
select count(*) from airlines
select count(*) from airlines
select count(*) from airports
select count(*) from airports
select count(*) from flights
select count(*) from flights
select airline from airlines where abbreviation = 'UAL'
select airline from airlines where abbreviation = 'UAL'
select count(*) from airlines where country = 'USA'
select count(*) from airlines where country = 'USA'
select city, country from airports where airportname = 'Alton'
select city, country from airports where airportname = 'Alton'
select airportname from airports where airportcode = 'AKO'
select airportname from airports where airportcode = 'AKO'
select airportname from airports where city = 'Aberdeen'
select airportname from airports where city = 'Aberdeen'
select count(*) from flights where sourceairport = 'APG'
select count(*) from flights where sourceairport = 'APG'
select count(*) from flights where airportcode = 'ATO
select count(*) from airports as t1 join flights as t2 on t1.city = t2.airport
select count(*) from airports as t1 join flights as t2 on t1.city = t2.destairport where t1.city = 'Aberdeen'
select count(*) from flights as t1 join airports as t2 on
select count(*) from airports as t1 join flights as t2 on t1.city = t2.destairport where t1.city = 'Aberdeen'
select count(*) from airports as t1 join flights as t2 on t1.city = "Aberdeen"
select count(*) from airports as t1 join flights as t2 on t1.city = t2.airport
select count(*) from flights where city = 'Ashley' and airportname = 'Asstange’!= "Ashley"; t1.airportcode = "USA" and t1.fawno = "U
select count(*) from airlines as t1 join flights as t2 on t1.uid = t2.airport
select count(*) from airlines as t1 join flights as t2 on t1.uid = t2.airport
select count(*) from airlines as t1 join flights as t2 on t1.uid = t2.airport
select count(*) from flights as t1 join airlines as t2 on t1.airline = t2.uid where destairport = "ASY"
select count(*) from airlines as t1 join flights as t2 on t1.uid = t2.airport
select count(*) from flights as t1 join airlines as t2 on t1.airline = t2.uid where t1.sourceairport = 'AHD'
select count(*) from airlines as t1 join flights as t2 on t1.uid = t2.air
select count(*) from airlines as t1 join flights as t2 on t1.uid = t2.air
select t1.city from airports as t1 join flights as t2 on t1.city = t2.airport
select city from airports group by city order by count(*) desc limit 1
select t1.city from airports as t1 join flights as t2 on t1.city = t2.destairport group by t1.city order by count(*) desc limit 1
select city from airports group by city order by count(*) desc limit 1
select t2.airportcode from flights as t1 join airports as t2 on t1.airport
select t2.airportcode from flights as t1 join airports as t2 on t1
select airportcode from airports group by airportcode order by count(*) limit 1
select t2.airportcode from flights as t1 join airports as t2 on t1
select airline from flights group by airline order by count(*) desc limit 1
select airline from flights group by airline order by count(*) desc limit 1
select abbreviation, country from airlines group by abbreviation order by count(*) limit 1
select t1.abbreviation, t1.country from airlines as t1 join flights as t2 on t1.uid = t2.airport
select airline from flights where sourceairport = 'AHD'
select airline from flights where sourceairport = 'AHD'
select airline from flights where sourceairport = 'AHD'
select airline from flights where sourceairport = 'AHD'
select airline from flights where sourceairport = 'APG' intersect select airline from flights where sourceairport = 'CVO'
select airline from flights where sourceairport = 'APG' intersect select airline from flights where sourceairport = 'CVO'
select airline from flights where sourceairport = 'CVO' except select airline from flights where sourceairport = 'APG'
select airline from flights where sourceairport = "CVO" except select airline from flights where sourceairport = "APG"
select airline from flights group by airline having count(*) >= 10
select airline from flights group by airline having count(*) >= 10
select airline from flights group by airline having count(*) < 200
select airline from flights group by airline having count(*) < 200
select flightno from flights as t1 join airlines as t2 on t1.airline = t2.airline where t2.airline = "United Airlines"
select flightno from flights where airline = 'United Airlines'
select flightno from flights where sourceairport = "APG"
select flightno from flights where sourceairport = 'APG'
select flightno from flights where sourceairport = "APG"
select flightno from flights where sourceairport = 'APG'
select flightno from flights as t1 join airports as t2 on
select flightno from flights
select flightno from airports as t1 join flights as t2 on t1.city= 'Aberdeen'
select flightno from flights where city = 'Atlanta' and countryabbrev = 'Atlanta
select count(*) from airports as t1 join flights as t2 on t1.city = t2.airport
select count(*) from airports as t1 join flights as t2 on t1.city = t2.airport
select airportname from airports except select t1.airportname from airports as t1 join flights as t2 on t1.city = t2.destairport
select airportname from airports except select destairport from flights
select count(*) from employee
select count(*) from employee
select name from employee order by age asc
select name from employee order by age asc
select city, count(*) from employee group by city
select count(*), city from employee group by city
select city from employee where age < 30 group by city having count(*) > 1
select city from employee where age < 30 group by city having count(*) > 1
select count(*), location from shop group by location
select location, count(*) from shop group by location
select name, district from shop order by number_products desc limit 1
select name, district from shop order by number_products desc limit 1
select min(number_products), max(number_products) from shop
select min(number_products), max(number_products) from shop
select name, location, district from shop order by number_products desc
select name, location, district from shop order by number_products desc
select name from shop where number_products > (select avg(number_products) from shop)
select name from shop where number_products > (select avg(number_products) from shop)
select t1.name from employee as t1 join evaluation as t2 on t1.employee_id = t2.employee_id group by t1.employee_id order by count(*) desc limit 1
select t2.name from evaluation as t1 join employee as t2 on t1.employee_id = t2.employee_id group by t1.employee_id order by count(*) desc limit 1
select t1.name from employee as t1 join evaluation as t2 on t1.employee_id = t2.employee_id order by t2.bonus desc limit 1
select t2.name from evaluation as t1 join employee as t2 on t1.employee_id = t2.employee_id order by t1.bonus desc limit 1
select name from employee where employee_id not in (select employee_id from evaluation)
select name from employee where employee_id not in (select employee_id from evaluation)
select t3.name from hiring as t1 join shop as t2 on t1.shop_id = t2.shop_id join employee as t3 on t1.employee_id = t3.employee_id group by t1.shop_id order by count(*) desc limit 1
select t3.name from hiring as t1 join shop as t2 on t1.shop_id = t2.shop_id join employee as t3 on t1.employee_id = t3.employee_id group by t1.shop_id order by count(*) desc limit 1
select name from shop where shop_id not in (select shop_id from hiring)
select name from shop where shop_id not in (select shop_id from employee
select count(*), t1.name from shop as t1 join hiring as t2 on t1.shop_id = t2.shop_id group by t1.shop_id
select t3.name, count(*) from hiring as t1 join shop as t2 on t1.shop_id = t2.shop_id join employee as t3 on t1.employee_id = t3.employee_id group by t1.shop_id
select sum(bonus) from evaluation
select sum(bonus) from evaluation
select * from hiring
select * from hiring
select district from shop where number_products < 3000 intersect select district from shop where number_products > 10000
select district from shop where number_products < 3000 intersect select district from shop where number_products > 10000
select count(distinct location) from shop
select count(distinct location) from shop
select count(*) from documents
select count(*) from documents
select document_id, document_name, document_description from documents
select document_id, document_name, document_description from documents
select document_name, template_id from documents where document_description like '%w%'
select document_name, template_id from documents where document_description like "%w%"
select document_id, template_id, document_description from documents where document_name = "Robbin CV"
select document_id, template_id, document_description from documents where document_name = "Robbin CV"
select count(distinct template_id) from documents
select count(distinct template_id) from documents
select count(*) from templates where template_type_code = 'PPT'
select count(*) from templates where template_type_code = "PPT"
select template_id, count(*) from documents group by template_id
select count(*), template_id from documents group by template_id
select template_id, template_type_code from document
select t1.
select template_id from documents group by template_id having count(*) > 1
select template_id from documents group by template_id having count(*) > 1
select template_id from templates except select template_id from documents
select template_id from templates except select template_id from documents
select count(*) from templates
select count(*) from templates
select template_id, version_number, template_type_code from templates
select template_id, version_number, template_type_code from templates
select distinct template_type_code from templates
select distinct template_type_code from templates
select template_id from templates where template_type_code = "PP" or template_type_code = "PPT"
select template_id from templates where template_type_code = 'PP' or template_type_code = 'PPT'
select count(*) from templates where template_type_code = "CV"
select count(*) from templates where template_type_code = "CV"
select version_number, template_type_code from templates where version_number > 5
select version_number, template_type_code from templates where version_number > 5
select template_type_code, count(*) from templates group by template_type_code
select template_type_code, count(*) from templates group by template_type_code
select template_type_code from templates group by template_type_code order by count(*) desc limit 1
select template_type_code from templates group by template_type_code order by count(*) desc limit 1
select template_type_code from templates group by template_type_code having count(*) < 3
select template_type_code from templates group by template_type_code having count(*) < 3
select min(version_number), template_type_code from templates
select min(version_number), template_type_code from templates
select template_type_code from documents as t1 join templates as t2 on t1.document_id = t2.document_id
select template_type_code from documents as t1 join templates as t2 on t1.document_id = t2.document_id
select t1.document_name from documents as t1 join templates as t2 on
select t1.document_name from documents as t1 join templates as t2 on t1.document_id = t2.document_id
select template_type_code, count(*) from documents
select template_type_code, count(*) from document
select template_type_code from templates group by template_type_code order by count(*) desc limit 1
select template_type_code from documents
select template_type_code from templates where template_id not in (select template_id from documents)
select template_type_code from templates where template_id not in (select template_id from documents)
select template_type_code, template_type_description from ref_template_types
select template_type_code, template_type_description from ref_template_types
select template_type_description from ref_template_types where template_type_code = "AD"
select template_type_description from ref_template_types where template_type_code = "AD"
select template_type_code from ref_template_types where template_type_description = "Book"
select template_type_code from ref_template_types where template_type_description = "Book"
select distinct template_type_description from ref_template_types
select distinct template_type_description from templates as t1 join ref_template_types as t2 on t1.template_type_code = t2.template_type_code
select template_id from
select template_id from templates where template_type_description = 'Presentation' - t1.template_type_code
select count(*) from paragraphs
select count(*) from paragraphs
select count(*) from paragraphs as t1 join documents as t2 on t1.document_id = t2.document_id where t2.document_name = 'Summer Show'
select count(*) from paragraphs as t1 join documents as t2 on t1.document_id = t2.document_id where t2.document_name = 'Summer Show'
select 'Korea' from paragraphs where paragraph_text = "Korea"
select other_details from paragraphs where paragraph_text like '%korea%'
select t1.paragraph_id, t1.paragraph_text from paragraphs as t1 join documents as t2 on t1.document_id = t2.document_id where t2.document_name = "Welcome to NY"
select t1.paragraph_id, t1.paragraph_text from paragraphs as t1 join documents as t2 on t1.document_id = t2.document_id where t2.document_name = "Welcome to NY"
select distinct t1.paragraph_text from paragraphs as t1 join documents as t2 on t1.document_id = t2.document_id where t2.document_name = "Customer reviews"
select t1.paragraph_text from paragraphs as t1 join documents as t2 on t1.document_id = t2.document_id where t2.document_name = "Customer reviews"
select document_id, count(distinct paragraph_id) from paragraphs group by document_id order by document_id
select document_id, count(distinct paragraph_id) from paragraphs group by document_id order by count(*) asc
select document_id, document_name, count(*) from paragraphs
select t1.document_id, t1.document_name, count(*) from documents as t1 join paragraphs as t2 on t1.document_id = t2.document_id group by t1.document_id
select document_id from paragraphs group by document_id having count(*) >= 2
select document_id from paragraphs group by document_id having count(*) >= 2
select t1.document_id, t1.document_name from documents as t1 join paragraphs as t2 on t1.document_id = t2.document_id group by t1.document_id order by count(*) desc limit 1
select t1.document_id, t1.document_name from documents as t1 join paragraphs as t2 on t1.document_id = t2.document_id group by t1.document_id order by count(*) desc limit 1
select document_id from paragraphs group by document_id order by count(*) asc limit 1
select document_id from paragraphs group by document_id order by count(*) asc limit 1
select document_id from paragraphs group by document_id having count(*) between 1 and 2
select document_id from paragraphs group by document_id having count(*) between 1 and 2
select document_id from paragraphs where paragraph_text = 'Brazil' intersect select document_id from paragraphs where paragraph_text = 'Ireland'
select document_id from paragraphs where paragraph_text = 'Brazil' intersect select document_id from paragraphs where paragraph_text = 'Irlanda'
select count(*) from teacher
select count(*) from teacher
select name from teacher order by age asc
select name from teacher order by age asc
select age, hometown from teacher
select age, hometown from teacher
select name from teacher where hometown!= ''
select name from teacher where hometown!='Little Lever Urban District'
select name from teacher where age = 32 or age = 33
select name from teacher where age = 32 or age = 33
select hometown from teacher order by age asc limit 1
select hometown from teacher order by age asc limit 1
select hometown, count(*) from teacher group by hometown
select hometown, count(*) from teacher group by hometown
select hometown from teacher group by hometown order by count(*) desc limit 1
select hometown from teacher group by hometown order by count(*) desc limit 1
select hometown from teacher group by hometown having count(*) >= 2
select hometown from teacher group by hometown having count(*) >= 2
select t2.name, t3.course_id from course_arrange as t1 join teacher as t2 on t1.teacher_id = t2.teacher_id join course as t3 on t1.course_id = t3.course_id
select t2.name, t3.course_id from course_arrange as t1 join teacher as t2 on t1.teacher_id = t2.teacher_id join course as t3 on t1.course_id = t3.course_id
select t2.name, t3.course_id from course_arrange as t1 join teacher as t2 on t1.teacher_id = t2.teacher_id join course as t3 on t1.course_id = t3.course_id order by t2.name asc
select t2.name, t3.course_id from course_arrange as t1 join teacher as t2 on t1.teacher_id = t2.teacher_id join course as t3 on t1.course_id = t3.course_id order by t2.name asc
select t2.name from course_arrange as t1 join teacher as t2 on t1.teacher_id = t2.teacher_id join course as t3 on t1.course_id = t3.course_id where t3.course = 'Math'
select t1.name from teacher as t1 join course as t2 on t1.teacher_id = t2.teacher_id
select t2.name, count(*) from course_arrange as t1 join teacher as t2 on t1.teacher_id = t2.teacher_id group by t2.name
select t2.name, count(*) from course_arrange as t1 join teacher as t2 on t1.teacher_id = t2.teacher_id group by t1.teacher_id
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
select open_year, num_of_staff from museum where name = 'Pala Museum'
select name from museum where num_of_staff > (select min(num_of_staff) from museum where open_year > 2010)
select t1.id, t1.name, t1.age from visitor as t1 join visit as t2 on t1.id = t2.visitor_id group by t1.id having count(*) > 1
select t1.id, t1.name, t1.level_of_membership from visitor as t1 join visit as t2 on t1.id = t2.visitor_id group by t1.id order by sum(t2.total_spent) desc limit 1
select t1.museum_id, t1.name from museum as t1 join visit as t2 on t1.museum_id = t2.museum_id group by t1.museum_id order by count(*) desc limit 1
select name from museum where museum_id not in (select museum_id from visit)
select t1.name, t1.age from visitor as t1 join visit as t2 on t1.id = t2.visitor_id group by t2.visitor_id order by count(*) desc limit 1
select avg(num_of_ticket), max(num_of_ticket) from visit
select sum(num_of_ticket), t1.name from visitor as t1 join visit as t2 on t1.id = t2.visitor_id where t1.level_of_membership = 1
select t1.name from visitor as t1 join visit as t2 on t1.id = t2.visitor_id join museum as t3 on t3.museum_id = t2.museum_id where t3.open_year < 2009 intersect select t1.name from visitor as t1 join visit as t2 on t1.id = t2.visitor_id join museum as t3 on t3.museum_id = t3.museum_id where t3.open_year > 2011
select count(*) from visitor where visitor_id not in ( select visitor_id from visit where museum_id not in
select count(*) from museum where open_year > 2013 or open_year < 2008
select count(*) from players
select count(*) from players
select count(*) from matches
select count(*) from matches
select first_name, birth_date from players where country_code = "USA"
select first_name, birth_date from players where country_code = "USA"
select avg(t2.winner_age), t1.loser_age from matches as t1 join
select avg(winner_age), avg(loser_age) from matches
select avg(winner_rank) from matches
select avg(winner_rank) from matches
select max(loser_rank) from matches
select max(loser_rank) from matches
select count(distinct country_code) from players
select count(distinct country_code) from players
select count(*) from players
select count (distinct loser_name) from
select tourney_name from matches group by tourney_name having count(*) > 10
select tourney_name from matches group by tourney_name having count(*) > 10
select winner_name from matches where winner_age = 2013 intersect select winner_name from matches where winner_age = 2016
select t1.first_name, t1.last_name from players as t1 join matches as t2 on t1.player_id = t2.winner_i
select count(*) from matches where year = 2013 or year = 2016;
select count(*) from matches where year = 2013 or year = 2016
select t1.country_code, t1.first_name from players as t1 join matches as t2 on t1.player_id = t2.player_id
select t1.first_name, t1.country_code from players as t1 join matches as t2 on t1.player_id = t2.player_id
select first_name, country_code from players order by birth_date desc limit 1
select first_name, country_code from players order by birth_date desc limit 1
select first_name, last_name from players order by birth_date
select first_name, last_name from players order by birth_date
select first_name, last_name from players where hand = 'L' order by birth_date
select first_name, last_name from players where hand = 'left' order by birth_date
select t2.first_name, t2.country_code from
select t2.first_name, t2.country_code from
select year from matches group by year order by count(*) desc limit 1
select year from matches group by year order by count(*) desc limit 1
select t2.winner_name, t2.winner_rank_points from rankings as t1 join
select t2.winner_name, t1.winner_rank_points from matches as t1 join players as t2
select t3.winner_name from players as t1 join matches as t2 on t1.player_id = t2.winner_ioc and t2.winner_rank = t2.winner_ioc
select t2.winner_name, t1.winner_rank_points from matches as t1 join
select t2.loser_name, t1.winner_name from matches as t1 join
select t2.winner_name, t2.loser_name from matches as t1 join
select avg(ranking), t2.first_name from rankings as t1 join players as t2 on t1.player_id = t2.player_id group by t2.player_id
select t1.first_name, avg(t2.rank
select t1.first_name, t1.winner_rank_points, sum(t1.winner_rank) from players as t2 join rankings as t3 on t1.player_id = t3.player_id
select t1.first_name, sum(t2.ranking_points) from players as t1 join rankings as t2 on t1.player_id = t2.player_id group by t1.player_id
select country_code, count(*) from players group by country_code
select country_code, count(*) from players group by country_code
select country_code from players group by country_code order by count(*) desc limit 1
select country_code from players group by country_code order by count(*) desc limit 1
select country_code from players group by country_code having count(*) > 50
select country_code from players group by country_code having count(*) > 50
select sum(t1.tours), t2.rank
select count(*), sum(t1.tours) from rankings as t1 join players as t2 on t1.player_id = t2.player_id group by t1.ranking_date
select count(*), year from matches group by year
select year, count(*) from matches group by year
select winner_name, winner_rank from matches order by winner_age asc limit 3
select winner_name, winner_rank from matches order by winner_age asc limit 3
select count(distinct winner_id) from matches where tourney_name = "WTA Championships" and hand = "left-handed "
select count(*) from players as t1 join matches as t2 on t1.player_id = t2.winner_id join players as t3 on t2.loser_id = t3.loser_ioc
select t1.first_name, t1.country_code, t1.birth_date from players as t1 join matches as t2 on t1.player_id = t2.winner_id order by t2.winner_rank desc limit 1
select t2.first_name, t2.country_code, t2.birth_date from rankings as t1 join players as t2 on t1.player_id = t2.player_id group by t1.player_id order by count(*) desc limit 1
select hand, count(*) from players group by hand
select hand, count(*) from players group by hand
select count(*) from ship where disposition_of_ship = 'Captured'
select name, tonnage from ship order by tonnage desc
select name, date, result from battle
select max(t1.killed), min(t2.injured), t2.name from death as t1 join ship as t2
select count(*), avg(injured) from death group by avg(injured)
select t2.killed, t2.injured from ship as t1 join death as t2 on t1.id = t2.caused_by_ship_id where t1.tonnage = 't'
select name, result from battle where bulgarian_commander!= 'Boril'
select distinct t2.id, t2.name from ship as t1 join battle as t2 on t1.ship_type = t2.id where t1.ship_type = 'Brig'
select id, name from battle where result > 10
select t1.id, t1.name from ship as t1 join death as t2 on t1.id= t2.caused_by_ship_id group by t1.id order by sum(t2.injured) desc limit 1
select distinct t1.name from battle as t1 join battle as t2 on t1.id = t2.b
select count(distinct result) from battle
select count(*) from battle where id not in ( select lost_in_battle from ship where tonnage = 225 );
select t1.name, t1.date from battle as t1 join ship as t2 on
select name, result, bulgarian_commander from battle where id not in (select lost_in_battle from ship where location = 'English Channel')
select note from death where note like '%east%'
select address_id from addresses where line_1 = 1 and line_2 = 2
select t2.line_1, t2.line_2 from addresses as t1 join addresses as t2 on t1.address_id = t2.address_id
select count(*) from courses
select count(*) from courses
select course_description from courses where course_name = "mathachian"
select course_description from courses where course_name = "mathachian"
select t1.zip_postcode from addresses as t1 join addresses as t2 on t1.address_id = t2.address_id where t2.city = "Port Chelsea"
select zip_postcode from addresses where city = "Port Chelsea"
select t2.department_name, t1.department_id from degree_programs as t1 join departments as t2 on t1.department_id = t2.department_id group by t1.department_id order by count(*) desc limit 1
select t2.department_name, t1.department_id from degree_programs as t1 join departments as t2 on t1.department_id = t2.department_id group by t1.department_id order by count(*) desc limit 1
select count(distinct department_id) from degree_programs
select count(distinct department_id) from degree_programs
select count(distinct degree_program_id) from degree_programs
select count(distinct degree_program_id) from degree_programs
select count(*) from degree_programs as t1 join departments as t2 on t1.department_id = t2.department_id where t2.department_name = "Engineering"
select count(*) from departments as t1 join degree_programs as t2 on t1.department_id = t2.department_id
select section_name, section_description from sections
select section_name, section_description from sections
select t1.course_name, t1.course_id from courses as t1 join sections as t2 on t1.course_id = t2.course_id group by t1.course_id having count(*) < 2
select t1.course_name, t1.course_id from courses as t1 join sections as t2 on t1.course_id = t2.course_id group by t1.course_id having count(*) < 2
select section_name from sections order by section_name desc
select section_name from sections order by section_name desc
select t1.semester_name, t2.student_id from semesters as t1 join student_enrolment as t2 on t1.semester_id = t2.semester_id group by t2.semester_id order by count(*) desc limit 1
select t2.semester_name, t1.student_id from student_enrolment as t1 join semesters as t2 on t1.semester_id = t2.semester_id group by t1.student_id order by count(*) desc limit 1
select department_name from departments where department_name like '%dept%'
select department_description from departments where department_name like '%computer%'
select t1.first_name, t1.middle_name, t1.last_name, t2.student_id from students as t1 join student_enrolment as t2 on t1.student_id = t2.student_id group by t2.degree_program_id having count(*) = 2
select t1.first_name, t1.middle_name, t1.last_name, t2.student_id from students as t1 join student_enrolment as t2 on t1.student_id = t2.student_id group by t2.degree_program_id having count(*) = 2
select t2.first_name, t2.middle_name, t3.last_name from student_enrolment as t1 join students as t2 on t1.student_id = t2.student_id join degree_programs as t4 on t3.degree_program_id = t4.degree_program_id
select t2.first_name, t2.middle_name, t2.last_name from student_enrolment as t1 join students as t2 on t1.student_id = t2.student_id where t1.degree_program_id = "Boston"
select degree_program_id from student_enrolment group by degree_program_id order by count(*) desc limit 1
select t2.degree_summary_name from student_enrolment as t1 join courses as t2
select t1.degree_program_id, t2.degree_summary_name from student_enrolment as t1 join students as t2
select t1.degree_program_id, t1.degree_summary_name from degree_programs as t1 join student_enrolment as t2 on t1.degree_program_id = t2.degree_program_id group by t1.degree_program_id order by count(*) desc limit 1
select t1.student_id, t2.first_name, t2.middle_name, t2.last_name, count(*) from student_enrolment as t1 join students as t2 on t1.student_id = t2.student_id group by t1.student_id order by count(*) desc limit 1
select t1.first_name, t1.middle_name, t1.last_name, t1.student_id, count(*) from students as t1 join student_enrolment as t2 on t1.student_id = t2.student_id group by t1.student_id order by count(*) desc limit 1
select semester_name from semesters where semester_id not in (select semester_id from student_enrolment)
select semester_name from semesters where semester_id not in (select semester_id from student_enrolment)
select t1.course_name from courses as t1 join student_enrolment_courses as t2 on t1.course_id = t2.course_id
select t1.course_name from courses as t1 join student_enrolment_courses as t2 on t1.course_id = t2.course_id
select t1.course_name from courses as t1 join student_enrolment_courses as t2 on t1.course_id = t2.course_id group by t1.course_name order by count(*) desc limit 1
select t1.course_name from courses as t1 join student_enrolment_courses as t2 on t1.course_id = t2.course_id group by t1.course_name order by count(*) desc limit 1
select last_name from students where current_address_id = "North Carolina" except select t1.last_name from students as t1 join student_enrolment as t2 on t1.student_id = t2.student_id
select t1.last_name from students as t1 join student_enrolment as t2 on t1.student_id = t2.student_id join addresses as t3 on t2.address_id
select transcript_date, transcript_id from transcripts group by transcript_id having count(*) >= 2
select transcript_date, transcript_id from transcripts group by transcript_id having count(*) >= 2
select cell_mobile_number from students where first_name = "Timmothy" and last_name = "Gard"
select cell_mobile_number from students where first_name = "Timmothy" and last_name = " Ward"
select first_name, middle_name, last_name from students
select t2.first_name, t2.middle_name, t2.last_name from student_enrolment as t1 join students as t2 on t1.student_id = t2.student_id
select t2.first_name, t2.middle_name, t2.last_name from student_enrolment as t1 join students as t2 on t1.student_id = t2.student_id order by t1.date_first_registered
select t1.first_name, t1.middle_name, t1.last_name from students as t1 join student_enrolment as t2 on t1.student_id = t2.student_id order by date_first_registered, t1.middle_name, t1.last_name asc limit 1
select t2.first_name from addresses as t1 join students as t2 on t1.address_id = t2.address_id
select distinct t1.first_name from students as t1 join student_enrolment as t2 on t1.student_id = t2.student_id where current_address_id = " permanent"
select t1.address_id, t1.line_2 from addresses as t1 join student_enrolment as t2 on t1.address_id = t2.address_id
select t1.address_id, t1.line_1, t1.line_2 from addresses as t1 join student_enrolment as t2 group by t1.address_id order by count(*) desc limit 1
select avg(t2.date_left) from transcript_contents as t1 join student_enrolment as t2
select avg(transcript_date) from transcripts
select t2.date_first_registered, t2.date_left, t1.other_details from transcripts as t1 join students as t2 on t1.transcript_id = t2.transcript_date
select date_left, other_details from transcripts
select count(*) from transcripts
select count(*) from transcripts
student_transcripts_tracking
select max(t2.date_left) from transcript_contents as t1 join student_enrolment as t2
select count(*), student_enrolment_id from student_enrolment group by student_enrolment_id order by count(*) desc
select max(t1.course_id), t2.student_enrolment_id from student_enrolment as t2 join transcript_contents as t3 on t1.student_course_id = t3.course_id
select transcript_date, transcript_id from transcripts group by transcript_id order by count(*) asc limit 1
select transcript_date, transcript_id from transcripts group by transcript_id order by count(*) asc limit 1
select t1.semester_name from semesters as t1 join student_enrolment as t2 on t1.semester_id = t2.semester_id join courses as t3 on t2.semester_id = t3.semester_id
select semester_id from student_enrolment where student_id = 'MA' intersect select semester_id from student_enrolment where student_id = 'Boston'
select count(distinct permanent_address_id) from students
select count(distinct address_id) from addresses as t1 join student_enrolment as t2 on t1.address_id = t2.student_id group by t1.address_id order by count(*) desc limit 1
select other_student_details from students order by other_student_details desc
select other_student_details from students order by other_student_details desc
select section_name from sections where section_description like '%h%'
select section_description from sections where section_name = "h"
select t1.first_name from students as t1 join student_enrolment as t2 on t1.student_id = t2.student_id join addresses as t3 on
select first_name from students where permanent_address_id = "Hait" or cell_mobile_number = "09700166582"
select title from cartoon order by title
select title from cartoon order by title
select title from cartoon where directed_by = "Ben Jones"
select title from cartoon where directed_by = "Ben Jones"
select count(*) from cartoon where written_by = "Joseph Kuhr"
select count(*) from cartoon where written_by = "Joseph Kuhr"
select t1.title, t1.directed_by from cartoon as t1 join tv_series as t2 on t1.id =
select t1.title, t1.directed_by from cartoon as t1 join tv_series as t2 on t2.id = t1.id order by t2.air_date
select title from cartoon where directed_by = "Ben Jones" or directed_by = "Brandon Vietti"
select title from cartoon where directed_by = "Ben Jones" or directed_by = "Ben Jones"
select country, count(*) from tv_channel group by country order by count(*) desc limit 1
select country, count(*) from tv_channel group by country order by count(*) desc limit 1
select count(distinct series_name), content from tv_channel
select count(distinct series_name), content from tv_channel
select content from tv_channel where series_name = "Sky Radio"
select content from tv_channel where series_name = "City Radio"
select package_option from tv_channel where series_name = "Sky Radio"
select package_option from tv_channel where series_name = 'City Radio'
select count(*) from tv_channel where language = "English"
select count(*) from tv_channel where language = "English"
select language, count(*) from tv_channel group by language order by count(*) asc limit 1
select language, count(*) from tv_channel group by language order by count(*) asc limit 1
select language, count(*) from tv_channel group by language
select language, count(*) from tv_channel group by language
select t1.series_name from tv_channel as t1 join cartoon as t2 on t1.id = t2.channel where t2.title = "The rise of the blue betle!"
select t1.series_name from tv_channel as t1 join tv_series as t2 on t1.id = t2.channel join cartoon as t3 on t1.id = t3.id where t3.title = "The Rise of the blue Beetle"
select t1.title from cartoon as t1 join tv_channel as t2 on t1.id = t2.channel
select t2.title from tv_channel as t1 join tv_series as t4 on t1.id = t4.id join tv_series as t5 on t3.id = t4.t
select episode from tv_series order by rating
select episode from tv_series order by rating
select episode, rating from tv_series order by rating desc limit 3
select episode, rating from tv_series group by rating order by count(*) desc limit 3
select min(share), max(share) from tv_series
select max(share), min(share) from tv_series
select air_date from tv_series where episode = "A love of a Lifetime"
select air_date from tv_series where episode = "A love of a Lifetime"
select weekly_rank from tv_series where episode = "A love of a Lifetime"
select weekly_rank from tv_series where episode = "A love of a Lifetime"
select t1.series_name from tv_channel as t1 join tv_series as t2 on t1.id = t2.channel
select tv_series.series_name from tv_series as t1 Join tv_series as t2 on t1.id = t2.series
select episode from tv_series
select episode from tv_series
select directed_by, count(*) from cartoon group by directed_by
select directed_by, count(*) from cartoon group by directed_by
select t1.production_code, t1.channel from cartoon as t1 join tv_channel as t2 on t1.id = t2.channel
select t1.channel, t1.id from cartoon as t1 join tv_channel as t2 on t1.channel = t2.id group by t1.channel order by count(*) desc limit 1
select package_option, series_name from tv_channel where hight_definition_tv = 'Yes'
select package_option, t1.series_name from tv_channel as t1 join tv_series as t2 on t1.id = t2.channel where t1.hight_definition_tv = 'Yes'
select t1.country from tv_channel as t1 join cartoon as t2 on t1.id = t2.channel where t2.written_by = "Tony Casey"
select t1.country from tv_channel as t1 join tv_channel as t2 on t1.id = t2.channel
select country from tv_channel except select t1.country from tv_channel as t1 join cartoon as t2 on t1.id = t2.channel where t2.written_by = "Tony Casey"
select country from tv_channel except select t1.country from tv_channel as t1 join cartoon as t2 on t1.id = t2.channel where t2.written_by = "Tony Casey"
select t1.series_name, t1.country from tv_channel as t1 join tv_series as t2 on t1.id = t2.channel
select t1.series_name, t1.country from tv_channel as t1 join tv_series as t2 on t1.id = t2.channel
select pixel_aspect_ratio_par, country from tv_channel where language!= 'English'
select pixel_aspect_ratio_par, country from tv_channel where language!= 'english'
select id from tv_channel where country > 2
select id from tv_channel where hight_definition_tv > 2
select id from tv_channel except select t1.id from tv_channel as t1 join cartoon as t2 on t1.id = t2.channel where t2.directed_by = "Ben Jones"
select id from tv_channel except select t1.id from tv_channel as t1 join cartoon as t2 on t1.id = t2.channel where t2.directed_by = "Ben Jones"
select package_option from tv_channel where t2.directed_by
select package_option from tv_channel where t2.directed_by
select count(*) from poker_player
select count(*) from poker_player
select earnings from poker_player order by earnings desc
select earnings from poker_player order by earnings desc
select final_table_made, best_finish from poker_player
select final_table_made, best_finish from poker_player
select avg(e
select avg(e
select money_rank from poker_player order by earnings desc limit 1
select money_rank from poker_player order by earnings desc limit 1
select max(t1.final_table_made) from poker_player as t1 join people as t2 on t1.people_id = t2.people_id join poker_player as t3 on t1.poker_player_id = t3.poker_player_id where t3.money_rank < 200000
select max(t2.final_table_made) from poker_player as t1 Join poker_player as t2 on t1.poker_player_id = t2.poker_player_id where t1.money_rank < 200000 group by t2.final_table_made order by sum(t1.money_rank) desc limit 1
select t2.name from poker_player as t1 join people as t2 on t1.people_id = t2.people_id
select t2.name from poker_player as t1 join people as t2 on t1.people_id = t2.people_id
select t2.name from poker_player as t1 join people as t2 on t1.people_id = t2.people_id where t1.e
select t2.name from poker_player as t1 join people as t2 on t1.people_id = t2.people_id
select t2.name from poker_player as t1 join people as t2 on t1.people_id = t2.people_id order by t1.final_table_made asc
select t2.name from poker_player as t1 join people as t2 on t1.people_id = t2.people_id order by t1.final_table_made asc
select t2.birth_date from poker_player as t1 join people as t2 on t1.people_id = t2.people_id order by t1.e
select t2.birth_date from poker_player as t1 join people as t2 on t1.people_id = t2.people_id order by t1.e
select t1.money_rank from poker_player as t1 join people as t2 on t1.people_id = t2.people_id order by t2.height desc limit 1
select t1.money_rank from poker_player as t1 join people as t2 on t1.people_id = t2.people_id order by t2.height desc limit 1
select avg(t1.e
select avg(t1.e
select t2.name from poker_player as t1 join people as t2 on t1.people_id = t2.people_id order by earnings desc
select t2.name from poker_player as t1 join people as t2 on t1.people_id = t2.people_id order by earnings desc
select nationality, count(*) from people group by nationality
select nationality, count(*) from people group by nationality
select nationality from people group by nationality order by count(*) desc limit 1
select nationality from people group by nationality order by count(*) desc limit 1
select nationality from people group by nationality having count(*) >= 2
select nationality from people group by nationality having count(*) >= 2
select name, birth_date from people order by name asc
select name, birth_date from people order by name asc
select name from people where nationality!= "Russia"
select name from people where nationality!= "Russia"
select name from people where people_id not in (select people_id from poker_player)
select name from people where people_id not in (select people_id from poker_player)
select count(distinct nationality) from people
select count(distinct nationality) from people
select count(distinct state) from area_code_state
select contestant_number, contestant_name from contestants order by contestant_name desc
select vote_id, phone_number, state from votes
select max(area_code) from area_code_state group by area_code order by count(*) asc limit 1
select created from votes where state = 'CA'
select contestant_name from contestants where contestant_name!= "Jessie Alloway"
select distinct t1.state, t1.created from votes as t1 join area_code_state as t2 on t1.state = t2.state
select t1.contestant_number, t1.contestant_name from contestants as t1 join votes as t2 on t1.contestant_number = t2.contestant_number group by t1.contestant_number having count(*) >= 2
select t1.contestant_number, t1.contestant_name from contestants as t1 join votes as t2 on t1.contestant_number = t2.contestant_number group by t1.contestant_number order by count(*) asc limit 1
select count(*) from votes where state = 'NY' or state = 'CA'
select count(*) from contestants where contestant_number not in (select contestant_number from votes)
select t1.area_code from area_code_state as t1 join votes as t2 on t1.area_code = vote_id group by t1.area_code order by count(*) desc limit 1
select t3.created, t3.state, t3.phone_number from contestants as t1 join votes as t2 on t1.contestant_number = t2.contestant_number join area_code_state as
select t3.area_code from contestants as t1 join votes as t2 on t1.contestant_number = t2.state join area_code_state as t3 on t1.contestant_number = t3.area_code where t1.contestant_name = 'Tabatha Gehling' intersect select t3.area_code from contestants as t1 join votes as t2 on t1.contestant_number = t2.state join area_code_state as t3 on t2.state = t3.area_code where t1.contestant_name = 'Kelly Clauss'
select contestant_name from contestants where contestant_name like '%al%'
select name from country where indepyear > 1950
select name from country where indepyear > 1950
select count(*) from country where governmentform = 'Republik'
select count(*) from country where governmentform = 'Republik'
select sum(surfacearea) from country where region = 'Caribbean'
select sum(t2.surfacearea) from country as t1 join country as t2 on t1.country
select continent from country where name = 'Anguilla'
select continent from country where name = 'Anguilla'
select region from country where name = 'Kayakul'
select region from country where name = 'Kayakul'
select t2.language from country as t1 join countrylanguage as t2 on t1.id
select t2.language from country as t1 join countrylanguage as t2 on t1.countrycode
select population, lifeexpectancy from country where name = 'Brazil'
select population, lifeexpectancy from country where name = 'Brazil'
select region, population from country where name = 'Anggola'
select region, population from country where name = 'Anggola'
select avg(lifeexpectancy) from country where region = 'Central Africa'
select avg(lifeexpectancy) from country where region = 'Central Africa'
select name from country order by lifeexpectancy asc limit 1
select name from country where continent = 'Asie' order by lifeexpectancy limit 1
select sum(gnp), max(gnp) from country where continent = 'Asie'
select count(*), gnp from country where continent = 'Asie' group by gnp order by count(*) desc limit 1
select avg(lifeexpectancy) from country where governmentform = 'Africa'
select avg(lifeexpectancy) from country where continent = 'Africa' and governmentform = 'Republik'
select sum(surfacearea) from country where continent = 'Asie' intersect select sum(surfacearea) from country where continent = 'Europe'
select sum(surfacearea) from country where continent = 'Asie' or continent = 'Europe'
select count(*) from city where district = "Gelderland"
select sum(population) from city where district = "Gelderland"
select avg(gnp), sum(population) from country where governmentform = 'US Territory'
select avg(gnp), sum(population) from country where governmentform = 'US Territory'
select count(distinct language) from countrylanguage
select count(distinct language) from countrylanguage
select count(distinct governmentform) from country where continent = 'Africa'
select count(distinct governmentform) from country where continent = 'Africa'
select count(*) from country as t1 join countrylanguage as t2 on t2.countrycode = t1.code where t1.name = "Aruba"
select count(distinct language) from country as t1 join countrylanguage as t2 on t2.countrycode = t2.countrycode where t1.name = "Aruba"
select count(*) from country
select count(distinct language) from country as t1 join countrylanguage as t2 on t2.countrycode = t2.countrycode where t1.name = 'Afghanistan'
select t1.name from country as t1 join countrylanguage as t2 on t1.code = t2.countrycode group by t2.countrycode order by count(*) desc limit 1
select t1.name from country as t1 join countrylanguage as t2 on t1.code = t2.countrycode group by t1.name order by count(*) desc limit 1
select continent, count(*) from country group by continent order by count(*) desc limit 1
select continent, count(*) from country
select count(*) from countrylanguage where language = 'English' intersect select count(*) from countrylanguage where language = 'N'
select count(*) from country as t1 join countrylanguage as t2 on t2.countrycode = t2.countrycode where t2.language = "English" intersect select t1.name from country as t1 join countrylanguage as t2 on t1.country
select language from countrylanguage where language = 'English' intersect select language from countrylanguage where language = 'France'
select language from countrylanguage where language = 'English' intersect select language from countrylanguage where language = 'France'
select t2.name from countrylanguage as t1 join country as t2 on t1.countrycode = t2.countrycode
select t2.name from countrylanguage as t1 join country as t2 on t1.countrycode = t2.code where t1.language = 'English' intersect select t2.name from countrylanguage as t1 join country as t2 on t1.countrycode = t2.code where t1.language = 'France'
select count(distinct t1.continent) from country as t1 join countrylanguage as t2 on t2.countrycode = t2.countrycode where t2.language = "Chinese"
select count(*) from country as t1 join countrylanguage as t2 on
select t2.region from countrylanguage as t1 join country as t2 on t1.countrycode = t2.countrycode
select countrycode from countrylanguage where language = 'Niederlande' or language = 'English'
select countrycode from countrylanguage where language = 'English' or language = 'N'
select t2.name from countrylanguage as t1 join country as t2 on t1.countrycode = t2.code where t1.language = 'English' or t1.language = 'N'
select t2.language from country as t1 join countrylanguage as t2 on t1.countrycode
select t2.language from country as t1 join countrylanguage as t2 on t1.countrycode
select language from country as t1 join countrylanguage as t2 on
select t2.language from country as t1 join countrylanguage as t2 on t1.code = t2.countrycode where t1.governmentform = 'Republik'
select t1.name from city as t1 join countrylanguage as t2 on t1.id = t2.countrycode where t2.language = 'English' group by t1.name order by count(*) desc limit 1
select t1.name from city as t1 join countrylanguage as t2 on t1.id = t2.countrycode where t2.language = 'English' group by t1.name order by count(*) desc limit 1
select name, population, lifeexpectancy from country where continent = 'Asie' order by surfacearea desc limit 1
select name, population, lifeexpectancy from country where continent = 'Asie' group by name order by count(*) desc limit 1
select avg(t2.lifeexpectancy) from countrylanguage as t1 join country as t2 on t1.countrycode = t2.code where t1.language!= 'English'
select avg(t2.lifeexpectancy) from countrylanguage as t1 join country as t2 on t1.countrycode = t1.countrycode where t1.language!= 'English'
select sum(population) from city where countrycode not in (select countrycode from country
select count(*) from country where language!= 'Englise language '
select distinct t2.language from country as t1 join countrylanguage as t2 on t1.code = t2.countrycode where t1.headofstate = 'Brittrix'
select distinct t2.language from country as t1 join countrylanguage as t2 on t1.code = t2.countrycode where t1.headofstate = 'Brittrix'
select count(distinct language) from countrylanguage where countrycode > 1930
select count(distinct language) from countrylanguage where isofficial > 1930
select name from country where surfacearea > (select max(surfacearea) from country where continent = 'Europe')
select name from country where surfacearea > (select max(surfacearea) from country where continent = 'Europe')
select name from country where population < (select max(population) from country where continent = 'Asie')
select name from country where population < (select min(population) from country where continent = 'Asie')
select name from country where continent = 'Asie' and population > (select min(population) from country where continent = 'Afghanistan')
select name from country where population > (select min(population) from country where continent = 'Asie')
select countrycode from countrylanguage where language!= 'English'
select countrycode from country
select countrycode from countrylanguage where language!= 'English'
select countrycode from countrylanguage where language!= 'English'
select t1.code from country as t1 join countrylanguage as t2 on t1.code = t2.countrycode where t2.language!= "English" except select t1.code from country as t1 join country as t2 on t1.code = t2.code where t2.governmentform = "Republik"
select code from country where language!= 'England' and governmentform!= 'Republik
select t1.name from city as t1 join countrylanguage as t2 on t1.countrycode = t2.countrycode where t2.language!= 'Europe'
select t1.name from city as t1 join countrylanguage as t2 on t1.countrycode = t2.countrycode where t2.language!= 'Europe'
select distinct t1.name from city as t1 join countrylanguage as t2 on t1.countrycode = t2.countrycode where t2.language = 'Chinese'
select distinct t1.name from city as t1 join countrylanguage as t2 on t1.countrycode = t2.countrycode where t2.language = 'Chinese'
select name, indepyear, surfacearea from country order by population limit 1
select name, indepyear, surfacearea from country order by population limit 1
select t1.population, t1.name, t1.localname from country as t1 join sqlite_sequence as t2 on t1.code = t2.countrycode
select name, population, headofstate from country order by surfacearea desc limit 1
select t1.name, count(*) from country as t1 join countrylanguage as t2 on t1.code = t2.countrycode group by t1.name having count(*) >= 3
select t1.name, count(*) from country as t1 join countrylanguage as t2 on t1.code = t2.countrycode group by t1.name having count(*) > 2
select count(*), district from city where population > (select avg(population) from city) group by district
select count(*), district from city where population > (select avg(population) from city) group by district
select governmentform, sum(lifeexpectancy) from country group by governmentform having avg(lifeexpectancy) >= 72
select governmentform, sum(lifeexpectancy) from country group by governmentform having avg(lifeexpectancy) >= 72
select avg(lifeexpectancy), sum(lifeexpectancy), continent from country group by continent having avg(lifeexpectancy) < 72
select t1.name, sum(t1.population), avg(t2.lifeexpectancy) from city as t1 join country as t2 on t1.id = t2.country
select name, region from country order by surfacearea desc limit 5
select name, surfacearea from country order by surfacearea desc limit 5
select name from country order by population desc limit 3
select name from country order by population desc limit 3
select name from country order by population asc limit 3
select name from country order by population asc limit 3
select count(*) from country where continent = 'Asie'
select count(*) from country where continent = 'Asie'
select name from country where continent = 'Europe' and population > 80000
select name from country where continent = 'Europe' and population > 80000
select sum(population), avg(surfacearea) from country where continent = 'North America' and region > 3000
select sum(population), avg(surfacearea) from country where region = 'North America' and surfacearea > 3000
select name from city where population between 160000 and 900000
select name from city where population between 160000 and 900000
select language from country
select language from countrylanguage group by language order by count(*) desc limit 1
select language from countrylanguage group by language order by count(*) desc limit 1
select countrycode, percentage from countrylanguage group by countrycode order by count(*) desc limit 1
select count(*) from countrylanguage where language = "Spanish" group by percentage order by count(*) desc limit 1
select count(*) from countrylanguage where language = 'Spanish' group by countrycode having count(*) >= 2
select countrycode from countrylanguage where language = 'Spanish' group by countrycode order by count(*) desc limit 1
select countrycode from countrylanguage where language = 'Spanish' group by countrycode having count(*) >= 2
select count(*) from conductor
select count(*) from conductor
select name from conductor order by age asc
select name from conductor order by age
select name from conductor where nationality!= 'USA'
select name from conductor where nationality!= 'USA'
select record_company from orchestra order by year_of_founded desc
select record_company from orchestra order by year_of_founded desc
select avg(attendance) from show
select avg(attendance) from show
select max(share), min(share) from performance where type!= "Live final"
select max(share), min(share) from performance where type!= 'Live final'
select count(distinct nationality) from conductor
select count(distinct nationality) from conductor
select name from conductor order by year_of_work desc
select name from conductor order by year_of_work desc
select name from conductor order by year_of_work desc limit 1
select name from conductor order by year_of_work desc limit 1
select t2.name, t3.orchestr
select t2.name, t3.name from performance as t1 join orchestra as t2
select t2.name from performance as t1 join conductor as t2 on t1.orchest
select t1.name from conductor as t1 join performance as t2 on t1.conductor_id = t2.conductor_id
select t1.name from conductor as t1 join orchestra as t2 on t1.orchestr
select orchestra, count(*) from orchestra group by orchestra_id order by count(*) desc limit 1
select t1.name from conductor as t1 join orchestra as t2 on t1.orchestr
select t1.name from conductor as t1 join orchestra as t2 on t1.orchestr
select record_company, count(*) from orchestra group by record_company
select record_company, count(*) from orchestra group by record_company
select major_record_format from orchestra order by count(*) asc
select major_record_format from orchestra order by major_record_format
select record_company from orchestra group by record_company order by count(*) desc limit 1
select record_company from orchestra group by record_company order by count(*) desc limit 1
select orchestra from orchestra where orchestra_id not in (select orchestra_id from performance)
select orchestra from orchestra where orchestra_id not in (select orchestra_id from performance)
select record_company from orchestra where year_of_founded < 2003 intersect select record_company from orchestra where year_of_founded > 2003
select record_company from orchestra where year_of_founded < 2003 intersect select record_company from orchestra where year_of_founded > 2003
select count(*) from orchestra where major_record_format = "CD" or major_record_format = "DVD"
select count(*) from orchestra where major_record_format = 'CD' or major_record_format = 'DVD'
select year_of_founded from orchestra group by year_of_founded having count(*) > 1
select t2.year_of_founded from performance as t1 join orchestra as t2 on t1.orchestr
select count(*) from highschooler
select count(*) from highschooler
select name, grade from highschooler
select name, grade from highschooler
select distinct grade from highschooler
select distinct grade from highschooler
select grade from highschooler where name = 'Knowy'
select grade from highschooler where name = 'Knowy'
select name from highschooler where grade = 10
select name from highschooler where grade = 10
select highschooler.id from highschooler as t1 join highschooler as t2 on t1.id = t2.student_id
select id from highschooler where name = 'Knowy'
select count(*) from highschooler where grade = 9 or grade = 10
select count(*) from highschooler where grade = 9 or grade = 10
select grade, count(*) from highschooler group by grade
select grade, count(*) from highschooler group by grade
select grade from highschooler group by grade order by count(*) desc limit 1
select grade from highschooler group by grade order by count(*) desc limit 1
select distinct grade from highschooler group by grade having count(*) >= 4
select grade from highschooler group by grade having count(*) >= 4
select student_id, count(t2.friend_id) from highschooler as t1 join
select count(t2.friend_id), count(*) from highschooler as t1 join friend as t2 on t1
select t2.name, count(*) from highschooler as t1 join highschooler as t2 on t1
select t1.name, count(distinct t2.friend_id) from highschooler as t1 join friend as t2 on t1.student_id
select t1.name from highschooler as t1 join friend as t2 on t1.id = t2.friend_id group by t2.friend_id order by count(*) desc limit 1
select t1.name from highschooler as t1 join friend as t2 on
select t2.name from friend as t1 join highschooler as t2 on t1.student_id = t1.student_id group by t1.student_id having count(*) >= 3
select t1.name from highschooler as t1 join friend as t2 on t1.id = t2.student_id group by t2.student_id having count(*) >= 3
select t3.name from highschooler as t1 join friend as t2 on
select t2.name from highschooler as t1 join highschooler as t2 on t1.friend_i
select count(distinct friend_id) from highschooler as t1 join highschooler as t2 on
select count(t2.friend_id) from highschooler as t1 join
select student_id from
select id from highschooler except select student_id from friend
select name from highschooler where id not in (select student_id from friend)
select name from highschooler where id not in (select student_id from friend)
select student_id from likes intersect select student_id from likes
select student_id from likes intersect select student_id from likes
select t2.name from likes as t1 join highschooler as t2 on t1.student_id = t2.student_id
select t2.name from likes as t1 join highschooler as t2 on
select count(*), student_id from likes group by student_id
select student_id, count(*) from likes group by student_id
select t1.name, count(*) from highschooler as t1 join likes as t2 on t1.id = t2.student_id group by t1.id
select count(*), t1.name from highschooler as t1 join likes as t2 on t1.id = t2.student_id group by t1.id
select t1.name from highschooler as t1 join likes as t2 on t1.id = t2.student_id group by t2.student_id order by count(*) desc limit 1
select t2.name from likes as t1 join highschooler as t2 on t1.student_id = t1.student_id group by t1.student_id order by count(*) desc limit 1
select t1.name from highschooler as t1 join likes as t2 on t1.id = t2.student_id group by t2.student_id having count(*) >= 2
select t2.name from likes as t1 join highschooler as t2 on t1.student_id = t1.student_id group by t1.student_id having count(*) >= 2
select t1.name from highschooler as t1 join friend as t2 on t1.id = t2.student_id where grade > 5 group by t2.friend_id having count(*) >= 2
select t1.name from highschooler as t1 join likes as t2 on t1.id = t2.student_id join highschooler as t3 on t2.
select count(*) from likes as t1 join highschooler as t2 on t1.student_id = t2.student_id
select count(*) from highschooler where name = 'Knowy'
select avg(t1.grade) from highschooler as t1 join friend as t2 on t1.id = t2.student_id
select avg(grade) from highschooler where friend_id = (select student_id from highschooler
select min(grade) from highschooler where id not in (select student_id from friend)
select min(grade) from highschooler where id not in (select student_id from friend)
select state from professionals intersect select state from owners
select state from owners intersect select state from professionals
select avg(age) from dogs where dog_id not in ( select dog_id from treatments )
select avg(t1.age) from dogs as t1 join treatments as t2 on t1.dog_id = t2.dog_id
select t1.professional_id, t1.last_name, t1.cell_number from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id group by t1.professional_id having count(*) > 2 union select t1.professional_id, t1.last_name, t1.cell_number from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id where t1.state = "Indiana"
select t1.professional_id, t1.last_name, t1.cell_number from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id where t1.state = "Indiana" or t2.cost_of_treatment > 2
select distinct t2.name from treatments as t1 join dogs as t2 on t1.dog_id = t2.dog_id where t1.cost_of_treatment > 1000
select t2.name from treatments as t1 join dogs as t2 on t1.dog_id = t2.dog_id where t1.cost_of_treatment > 1000
select first_name from professionals union select t1.first_name from owners as t1 join dogs as t2 on t1.owner_id = t2.professional_id
select first_name from professionals union select t1.first_name from owners as t1 join dogs as t2 on t1.owner_id = t2.professional_id
select t1.professional_id, t1.role_code, t1.email_address from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id except select t3.professional_id, t3.role_code, t3.email_address from dogs as t1 join treatments as t2 on t1.dog_id = t2.treatment_id join professionals as t3 on t2.professional_id = t3.role_code
select t1.professional_id, t1.role_code, t1.email_address from professionals as t1 join treatment_types as t2 on t1.professional_id = t2.treatment_id
select t1.owner_id, t1.first_name, t1.last_name from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id group by t1.owner_id order by count(*) desc limit 1
select t1.owner_id, t1.first_name, t1.last_name from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id group by t1.owner_id order by count(*) desc limit 1
select t1.professional_id, t1.role_code, t1.first_name from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id group by t1.professional_id having count(*) >= 2
select t1.professional_id, t1.role_code, t1.first_name from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id group by t1.professional_id having count(*) >= 2
select breed_name from breeds group by breed_code order by count(*) desc limit 1
select breed_name from breeds group by breed_name order by count(*) desc limit 1
select t1.owner_id, t1.last_name from owners as t1 join treatment_types as t2 on t1.owner_id = t2.treatment_type_code group by t1.owner_id order by count(*) desc limit 1
select t1.owner_id, t1.last_name from owners as t1 join treatment_types as t2 on t1.owner_id = t2.treatment_type_code group by t1.owner_id order by count(*) desc limit 1
select t1.treatment_type_description from treatment_types as t1 join treatments as t2 on t1.treatment_type_code = t2.treatment_type_code group by t1.treatment_type_code order by sum(t2.cost_of_treatment) asc limit 1
select t1.treatment_type_description from treatment_types as t1 join treatments as t2 on t1.treatment_type_code = t2.treatment_type_code group by t1.treatment_type_code order by sum(t2.cost_of_treatment) asc limit 1
select t1.owner_id, t1.zip_code from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id group by t1.owner_id order by sum(t2.abandoned_yn) desc limit 1
select t1.owner_id, t1.zip_code from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id group by t1.owner_id order by sum(t2.abandoned_yn) desc limit 1
select t1.professional_id, t2.cell_number from treatments as t1 join professionals as t2 on t1.professional_id = t2.professional_id group by t1.professional_id having count(*) >= 2
select t1.professional_id, t2.cell_number from treatments as t1 join professionals as t2 on t1.professional_id = t2.professional_id group by t1.professional_id having count(*) >= 2
select t2.first_name, t2.last_name from treatments as t1 join professionals as t2 on t1.professional_id = t2.professional_id where t1.cost_of_treatment < (select avg(cost_of_treatment) from treatments)
select t1.first_name, t1.last_name from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id where t2.cost_of_treatment < ( select avg(cost_of_treatment) from treatments )
select t1.date_of_treatment, t2.first_name from treatments as t1 join professionals as t2 on t1.professional_id = t2.professional_id
select t1.date_of_treatment, t1.first_name from treatments as t2 join professionals as t3 on t1.professional_id = t3.prof
select t1.cost_of_treatment, t2.treatment_type_description from treatments as t1 join treatment_types as t2 on t1.treatment_type_code = t2.treatment_type_code
select t1.cost_of_treatment, t2.treatment_type_description from treatments as t1 join treatment_types as t2 on t1.treatment_type_code = t2.treatment_type_code
select t2.first_name, t2.last_name, t1.size_code from dogs as t1 join owners as t2 on t1.owner_id = t2.owner_id group by t1.owner_id
select t1.first_name, t1.last_name, t2.size_code from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id group by t2.owner_id
select t1.first_name, t1.last_name from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id
select t2.first_name, t2.name from dogs as t1 join owners as t2
select t2.name, t1.date_of_treatment from treatments as t1 join dogs as t2 on t1.dog_id = t2.dog_id group by t2.dog_id order by count(*) desc limit 1
select t2.name, t1.date_of_treatment from treatments as t1 join dogs as t2 on t1.dog_id = t2.dog_id group by t1.dog_id order by count(*) asc limit 1
select first_name, last_name from dogs as t1 join owners as t2 on t1.owner_id = t2.owner_id where t2.state = "Virgina"
select t1.first_name, t1.last_name from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id where t1.state = "Virgina"
select date_arrived, date_departed from treatments as t1 join dogs as t2 on t1.dog_id = t2.dog_id
select date_arrived, date_departed from treatments as t1 join dogs as t2 on t1.dog_id = t2.dog_id
select t1.last_name from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id order by t2.date_of_birth desc limit 1
select t2.last_name from dogs as t1 join owners as t2 on t1.owner_id = t2.owner_id order by t1.age limit 1
select email_address from professionals where state = "Wisconsin" or state = "Wisconsin"
select email_address from professionals where state = "Wisconsin" or state = "Wisconsin"
select date_arrived, date_departed from dogs
select date_arrived, date_departed from dogs
select count(*) from dogs where date_arrived not in ( select dog_id from treatments )
select count(*) from dogs as t1 join treatment_types as t2 on t1.dog_id = t2.treatment_type_code group by t2.treatment_type_code
select count(distinct professional_id) from treatments
select count(distinct professional_id) from treatments
select role_code, street, city, state from professionals where city like '%west%'
select role_code, street, city, state from professionals where city like '%west%'
select first_name, last_name, email_address from owners where state like '%ny%'
select first_name, last_name, email_address from owners where state like '%ny%'
select count(*) from dogs where age < (select avg(age) from dogs)
select count(*) from dogs where age < (select avg(age) from dogs)
select max(cost_of_treatment) from treatments
select cost_of_treatment from treatments order by date_of_treatment desc limit 1
select count(*) from dogs where dog_id not in ( select dog_id from treatments )
select count(*) from dogs where dog_id not in ( select dog_id from treatments )
select count(*) from owners where owner_id not in ( select owner_id from dogs )
select count(*) from owners where owner_id not in ( select owner_id from dogs )
select count(*) from professionals where professional_id not in ( select professional_id from treatments )
select count(*) from professionals where professional_id not in ( select professional_id from treatments )
select name, age, weight from dogs where abandoned_yn = '1' and 0 = 'null'
select name, age, weight from dogs where abandoned_yn = '1' and 0 = 0
select avg(age) from dogs
select avg(age) from dogs
select age from dogs order by age desc limit 1
select age from dogs order by age desc limit 1
select charge_type, charge_amount from charges group by charge_type
select charge_type, charge_amount from charges;
select charge_type, sum(charge_amount) from charges group by charge_type order by sum(charge_type) desc limit 1;
select charge_amount from charges order by charge_type desc limit 1
select email_address, cell_number, home_phone from professionals
select email_address, cell_number, home_phone from professionals
select distinct size_code, breed_name from breed
select distinct breed_code, size_code from dogs
select t1.first_name, t1.email_address from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id
select t1.first_name, t1.first_name, t1.email_address from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id
select count(*) from singer
select count(*) from singer
select name from singer order by net_worth_millions asc
select name from singer order by net_worth_millions asc
select birth_year, citizenship from singer
select birth_year, citizenship from singer
select name from singer where citizenship!= 'France'
select name from singer where citizenship!= "France"
select name from singer where birth_year = 1948 or birth_year = 1949
select name from singer where birth_year = 1948 or birth_year = 1949
select name from singer order by net_worth_millions desc limit 1
select name from singer order by net_worth_millions desc limit 1
select citizenship, count(*) from singer group by citizenship
select citizenship, count(*) from singer group by citizenship
select citizenship from singer group by citizenship order by count(*) desc limit 1
select citizenship from singer group by citizenship order by count(*) desc limit 1
select citizenship, max(net_worth_millions) from singer group by citizenship
select citizenship, max(net_worth_millions) from singer group by citizenship
select t1.title, t2.name from song as t1 join singer as t2 on t1.song_id = t2.song
select t1.title, t2.name from song as t1 join singer as t2 on t1.song_id =
select distinct t2.name from song as t1 join singer as t2 on t1.song_id = t2.song_id
select distinct t2.name from song as t1 join singer as t2 on t1.song_id = t1.song_id where t1.sales > 300000
select t2.name from song as t1 join singer as t2 on t1.song_id = t2.song_id
select t2.name from song as t1 join singer as t2 on t1.song_id = t1.song_id group by t1.song_id having count(*) > 1
select t2.name, sum(t1.sales) from song as t1 join singer as t2 on t1.song_id = t1.song_id group by t1.song_id
select sum(sales), t2.name from song as t1 join singer as t2 on t1.song_id = t1.song_id group by t2.name
select name from singer where singer_id not in (select singer_id from song)
select title from song where singer_id not in (select singer_id from song)
select citizenship from singer where birth_year < 1945 intersect select citizenship from singer where birth_year > 1955
select citizenship from singer where birth_year < 1945 intersect select citizenship from singer where birth_year > 1955
select count(*) from other_available_features
select t2.feature_type_name from other_available_features as t1 join ref_feature_types as t2 on t1.feature_id = t2.feature_type_code where t1.feature_name = "AirCon"
select t1.property_type_description from ref_property_types as t1 join properties as t2 on t1.property_type_code = t2.property_type_code
select t1.property_name from properties as t1 join properties as t2 on t1.property_id = t2.property_id where t1.property_type_code = "Haus" or t2.property_type_code = "Apartment"
