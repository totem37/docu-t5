select count(*) from singer
select count(*) from concert
select t2.name, t2.country, t1.age from singer as t1 join singer as t2 on t1.singer_id = t2.singer_id order by t1.age desc
select name, country, age from singer order by age desc
select avg(age), min(age), max(age) from singer where country = 'France'
select avg(age), min(age), max(age) from singer
select t2.song_name, t2.year from singer as t1 join concert as t2
select song_name, song_release_year from singer order by age asc limit 1
select distinct t1.country from singer as t1 join singer as t2 on t1.singer_id = t2.singer_id where t1.age > 20
select distinct country from singer where age > 20
select
select t1.name, count(*) from singer as t1 join stadium as t2 on
select song_name from singer where age > (select avg(age) from singer)
select t2.song_name from singer as t1 join singer as t2 on t1.singer_id = t2.singer_id where t1.age > (select avg(age) from singer)
select location, name from stadium where capacity between 5000 and 10000
select t2.name, t1.name from stadium as t1 join singer as t2 on t1.stadium_id = t2.stadium_id
select average, max(capacity) from stadium
select average, max(capacity) from stadium
select name, sum(capacity) from stadium order by average desc limit 1
select name, sum(capacity) from stadium order by average desc limit 1
select count(*) from concert where year = 2014 or year = 2015
select count(*) from concert where year = 2014 or year = 2015
select t2.name, count(*) from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id group by t1.stadium_id
select count(*), stadium_id from stadium group by stadium_id
select t1.name, count(*) from stadium as t1 join concert as t2 on t1.stadium_id = t2.stadium_id where t2.year >= 2014 group by t1.stadium_id order by count(*) desc limit 1
select name, count(*) from stadium where capacity > 2013 group by name order by count(*) desc limit 1
select year from concert group by year order by count(*) desc limit 1
select t1.year from concert as t1 join singer as t2 on t1.concert_id = t2.singer_id group by t1.concert_id order by count(*) desc limit 1
select name from stadium where stadium_id not in (select stadium_id from concert)
select name from stadium where stadium_id not in (select stadium_id from concert)
select country from singer where age > 40 intersect select country from singer where age < 30
select name from stadium except select t1.name from stadium as t1 join concert as t2 on t1.stadium_id = t2.stadium_id where t2.year = 2014
select name from stadium except select t1.name from stadium as t1 join concert as t2 on t1.stadium_id = t2.stadium_id where t2.year = 2014
select t2.name, t3.theme, count(*) from concert as t1 join singer as t2 on
select t2.name, t2.theme, count(*) from singer_in_concert as t1 join concert as t2
select t2.name, count(*) from singer_in_concert as t1 join singer as t2 on t1.singer_id = t2.singer_id group by t1.singer_id
select t2.name, count(*) from singer_in_concert as t1 join singer as t2 on t1.singer_id = t2.singer_id group by t1.singer_id
select t3.name from singer as t1 join concert as t2 on t1.song_name = t2.song_name
select t3.name from singer_in_concert as t1 join concert as t2 on t1.concert_id = t2.concert_id join singer as t3 on t1.singer_id = t3.singer_id where t2.year = 2014
select t1.name, t1.n
select name, country from singer where song_name like '%hey%'
select t1.name, t1.location from stadium as t1 join concert as t2 on t1.stadium_id = t2.stadium_id where t2.year = 2014 intersect select t1.name, t1.location from stadium as t1 join concert as t2 on t1.stadium_id = t2.stadium_id where t2.year = 2015
select t2.name, t2.a
select count(*) from stadium order by highest desc limit 1
select count(*) from stadium where capacity = (select max(capacity) from stadium)
select count(*) from pets where weight > 10
select count(*) from pets where weight > 10
select t2.weight from has_pet as t1 join pets as t2 on t1.petid = t2.petid where t1.stuid in (select t1.petid from has_pet as t1 join pets as t2 on t1.petid = t2.petid group by t1.petid order by count(*) limit 1 )
select sum(t2.weight) from has_pet as t1 join pets as t2 on t1.petid = t2.petid join student as t3 on t1.stuid = t3.stuid where t3.age = (select min(age) from has_pet as t1 join pets as t2 on t1.petid = t2.petid
select max(weight), t1.petid from pets as t1 join has_pet as t2 on t1.petid = t2.petid group by t1.petid
select max(weight), max(weight), t1.stuid from has_pet as t1 join pets as t2 on t1.petid = t2.petid group by t1.stuid
select count(*) from student where age > 20
select count(distinct t2.pet_age) from has_pet as t1 join pets as t2 on t1.petid = t2.petid join student as t3 on t1.stuid = t3.stuid where t3.age > 20
select count(*) from student as t1 join has_pet as t2 on t1.stuid = t2.stuid join pets as t3 on t2.petid = t3.petid where t1.sex = "F"
select count(*) from student where sex = 'F'
select count(distinct t1.petid) from pets as t1 join pets as t2 on t1.petid = t2.petid group by t1.petid
select count(distinct fname), t1.sex from student as t1 join has_pet as t2 on t1.stuid = t2.stuid join pets as t3 on t2.petid = t3.petid group by t1.stuid
select distinct t1.fname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid join pets as t3 on t2.petid = t3.petid where t3.weight = 'King' or t3.petid = 'Poid'
select t1.fname, t1.lname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid join pets as t3 on t2.petid = t3.petid where t3.weight = 'King' or t3.petid = t3.petid
select t1.fname, t1.lname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid join pets as t3 on t2.petid = t3.petid where t3.weight = 'King' intersect select t1.lname from student as t1 join has_pet as t2 on t1.stuid = t2.petid join pets as t3 on t2.petid = t3.petid where t3.p
select t1.fname, t1.lname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid join pets as t3 on t2.petid = t3.petid where t3.weight = 'King' intersect select t1.fname, t1.lname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid where t2.pet
select major, age from student where stuid not in (select stuid from has_pet)
select stuid, sex, max(age) from student where stuid not in (select stuid from has_pet)
select stuid from student except select stuid from has_pet
select stuid from student except select stuid from has_pet
select t1.fname, t1.age from student as t1 join pets as t2 on t1.stuid = t2.petid where t2.pettype = 'cat'
select t1.fname, t1.lname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid join pets as t3 on t2.pet
select t2.pettype, t2.weight from student as t1 join pets as t2 on t1.stuid = t2.petid where t1.age = (select min(age) from student)
select t2.fname, t2.age, max(t1.age) from student as t1 join pets as
select t2.petid, t2.weight from student as t1 join pets as t2 on t1.stuid = t2.petid where t1.age > 1
select t2.petid, t2.weight from has_pet as t1 join pets as t2 on t1.petid = t2.petid join student as t3 on t1.stuid = t3.stuid where t3.age > 1
select avg(age), max(age), sex from student group by sex
select avg(t2.age), max(t1.age), t3.stuid from has_pet
select avg(weight), pettype from pets group by pettype
select avg(weight), pettype from pets group by pettype
select distinct t1.fname, t1.age from student as t1 join has_pet as t2 on t1.stuid = t2.stuid join pets as t3 on t3.petid = t2.petid
select distinct t2.fname, t2.age from has_pet as t1 join student as t2 on t1.stuid = t2.stuid where t1.petid in (select stuid from has_pet as t1 join pets as t2 on t1.petid = t2.petid)
select t2.petid from student as t1 join pets as t2 on t1.stuid = t2.petid where t1.lname = 'Smith'
select t2.petid from student as t1 join pets as t2 on t1.stuid = t2.petid where t1.lname = 'Smith'
select count(*), t1.stuid from has_pet as t1 join pets as t2 on t1.petid = t2.petid group by t1.stuid
select count(*), t1.stuid from student as t1 join has_pet as t2 on t1.stuid = t2.stuid join pets as t3 on t3.petid = t2.petid group by t1.stuid
select fname, sex from student group by sex having count(*) > 1
select t1.fname, t1.sex from student as t1 join has_pet as t2 on t1.stuid = t2.stuid group by t2.stuid having count(*) > 1
select t1.fname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid where t1.age = 3
select t1.fname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid join pets as t3 on t2.petid = t3.petid where t1.age = 3
select avg(age) from student where stuid not in (select t1.stuid from has_pet as t1 join pets as t2 on t1.petid = t2.petid)
select avg(age) from student where stuid not in (select stuid from has_pet)
select count(*) from continents
select count(*) from continents
select continent, continent, count(*) from continents group by continent
select continent, count(*) from continents group by continent
select count(distinct continent) from countries
select count(*) from countries
select count(*), t1.id, count(*) from car_makers as t1 join model_list as t2 on t1.id = t2.model group by t1.id
select t1.fullname, t1.id, count(*) from car_makers as t1 join model_list as t2 on t1.id = t2.modelid group by t1.id
select t1.model from model_list as t1 join cars_data as t2 on t1.model = t2.id order by t2.h
select model from car_names group by model order by count(*) limit 1
select t1.model from model_list as t1 join cars_data as t2 on t1.model = t2.id where t2.weight < (select avg(weight) from cars_data)
select t1.model from model_list as t1 join cars_data as t2 on t1.model = t2.id where t2.weight < (select avg(weight) from cars_data)
select t1.make from car_names as t1 join cars_data as t2 on t1.model = t2.id where t2.year = 1970
select distinct t1.make from car_names as t1 join cars_data as t2 on t1.model = t2.id where t2.year = 1970
select t1.make, t2.year from car_names as t1 join cars_data as t2 on t1.makeid = t2.id order by t2.year limit 1
select t1.model, t2.year from model_list as t1 join cars_data as t2 on t1.model = t2.id order by t2.year limit 1
select distinct model from model_list where model > 1980
select distinct t1.model from model_list as t1 join cars_data as t2 on t1.model = t2.id where t2.year > 1980
select continent, count(*) from continents group by continent
select continent, count(*) from continents group by continent
select t2.countryname from car_makers as t1 join countries as t2 on t1.country = t2.countryid group by t2.countryname order by count(*) desc limit 1
select t2.countryname from cars_data as t1 join countries as t2 on t1.country
select count(*), t1.fullname from car_makers as t1 join model_list as t2 on t1.id = t2.modelid group by t1.maker
select count(*), t1.id, t1.fullname from car_makers as t1 join model_list as t2 on t1.id = t2.modelid group by t1.id
select
select t1.id from cars_data as t1 join car_makers as t2 on t1.id = t2.maker where t1.make
select count(*) from car_makers where country = 'France'
select count(*) from countries as t1 join car_makers as t2 on t1.countryid = t2.id where t1.countryname = "France"
select count(distinct id) from countries as t1 join car_makers as t2 on t1.countryid = t2.id where t1.countryname = "United States"
select count(*) from model_list where model = 'USA'
select avg(mpg) from cars_data where cylinders = 4
select avg(t2.weight), t1.cylinders from cars_data as t1 join cars_data as t2 on t1.id = 4
select min(weight), cylinders from cars_data where year = 1974
select min(weight) from cars_data where cylinders = "1974"
select distinct t2.make, t1.model from model_list as t1 join car_names as t2 on t1.model = t2.makeid
select
select t2.countryname, t1.id from cars_data as t1 join countries as t2 on t1.country
select t2.countryname, t1.id from cars_data as t1 join countries as t2 on t1.country
select count(*) from cars_data where mpg > 150
select count(*) from cars_data where mpg > 150
select avg(weight), year from cars_data group by year
select avg(weight), avg(year), year from cars_data group by year
select t2.country from continents as t1 join car_makers as t2 on t1.country
select continent from continents group by continent having count(*) >= 3
select max(t1.
select mpg, cylinders from cars_data group by cylinders having count(*) = 3 order by count(*) desc limit 1
select model from model_list group by model order by count(*) desc limit 1
select t1.model from model_list as t1 join cars_data as t2 on t1.model = t2.id order by t2.mpg desc limit 1
select avg(
select avg(t1.
select avg(edispl) from model_list as t1 join cars_data as t2 on t1.modelid = t2.id where t1.model = "vovo"
select avg(edispl) from cars_data as t1 join continents as t2 on t1.id = t2.continent
select max(acce
select max(acce
select model from car_names group by model order by count(*) desc limit 1
select model from model_list group by model order by count(*) desc limit 1
select count(*), cylinders from cars_data group by cylinders having count(*) > 4
select count(*) from cars_data where cylinders > 4
select count(distinct t1.model) from car_names as t1 join cars_data as t2 on t1.model = t2.id where t2.year = 1980
select count(*) from car_names where make = 1980
select count(distinct id) from car_makers where fullname = "American Motor Company"
select count(distinct id) from car_makers where maker = "American Motor Company"
select t1.fullname, t1.id from car_makers as t1 join model_list as t2 on t1.id = t2.modelid group by t1.id having count(*) > 3
select t1.make, t1.id from model_list as t2 join car_names as t3 on t1.model = t3.modelid
select distinct t1.country from countries as t2 join cars_data as t3 on t1.countryid = t3.id join car_makers as t4 on t3.id = t2.maker
select distinct t2.model from car_makers as t1 join model_list as t2 on t1.id = t2.modelid
select year from cars_data where weight < 3000 intersect select year from cars_data group by year having count(*) < 4000
select distinct year from cars_data where weight < 4000 intersect select distinct year from cars_data where weight > 3000
select avg
select avg
select count(*) from model_list where model = 'volvo' and edispl = (select id from car_makers where model ='make' and edispl = '2008-09-15'
select count(*) from model_list as t1 join car_makers as t2 on t1.modelid = t2.id where t1.model =
select count(distinct t1.id), t1.model, count(*) from cars
select count(*), mpg from cars_data group by mpg order by count(*) desc limit 1
select count(*) from countries where count(*) > 2
select count(*) from car_makers group by country having count(*) > 2
select count(*), cylinders from cars_data group by cylinders having count(*) > 6
select count(*), cylinders from cars_data group by cylinders having count(*) > 6
select t1.model from model_list as t1 join cars_data as t2 on t1.model = t2.id where t2.cylinders = 4 order by t1.
select t1.model from model_list as t1 join cars_data as t2 on t1.model = t2.id where t2.cylinders = 4 group by t1.model order by count(*) desc limit 1
select t1.model, t1.make from car_names as t1 join cars_data as t2 on t1.model = t2.id join cars_data as t3 on t2.
select id, edispl from cars
select max(t2.
select max(mpg) from cars_data where cylinders >= 8 or year < 1980
select t2.model from cars_data as t1 join model_list as t2 on t1.id = t2.modelid join car_makers as t3 group by t2.modelid having avg(t1.weight) < 3500 except select t3.model from cars_data as t1 join cars_data as t2 on t1.id = t2.
select distinct t1.model from model_list as t1 join car_makers as t2 on t1.model = t2.id where t1.model = "3500" except select t1.model from model_list as t1 join car_makers as t2 on t1.model = t2.id where t2.maker = "Ford"
select countryname from countries except select t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.id
select countryname from countries except select t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.country
select t1.model, t1.id from model_list as t2 join car_names as t3 on t1.model = t2.modelid join car_names as t4 on t3.model = t2.id
select t2.id, t2.make from car_names as t1 join model_list as t2
select t2.country, t1.id from cars_data as t1 join countries as t2
select t2.id, t2.country from cars_data as t1 join countries as t2
select t3.country from airlines as t1 join flights as t2 on t1.uid = t2.airport
select t1.country from airlines as t1 join flights as t2 on t1.uid = t2.airport
select abbreviation from airlines as t1 join flights as t2 on t1.uid = t2.airline where t1.airline = "JetBlue Airways"
select t3.airportname from airlines as t1 join flights as t2 on t1.uid = t2.airport
select uid, abbreviation, countryabbrev from airlines as t1 join flights as t2 on t1.uid = t2.airport
select t1.
select airportcode, airportname from airports where city = "Anthony"
select airportcode, airportname from airports where city = "Anthony"
select count(*) from airlines
select count(*) from flights
select count(distinct t2.abbreviation) from flights as t1 join airlines as t2 on t1.airline = t2.abbreviation group by t2.abbreviation
select count(*) from airports
select count(*) from flights
select count(*) from flights
select uid from airlines where abbreviation = 'UAL'
select uid, country from airlines where abbreviation = 'UAL'
select count(*) from airlines where country = 'USA'
select count(*) from airlines where country = 'USA'
select city, country from airports where airportname = "Alon"
select city, country from airports where airportname = "Alon"
select t3.airportname from airports as t1 join flights as t2 on t1.city = t2.airport
select t2.airportname from airlines as t1 join airports as t2 on t1.uid = t2.country where t2.airportcode = 'AKO'
select t3.airportname from airports as t1 join flights as t2 on t1.city = t2.airport
select t3.airportname from airports as t1 join flights as t2 on t1.city = t2.airport
select count(*) from flights where sourceairport = 'APG'
select count(*) from flights where sourceairport = 'APG'
select count(*) from airports where airportcode = "ATO"
select count(*) from airports as t1 join flights as t2 on t1.city = t2.airport
select count(*) from airports as t1 join flights as t2 on t1.city = t2.airport
select count(*) from flights as t1 join airports as t2 on t2.city = t2.city where t2.country = "Aberdeen"
select count(*) from airports as t1 join flights as t2 on t1.city = t2.airport
select count(*) from airports as t1 join flights as t2 on t1.city = t2.airport
select count(*) from airports as t1 join flights as t2 on t1.city = t2.airport
select count(*) from airports as t1 join flights as t2 on t1.city = t2.airport
select count(*) from flights where airline = 'JetBlue Airways'
select count(*) from airlines as t1 join flights as t2 on t1.uid = t2.airport
select count(*) from airlines as t1 join flights as t2 on t1.uid = t2.airport
select count(*) from airlines as t1 join flights as t2 on t1.uid = t2.airport
select count(*) from airlines as t1 join flights as t2 on t1.uid = t2.airport
select count(*) from airlines as t1 join flights as t2 on t1.uid = t2.airport
select count(*) from airlines as t1 join flights as t2 on t1.uid = t2.airport
select count(*) from airlines as t1 join flights as t2 on t1.uid = t2.airport
select t1.city from airports as t1 join flights as t2 on t1.city = t2.airport
select t1.city, t1.airportname from airports as t1 join flights as t2 on t1.city = t2.airport
select t1.city from airports as t1 join flights as t2 on t1.city = t2.airport
select destairport from flights group by destairport order by count(*) desc limit 1
select t2.airportcode, count(*) from flights as t1 join airlines as t2
select t2.airportcode from flights as t1 join airlines as t2
select t1.airportcode, t1.airportname from airlines as t2 join flights as t3 on t1.uid = t3.airport
select t2.airportcode from flights as t1 join airlines as t2
select avg(Airline) from flights group by avg(Airline) order by count(*) desc limit 1
select sourceairport from flights group by sourceairport order by count(*) desc limit 1
select t1.abbreviation, t1.airport
select t1.abbreviation, t1.airport
select flightno, airline from flights where sourceairport = 'AHD' and destairport = 'Destairport'
select uid, airline, countryabbrev from flights as t1 join airports as t2 on t2.city = t2.city join airlines as t3 on
select distinct t1.abbreviation from airlines as t1 join flights as t2 on t1.uid = t2.airport
select distinct t1.Airline from airlines as t1 join flights as t2 on t1.uid = t2.airport
select distinct t2.Airline from airlines as t1 join flights as t2 on t1.uid = t2.airport
select uid, sourceairport from flights as t1 join airlines as t2 on t1.air
select distinct t1.Airline from airlines as t1 join flights as t2 on t1.uid = t2.airport
select avg(airportname) from airports as t1 join flights as t2 on t1.city = t2.airport
select t2.Airline, count(*) from flights as t1 join airlines as t2 on t1.air
select t1.airline from airlines as t1 join flights as t2 on t1.uid = t2.airport
select t1.airline from airlines as t1 join flights as t2 on t1.uid = t2.airport
select airline from flights group by airline having count(*) < 200
select flightno from airlines as t1 join flights as t2 on t1.uid = t2.airport
select flightno from airlines as t1 join flights as t2 on t1.uid = t2.airport
select flightno from flights where sourceairport = "APG"
select flightno from flights where sourceairport = "APG" and destairport = "APG"
select flightno from flights where sourceairport = "APG" and destairport = "APG"
select flightno from flights where sourceairport = "APG" and destairport = "APG"
select t3.airportcode from airports as t1 join flights as t2 on t1.city = t2.airport
select flightno from flights where city = "Atlanta" and countryabbrev = "2
select airportcode from airports where city = "Aberdeen"
select airportcode from airports where city = "Aberdeen"
select airportcode from airports where city = "Aberdeen" or countryabbrev = "Abilene"
select count(*) from airports as t1 join flights as t2 on t1.city = t2.airport
select airportname from airports where airportcode!= "null"
select airline from flights where airportcode not in (select airportcode from flights
select count(*) from employee
select count(*) from employee
select name from employee order by age asc
select name from employee order by age asc
select count(*), city from employee group by city
select count(*), city from employee group by city
select city from employee where age < 30 group by city having count(*) > 1
select city from employee where age < 30 group by city having count(*) > 1
select count(*), district from shop group by district
select count(*), city from employee group by city
select name, district from shop order by number_products desc limit 1
select t3.name, t3.district from employee as t1 join hiring as t2 on t1.employee_id = t2.employee_id join shop as t3 on t3.shop_id = t2.shop_id join employee as t4 on t4.employee_id = t1.employee_id order by count(*) desc limit 1
select min(t2.number_products) from shop as t1 join employee on t1.shop_id = t2.shop_id join employee as t3 on t2.employee_id = t3.employee_id
select min(number_products), max(number_products) from shop
select t2.name, t2.city, t3.district from employee as t1 join employee as t2 on t1.employee_id = t2.employee_id join shop as t3 on t3.shop_id = t2.shop_id
select shop_id, name, district from shop order by number_products desc
select t1.name from shop as t1 join employee as t2 on t1.shop_id = t2.shop_id
select name from shop where number_products > (select avg(number_products) from shop)
select t1.name from employee as t1 join evaluation as t2 on t1.employee_id = t2.employee_id group by t1.employee_id order by count(*) desc limit 1
select t1.name from employee as t1 join evaluation as t2 on t1.employee_id = t2.employee_id group by t1.employee_id order by count(*) desc limit 1
select t3.name from evaluation as t1 join employee as t2 on t1.employee_id = t2.employee_id join employee as t3 on t1.employee_id = t3.employee_id order by t1.bonus desc limit 1
select t2.name from evaluation as t1 join employee as t2 on t1.employee_id = t2.employee_id join employee as t3 on t1.employee_id = t3.employee_id order by t1.bonus desc limit 1
select name from employee where employee_id not in (select employee_id from evaluation)
select name from employee where employee_id not in (select employee_id from evaluation)
select t2.name from hiring as t1 join shop as t2 on t1.shop_id = t2.shop_id join employee as t3 on t1.employee_id = t3.employee_id group by t1.shop_id order by count(*) desc limit 1
select t2.name from hiring as t1 join shop as t2 on t1.shop_id = t2.shop_id join employee as t3 on t1.employee_id = t3.employee_id group by t1.shop_id order by count(*) desc limit 1
select name from shop where shop_id not in (select shop_id from hiring)
select name from shop where shop_id not in (select shop_id from employee
select t3.name, count(*) from hiring as t1 join employee as t2 on t1.employee_id = t2.employee_id join shop as t3 on t3.shop_id = t1.shop_id group by t3.name
select t2.name, count(*) from hiring as t1 join shop as t2 on t1.shop_id = t2.shop_id join employee as t3 on t1.employee_id = t3.employee_id group by t1.shop_id
select sum(t2.bonus), t1.employee_id from evaluation as t1 join employee as t2
select sum(t1.bonus) from evaluation as t1 join employee as t2 on t1.employee_id = t2.employee_id group by t1.employee_id
select * from hiring
select * from hiring
select district from shop where number_products < 3000 intersect select district from shop where number_products > 10000
select district, t2.name from shop as t1 join employee as t2 on t1.shop_id = t2.shop_id
select count(distinct city) from employee
select count(distinct city) from employee
select count(*) from documents
select count(*) from documents
select document_id, document_name, document_description from documents
select document_id, document_name, document_description from documents
select document_name, document_id from documents where document_description like '%w%'
select t1.document_name, t1.document_description from documents as t1 join ref_template_types as t2 on t1.document_id = t2.document_id
select t1.document_id, t1.date_effective_from, t1.date_effective_to from documents as t1
select t1.document_id, t1.date_effective_from, t1.date_effective_to from documents as t1
select count(distinct document_name) from documents
select count(distinct template_type_code) from ref_template_types
select count(*) from documents where document_id in ( select template_type_code from templates where template_type_code = 'PPT' )
select count(*) from templates where template_type_code = "PPT"
select t1.document_id, count(*) from documents as t1 join templates as t2 on t1.document_id = t2.date_effective_from join ref_template_types as t3 on
select count(*), t1.document_name from documents as t1 join templates as t2 on t1.document_id = t2.document_id
select t1.document_id, t2.date_effective_to from documents as t1 join templates as t2 on t1.document_id = t2.date_effective_from group by t1.document_id order by count(*) desc limit 1
select t1.document_id, t2.date_effective_to from documents as t1 join templates as t2 on t1.document_id = t2.date_effective_from group by t1.document_id order by count(*) desc limit 1
select template_id from documents group by template_id having count(*) > 1
select template_id from documents group by template_id having count(*) > 1
select template_id from templates except select template_id from documents
select template_id from documents except select template_id from documents
select count(*) from ref_template_types
select count(*) from ref_template_types
select t1.
select t1.document_id, t1.date_effective_from, t1.document_name from documents as t2 join templates as t3 on t1.document_id = t2.document_id join ref_template_types as t4 on
select count(*) from ref_template_types
select distinct template_type_description from ref_template_types
select t2.date_effective_to from documents as t1 join templates as t2 on t1.document_id = t2.document_id
select template_type_code from templates where template_type_code = "PP" or template_type_code = "PPT"
select count(*) from templates where template_type_code = "CV"
select count(*) from ref_template_types
select t1.version_number,
select t1.version_number, t1.
select template_type_code, count(*) from templates group by template_type_code
select
select
cre_Doc_Template_Mgt
select distinct template_type_code from templates group by template_type_code having count(*) < 3
cre_Doc_Template_Mgt
select t1.version_number,
select min(t1.date_effective_from), t1.
select
select
select avg(t1.date_effective_from), t2.document_name from templates as t1 join documents as t2 on t2.document_id = t2.document_id where template_type_code = "BK"
select t2.document_name from templates as t1 join documents as t2 on t2.document_id = t2.document_id where template_type_code = "BK"
select avg(t1.date_effective_to), count(*) from templates as t1 join documents as t2 on
select count(distinct template_type_code), template_type_description from documents
select template_type_code from ref_template_types group by template_type_code order by count(*) desc limit 1
select template_type_code from ref_template_types group by template_type_code order by count(*) desc limit 1
select template_type_code from ref_template_types except select template_type_code from templates
select template_type_description from ref_template_types where template_type_code not in ( select template_type_code from templates )
select template_type_code, template_type_description from ref_template_types
cre_Doc_Template_Mgt
select avg(date_effective_to) from documents as t1 join templates as t2 on t1.document_id = t2.document_id
select avg(t2.date_effective_to) from documents as t1 join templates as t2 on t1.document_id = t2.document_id
select avg(t1.date_effective_from), t2.document_name from templates as t1 join
select avg(date_effective_to) from documents as t1 join ref_template_types as t2 on t1.document_id = t2.document_id
select count(distinct
select count(distinct template_type_code) from templates where template_id in ( select template_id from documents )
select t1.
select template_id from templates where template_type_code = 'Presentation'
select count(*) from paragraphs
select count(*) from paragraphs
select count(*) from documents as t1 join paragraphs as t2 on t1.document_id = t2.document_id where t1.document_name = 'Summer Show'
select count(*) from paragraphs as t1 join documents as t2 on t1.document_id = t2.document_id where t2.document_name = 'Summer Show'
select avg (paragraph_id) from paragraphs where paragraph_text = 'Korea'
select avg(paragraph_id) from paragraphs where paragraph_text like '%korea%'
select t2.paragraph_id, t2.paragraph_text from documents as t1 join paragraphs as t2 on t1.document_id = t2.document_id where t1.document_name = "Welcome to NY"
select paragraph_id, paragraph_text, t1.other_details from paragraphs as t1 join documents as t2 on t1.document_id = t2.document_id where t2.document_name = 'Welcome to NY'
select paragraph_text from paragraphs as t1 join documents as t2 on t1.document_id = t2.document_id where t2.document_name = "Customer reviews"
select t2.paragraph_text from documents as t1 join paragraphs as t2 on t1.document_id = t2.document_id where t1.document_name = 'Customer reviews'
select t1.document_id, count(*) from documents as t1 join documents as t2 on t1.document_id = t2.document_id group by t1.document_id order by count(*)
select t1.document_id, count(*) from documents as t1 join documents as t2 on t1.document_id = t2.document_id group by t1.document_id order by count(*)
select t1.document_id, t1.document_name, count(*) from documents as t1 join documents as t2 on t1.document_id = t2.document_id group by t1.document_id
select t1.document_id, t1.document_name, count(*) from documents as t1 join documents as t2 on t1.document_id = t2.document_id group by t1.document_id
select document_id from paragraphs group by document_id having count(*) >= 2
select document_id from paragraphs group by document_id having count(*) >= 2
select t1.document_id, t1.document_name from documents as t1 join paragraphs as t2 on t1.document_id = t2.document_id group by t1.document_id order by count(*) desc limit 1
select t1.document_id, t1.document_name from documents as t1 join templates as t2 on t1.document_id = t2.document_id
select document_id from documents group by document_id order by count(*) asc limit 1
select document_id from documents group by document_id order by count(*) asc limit 1
select document_id from documents group by document_id having count(*) between 1 and 2
select document_id from paragraphs group by document_id having count(*) between 1 and 2
select t1.document_id from documents as t1 join paragraphs as t2 on t1.document_id = t2.document_id where t2.paragraph_text = 'Brazil' and t2.paragraph_text = 'Irlanda'
select t2.document_id from paragraphs as t1 join documents as t2 on t1.document_id = t2.document_id where t1.paragraph_text like '%brazil%' intersect select t2.document_id from paragraphs as t1 join documents as t2 on t1.paragraph_id = t2.document_id where t1.paragraph_text = 'Ireland'
select count(distinct t2.teacher_id) from course_arrange as t1 join teacher as t2 on t1.teacher_id = t2.teacher_id group by t2.teacher_id
select count(*) from course
select name from teacher order by age asc
select name from teacher order by age asc
select age, hometown from teacher
select age, hometown from teacher
select t2.name from course_arrange as t1 join teacher as t2 on t1.teacher_id = t2.teacher_id where t2.hometown!= "Little lever Urban District"
select t2.name from course_arrange as t1 join teacher as t2 on t1.teacher_id = t2.teacher_id join course as t3 on t1.course_id = t3.course_id where t2.hometown!= "Little lever Urban District"
select name from teacher where age = 32 or age = 33
select name from teacher where age = 32 or age = 33
select hometown from teacher order by age asc limit 1
select t2.name from course_arrange as t1 join teacher as t2 on t1.teacher_id = t2.teacher_id order by t2.age asc limit 1
select t2.hometown, count(*) from course as t1 join teacher as t2 on t1.teacher_
select hometown, count(*) from teacher group by hometown
select hometown from teacher group by hometown order by count(*) desc limit 1
select t2.hometown from course_arrange as t1 join teacher as t2 on t1.teacher_id = t2.teacher_id join course as t3 on t1.course_id = t3.course_id where t1.age
select hometown from teacher group by hometown having count(*) >= 2
select hometown from teacher group by hometown having count(*) >= 2
select t2.name, t1.course_id from course_arrange as t1 join teacher as t2 on t1.teacher_id = t2.teacher_id join course as t3 on t1.course_id = t3.course_id
select t2.name, t3.name from course_arrange as t1 join teacher as t2 on t1.teacher_id = t2.teacher_id join course as t3
select t2.name, t3.name from course_arrange as t1 join teacher as t2 on t1.teacher_id = t2.teacher_id join course as t3
select t2.name, t3.name from course_arrange as t1 join teacher as t2 on t1.teacher_id = t2.teacher_id join course as t3
select t2.name from course_arrange as t1 join teacher as t2 on t1.teacher_id = t2.teacher_id join course as t3 on t1.course_id = t3.course_id where t1.grade = 'Math'
select t2.name from course_arrange as t1 join teacher as t2 on t1.teacher_id = t2.teacher_id join course as t3 on t1.course_id = t3.course_id where t1.grade = 'Math'
select t2.name, count(*) from course_arrange as t1 join teacher as t2 on t1.teacher_id = t2.teacher_id group by t1.teacher_id
select t2.name, count(*) from course_arrange as t1 join teacher as t2 on t1.teacher_id = t2.teacher_id group by t1.teacher_id
select t2.name from course_arrange as t1 join teacher as t2 on t1.teacher_id = t2.teacher_id group by t1.teacher_id having count(*) >= 2
select t2.name from course_arrange as t1 join teacher as t2 on t1.teacher_id = t2.teacher_id group by t1.teacher_id having count(*) >= 2
select name from teacher where teacher_id not in (select teacher_id from course_arrange)
select name from teacher where teacher_id not in (select teacher_id from course_arrange)
select count(*) from visitor where age < 30
select name from visitor where level_of_membership > 4 order by level_of_membership
select avg(age) from visitor where level_of_membership!= 4
select name, level_of_membership from visitor where age > 4 order by age
select t1.museum_id, t1.name from museum as t1 join visit as t2 on t1.museum_id = t2.museum_id group by t1.museum_id order by count(*) desc limit 1
select avg(num_of_staff) from museum where open_year < 2009
select t1.open_year, t2.total_spent from museum as t1 join visit as t2 on t1.museum_id = t2.museum_id where t1.name = "Pala Museum"
select name from museum where
select t1.id, t1.name, t1.age from visitor as t1 join visit as t2 on t1.id = t2.visitor_id group by t1.id having count(*) > 1
select t2.id, t2.name, t2.level_of_membership from visit as t1 join visitor as t2 on t1.visitor_id = t2.id join museum as t3 on t1.museum_id = t3.museum_id order by sum(t1.total_spent) desc limit 1
select t1.museum_id, t1.name from museum as t1 join visit as t2 on t1.museum_id = t2.museum_id group by t1.museum_id order by count(*) desc limit 1
select name from museum where museum_id not in (select museum_id from visit)
select t1.name, t1.age from visitor as t1 join visit as t2 on t1.id = t2.visitor_id group by t2.visitor_id order by count(*) desc limit 1
select avg(num_of_ticket), max(num_of_ticket) from visit
select sum(t1.total_spent) from visit as t1 join visitor as t2 on t1.visit
select t2.name from museum as t1 join visitor as t2 on t1.museum_id = t2.id join visit as t3 on t1.museum_id = t3.museum_id where t1.open_year < 2009 intersect select t3.name from museum as t1 join visit as t2 on t1.museum_id = t2.museum_id join visitor as t3 on t1.open_year = t3.id where t1.open_year > 2011
select count(*) from visitor where visitor_id not in (select visitor_id from visit where open_year > 2010
select count(*) from museum where open_year > 2013 or open_year < 2008
select count(*) from matches
select count(*) from players
select count(*) from matches
select count(*) from matches
select t1.first_name, t1.last_name, t1.birth_date from players as t1 join rankings as t2 on t1.player_id = t2.player_id where t1.country_code = "USA"
select t1.first_name, t1.last_name, t1.birth_date from players as t1 join rankings as t2 on t1.player_id = t2.player_id where t1.country_code = "USA"
select avg(loser_age), avg(winner_seed) from matches
select avg(loser_age), avg(winner_seed) from matches
select avg(t2.rank
select avg(t2.rank
select max(loser_seed) from matches
select best_of from matches
select count(*) from players
select count(distinct country_code) from players
select count(distinct t1.loser_name) from matches as t1 join players as t2 on
select count(distinct loser_name) from matches
select tourney_name from matches group by tourney_name having count(*) > 10
select t1.first_name, t1.last_name from players as t1 join matches as t2 on t1.player_id = t2.winner_id group by t2.winner_name having count(*) > 10
select winner_name from matches where year = 2013 intersect select winner_name from matches where year = 2016
select t1.first_name, t1.last_name from players as t1 join matches as t2 on t1.player_id = t2.winner_id where t2.year = 2013 intersect select t1.first_name, t1.last_name from players as t1 join matches as t2 on t1.player_id = t2.winner_id where t2.year = 2016
select count(*) from matches where year = 2013 or year = 2016
select count(*) from matches where year = 2013 or year = 2016
select t2.country_code, t2.winner_rank_points from rankings as t1 join players as t2
select winner_age, t1.country_code from players as t1 join rankings as t2 on t1.player_id = t2.player_id join
select t1.first_name, t1.last_name, t1.birth_date from players as t1 join matches as t2 on t1.player_id = t2.winner_id order by t2.year desc limit 1
select t1.first_name, t1.last_name, t1.birth_date from players as t1 join matches as t2 on t1.player_id = t2.winner_id order by t1.birth_date desc limit 1
select t1.first_name, t1.last_name, t1.birth_date from players as t1 join matches as t2 on t1.player_id = t2.player_id
select t1.first_name, t1.last_name, t1.birth_date from players as t1 join rankings as t2 on t1.player_id = t2.player_id order by t1.birth_date
select hand, birth_date from players order by birth_date
select first_name, last_name from players order by birth_date
select t1.first_name, t1.last_name, t1.country_code from players as t1 join matches as t2 on t1.player_id = t2.winner_id group by t1.player_id order by count(*) desc limit 1
select t1.first_name, t1.last_name, t1.country_code from players as t1 join matches as t2 on t1.player_id = t2.winner_id group by t2.winner_name order by count(*) desc limit 1
select year from matches group by year order by count(*) desc limit 1
select year from matches group by year order by count(*) desc limit 1
Select t1.winner_name, t2.rank
select t1.winner_name, count(*) from matches as t1 join rankings as t2 on t1.winner_id =
select t1.winner_name, t1.winner_rank_points from matches as t1 join rankings as t2 on t1.winner_id = t2.winner_id
select t2.winner_name, t2.winner_rank_points from rankings as t1 join
select loser_name, winner_rank from matches order by minutes desc limit 1
select t1.winner_name, t1.loser_name from matches as t1 join players as t2 on t1.loser_id = t2.loser_id
select avg (ranking_points), t1.player_id from rankings as t1 join players as t2 on t1.player_id = t2.player_id group by t1.player_id
select t1.first_name, t1.last_name, avg(t2.rank
select ranking_points, count(*) from rankings group by ranking_points
select t2.first_name, t2.last_name, sum(t1.ranking_points) from rankings as t1 join players as t2 on t1.player_id = t2.player_id group by t1.ranking_points
select
Select t2.country_code, count(*) from matches as t1 join players as t2 on t1.winner_id = t1.winner_id group by t2.country_code
select 'Stand abbreviation' from players
select avg(t1.winner_entry) from matches as t1 join players as t2 on t1.winner_id = t2.winner_id
select avg(t1.winner_rank) from matches as t1 join players as t2 on t1.winner_id = t2.winner_id
select t1.birth_date from players as t1 join matches as t2 on t1.player_id = t2.winner_id where t1.birth_date like "50%"
select ranking_date, count(*) from rankings group by ranking_date
select ranking_date, count(*) from rankings group by ranking_date
select count(*), year from matches group by year
select year, count(*) from matches group by year
select t1.first_name, t1.last_name, t2.winner_rank_points from players as t1 join matches as t2 on t1.player_id = t2.winner_id order by t2.year limit 3
select t1.first_name, t1.last_name, t2.winner_rank_points from players as t1 join matches as t2 on t1.player_id = t2.winner_id order by t2.year limit 3
select count(distinct t1.winner_id), t1.winner_rank, t1.winner_seed from matches as t1 join rankings as t2 on t1.winner_id = t2.winner_id
select count(*), t1.winner_name from matches as t1 join rankings as t2 on t1.winner_id = t2.winner_ioc
select t1.first_name, t1.last_name, t1.birth_date from players as t1 join rankings as t2 on t1.player_id = t2.player_id order by ranking_points desc limit 1
select t1.first_name, t1.last_name, t1.birth_date from players as t1 join rankings as t2 on t1.player_id = t2.player_id group by t1.player_id order by count(*) desc limit 1
select count(*), hand from players group by hand
select hand, count(*) from players group by hand
select count(*) from ship where disposition_of_ship = 'Captured'
select name, tonnage from ship order by tonnage desc
select name, date, result from battle
select max(t1.id), min(t2.killed) from death as t1 join battle as t2
select avg(t1.injured) from death as t1 join ship as t2 on t1.id = t2.
select t2.killed, t2.injured from ship as t1 join death as t2 on t1.id = t2.injured
select t1.name, t1.result from battle as t1 join ship as t2 on t1.id = t2.id where t2.b
select distinct t1.id, t1.name from battle as t1 join ship as t2 on t1.id = t2.id where t2.ship_type = 'Brig'
select t1.id, t1.name from battle as t1 join death as t2 on t1.id = t2.killed group by t1.id having count(*) > 10
select t1.id, t1.name from ship as t1 join death as t2 on t1.id = t2.injured group by t1.id order by sum(t2.injured) desc limit 1
select distinct t1.name from battle as t1 join ship as t2 on t1.id = t2.
select count(distinct result) from battle
select count(*) from battle where id not in ( select lost_in_battle from ship where tonnage = '225' );
select t1.name, t1.date from battle as t1 join ship as t2 on t1.id = t2.id where t2.name = 'Lettice' and t2.name = 'HMS Atalanta'
select name, result, bulgarian_commander from battle where id not in (select lost_in_battle from ship where location = 'English Channel')
select * from death where note like '%east%'
select addresses.line_1, line_2 from addresses join students on t1.address_id = t2.address_id
select t1.line_1, t1.line_2 from addresses as t1 join addresses as t2 on t1.address_id = t2.address_id group by t1.line_1
select count(*) from transcript_contents
select count(*) from transcript_contents
select t2.course_name, t2.course_name from semesters as t1 join student_enrolment_courses as t2
select t2.course_description, t2.course_name from semesters as t1 join student_enrolment_courses as t2
select zip_postcode from addresses where city = "Port Chelsea"
select t1.zip_postcode from addresses as t1 join student_enrolment as t2 on t1.address_id = student_enrolment_id join courses as t3 on t1.address_id = t3.course_id where t1.city = "Port Chelsea"
select t2.department_name, t1.department_id from degree_programs as t1 join departments as t2 on t1.department_id = t2.department_id join transcripts as t3 on t2.transcript_id
select t1.department_name, count(*) from departments as t1 join degree_programs as t2 on t1.department_id = t2.department_id group by t1.department_id order by count(*) desc limit 1
select count(distinct department_id) from degree_programs
select count(distinct department_id) from degree_programs
select count(distinct degree_summary_name) from degree_programs
select count(distinct degree_summary_name) from degree_programs
select degree_summary_name from degree_programs
select degree_summary_name from degree_programs where department_id = 'Engineering'
select section_name, section_description from sections
select section_name, section_description from sections
select t1.course_name, t1.course_id from courses as t1 join sections as t2 on t1.course_id = t2.section_id group by t1.course_id having count(*) < 2
select t1.course_name, t1.course_id from courses as t1 join sections as t2 on t1.course_id = t2.course_id group by t1.course_id having count(*) < 2
select section_name from sections order by section_name desc
select section_name from sections order by section_name desc
select t1.first_name, t1.last_name, t2.student_enrolment_id from students as t1 join student_enrolment_courses as t2 on t1.student_id = t2.student_id
select t1.first_name, t1.last_name, t2.student_enrolment_id, count(*) from students as t1 join student_enrolment as t2 on t1.student_id = t2.student_id group by t2.student_id order by count(*) desc limit 1
select distinct t1.other_details from sections as t1 join departments as t2 on t1.section_id = t2.section_id
select distinct t1.other_details from sections as t1 join departments as t2 on t1.section_id = t2.section_id
select t1.first_name, t1.middle_name, t1.f
select t1.first_name, t1.middle_name, t1.f
select student_enrolment_id, t2.course_name, t3.other_details from semesters as t1 join student_enrolment_courses as t2
select t2.first_name, t2.middle_name, t2.f
select t1.degree_program_id from student_enrolment as t1 join students as t2 on t1.student_id = t2.student_id group by t1.degree_program_id order by count(*) desc limit 1
select t2.degree_summary_name from student_enrolment as t1 join degree_programs as t2 on t1.degree_program_id = t2.degree_program_id group by t2.degree_summary_name order by count(*) desc limit 1
select t1.degree_program_id, t1.student_enrolment_id from student_enrolment as t1 join students as t2 on t1.student_id = t2.student_id group by t1.degree_program_id order by count(*) desc limit 1
select t1.degree_program_id, t2.degree_summary_name from student_enrolment as t1 join degree_programs as t2 on t1.degree_program_id = t2.degree_program_id group by t1.degree_program_id order by count(*) desc limit 1
select t1.student_id, t1.first_name, t1.last_name, count(*) from students as t1 join student_enrolment_courses as t2 on t1.student_id = t2.student_enrolment_id group by t1.student_id order by count(*) desc limit 1
select t2.first_name, t2.middle_name, t2.f
select * from students where student_id not in (select student_id from student_enrolment)
select first_name, last_name from students where student_id not in (select student_id from student_enrolment)
select t1.course_name from courses as t1 join student_enrolment_courses as t2 on t1.course_id = t2.course_id join students as t3 on t2.student_enrolment_id = t3.student_id
select t1.course_name from courses as t1 join student_enrolment_courses as t2 on t1.course_id = t2.course_id
select student_enrolment_courses.student_id from student_enrolment join courses as t1 on t1.course_id = t2.course_id join transcript_contents as t3 on t2.course_id = t3.course_id
select t1.course_name from courses as t1 join student_enrolment_courses as t2 on t1.course_id = t2.course_id group by t1.course_name order by count(*) desc limit 1
select t1.first_name, t1.last_name from students as t1 join student_enrolment as t2 on t1.student_id = t2.student_id join addresses as t3 on t3.address_id =
select t1.first_name, t1.last_name from students as t1 join student_enrolment as t2 on t1.student_id = t2.student_id join degree_programs as t3 on t2.degree_program_id = t3.degree_program_id
select t1.date_first_registered, t1.student_id from students as t1 join student_enrolment as t2 on t1.student_id = t2.student_id group by t1.student_id having count(*) >= 2
select t1.date_first_registered, t1.student_id from students as t1 join student_enrolment as t2 on t1.student_id = t2.student_id group by t1.student_id having count(*) >= 2
select avg(t2.date_left) from student_enrolment as t1 join students as t2 on t1.student_enrolment_id = t2.student_id where t2.first_name = "Timmothy" and t2.last_name = "Garde"
select student_enrolment_id, t1.date_left from students as t1 join semesters as t2 on t1.student_id = t2.student_enrolment_id
select t2.first_name, t2.middle_name, t2.f
select t2.first_name, t2.middle_name, t2.f
select t2.first_name, t2.middle_name, t2.f
select t2.first_name, t2.middle_name, t2.f
select distinct permanent_address_
select distinct t1.first_name, t1.last_name from students as t1 join student_enrolment as t2 on t1.student_id = t2.student_id where t1.permanent_address_id = (select permanent_address_id from students group by permanent_address_id order by count(*) desc limit 1)
select
select t1.address_id, t1.line_1, t1.line_2 from addresses as t1 join students as t2 on t1.address_id = t2.student_id group by t1.address_id order by count(*) desc limit 1
select avg(t2.student_id) from student_enrolment as t1 join students as t2 on t1.student_id = t2.student_id
select avg(student_id) from students
select date_first_registered, date_
select transcript_date, count(*) from transcripts group by transcript_date order by count(*) desc limit 1
select count(*) from transcript_contents
select count(*) from students
select last_name from students
select max(student_id) from students
select t1.student_enrolment_id, count(*) from student_enrolment as t1 join students as t2 on t1.student_enrolment_id = t2.student_id group by t1.student_enrolment_id order by count(*) desc limit 1
select t1.student_enrolment_id, count(*) from student_enrolment as t1 join students as t2 on t1.student_enrolment_id = t2.student_id group by t1.student_enrolment_id order by count(*) desc limit 1
select date_first_registered, date_first_registered, student_id from students group by date_first_registered order by count(*) asc limit 1
select date_first_registered, student_id from students group by student_id order by count(*) asc limit 1
select t2.course_name from semesters as t1 join student_enrolment_courses as t2
select student_id from student_enrolment where student_enrolment_id = 'M' intersect select student_id from student_enrolment where student_enrolment_id = 'Boston'
select count(distinct t2.address_id) from students as t1 join addresses as t2 on t1.student_id = t2.address_id where t1.student_id = 1
select distinct t1.city from addresses as t1 join students as t2 on t1.address_id = t2.student_id
select * from students group by student_id order by count(*) desc
select * from students where student_id not in (select student_id from student_enrolment)
select section_name from sections order by section_id desc limit 1
select section_description from sections where section_name = "h"
select student_enrolment_id, degree_summary_name from semesters as t1 join students as t2 on t2.student_id = t2.student_id and semester_id = t2.student_id and transcript_id = t1.student_id
select t2.course_name from semesters as t1 join student_enrolment as t2
select title from cartoon order by title
select title from cartoon order by title
select directed_by from cartoon where directed_by = "Ben Jones"
select directed_by from cartoon where directed_by = "Ben Jones"
select count(*) from cartoon where directed_by = "Joseph Kuhr"
select count(*) from cartoon where written_by = "Joseph Kuhr"
select directed_by, directed_by from cartoon order by directed_by
select t1.title, t1.directed_by from cartoon as t1 join t
select directed_by from cartoon where directed_by = "Ben Jones" or directed_by = "Brandon Vietti"
select directed_by from cartoon where directed_by = "Ben Jones" or directed_by = "Ben Jones"
select country, count(*) from tv_channel group by country order by count(*) desc limit 1
select country, count(*) from tv_channel group by country order by count(*) desc limit 1
select count(distinct series_name), content from tv_channel
select count(distinct t1.series_name), count(distinct t1.content) from tv_channel join tv_channel as t3 on t1.id = t3.id
select content from tv_channel where series_name = "Sky Radio"
select t2.content from tv_series as t1 join tv_channel as t2 on t1.id = t2.id where series_name = "City Radio"
select package_option from tv_channel where series_name = "Sky Radio"
select package_option from tv_channel where series_name = "Sky Radio"
select count(*) from tv_channel where language = "English"
select count(*) from tv_channel where language = "English"
select language, count(*) from tv_channel group by language order by count(*) asc limit 1
select language, count(*) from tv_channel group by language order by count(*) asc limit 1
select language, count(*) from tv_channel group by language
select count(*), language from tv_channel group by language
select t1.series_name from tv_channel as t1 join cartoon as t2 on t1.id = t2.directed_by where t2.title = "The Rise of the blue betle!"
select t1.series_name from tv_channel as t1 join cartoon as t2 on t1.id = t2.directed_by where t2.title = "The Rise of the blue Beetle"
select t2.title from tv_channel as t1 join cartoon as t2 on t1.id = t2.directed_by where t1.series_name = "Sky Radio"
select t2.title from tv_channel as t1 join cartoon as t2 on t1.id = t2.directed_by where t1.series_name = "Sky Radio"
select episode from tv_series order by rating
select episode from tv_series order by rating
select Episode, max(t1.s
select episode, rating from tv_series group by episode order by count(*) desc limit 3
select min(share), max(share) from tv_series
select max(share), min(share) from tv_series
select air_date from tv_series where episode = "A love of a lifetime"
select t1.title, t1.air_date from tv_series as t2 join cartoon as t3 on t1.id = t2.directed_by
select t2.weekly_rank from tv_series as t1 join tv_series as t2 on t1.id = t2.id where t1.episode = "A love of a lifetime"
select episode from tv_series where air_date = "A love of a lifetime" and rating = "18_49_rating_share"
select t2.series_name from tv_series as t1 join tv_channel as t2 on t1.id = t2.id join tv_series as t3 on t1.id = t3.id where t1.episode = 'A love of a lifetime'
select t2.series_name from tv_series as t1 join
select t1.Episode from tv_series as t1 join tv_series as t2 on t1.id = t2.id join tv_channel as t3 on t1.id = t3.id where t3.series_name = "Sky Radio"
select t1.id, t1.series_name from tv_channel as t2 join tv_series as t3 on t1.id = t2.series_name and t1.air_date = t3.id join tv_channel as t4 on t3.id = t3.series_name
select directed_by, count(*) from cartoon group by directed_by
select directed_by, count(*) from cartoon group by directed_by
select production_code, channel from cartoon order by original_air_date desc limit 1
select t1.title, t2.channel from cartoon as t1 join tv_series as t2 on t2.id = t1.id order by t1.original_air_date desc limit 1
select t2.package_option, t2.series_name from tv_channel as t1 join tv_channel as t2 on t1.id = t2.channel
select t2.package_option, t2.title from tv_channel as t1 join tv
select t1.country from tv_channel as t1 join cartoon as t2 on t1.id = t2.directed_by where t2.written_by = "Tony Casey"
select t1.country from tv_channel as t1 join cartoon as t2 on t1.id = t2.directed_by where t2.written_by = "Tony Casey"
select country from tv_channel except select t1.language from tv_channel as t1 join cartoon as t2 on t1.id = t2.directed_by where t2.written_by = "Tony Casey"
select country from tv_channel except select t1.language from tv_channel as t1 join cartoon as t2 on t1.id = t2.directed_by where t2.written_by = "Tony Casey"
select t1.channel, t1.series_name from tv_channel as
select t1.series_name from tv_channel as t1 join cartoon as t2 on t1.id = t2.directed_by where t2.directed_by = 'Bel Jones' intersect select t1.series_name, t1.
select hight_definition_tv, t1.pixel_aspect_ratio_par from tv_channel as t1 join cartoon as t2 on t1.id = t2.directed_by where t1.language!= "English"
select hight_definition_tv, pixel_aspect_ratio_par from tv_channel where language!= 'English'
select id from tv_channel where country > 2
select id from tv_channel where id > 2
select id from tv_channel except select t1.id from tv_channel as t1 join cartoon as t2 on t1.id = t2.directed_by where t2.directed_by = "Ben Jones"
select id from tv_channel except select t1.id from tv_channel as t1 join cartoon as t2 on t1.id = t2.directed_by where t2.directed_by = "Ben Jones"
select package_option from tv_channel except select t1.package_option from tv_channel as t1 join cartoon as t2 on t1.id = t2.directed_by where t2.channel = "Ben Jones"
select package_option from tv_channel except select t1.package_option from tv_channel as t1 join cartoon as t2 on t1.id = t2.directed_by where t2.directed_by = "Ben Jones"
select count(*) from people
select count(*) from poker_player
select earnings from poker_player order by earnings desc
select earnings from poker_player order by earnings desc
select final_table_made, best_finish from poker_player
select final_table_made, best_finish from poker_player
select avg(e
select avg(e
select money_rank from poker_player order by earnings desc limit 1
select money_rank from poker_player order by earnings desc limit 1
select max(t1.final_table_made) from poker_player as t1 join people as t2 on t1.people_id = t2.people_id join people as t3 on t1.people_id = t3.people_id where
select max(final_table_made) from poker_player where earnings < 200000
select t2.name from poker_player as t1 join people as t2 on t1.people_id = t2.people_id
select t2.name from poker_player as t1 join people as t2 on t1.people_id = t2.people_id
select t1.name from people as t1 join poker_player as t2 on t1.people_id = t2.people_id where t1.height > 300000
select t2.name from poker_player as t1 join people as t2 on t1.people_id = t2.people_id where t1.money_rank > 300000
select t2.name from poker_player as t1 join people as t2 on t1.people_id = t2.people_id order by t1.final_table_made asc
select t2.name from poker_player as t1 join people as t2 on t1.people_id = t2.people_id order by t1.final_table_made asc
select birth_date from people where people_id in (select people_id from poker_player order by earnings asc limit 1 )
select t2.birth_date from poker_player as t1 join people as t2 on t1.people_id = t2.people_id order by t1.
select t1.money_rank from poker_player as t1 join people as t2 on t1.people_id = t2.people_id order by t2.height desc limit 1
select t1.money_rank from poker_player as t1 join people as t2 on t1.people_id = t2.people_id order by t2.height desc limit 1
select avg(t1.
select avg(t1.
select t2.name from poker_player as t1 join people as t2 on t1.people_id = t2.people_id order by t1.e
select t2.name from poker_player as t1 join people as t2 on t1.people_id = t2.people_id order by t1.e
select nationality, count(*) from people group by nationality
select nationality, count(*) from people group by nationality
select nationality from people group by nationality order by count(*) desc limit 1
select nationality from people group by nationality order by count(*) desc limit 1
select nationality from people group by nationality having count(*) >= 2
select nationality from people group by nationality having count(*) >= 2
select name, birth_date from people order by name asc
select name, birth_date from people order by name asc
select t1.name from people as t1 join people as t2 on t1.people_id = t2.people_id where t2.nationality!= "Russia"
select name from people where nationality!= 'Russia'
select name from people where people_id not in (select people_id from poker_player)
select name from people where people_id not in (select people_id from poker_player)
select count(distinct nationality) from people
select count(distinct nationality) from people
select count(distinct state) from area_code_state
select count(*) from contestants group by contestant_name order by count(*) desc
select vote_id, phone_number, state from votes
select max(area_code), min(area_code), t1.state from votes as t1 join area_code_state as t2 on t1.contestant_number = t2.contestant_number
select avg(created) from votes as t1 join area_code_state as t2 on t1.state = t2.area_code where t2.state = 'CA'
select contestant_name from contestants where contestant_name!= 'Jessie Alloway'
select distinct t1.state, count(*) from area_code_state as t1 join votes as t2 on t1.area_code = t2.state
select t1.contestant_number, t1.contestant_name from contestants as t1 join votes as t2 on t1.contestant_number = t2.contestant_number group by t1.contestant_number having count(*) >= 2
select t1.con
select count(*) from votes where state = 'NY' or state = 'CA'
select count(*) from contestants where contestant_number not in (select contestant_number from votes)
select count(*) from votes group by vote_id order by count(*) desc limit 1
select avg (t1.state), t1.vote_id, t1.phone_number, t1.phone_number from votes as t1 join contestants as t2 on t1.contestant_number = t2.contestant_number where t2.contestant_name = 'Tabatha Gehling'
select t1.area_code from area_code_state as t1 join votes as t2 on t1.state = t2.state where t2.contestant_number = 'Tabatha Gehling' intersect select t1.area_code from area_code_state as t1 join votes as t2 on t1.state = t2.state where t2.contestant_number = 'Kelly Clauss'
select
select localname from country where indepyear > 1950
select name from country where indepyear > 1950
select count(*) from country where governmentform = 'Republic'
select count(*) from country where governmentform = 'Republic'
select sum(t1.population) from city as t1 join countrylanguage as t2 on t1.id = t2.countrycode where t2.language = "Caribbean"
select count(*), t1.name from country as t1 join countrylanguage as t2 on t1.code = t2.countrycode where t1.region = "Caribbean" group by t1.name
select continent from country where name = "Anguilla"
select continent from country where name = "Anguilla"
select t1.region from country as t1 join city as t2 on t1.code = t2.countrycode where t2.name = "Bahoul"
select countrycode from city where name = "Bajara"
select t1.name, t1.population from country as t1 join city as t2 on t1.code = t2.countrycode where t2.name = 'Aruba' group by t1.name order by count(*) desc limit 1
select t2.language from city as t1 join countrylanguage as t2 on t1.id = t2.countrycode where t1.name = 'Aruba' and t1.population = 'lifeexpectancy'
select population, lifeexpectancy from country where name = 'Brazil'
select population, lifeexpectancy from country where name = 'Brazil'
select t1.region, count(*) from country as t1 join city as t2 on t1.code = t2.countrycode where t1.name = 'Angola'
select t1.region, count(*) from country as t1 join city as t2 on t1.code = t2.countrycode where t1.name = 'Angola'
select avg(lifeexpectancy) from country where region = 'Central Africa'
select avg(lifeexpectancy) from country where region = 'Central Africa'
select t1.name from country as t1 join city as t2 on t1.code = t2.countrycode where t1.continent = 'Asie' order by lifeexpectancy limit 1
select t2.name from city as t1 join country as t2 on t1.id = t2.country
select sum(gnp), max(gnp) from city as t1 join country as t2 on t1.id = t2.name where continent = 'Asie'
select count(*), gnp from country where continent = 'Asie' group by gnp order by count(*) desc limit 1
select avg(lifeexpectancy) from country where governmentform = 'Africa'
select avg(lifeexpectancy) from country where continent = 'Africa' and governmentform = 'Regional'
select sum(t1.population) from country as t1 join country as t2 on t1.code = t2.country
select sum(t2.population) from country as t1 join country as t2 on t1.country
select count(*) from city as t1 join countrylanguage as t2 on t1.countrycode = t2.countrycode where district = 'Gelderland'
select sum(population) from city where district = 'Gelderland'
select avg(gnp), sum(population) from city as t1 join country as t2 on t1.id = t2.country
select avg(gnp), sum(population) from country where governmentform = 'US Territory'
select count(distinct language) from countrylanguage
select count(distinct language) from countrylanguage
select count(*) from country where continent = 'Africa'
select count(distinct governmentform) from country where continent = 'Africa'
select count(*) from country where name = 'Aruba'
select count(distinct name) from country where localname = 'Aruba'
select count(distinct language) from countrylanguage
select count(distinct language) from country
select t1.name from country as t1 join countrylanguage as t2 on t1.code = t2.countrycode group by t1.name order by count(*) desc limit 1
select t1.governmentform from country as t1 join countrylanguage as t2 on t1.code = t2.countrycode group by t1.governmentform order by count(*) desc limit 1
select continent from country group by continent order by count(*) desc limit 1
select continent from country group by continent order by count(*) desc limit 1
select count(*) from city as t1 join countrylanguage as t2 on t1.id = t2.countrycode where t1.name like '%english%' intersect select count(*) from city as t1 join countrylanguage as t2 on t1.id = t2.countrycode where t1.name like '%hollandais%'
select count(*) from country where language like "%english%" and countrycode like "%holm% "
select t1.name from city as t1 join countrylanguage as t2 on t1.id = t2.countrycode where t2.language = 'English' intersect select t1.name from city as t1 join countrylanguage as t2 on t1.id = t2.countrycode where t2.language = 'France'
select t1.name from country as t1 join country as t2 on t1.country
select t1.name from country as t1 join countrylanguage as t2 on t1.country
select t1.name from country as t1 join countrylanguage as t2 on t1.country
select count(distinct continent) from countrylanguage as t1 join country as t2 on t1.countrycode = t2.language
select count(*) from country as t1 join countrylanguage as t2 on t2.countrycode = t2.language where t1.name like '%chinese%'
select t1.region from country as t1 join countrylanguage as t2 on t1.country
select t1.region from country as t1 join city as t2 on t1.code = t2.countrycode where t2.language
select t1.name from country as t1 join countrylanguage as t2 on t1.country
select t1.name from country as t1 join countrylanguage as t2 on t1.country
select t1.name from country as t1 join city as t2 on t1.code = t2.countrycode where t1.continent = 'Asie' group by t1.name order by count(*) desc limit 1
select t1.name from country as t1 join country as t2 on t1.countrycode
select t2.language from city as t1 join countrylanguage as t2 on t1.id = t2.countrycode where t1.district = 'Republican' group by t2.language order by count(*) desc limit 1
select t2.language from city as t1 join countrylanguage as t2 on t1.id = t2.countrycode where t1.name = "Republican" group by t1.countrycode
select t1.name from city as t1 join countrylanguage as t2 on t1.id = t2.language where t2.language = "English" group by t1.name order by count(*) desc limit 1
select t1.name from city as t1 join countrylanguage as t2 on t1.id = t2.countrycode where t2.language = "English" group by t1.name order by count(*) desc limit 1
select t1.name, t1.population, t1.lifeexpectancy from country as t1 join city as t2 on t1.id
select t1.name, count(*), t1.lifeexpectancy from country as t1 join city as t2 on t1.code = t2.countrycode where t1.region = (select avg(population) from country as t1 join city as t2 on t1.country
select avg(t1.lifeexpectancy) from country as t1 join countrylanguage as t2 on t1.country
select avg(t1.lifeexpectancy) from country as t1 join countrylanguage as t2 on t1.country
select sum(t1.population) from city as t1 join countrylanguage as t2 on t1.id = t2.countrycode where t2.language!= "English"
select count(*) from city where countrycode not in (select countrycode from
select t1.name from country as t1 join country as t2 on t1.code = 2 where t2.headofstate = 'Beirix'
select t1.name from country as t1 join country as t2 on t1.code = 2 where t2.headofstate = 'Brittrix'
select count(distinct language) from countrylanguage where isofficial < 1930
select count(distinct t1.name) from country as t1 join countrylanguage as t2 on t2.countrycode = t2.countrycode where t1.indepyear < 1930
select t1.name from country as t1 join city as t2 on t1.code = t2.countrycode where t1.region > (select continent from country)
select t1.name from country as t1 join country as t2 on t1.code = 2 where t2.region > (select avg(region) from country)
select t1.name from country as t1 join city as t2 on t1.code = t2.countrycode where t1.region = 'Asia' group by t1.name having count(*) < t1.region
select t1.name from country as t1 join city as t2 on t1.code = t2.countrycode where t1.region = 'Asie' and t2.population < (select max(population) from country)
select t1.name from country as t1 join city as t2 on t1.code = t2.countrycode where t1.region!= 'Asia' group by t1.name having count(*) > 1
select t1.name from country as t1 join city as t2 on t1.code = t2.countrycode where t1.region = 'Asie' group by t1.name having count(*) > (select avg(population) from country as t1 join country as t2 on t1.country
select name from country where countrycode not in (select language from country
select name from city where countrycode not in (select countrycode from country
select t1.name from city as t1 join countrylanguage as t2 on t1.id = t2.countrycode where t2.language!= "English"
select t1.name from city as t1 join countrylanguage as t2 on t1.id = t2.countrycode where t1.name not in (select t1.name from city as t1 join countrylanguage as t2 on t1.id = t2.language where t2.language = "English")
select name from country where language!= 'English' and governmentform!= "Republica
select distinct t1.name from country as t1 join
select t1.name from city as t1 join countrylanguage as t2 on t1.id = t2.countrycode where t2.language!= "English"
select t1.name from city as t1 join countrylanguage as t2 on t1.id = t2.countrycode where t2.language!= "Englise"
select distinct t1.name from city as t1 join countrylanguage as t2 on t1.id = t2.countrycode where t2.language = 'Chinese'
select distinct t1.name from city as t1 join countrylanguage as t2 on t1.id = t2.countrycode where t2.language = 'China'
select name, indepyear, localname from country order by population asc limit 1
select name, indepyear, localname from country order by population asc limit 1
select count(*), t1.name, t1.headofstate from country as t1 join city as t2 on t1.code = t2.id where t1.surfacearea = (select max(surfacearea) from country)
select name, count(*), headofstate from country order by population desc limit 1
select t1.name, count(*), t1.name from country as t1 join countrylanguage as t2 on t1.code = t2.countrycode group by t1.name having count(*) >= 3
select count(*), countrycode from countrylanguage group by countrycode having count(*) > 2
select count(*), district from city group by district having avg(population) > (select avg(population) from city)
select count(*), district from city group by district having avg(population) > (select avg(population) from city)
select t1.name, sum(t2.population) from country as t1 join city as t2 on t1.code = t2.id group by t1.governmentform having avg(t1.lifeexpectancy) > 72
select t1.name, sum(t2.lifeexpectancy) from country as t1 join country as t2 on t1.code = t2.code group by t1.governmentform having avg(t1.lifeexpectancy) > 72
select avg(lifeexpectancy), sum(lifeexpectancy) from country group by continent having avg(lifeexpectancy) < 72
select continent, sum(population), avg(lifeexpectancy) from country group by continent having avg(lifeexpectancy) < 72
select localname, surfacearea from country order by surfacearea desc limit 5
select name, localname from country order by population desc limit 5
select name from country order by population desc limit 3
select name from country order by population desc limit 3
select name from country order by population asc limit 3
select name from country order by population asc limit 3
select count(*) from country where continent = 'Asie'
select count(*) from country where continent = 'Asia'
select t1.name from country as t1 join city as t2 on t1.code = t2.countrycode where t1.continent = 'Europe' group by t1.name having count(*) >= 80000
select t1.name from country as t1 join city as t2 on t1.code = t2.countrycode where t1.continent = 'Europe' group by t1.name having count(*) > 80000
select sum(population), avg(population) from country where continent = 'North America' and population > 3000
select sum(population), avg(population) from country where region = 'North America' and avg(population) > 3000
select district from city where population between 160000 and 900000
select name from city where population between 160000 and 900000
select language from countrylanguage group by language order by count(*) desc limit 1
select language from countrylanguage group by language order by count(*) desc limit 1
select language from countrylanguage group by language order by count(*) desc limit 1
select language, count(*) from countrylanguage group by language order by count(*) desc limit 1
select count(*) from countrylanguage where language = 'Spanish' group by countrycode order by count(*) desc limit 1
select count(*) from countrylanguage where language = 'Spanish' group by countrycode order by count(*) desc limit 1
select t1.name from country as t1 join countrylanguage as t2 on t1.country
select t1.code from country as t1 join countrylanguage as t2 on t1.country
select count(*) from orchestra
select count(*) from orchestra
select name from conductor order by age asc
select name from conductor order by age
select t3.name from performance as t1 join conductor as t2 on t1.performance_id = t2.performance_id
select name from conductor where nationality!= 'USA'
select record_company from orchestra order by year_of_founded desc
select record_company from orchestra order by year_of_founded desc
select avg(attendance) from show
select avg(attendance) from show
select max(share), min(share) from performance where type!= "Live final"
select max(share), min(share) from performance where performance_id not in (select performance_id from performance where type = "Live final")
select count(distinct nationality) from conductor
select count(distinct nationality) from conductor
select t2.name from performance as t1 join conductor as t2 on t1.
select t2.name from performance as t1 join conductor as t2 on t1.
select t2.name from performance as t1 join conductor as t2 on t1.
select t2.name from performance as t1 join conductor as t2 on t1.performance_id = t1.performance_id group by t1.performance_id order by count(*) desc limit 1
select t1.name, t2.
select t1.name, t2.orchestr
select t2.name from performance as t1 join conductor as t2 on t1.orchestr
select t2.name from orchestra as t1 join conductor as t2 on t1.
select t1.name from conductor as t1 join orchestra as t2 on t1.
select t1.name from conductor as t1 join orchestra as t2 on t1.
select t1.name from conductor as t1 join orchestra as t2 on t1.
select t3.name from performance as t1 join orchestra as t2 on t1.orchest
select record_company, count(*) from orchestra group by record_company
select orchestra, count(*) from orchestra group by orchestra_id
select type from performance group by type order by count(*) asc
select major_record_format from orchestra group by major_record_format order by count(*) desc
select record_company from orchestra group by record_company order by count(*) desc limit 1
select record_company from orchestra group by record_company order by count(*) desc limit 1
select name from conductor where conductor_id not in (select orchestra_id from performance)
select orchestra from orchestra where orchestra_id not in (select orchestra_id from performance)
select record_company from orchestra where year_of_founded < 2003 intersect select record_company from orchestra where year_of_founded > 2003
select record_company from orchestra where year_of_founded < 2003 intersect select record_company from orchestra where year_of_founded > 2003
select count(*) from performance where orchestra_id in (select orchestra_id from performance where type = "CD" or type = "DVD")
select count(*) from performance where orchestra_id in (select orchestra_id from performance where major_record_format = 'CD' or major_record_format = 'DVD'
select t1.year_of_founded, t1.performance_id
select t1.year_of_founded, t1.year_of_work from performance as t1
select count(*) from highschooler
select count(*) from highschooler
select name, grade from highschooler
select name, grade from highschooler
select distinct grade from highschooler
select distinct grade from highschooler
select grade from highschooler where name = 'Know'
select grade from highschooler where name = 'Knowy'
select name from highschooler where grade = 10
select name from highschooler where grade = 10
select id from highschooler where name = 'Knowy'
select id from highschooler as t1 join friend as t2 on t2.friend_id = t1.id where t1.name = 'Know'
select count(*) from highschooler where grade = 9 or grade = 10
select count(*) from highschooler where grade = 9 or grade = 10
select grade, count(*) from highschooler group by grade
select grade, count(*) from highschooler group by grade
select grade from highschooler group by grade order by count(*) desc limit 1
select grade from highschooler group by grade order by count(*) desc limit 1
select distinct grade from highschooler where grade >= 4
select grade from highschooler group by grade having count(*) >= 4
select student_id, count(*) from friend group by student_id
select count(t2.friend_id), t1.name from highschooler as t1 join friend as t2 on t1.id = t2.friend_id group by t1.id
select t1.name, count(*) from highschooler as t1 join
select count(*), t1.name from highschooler as t1 join friend as t2 on t1.id = t2.friend_id group by t1.name
select t1.name from highschooler as t1 join friend as t2 on t1.id = t2.friend_id group by t2.friend_id order by count(*) desc limit 1
select t1.name from highschooler as t1 join friend as t2 on t1.id = t2.friend_id group by t2.friend_id order by count(*) desc limit 1
select t1.name from highschooler as t1 join friend as t2 on t1.id = t2.student_id group by t2.student_id having count(*) >= 3
select t1.name from highschooler as t1 join friend as t2 on t1.id = t2.student_id group by t2.student_id having count(*) >= 3
select t3.name from highschooler as t1 join friend as t2 on t1.id = t2.friend_id join highschooler as t3 on t1.id = t2.friend_id where t1.name = 'Know'
select t2.friend_id from highschooler as t1 join friend as t2 on t1.id = t2.friend_id where t1.name = 'Know'
select count(t2.friend_id) from highschooler as t1 join friend as t2 on t1.id = t2.friend_id where t1.name = 'Know'
select count(t2.friend_id) from highschooler as t1 join friend as t2 on t1.id = t2.friend_id where t1.name = 'Know'
select t2.id from highschooler as t2 join friend as t3 on t1.friend_id = t3.friend_id
select t2.id from highschooler as t2 join friend as t3 on t1.friend_id = t3.friend_id
select name from
select name from
select student_id from likes intersect select student_id from friend where friend_id in (select student_id from likes)
select student_id from friend where friend_id = 'Yes' intersect select student_id from likes where liked_id = 'Yes'
select t1.name from highschooler as t1 join likes as t2 on t1.id = t2.student_id
select t1.name from highschooler as t1 join friend as t2 on t1.id = t2.student_id intersect select t1.name from highschooler as t1 join likes as t2 on t1.id = t2.student_id join friend as t3 on t1.id = t3.friend_id
select count(*), student_id from likes group by student_id
select student_id, count(*) from likes group by student_id
select t2.name, count(*) from likes as t1 join highschooler as t2 on t1.student_id = t2.id group by t1.student_id
select t2.name, count(*) from likes as t1 join highschooler as t2 on t1.student_id = t2.id group by t1.student_id
select t2.name from likes as t1 join highschooler as t2 on t1.student_id = t2.id group by t1.student_id order by count(*) desc limit 1
select t1.name from highschooler as t1 join likes as t2 on t1.id = t2.student_id group by t2.student_id order by count(*) desc limit 1
select t1.name from highschooler as t1 join likes as t2 on t1.id = t2.student_id group by t2.student_id having count(*) >= 2
select t1.name from highschooler as t1 join likes as t2 on t1.id = t2.student_id group by t2.student_id having count(*) >= 2
select name from highschooler where grade > 5 intersect select name from highschooler group by name having count(*) >= 2
select name from highschooler where grade > 5 intersect select name from highschooler group by name having count(*) >= 2
select count(distinct id) from highschooler
select count(*) from highschooler as t1 join friend as t2 on t1.id = t2.friend_id where t1.name = 'Knownow'
select avg(grade) from highschooler where name like "%friend%"
select avg(grade) from highschooler where name like "%friend%"
select min(grade) from highschooler where id not in (select min(grade) from highschooler)
select min(grade) from highschooler where id not in (select student_id from friend)
select t1.state from owners as t1 join treatments as t2 on t1.owner_id = t2.professional_id intersect select t1.state from owners as t1 join treatments as t2 on t1.owner_id = t2.owner_id
select t1.state from owners as t1 join treatments as t2 on t1.owner_id = t2.professional_id intersect select t1.state from owners as t1 join treatments as t2 on t1.owner_id = t2.owner_id
select avg(age) from dogs where dog_id not in (select dog_id from treatments)
select avg(age) from dogs where dog_id in ( select dog_id from treatments )
select t2.first_name, t2.last_name, t3.home_phone from treatments as t1 join professionals as t2 on t1.treatment_id = t2.professional_id
select t2.first_name, t2.last_name, t2.cell_number from treatments as t1 join professionals as t2 on t1.professional_id = t2.professional_id where t1.date_adopted
select name from dogs except select t1.name from dogs as t1 join treatments as t2 on t1.dog_id = t2.dog_id join treatments as t3 on t2.treatment_id = t3.treatment_id group by t1.dog_id having count(*) > 1000
select t2.name from treatments as t1 join dogs as t2 on t1.dog_id = t2.dog_id group by t1.dog_id having count(*) > 1000
select distinct t1.first_name from owners as t1 join dogs as t2 on t1.owner_id = t2.dog_id except select t1.first_name from owners as t1 join treatments as t2 on t1.owner_id = t2.dog_id join treatments as t3 on t2.treatment_type_code = t3.treatment_type_code join dogs as t4 on t3.dog_id = t4.first_name
select distinct t1.first_name from owners as t1 join dogs as t2 on t1.owner_id = t2.dog_id where t2.name = "veterinary" or t2.name not in ( select t1.first_name from owners as t1 join dogs as t2 on t1.owner_id = t2.dog_id group by t1.first_name having count(*) = 1 ) union select 
select t2.email_address, t2.role_code, t2.professional_id from treatments as t1 join dogs as
select t2.email_address, t2.role_code, t2.professional_id from treatments as t1 join dogs as t4 on t1.dog_id = t4.dog_id
select t1.owner_id, t1.first_name, t1.last_name, t1.home_phone, t1.home_phone from owners as t1 join dogs as t2 on t1.owner_id = t2.dog_id group by t1.owner_id order by count(*) desc limit 1
select t1.owner_id, t1.first_name, t1.last_name, t1.home_phone from owners as t1 join dogs as t2 on t1.owner_id = t2.dog_id group by t1.owner_id order by count(*) desc limit 1
select t2.
select t2.email_address, t2.role_code, t2.name from treatments as t1 join professionals as t4 on t1.professional_id = t4.professional_id
select breed_name from breeds group by breed_name order by count(*) desc limit 1
select breed_name from breeds group by breed_name order by count(*) desc limit 1
select t2.
select t1.owner_id, t1.home_phone, t1.home_phone from owners as t1 join treatments as t2 on t2.professional_id = t1.owner_id group by t1.owner_id order by count(*) desc limit 1
select t1.treatment_type_description from treatment_types as t1 join treatments as t2 on t1.treatment_type_code = t2.treatment_type_code group by t1.treatment_type_code order by sum(t2.cost_of_treatment) asc limit 1
select sum(cost_of_treatment) from treatments group by cost_of_treatment order by sum(cost_of_treatment) asc limit 1
select t2.
select t2.owner_id, t2.zip_code from dogs as t1 join owners as t2 on t1.dog_id = t2.owner_id group by t2.owner_id order by sum(t1.weight) desc limit 1
select distinct t2.treatment_id, t2.cell_number from treatments as t1 join owners as t4 on t2.owner_id = t4.owner_id
select t2.professional_id, t2.cell_number from treatment_types as t1 join owners as t2
select distinct t2.first_name, t2.last_name from treatments as t1 join owners as t2 on t1.professional_id = t2.owner_id join professionals as t3 on t1.professional_id = t3.professional_id where t1.cost_of_treatment < ( select avg(cost_of_treatment) from treatments )
select t2.first_name, t2.last_name, t2.home_phone from treatments as t1 join owners as t2 on t2.owner_id = t2.owner_id join professionals as t3 on t1.professional_id = t3.professional_id where t1.cost_of_treatment < ( select avg(cost_of_treatment) from treatments )
select t1.date_of_treatment, t2.name from treatments as t1 join
select t1.date_of_treatment, t1.date_of_treatment from treatments as t1 join professionals as t2 on t1.professional_id = t2.professional_id group by t1.date_of_treatment
select t1.cost_of_treatment, t4.treatment_type_description from treatments as t1 join treatments as t2 on t1.treatment_type_code = t2.treatment_type_code join charges as t3 on t1.cost_of_treatment = t3.treatment_type_code
select t1.cost_of_treatment, t1.treatment_type_code from treatments as t1 join treatments as t2 on t1.treatment_type_code = t2.treatment_type_code group by t1.treatment_type_code
select t1.first_name, t1.last_name, t2.size_code from owners as t1 join dogs as t2 on t1.owner_id = t2.dog_id
select t1.first_name, t1.last_name, t2.size_code from owners as t1 join dogs as t2 on t1.owner_id = t2.dog_id
select t1.first_name, t1.last_name, t2.dog_id, t2.name from owners as t1 join dogs as t2 on t1.owner_id = t2.dog_id group by t1.owner_id
select t2.first_name, t2.last_name, t1.dog_id from dogs as t1 join owners as t2 on t1.owner_id = t2.owner_id group by t1.dog_id
select t2.first_name, t2.last_name, t1.date_adopted from dogs as t1 join breeds as t2
select t1.name, t1.date_adopted from dogs as t1 join treatments as t2 on t1.dog_id = t2.dog_id group by t1.dog_id order by count(*) asc limit 1
select t1.first_name, t1.last_name, t2.dog_id from dogs as t2 join treatment_types as t3 on t1.treatment_type_code = t3.treatment_type_code join owners as t4 on t2.owner_id = t4.owner_id and t4.home_phone = t4.home_phone and t4.date_of_treatment
select t1.first_name, t1.last_name, t1.home_phone, t1.home_phone from dogs as t2 join treatments as t3 on t1.dog_id = t3.dog_id
select date_arrived, date_departed from dogs where dog_id in (select dog_id from treatments)
select date_arrived, date_departed from dogs order by date_arrived asc limit 1
select t1.first_name, t1.last_name from owners as t1 join dogs as t2 on t1.owner_id = t2.dog_id order by t2.age limit 1
select t1.first_name, t1.last_name from owners as t1 join dogs as t2 on t1.owner_id = t2.dog_id order by t2.age asc limit 1
select t1.first_name, t1.last_name from professionals as t1 join treatments as t2 on t1.professional_id = t2.treatment_type_code where t1.state = 'Wisconsin' or t2.date_arrived
select t1.first_name, t1.last_name from professionals as t1 join treatments as t2 on t1.professional_id = t2.treatment_type_code where t1.state = "Wisconsin" or t2.date_adopted
select date_arrived, date_departed from dogs
select date_arrived, date_departed from dogs
select count(*) from dogs where dog_id in ( select dog_id from treatments )
select count(*) from dogs where dog_id in ( select dog_id from treatment_types
select count(*) from treatments as t1 join dogs as t2 on t1.dog_id = t2.dog_id where t2.age = "Surgery"
select count(*) from treatments as t1 join dogs as t2 on t1.dog_id = t2.dog_id group by t1.dog_id having count(*) >= 1
select role_code, street, state from professionals where city like '%west%'
select t1.role_code, t1.street, t1.city, t1.state from professionals as t1 join professionals as t2 on t1.professional_id = t2.professional_id join owners as t3 on t2.owner_id
select t1.first_name, t1.last_name, t1.email_address from owners as t1 join treatments as t2 on t1.owner_id = t2.owner_id
select t1.first_name, t1.last_name, t1.email_address from owners as t1 join
select count(*) from dogs where age < (select avg(age) from dogs)
select count(*) from dogs where age < (select avg(age) from dogs)
select max(cost_of_treatment) from treatments
select cost_of_treatment from treatments order by date_of_treatment desc limit 1
select count(*) from dogs where dog_id not in ( select dog_id from treatment
select count(*) from dogs where dog_id in ( select dog_id from treatments )
select count(*) from owners where owner_id not in ( select dog_id from dogs group by dog_id having count(*) = 1 )
select count(*) from owners where owner_id not in ( select dog_id from dogs )
select count(*) from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id where t1.first_name = "No" and t1.last_name = "No"
select count(*), dog_id from treatments where dog_id not in ( select dog_id from treatments )
select name, age, weight from dogs where abandoned_yn = 1 and abandoned_yn = 0
select name, age, weight from dogs where abandoned_yn = 1 and abandoned_yn = 0
select avg(age) from dogs
select avg(age) from dogs
select age from dogs order by age desc limit 1
select age from dogs order by age desc limit 1
select charge_type, sum(charge_amount) from charges group by charge_type
select charge_type, charge_amount from charges group by charge_type
select charge_type, sum(charge_amount) from charges group by charge_type order by sum(charge_amount) desc limit 1
select charge_amount from charges order by charge_amount desc limit 1
select t1.email_address, t1.cell_number, t1.home_phone from owners as t1 join treatments as t2 on t1.owner_id = t2.professional_id join professionals as t3 on t2.professional_id = t3.email_address where t1.home_phone = "NEA"
select t2.email_address, t1.cell_number, t1.home_phone from
select breed_name, size_code, size_code, count(*) from breeds as t1 join sizes as t2 on t2.size_code = t2.size_code group by breed_code
select distinct breed_name, size_code from dogs as t1 join treatments as t2 on t1.dog_id = t2.dog_id join sizes as t3 on
select t2.first_name, t2.last_name, t2.email_address from treatment_types as t1 join dogs as t4 on t3.dog_id = t4.dog_id join treatment_types as t5 on t3.treatment_type_code = t4.treatment_type_code
select t2.first_name, t2.last_name from treatments as t1 join owners as t2 on t1.professional_id = t2.owner_id join professionals as t3 on t1.professional_id = t3.professional_id
select count(*) from singer
select count(*) from singer
select name from singer order by net_worth_millions asc
select name from singer order by net_worth_millions asc
select birth_year, birth_year from singer
select birth_year, birth_year from singer
select t3.name from singer as t1 join song as t2 on t1.
select name from singer where citizenship!= 'France'
select name from singer where birth_year = 1948 or birth_year = 1949
select name from singer where birth_year = 1948 or birth_year = 1949
select name from singer order by net_worth_millions desc limit 1
select name from singer order by net_worth_millions desc limit 1
select citizenship, count(*) from singer group by citizenship
select t1.name, count(*) from singer as t1 join song as t2 on t1.
select t2.name from song as t1 join singer as t2 on t1.song_id = t1.song_id group by t1.song_id order by count(*) desc limit 1
select t2.name from song as t1 join singer as t2 on t1.song_id = t1.song_id group by t1.song_id order by count(*) desc limit 1
select t1.name, max(t1.net_worth_millions) from singer as t1 join song as t2 on t1.song_i
select max(net_worth_millions) from singer group by net_worth_millions
select t2.name, t3.name from song as t1 join singer as t2 on t1.song_id = t2.song_id
select t2.name, t3.name from song as t1 join singer as t2 on t1.song_id = t2.song_id
select distinct t2.name from song as t1 join singer as t2 on t1.song_id = t1.song_id where t1.sales > 300000
select distinct t2.name from song as t1 join singer as t2 on t1.song_id = t1.song_id where t1.sales > 300000
select t2.name from song as t1 join singer as t2 on t1.song_id = t1.song_id group by t1.song_id having count(*) > 1
select t2.name from song as t1 join singer as t2 on t1.song_id = t1.song_id group by t1.song_id having count(*) > 1
select t2.name, sum(t1.sales) from song as t1 join singer as t2 on t1.song_id = t1.song_id group by t1.song_id
select sum(sales), t2.name from song as t1 join singer as t2 on t1.song_id = t1.song_id group by t2.name
select name from singer where singer_id not in (select singer_id from song)
select name from singer where singer_id not in (select singer_id from song)
select citizenship from singer where birth_year < 1945 intersect select citizenship from singer where birth_year > 1955
select birth_year from singer where birth_year < 1945 intersect select citizenship from singer where birth_year > 1955
select count(*) from other_available_features
select t1.property_type_code from properties as t1 join ref_feature_types as t2 on t1.property_type_code = t2.property_type_code
select t1.property_type_description from ref_property_types as t1 join properties as t2 on t1.property_type_code = t2.property_type_code
select t1.property_name from properties as t1 join properties as t2 on t1.property_id = t2.property_id where t1.property_type_code = 'Appartement' or t1.room_count > 1
