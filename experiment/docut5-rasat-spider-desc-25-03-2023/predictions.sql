select count(*) from singer
select count(*) from singer
select name, country, age from singer order by age desc
select name, country, age from singer order by age desc
select avg(age), min(age), max(age) from singer where country = 'France'
select avg(age), min(age), max(age) from singer where country = 'F'
select name, song_release_year from singer order by age limit 1
select name, song_release_year from singer order by age limit 1
select distinct country from singer where age > 20
select distinct country from singer where age > 20
select country, count(*) from singer group by country
select country, count(*) from singer group by country
select song_name from singer where age > (select avg(age) from singer)
select song_name from singer where age > (select avg(age) from singer)
select location, name from stadium where capacity between 5000 and 10000
select location, name from stadium where capacity between 5000 and 10000
select max(capacity), avg(average) from stadium
select average, max(capacity) from stadium
select name, capacity from stadium order by average desc limit 1
select name, capacity from stadium order by average desc limit 1
select count(*) from concert where year = 2014 or year = 2015
select count(*) from concert where year = 2014 or year = 2015
select t2.name, count(*) from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id group by t1.stadium_id
select t1.name, count(*) from stadium as t1 join concert as t2 on t1.stadium_id = t2.stadium_id group by t1.stadium_id
select t2.name, t2.capacity from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id where t1.year >= 2014 group by t1.stadium_id order by count(*) desc limit 1
select t2.name, t2.capacity from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id where t1.year > 2013 group by t1.stadium_id order by count(*) desc limit 1
select year from concert group by year order by count(*) desc limit 1
select year from concert group by year order by count(*) desc limit 1
select name from stadium where stadium_id not in (select stadium_id from concert)
select name from stadium where stadium_id not in (select stadium_id from concert)
select country from singer where age > 40 intersect select country from singer where age < 30
select name from stadium except select t1.name from stadium as t1 join concert as t2 on t1.stadium_id = t2.stadium_id where t2.year = 2014
select name from stadium except select t1.name from stadium as t1 join concert as t2 on t1.stadium_id = t2.stadium_id where t2.year = 2014
select concert_name, theme, count(*) from concert group by concert_name
select t2.name, t3.theme, count(*) from singer_in_concert as t1 join singer as t2 on t1.singer_id = t2.singer_id
select t2.name, count(*) from singer_in_concert as t1 join singer as t2 on t1.singer_id = t2.singer_id group by t2.singer_id
select t1.name, count(*) from singer as t1 join singer_in_concert as t2 on t1.singer_id = t2.singer_id group by t1.song_name
select t1.name from singer as t1 join singer_in_concert as t2 on t1.singer_id = t2.singer_id join concert as t3 on t2.co
select t1.name from singer as t1 join singer_in_concert as t2 on t1.singer_id = t2.singer_id where
select name, country from singer where song_name like '%hey%'
select name, country from singer where song_name like '%hey%'
select t2.name, t2.location from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id where t1.year = 2014 intersect select t2.name, t2.location from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id where t1.year = 2015
select t1.name, t1.location from stadium as t1 join concert as t2 on t1.stadium_id = t2.stadium_id where t2.year = 2014 intersect select t1.name, t1.location from stadium as t1 join concert as t2 on t1.stadium_id = t2.stadium_id where t2.year = 2015
select count(*) from stadium where capacity = (select max(capacity) from stadium)
select count(*) from stadium order by capacity desc limit 1
select count(*) from pets where weight > 10
select count(*) from pets where weight > 10
select t2.weight from has_pet as t1 join pets as t2 on t1.petid = t2.petid join student as t3 on t1.stuid = t3.stuid where t2.pettype = 'dog' and t3.age = (select min(age) from has_pet as t1 join pets as t2 on t1.petid = t2.petid join student as t3 on t2.pet_age = t3.stuid where t2.pettype = 'dog')
select t2.weight from has_pet as t1 join pets as t2 on t1.petid = t2.petid join student as t3 on t1.stuid = t3.stuid where t2.pettype = 'dog' and t3.age = (select min(age) from has_pet as t1 join pets as t2 on t1.petid = t2.petid join student as t3 on t2.pet_age = t3.stuid where t2.pettype = 'dog')
select max(weight), pettype from pets group by pettype
select max(weight), max(weight), pettype from pets group by pettype
select count(*) from pets as t1 join has_pet as t2 on t1.petid = t2.petid join student as t3 on t2.stuid = t3.stuid where t3.age > 20
select count(*) from pets as t1 join has_pet as t2 on t1.petid = t2.petid join student as t3 on t2.stuid = t3.stuid where t3.age > 20
select count(*) from pets as t1 join has_pet as t2 on t1.petid = t2.petid join student as t3 on t2.stuid = t3.stuid where t3.sex = 'F'
select count(*) from pets as t1 join has_pet as t2 on t1.petid = t2.petid join student as t3 on t2.stuid = t3.stuid where t3.sex = 'F'
select count(distinct pettype) from pets
select count(distinct pettype) from pets
select distinct t1.fname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid join pets as t3 on t2.petid = t3.petid where t3.pettype = 'cat' or t3.pettype = 'dog'
select distinct t1.fname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid join pets as t3 on t2.petid = t3.petid where t3.pettype = 'cat' or t3.pettype = 'dog'
select t1.stuid
select t1.fname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid join pets as t3 on t2.petid = t3.petid where t3.pettype = 'cat' intersect select t1.fname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid where t3.pettype = 'dog
select major, age from student where stuid not in (select stuid from has_pet as t1 join pets as t2 on t1.petid = t2.petid where t2.pettype = "cat")
select major, count(*) from student where stuid not in (select t1.stuid from has_pet as t1 join pets as t2 on t1.petid = t2.petid where t2.pettype = "cat")
select stuid from student except select t1.stuid from has_pet as t1 join pets as t2 on t1.petid = t2.petid where t2.pettype = "cat"
select stuid from student except select t1.stuid from has_pet as t1 join pets as t2 on t1.petid = t2.petid where t2.pettype = "cat"
select fname, age from student where stuid in (select stuid from has_pet as t1 join pets as t2 on t1.petid = t2.petid where t2.pettype = "dog") except select stuid from has_pet as t1 join pets as t2 on t1.petid = t2.petid where t2.pettype = "cat"
select t1.fname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid join pets as t3 on t2.petid = t3.petid where t3.pettype = "dog" except select t1.fname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid where t3.pettype = "cat" and t1.stuid = t2.stuid
select t1.pettype, t1.weight from pets as t1 join has_pet as t2 on t1.petid = t2.petid join student as t3 on t2.stuid = t3.stuid order by t3.age limit 1
select t1.pettype, t1.weight from pets as t1 join has_pet as t2 on t1.petid = t2.petid join student as t3 on t2.stuid = t3.stuid where t3.age = min(age)
select pets.petid, t1.weight from pets as t1 join has_pet as t2 on t1.petid = t2.petid join has_pet as t3 on t2.petid = t3.petid
select t1.petid, t1.weight from pets as t1 join has_pet as t2 on t1.petid = t2.petid join student as t3 on t2.stuid = t3.stuid where t3.age > 1
select pettype, avg(age), max(age), t2.pettype from has_pet as t1 join pets as t2 on t1.petid = t2.petid join student as t3 on t1.stuid = t3.stuid group by t2.pettype
select pettype, avg(age), max(age), t2.pettype from has_pet as t1 join pets as t2 on t1.petid = t2.petid join student as t3 on t1.stuid = t3.stuid group by t2.pettype
select pettype, avg(weight) from pets group by pettype
select pettype, avg(weight) from pets group by pettype
select distinct t1.fname, t1.age from student as t1 join has_pet as t2 on t1.stuid = t2.stuid
select distinct t1.fname, t1.age from student as t1 join has_pet as t2 on t1.stuid = t2.stuid
select t2.petid from has_pet as t1 join pets as t2 on t1.petid = t2.petid join student as t3 on t1.stuid = t3.stuid where t3.lname = 'Smith'
select t2.petid from has_pet as t1 join pets as t2 on t1.petid = t2.petid join student as t3 on t1.stuid = t3.stuid where t3.lname = 'Smith'
select count(*), stuid from has_pet group by stuid
select stuid, count(*) from has_pet group by stuid order by count(*) desc
select t1.fname, t1.sex from student as t1 join has_pet as t2 on t1.stuid = t2.stuid group by t1.stuid having count(*) > 1
select t1.fname, t1.sex from student as t1 join has_pet as t2 on t1.stuid = t2.stuid group by t1.stuid having count(*) > 1
select t1.lname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid where t1.age = 3
select t2.lname from has_pet as t1 join student as t2 on t1.stuid = t2.stuid where t2.age = 3
select avg(age) from student where stuid not in (select stuid from has_pet)
select avg(age) from student where stuid not in (select stuid from has_pet)
select count(*) from continents
select count(*) from continents
select t1.continent, t1.continent, count(*) from continents as t1 join countries as t2 on t1.continent = t2.continent group by t1.continent
select t1.continent, t2.countryname, count(*) from continents as t1 join countries as t2 on t1.continent = t2.continent group by t1.continent
select count(*) from countries
select count(*) from countries
select maker, fullname, count(*) from car_makers group by maker
select t1.fullname, t1.id, count(*) from car_makers as t1 join model_list as t2 on t1.id = t2.modelid group by t1.id
select t1.model from model_list as t1 join cars_data as t2 on t1.model = t2.model
select t1.model from model_list as t1 join cars_data as t2 on t1.model = modelid order by t2.horsepower limit 1
select t1.model from model_list as t1 join car_names as t2 on t1.model = t2.model
select t1.model from car_names as t1 join model_list as t2 on t1.model = t2.modelid join cars_data as t3 on t2.model = t3.id where t3.weight < (select avg(weight) from cars_data)
select t1.maker from car_makers as t1 join cars_data as t2 on t1.id = t2.country
select distinct t1.maker from car_makers as t1 join cars_data as t2 on t1.id = t2.country
select 'Make', 'Productor' from cars_data order by year asc limit 1
select maker from car_makers order by year asc
select distinct model from model_list where model > 1980
select distinct model from model_list where model > 1980
select continent, count(*) from continents group by continent
select t2.continent, count(*) from car_makers as t1 join countries as t2 on t1.country = t2.countryid group by t2.continent
select t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.country group by t1.countryid order by count(*) desc limit 1
select t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.country group by t1.countryname order by count(*) desc limit 1
select count(*), t1.maker, count(*) from car_makers as t1 join model_list as t2 on t1.id = t2.modelid group by t1.maker
select count(*), t1.maker, t1.fullname from car_makers as t1 join model_list as t2 on t1.id = t2.modelid group by t1.maker
select accelerate from cars_data where model = 'ac' and make = 'amc hornet sportabout (sw
select sum(t1.acc
select count(distinct t1.maker) from car_makers as t1 join countries as t2 on t1.country = t2.countryid where t2.countryname = "France"
select count(*) from car_makers as t1 join countries as t2 on t1.country = t2.countryid where t2.countryname = "France"
select count(distinct t1.model) from model_list as t1 join countries as t2 on t2.countryid = t2.countryid where t2.countryname = "United States"
select count(*) from model_list where countryid in (select countryid from countries where countryname = 'USA') and t1.model = t1.modelid
select avg
select t2.mpg, avg(T2.mpg) from cars_data as t1 join cars_data as t2 on t1.id = t2.country
select min(weight) from cars_data where year = 1974 and cylinders = 8
select min(weight) from cars_data where year = 1974
select maker, model from model_list
select maker, model from model_list
select t1.countryname, t1.countryid from countries as t1 join car_makers as t2 on t1.countryid = t2.country where t2.maker >= 1
select t1.countryname, t1.countryid from countries as t1 join car_makers as t2 on t1.countryid = t2.country where t2.maker >= 1
select count(*) from cars_data where horsepower > 150
select count(*) from cars_data where horsepower > 150
select avg(weight), year from cars_data group by year
select avg(weight), avg(year), year from cars_data group by year
select countryname from countries where continent = "europe" group by countryname having count(*) >= 3
select countryname from countries where continent = "europe" group by countryname having count(*) >= 3
select max (select max (select max (select max (select max (select max (select max (select max (select max (select max (select max (select ) from car_names where cylinders = 3
select max(horsepower), edispl from cars_data where cylinders = 3
select model from model_list where model not in (select model from car_names)
select t1.model from model_list as t1 join cars_data as t2 on t1.model = modelid order by t2.mpg desc limit 1
select avg(h
select avg(h
select avg(edispl) from cars_data
select avg(edispl) from cars_data
select max(accelerate), cylinders from cars_data group by cylinders
select max(accelerate), cylinders from cars_data group by cylinders
select model from car_names group by model order by count(*) desc limit 1
select model from model_list group by model order by count(*) desc limit 1
select count(*) from cars_data where cylinders > 4
select count(*) from cars_data where cylinders > 4
select count(*) from cars_data where year = 1980
select count(*) from car_names where make = 1980
select count(*) from car_makers as t1 join model_list as t2 on t1.id = t2.modelid where t1.fullname = 'American Motor Company'
select count(*) from car_makers as t1 join model_list as t2 on t1.id = t2.modelid where t1.maker = "American Motor Company"
select maker, t1.fullname, t1.id from car_makers as t1 join model_list as t2 on t1.id = t2.model
select t1.maker, t1.id from car_makers as t1 join model_list as t2 on t1.id = t2.modelid group by t1.id having count(*) > 3
select distinct t2.model from car_makers as t1 join model_list as t2 on t1.id = t2.modelid where t1.fullname = "General Motors" union select distinct t2.model from car_makers as t1 join model_list as t2 on t1.id = t2.modelid where t1.fullname = "General Motors" or t1.fullname > 3500
select distinct t2.model from car_makers as t1 join model_list as t2 on t1.id = t2.modelid where t1.maker = "General Motors" or t1.fullname > 3500
select distinct year from cars_data where weight < 3000 intersect select distinct year from cars_data where weight <= 4000
select distinct year from cars_data where weight < 4000 intersect select distinct year from cars_data where weight > 3000
select horsepower from cars_data order by accelerate desc limit 1
select horsepower from cars_data order by accelerate desc limit 1
select count(*), t1.model from car_names as t1 join model_list as t2 on t1.model = t2.modelid where t1.model = "vovo" group by t1.model order by count(*) asc limit 1
select count(*), t1.model from model_list as t1 join cars_data as t2 on t1.model = modelid where t1.model = "volvo" group by t1.model order by count(*) asc limit 1
select count(distinct t1.id) from cars_data as t1 join cars_data as t2 on t1.id = t2.c
select count(distinct t1.id) from cars_data as t1 join cars_data as t2 on t1.id = t2.id where t1.acc
select count(*) from (select id from car_makers group by id having count(*) > 2)
select count(*) from (select country from car_makers group by country having count(*) > 2)
select count(*) from cars_data where cylinders > 6
select count(*) from cars_data where cylinders > 6
select t1.model from car_names as t1 join cars_data as t2 on t1.model = t2.modelid
select t1.model from car_names as t1 join cars_data as t2 on t1.model = 4
select t1.make, t1.make from car_names as t1 join cars_data as t2 on t1.i
select makeid, t1.make from car_names as t1 join cars_data as t2 on t1.makeid = t2.id where id not in (select t4.id from cars_data as t3 join cars_data as t4 on t3.id = 4)
select max(t2.
select max(mpg) from cars_data where cylinders = 8 union select mpg from cars_data where year < 1980
select model from model_list where model < 3500 except select model from model_list where maker = 'Ford Motor Company'
select distinct model from model_list where model < 3500 except select t1.model from model_list as t1 join countries as t2 on t1.country
select countryname from countries where countryid not in (select country from car_makers)
select countryname from countries where countryid not in (select country from car_makers)
select t1.id, t1.maker from car_makers as t1 join model_list as t2 on t1.id = t2.modelid group by t1.id having count(*) >= 2 intersect select t1.id, t1.maker from car_makers as t1 join model_list as t2 on t1.id = t2.modelid group by t1.id having count(*) > 3
select t1.id, t1.maker from car_makers as t1 join model_list as t2 on t1.id = t2.modelid group by t1.id having count(*) >= 2 intersect select t1.id, t1.maker from car_makers as t1 join model_list as t2 on t1.id = t2.modelid group by t1.id having count(*) > 3
select t1.countryid, t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.country where t2.maker = "fiat" or t2.maker = "3"
select t1.countryid, t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.country where t2.maker > 3 union select t1.countryid, t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.country where t2.maker = "fiat"
select country from airlines where airline = "JetBlue Airways"
select country from airlines where airline = "JazzBlue"
select abbreviation from airlines where airline = "JetBlue Airways"
select abbreviation from airlines where airline = "JazzBlue Airways"
select airline, abbreviation from airlines where country = "USA"
select airline, abbreviation from airlines where country = 'USA'
select airportcode, airportname from airports where city = "Anthony"
select airportcode, airportname from airports where city = "Anthony"
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
select city, country from airports where airportname = "Alon"
select city, country from airports where airportname = "Alon"
select airportname from airports where airportcode = 'AKO'
select airportname from airports where airportcode = 'AKO'
select airportname from airports where city = 'Aberdeen'
select airportname from airports where city = 'Aberge'
select count(*) from flights where sourceairport = 'APG'
select count(*) from flights where sourceairport = 'APG'
select count(*) from airports where airportcode = "ATO"
select count(*) from airports where airportcode = "ATO"
select count(*) from airports as t1 join flights as t2 on t1.city = t2.airline where t1.city = "Ashley"
select count(*) from flights as t1 join airports as t2 on t1.airline = t2.airportcode where t2.city = "Aberna"
select count(*) from airports where city = "Aberna"
select count(*) from airports where city = "Aberna"
select count(*) from flights where city = 'Aberdeen' and airportname = 'Ashley
select count(*) from flights as t1 join airports as t2 on t1.airline = t2.airportcode where t2.city = "Ashley" and t1.airline = "Ashley"
select count(*) from flights as t1 join airlines as t2 on t1.airline = t2.uid where t2.airline = 'JetBlue Airways'
select count(*) from flights as t1 join airlines as t2 on t1.airline = t2.airline where t2.abbreviation = "JazzBlue"
select count(*) from airlines as t1 join flights as t2 on t1.uid = t2.airline where country = 'ASY'
select count(*) from airlines as t1 join flights as t2 on t1.uid = t2.airline where destairport = "ASY"
select count(*) from airlines as t1 join flights as t2 on t1.uid = t2.airline join airports as t3 on t3.city = t3.city where t3.airportcode = 'AHD' and t1.airline = 'United Airlines'
select count(*) from airlines as t1 join flights as t2 on t1.uid = t2.uid
select count(*) from airlines as t1 join flights as t2 on t1.uid = t2.airline where country = 'Aberdeen'
select count(*) from airlines as t1 join flights as t2 on t1.uid = t2.airline where destairport = "Atlanta" and t1.airline = "United Airlines"
select t1.city from airports as t1 join airports as t2 on t1.city = t2.city group by t1.city order by count(*) desc limit 1
select city from airports group by city order by count(*) desc limit 1
select t1.city from airports as t1 join airports as t2 on t1.city = t2.city group by t1.city order by count(*) desc limit 1
select city from airports group by city order by count(*) desc limit 1
select airportcode from airports group by airportcode order by count(*) desc limit 1
select airportcode from airports group by airportcode order by count(*) desc limit 1
select airportcode from airports group by airportcode order by count(*) limit 1
select airportcode from airports group by airportcode order by count(*) asc limit 1
select t1.airline from airlines as t1 join flights as t2 on t1.uid = t2.airline group by t1.airline order by count(*) desc limit 1
select t1.airline from airlines as t1 join flights as t2 on t1.uid = t2.airline group by t1.airline order by count(*) desc limit 1
select abbreviation, country from airlines group by abbreviation order by count(*) limit 1
select abbreviation, country from airlines group by abbreviation order by count(*) limit 1
select t1.airline from airlines as t1 join flights as t2 on t1.uid = t2.uid
select airline from flights where sourceairport = "AHD"
select distinct airline from flights where destairport = 'AHD'
select airline from flights where sourceairport = "AHD"
select airline from flights where sourceairport = 'APG' intersect select airline from flights where sourceairport = 'CVO'
select airline from flights where destairport = "APG" intersect select airline from flights where destairport = "CVO"
select airline from flights where sourceairport = 'CVO' except select airline from flights where sourceairport = 'APG'
select avg(airportname) from airlines as t1 join airports as t2 on t1.uid = t2.airportname where t2.airportcode = "CVO" except select avg(airportname) from airlines as t1 join airports as t2 on t1.uid = t2.airportname where t2.airportcode = "APG"
select t1.airline from airlines as t1 join flights as t2 on t1.uid = t2.airline group by t1.uid having count(*) >= 10
select t1.airline from airlines as t1 join flights as t2 on t1.uid = t2.airline group by t1.uid having count(*) >= 10
select airline from airlines group by airline having count(*) < 200
select t1.airline from airlines as t1 join flights as t2 on t1.uid = t2.airline group by t1.uid having count(*) < 200
select t2.airline, t2.airline from airlines as t1 join flights as t2 on t1.uid = t2.airline where t1.airline = "United Airlines"
select flightno from airlines as t1 join flights as t2 on t1.uid = t2.airline where t1.airline = "United Airlines"
select flightno from flights where destairport = "APG"
select flightno from flights where destairport = "APG"
select flightno from flights where sourceairport = "APG"
select flightno from flights where sourceairport = "APG"
select t1.flightno from flights as t1 join airports as t2 on t2.airportcode = t2.airportcode where t2.city = "Aberdeen"
select t2.flightno from airports as t1 join flights as t2 on t1.city = 'Aberna'
select t1.flightno from flights as t1 join airports as t2 on t1.airline = t2.airportcode where t2.city = "Aberdeen"
select t1.flightno from flights as t1 join airports as t2 on t1.airline = t2.airportcode where t2.city = "Aberdeen"
select count(*) from airports where city = "Aberna" or city = "Abilene"
select count(*) from airports as t1 join flights as t2 on t1.city = "Aid" or t1.city = "Aid"
select airportname from airports where airportcode not in (select flightno from flights)
select airportname from airports where airportcode not in (select airportcode from airports) or airportcode not in (select airportcode from airports)
select count(*) from employee
select count(*) from employee
select name from employee order by age asc
select name from employee order by age asc
select city, count(*) from employee group by city
select city, count(*) from employee group by city
select city from employee group by city having count(*) > 1
select city from employee where age < 30 group by city having count(*) > 1
select location, count(*) from shop group by location
select location, count(*) from shop group by location
select manager_name, district from shop order by number_products desc limit 1
select manager_name, district from shop order by number_products desc limit 1
select min(number_products), max(number_products) from shop
select min(number_products), max(number_products) from shop
select name, location, district from shop order by number_products desc
select name, location, district from shop order by number_products desc
select name from shop where number_products > (select avg(number_products) from shop)
select name from shop where number_products > (select avg(number_products) from shop)
select t1.name from employee as t1 join evaluation as t2 on t1.employee_id = t2.employee_id group by t2.employee_id order by count(*) desc limit 1
select t1.name from employee as t1 join evaluation as t2 on t1.employee_id = t2.employee_id group by t1.employee_id order by count(*) desc limit 1
select t1.name from employee as t1 join evaluation as t2 on t1.employee_id = t2.employee_id order by t2.bonus desc limit 1
select t1.name from employee as t1 join evaluation as t2 on t1.employee_id = t2.employee_id order by t2.bonus desc limit 1
select name from employee except select t2.name from evaluation as t1 join employee as t2 on t1.employee_id = t2.employee_id
select name from employee where employee_id not in (select employee_id from evaluation)
select t2.name from hiring as t1 join shop as t2 on t1.shop_id = t2.shop_id group by t1.shop_id order by count(*) desc limit 1
select t2.name from hiring as t1 join shop as t2 on t1.shop_id = t2.shop_id group by t2.shop_id order by count(*) desc limit 1
select name from shop where shop_id not in (select shop_id from hiring)
select name from shop where shop_id not in (select shop_id from hiring)
select t3.name, count(*) from hiring as t1 join shop as t2 on t1.shop_id = t2.shop_id join employee as t3 on t1.employee_id = t3.employee_id group by t3.name
select count(*), t3.name from hiring as t1 join shop as t2 on t1.shop_id = t2.shop_id join employee as t3 on t1.employee_id = t3.employee_id
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
select document_name, template_id from documents where document_name like '%w%'
select document_id, template_id, document_description from documents where document_name = "Robbin CV"
select document_id, template_id, document_description from documents where document_name = "Robbin CV"
select count(distinct template_id) from documents
select count(distinct template_id) from documents
select count(*) from templates where template_type_code = 'PPT'
select count(*) from templates where template_type_code = "PPT"
select template_id, count(*) from documents group by template_id
select template_id, count(*) from documents group by template_id
select template_id, template_type_code from documents
select template_id, template_type_code from documents
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
select template_id from templates where template_type_code = 'PP' or template_type_code = 'PPT'
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
select min(version_number), template_type_code from templates group by template_type_code
cre_Doc_Template_Mgt
cre_Doc_Template_Mgt
select t1.document_name from documents as t1 join templates as t2 on
select t1.document_name from documents as t1 join templates as t2 on t1.document_id = t2.document_id
select template_type_code, count(*) from documents
select template_type_code, count(*) from documents
select template_type_code from documents
select template_type_code from templates group by template_type_code order by count(*) desc limit 1
select template_type_code from templates except select document_name from documents
select template_type_code from templates where template_id not in (select template_id from documents)
select template_type_code, template_type_description from ref_template_types
select template_type_code, template_type_description from ref_template_types
select template_type_description from ref_template_types where template_type_code = "AD"
select template_type_description from ref_template_types where template_type_code = "AD"
select template_type_code from ref_template_types where template_type_description = "Book"
select template_type_code from ref_template_types where template_type_description = "Book"
select distinct template_type_description from ref_template_types
select distinct template_type_description from templates
select 'Presentation' from ref_template_types where template_type_description = "Presentation"
select template_id from templates where template_type_description like '%presentation%
select count(*) from paragraphs
select count(*) from paragraphs
select count(*) from documents as t1 join paragraphs as t2 on t1.document_id = t2.document_id where t1.document_name = 'Summer Show'
select count(*) from documents as t1 join paragraphs as t2 on t1.document_id = t2.document_id where t1.document_name = 'Summer Show'
select t1.other_details from paragraphs as t1 join paragraphs as t2 on t1.paragraph_id = t2.paragraph_id where t1.paragraph_text = 'Korea'
select t1.other_details from paragraphs as t1 join paragraphs as t2 on t1.paragraph_id = t2.paragraph_id where t1.paragraph_text like '%kenorea%'
select t1.paragraph_id, t1.paragraph_text from paragraphs as t1 join documents as t2 on t1.document_id = t2.document_id where t2.document_name = 'Welcome to NY'
select t1.document_id, t1.paragraph_text from paragraphs as t1 join documents as t2 on t1.document_id = t2.document_id where t2.document_name = 'Welcome to NY'
select t1.paragraph_text from paragraphs as t1 join documents as t2 on t1.document_id = t2.document_id where t2.document_name = "Customer reviews"
select t1.paragraph_text from paragraphs as t1 join documents as t2 on t1.document_id = t2.document_id where t2.document_name = 'Customer reviews'
select document_id, count(*) from paragraphs group by document_id order by document_id
select document_id, count(*) from paragraphs group by document_id order by document_id
select t1.document_id, t1.document_name, count(*) from documents as t1 join paragraphs as t2 on t1.document_id = t2.document_id group by t1.document_id
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
select document_id from paragraphs where paragraph_text like '%brazil%' intersect select document_id from paragraphs where paragraph_text = 'Ireland%'
select count(*) from teacher
select count(*) from teacher
select name from teacher order by age asc
select name from teacher order by age asc
select age, hometown from teacher
select age, hometown from teacher
select name from teacher where hometown!= 'Billy Lever Urban District'
select name from teacher where hometown!= 'Billy Lever Urban District'
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
select t2.name, t3.course from course_arrange as t1 join teacher as t2 on t1.teacher_id = t2.teacher_id join course as t3 on t1.course_id = t3.course_id
select t1.name, t3.course_id from teacher as t1 join course_arrange as t2 on t1.teacher_id = t2.teacher_id join course as t3 on t2.course_id = t3.course_id
select t2.name, t3.course from course_arrange as t1 join teacher as t2 on t1.teacher_id = t2.teacher_id join course as t3 on t1.course_id = t3.course_id order by t2.name asc
select t2.name, t3.course from course_arrange as t1 join teacher as t2 on t1.teacher_id = t2.teacher_id join course as t3 on t1.course_id = t3.course_id order by t2.name asc
select t2.name from course_arrange as t1 join teacher as t2 on t1.teacher_id = t2.teacher_id join course as t3 on t1.course_id = t3.course_id where t3.course = 'Math'
select distinct t1.name from teacher as t1 join course_arrange as t2 on t1.teacher_id = t2.teacher_id join course as t3 on t2.course_id = t3.course_id where t3.course = 'Math'
select name, count(*) from teacher group by name
select t2.name, count(*) from course_arrange as t1 join teacher as t2 on t1.teacher_id = t2.teacher_id group by t2.teacher_id
select t2.name from course_arrange as t1 join teacher as t2 on t1.teacher_id = t2.teacher_id group by t2.name having count(*) >= 2
select t2.name from course_arrange as t1 join teacher as t2 on t1.teacher_id = t2.teacher_id group by t2.teacher_id having count(*) >= 2
select name from teacher where teacher_id not in (select teacher_id from course_arrange)
select name from teacher where teacher_id not in (select teacher_id from course_arrange)
select count(*) from visitor where age < 30
select name from visitor where level_of_membership > 4 order by level_of_membership desc
select avg(age) from visitor where level_of_membership!= 4
select name, level_of_membership from visitor where age > 4 order by age desc
select t1.museum_id, t1.name from museum as t1 join visit as t2 on t1.museum_id = t2.museum_id group by t1.museum_id order by count(*) desc limit 1
select avg(num_of_staff) from museum where open_year < 2009
select open_year, num_of_staff from museum where name = "Pala Museum"
select name from museum where num_of_staff > (select min(num_of_staff) from museum where open_year > 2010)
select visit.museum_id, name, age from visitor as t1 join visit as t2 on t1.id = t2.visit
select t1.id, t1.name, t1.level_of_membership from visitor as t1 join visit as t2 on t1.id = t2.visit
select t1.museum_id, t1.name from museum as t1 join visit as t2 on t1.museum_id = t2.museum_id group by t1.museum_id order by count(*) desc limit 1
select name from museum where museum_id not in (select museum_id from visit)
select t1.name, t1.age from visitor as t1 join visit as t2 on t1.id = t2.visitor_id group by t2.visitor_id order by sum(t2.num_of_ticket) desc limit 1
select avg(num_of_ticket), max(num_of_ticket) from visit
select sum(t1.num_of_ticket) from visit as t1 join visitor as t2 on t1.total_spent = t2.level_of_membership where t2.level_of_membership = 1
select t1.name from visitor as t1 join visit as t2 on t1.id = t2.visitor_id join museum as t3 on t3.museum_id = t2.museum_id where t3.open_year < 2009 intersect select t1.name from visitor as t1 join visit as t2 on t1.id = t2.id
select count(*) from visitor where id not in ( select visitor_id from visit as t1 join museum as t2 on t1.museum_id = t2.museum_id where t2.open_year > 2010 );
select count(*) from museum where open_year > 2013 or open_year < 2008
select count(*) from players
select count(*) from players
select count(*) from matches
select count(*) from matches
select first_name, birth_date from players where country_code = 'USA'
select first_name, birth_date from players where country_code = 'USA'
select avg(t1.loser_age), avg(t2.winner_rank) from matches as t1 join matches as t2 on t1.loser_id = t2.loser_id
select avg(t2.loser_age), avg(t2.winner_rank) from matches as t1 join matches as t2 on t1.loser_id = t2.loser_id group by t1.loser_age
select avg(t2.rank
select avg(t2.rank
select max(t2.rank
select max(loser_rank) from matches
select count(distinct country_code) from players
select count(distinct country_code) from players
select count(distinct loser_name) from matches
select count(distinct loser_name) from matches
select tourney_name from matches group by tourney_name having count(*) > 10
select t2.winner_rank from rankings as t1 join matches as t2 on t1.winner_
select winner_name from matches where year = 2013 intersect select winner_name from matches where year = 2016
select t1.first_name, t1.last_name from players as t1 join rankings as t2 on t1.player_id =
select count(*) from matches where year = 2013 or year = 2016
select count(*) from matches where year = 2013 or year = 2016
select t1.country_code, t1.first_name from players as t1 join matches as t2 on t1.player_id = t2.winner_id where t2.winner_name = "Australian Open" intersect select t1.country_code, t1.first_name from players as t1 join matches as t2 on t1.player_id = t2.winner_id where t2.winner_name = "WTA Championships"
select t1.first_name, t1.country_code from players as t1 join rankings as t2 on t1.player_id = t2.player_id where
select first_name, country_code from players order by birth_date desc limit 1
select first_name, country_code from players order by birth_date desc limit 1
select first_name, last_name from players order by birth_date
select first_name, last_name from players order by birth_date
select first_name, last_name from players where hand = 'L' order by birth_date
select first_name, last_name from players where birth_date = "left" order by birth_date
select t1.first_name, t1.country_code from players as t1 join rankings as t2 on t1.player_id = t2.player_id group by t2.player_id order by count(*) desc limit 1
select t1.first_name, t1.country_code from players as t1 join rankings as t2 on t1.player_id = t2.player_id group by t2.player_id order by count(*) desc limit 1
select year from matches group by year order by count(*) desc limit 1
select year from matches group by year order by count(*) desc limit 1
select t2.winner_rank, t2.winner_rank_points from rankings as t1 join
select t1.winner_name, count(*) from matches as t1 join rankings as t2 on t1.winner_id = t2.winner_
select t1.winner_name from matches as t1 join rankings as t2 on t1.winner_id = t2.winner_id
select t1.winner_name, t1.winner_rank_points from matches as t1 join rankings as t2 on t1.winner_id = t2.winner_id
select loser_name, winner_rank from matches order by minutes desc limit 1
select t1.winner_name, t1.loser_name from matches as t1 join matches as t2 on t1.loser_id = t2.loser_id order by t2.year desc limit 1
select avg(ranking_points), t2.first_name from rankings as t1 join players as t2 on t1.player_id = t2.player_id group by t2.player_id
select t1.first_name, avg(t2.ranking_points) from players as t1 join rankings as t2 on t1.player_id = t2.player_id group by t2.player_id
select sum(ranking_points), t2.first_name from rankings as t1 join players as t2 on t1.player_id = t2.player_id group by t2.player_id
select t1.first_name, sum(t2.ranking_points) from players as t1 join rankings as t2 on t1.player_id = t2.player_id group by t2.player_id
select country_code, count(*) from players group by country_code
select country_code, count(*) from players group by country_code
select country_code from players group by country_code order by count(*) desc limit 1
select country_code from players group by country_code order by count(*) desc limit 1
select country_code from players group by country_code having count(*) > 50
select country_code from players group by country_code having count(*) > 50
select ranking_date, count(*) from rankings group by ranking_date
select ranking_date, count(*) from rankings group by ranking_date
select year, count(*) from matches group by year
select year, count(*) from matches group by year
select t2.winner_rank, t2.winner_rank from matches as t2 join matches as t3 on t3.winner_id = t2.winner_id order by t2.winner_age limit 3
select t2.winner_name, count(*) from matches as t1 join matches as t2 on t1.winner_id = t2.winner_id order by t1.year limit 3
select count(distinct winner_rank) from matches where tourney_name = 'WTA Championships' intersect select winner_rank from matches where winner_id in (select winner_id from matches where tourney_name = 'WTA Championships')
select count(distinct winner_rank) from matches where tourney_name = "WTA Championships"
select t1.first_name, t1.country_code, t1.birth_date from players as t1 join rankings as t2 on t1.player_id = t2.player_id order by ranking_points desc limit 1
select t1.first_name, t1.country_code, t1.birth_date from players as t1 join matches as t2 on t1.player_id = t2.winner_id group by t2.winner_rank order by count(*) desc limit 1
select hand, count(*) from players group by hand
select hand, count(*) from players group by hand
select count(*) from ship where disposition_of_ship = 'Captured'
select name, tonnage from ship order by tonnage desc
select name, date, result from battle
select max(t1.tonnage), min(t2.tonnage), t2.tonnage
select avg(injured), t2.name from death as t1 join battle as t2 on t1.caused_by_ship_id = t2.id group by t1.id
select t2.killed, t2.injured from ship as t1 join death as t2 on t1.id = t2.caused_by_ship_id where t1.tonnage = 't'
select name, result from battle where bulgarian_commander!= 'Boril'
select distinct t1.id, t1.name from battle as t1 join ship as t2 on t1.id = t2.lost_in_battle where t2.ship_type = 'Brig'
select t1.id, t1.name from battle as t1 join death as t2 on t1.id = t2.id group by t1.id having count(*) > 10
select t1.id, t1.name from ship as t1 join death as t2 on t1.id = t2.caused_by_ship_id group by t1.id order by sum(t2.injured) desc limit 1
select distinct name from battle where bulgarian_commander = 'Kaloyan' and latin_commander = 'Baldwin I'
select count(distinct result) from battle
select count(*) from battle where id not in ( select lost_in_battle from ship where tonnage = 225 );
select t1.name, t1.date from battle as t1 join ship as t2 on t1.id = t2.lost_in_battle where t2.name = 'Lettice' and t2.name = 'HMS Atalanta'
select name, result, bulgarian_commander from battle except select t1.name, t1.result, t1.bulgarian_commander from battle as t1 join ship as t2 on t1.id = t2.lost_in_battle where t2.location = 'English Channel'
select note from death where note like '%east%'
select addresses.line_1, line_2, line_2 from addresses join students as t3 on t2.address_id = t3.address_id
select t2.line_1, t2.line_2 from addresses as t1 join addresses as t2 on t1.address_id = t2.address_id
select count(*) from courses
select count(*) from courses
select course_description from courses where course_name = "mathroom"
select course_description from courses where course_name = "mathroom"
select zip_postcode from addresses where city = "Port Chelsea"
select zip_postcode from addresses where city = 'Port Chelsea'
select t2.department_name, t1.department_id from degree_programs as t1 join departments as t2 on t1.department_id = t2.department_id group by t2.department_name order by count(*) desc limit 1
select t2.department_name, t1.department_id from degree_programs as t1 join departments as t2 on t1.department_id = t2.department_id group by t1.department_id order by count(*) desc limit 1
select count(distinct department_id) from degree_programs
select count(distinct department_id) from degree_programs
select count(distinct degree_summary_name) from degree_programs
select count(distinct degree_summary_name) from degree_programs
select count(*) from degree_programs as t1 join departments as t2 on t1.department_id = t2.department_id
select count(*) from degree_programs as t1 join departments as t2 on t1.department_id = t2.department_id
select section_name, section_description from sections
select section_name, section_description from sections
select t1.course_name, t1.course_id from courses as t1 join sections as t2 on t1.course_id = t2.course_id group by t1.course_id having count(*) <= 2
select t1.course_name, t1.course_id from courses as t1 join sections as t2 on t1.course_id = t2.course_id group by t1.course_id having count(*) < 2
select section_name from sections order by section_name desc
select section_name from sections order by section_name desc
select t1.semester_name, t1.semester_id from semesters as t1 join student_enrolment as t2 on t1.semester_id = t2.semester_id group by t1.semester_id order by count(*) desc limit 1
select t1.semester_name, t1.semester_id from semesters as t1 join student_enrolment as t2 on t1.semester_id = t2.semester_id group by t1.semester_id order by count(*) desc limit 1
select department_description from departments where department_name like "%computer%"
select t2.department_description from departments as t1 join departments as t2 on t1.department_id = t2.department_id where t1.department_name like '%computer%'
select t2.first_name, t2.middle_name, t2.last_name, t1.student_id from student_enrolment as t1 join students as t2 on t1.student_id = t2.student_id group by t1.student_id having count(*) = 2
select t2.first_name, t2.middle_name, t2.last_name, t1.student_id from student_enrolment as t1 join students as t2 on t1.student_id = t2.student_id group by t1.student_id having count(*) = 2
select t1.first_name, t1.middle_name, t1.last_name from students as t1 join student_enrolment as t2 on t1.student_id = t2.student_id join degree_programs as t3 on t2.degree_program_id = t3.degree_program_id where t3.degree_summary_name = 'Boston'
select t2.first_name, t2.middle_name, t2.last_name from student_enrolment as t1 join students as t2 on t1.student_id = t2.student_id where t1.degree_program_id = 'Boston'
select degree_program_id from student_enrolment group by degree_program_id order by count(*) desc limit 1
select t2.degree_summary_name from student_enrolment as t1 join degree_programs as t2 on t1.degree_program_id = t2.degree_program_id group by t2.degree_summary_name order by count(*) desc limit 1
select t1.degree_program_id, t1.degree_summary_name from degree_programs as t1 join student_enrolment as t2 on t1.degree_program_id = t2.degree_program_id group by t1.degree_program_id order by count(*) desc limit 1
select t1.degree_program_id, t1.degree_summary_name from degree_programs as t1 join student_enrolment as t2 on t1.degree_program_id = t2.degree_program_id group by t1.degree_program_id order by count(*) desc limit 1
select t1.student_id, t2.first_name, t2.middle_name, count(*) from student_enrolment as t1 join students as t2 on t1.student_id = t2.student_id group by t1.student_id order by count(*) desc limit 1
select t2.first_name, t2.middle_name, t2.last_name, count(*) from student_enrolment as t1 join students as t2 on t1.student_id = t2.student_id group by t1.student_id order by count(*) desc limit 1
select semester_name from semesters where semester_id not in (select semester_id from student_enrolment)
select semester_name from semesters where semester_id not in (select semester_id from student_enrolment)
select t1.course_name from courses as t1 join student_enrolment_courses as t2 on t1.course_id = t2.course_id
select t1.course_name from courses as t1 join student_enrolment_courses as t2 on t1.course_id = t2.course_id
select t1.course_name from courses as t1 join student_enrolment_courses as t2 on t1.course_id = t2.course_id group by t1.course_id order by count(*) desc limit 1
select t1.course_name from courses as t1 join student_enrolment_courses as t2 on t1.course_id = t2.course_id group by t1.course_name order by count(*) desc limit 1
select t2.last_name from student_enrolment as t1 join students as t2 on t1.student_id = t2.student_id join courses as t3 on t1.student_id = t2.student_id where ssn = "North Carolina" except select t2.last_name from student_enrolment as t1 join students as t2 on t1.student_id = t2.student_id join degree_programs as t3 on t1.student_enrolment_id = t3.student_id
select last_name from students where ssn not in (select student_id from student_enrolment)
select transcript_date, transcript_id from transcripts group by transcript_id having count(*) >= 2
select transcript_date, transcript_id from transcripts group by transcript_id having count(*) >= 2
select cell_mobile_number from students where first_name = 'Timmothy' and last_name ='Ward'
select cell_mobile_number from students where first_name = 'Timmothy' and last_name ='Ward'
select first_name, middle_name, last_name from students as t1 join student_enrolment as t2 on t1.student_id = t2.student_id
select first_name, middle_name, last_name from students order by date_first_registered asc limit 1
select first_name, middle_name, last_name from students order by date_first_registered limit 1
select first_name, middle_name, last_name from students order by date_first_registered limit 1
select distinct t2.first_name from addresses as t1 join students as t2 on t1.address_id = t1.address_id where t2.current_address_id = t2.current_address_id
select first_name from students where permanent_address_id not in ( select permanent_address_id from students )
select t1.address_id, t1.line_1 from addresses as t1 join students as t2 on t1.address_id = t2.student_id group by t1.address_id order by count(*) desc limit 1
select t1.address_id, t1.line_1, t1.line_2 from addresses as t1 join students as t2 on t1.address_id = t2.student_id group by t1.address_id order by count(*) desc limit 1
select avg(t1.transcript_date) from transcripts as t1 join transcript_contents as t2 on t1.transcript_id = t2.transcript_id
select avg(transcript_date) from transcripts
select transcript_date, other_details from transcripts order by transcript_date asc limit 1
select transcript_date, other_details from transcripts order by transcript_date asc limit 1
select count(*) from transcripts
select count(*) from transcripts
select transcript_date from transcripts
select transcript_date from transcripts
select transcript_id, count(*) from transcripts group by transcript_id order by count(*) desc limit 1
select transcript_id, count(*) from transcripts group by transcript_id
select transcript_date, transcript_id from transcripts group by transcript_id order by count(*) asc limit 1
select transcript_date, transcript_id from transcripts group by transcript_id order by count(*) asc limit 1
select t1.semester_name from semesters as t1 join student_enrolment as t2 on t1.semester_id = t2.semester_id join degree_programs as t3 on t2.degree_program_id = t3.degree_program_id where t3.degree_summary_name = 'Math' intersect select t1.semester_id
select semester_id from student_enrolment intersect select semester_id from student_enrolment
select count(distinct t1.address_id) from addresses as t1 join students as t2 on t1.address_id = t2.current_address_id group by t1.address_id
select distinct t1.line_1 from addresses as t1 join students as t2 on t1.address_id = t2.student_id
select other_student_details from students order by other_student_details desc
select other_student_details from students order by other_student_details desc
select section_name from sections
select section_description from sections where section_name = "h"
select t1.first_name from students as t1 join addresses as t2 on t1.student_id = t2.address_id where t2.country = "Hait Haiti" or t1.cell_mobile_number = "09700166582"
select t2.first_name from addresses as t1 join students as t2 on t1.address_id = t2.student_id where t1.country = "Hait Haiti" union select t2.first_name from addresses as t1 join students as t2 on t1.address_id = t2.student_id where t1.country = "Hait Haiti" and t2.cell_mobile_number = "09700166582"
select title from cartoon order by title
select title from cartoon order by title
select title from cartoon where directed_by = "Ben Jones"
select title from cartoon where directed_by = 'Ben Jones'
select count(*) from cartoon where written_by = "Joseph Kuhr"
select count(*) from cartoon where written_by = "Joseph Kuhr"
select title, directed_by from cartoon order by avg(directed_by)
select t2.title, t2.directed_by from cartoon as t1 join cartoon as t2 on t1.id = t2.directed_by order by "air_date"
select title from cartoon where directed_by = "Ben Jones" or directed_by = "Brandon Vietti"
select title from cartoon where directed_by = 'Ben Jones' or directed_by = 'Ben Jones'
select country, count(*) from tv_channel group by country order by count(*) desc limit 1
select country, count(*) from tv_channel group by country order by count(*) desc limit 1
select count(distinct series_name), content from tv_channel
select count(distinct series_name), content from tv_channel
select content from tv_channel where series_name = "Sky Radio"
select content from tv_channel where series_name = 'Sky Radio'
select package_option from tv_channel where series_name = "Sky Radio"
select package_option from tv_channel where series_name = 'Sky Radio'
select count(*) from tv_channel where language = 'English'
select count(*) from tv_channel where language = 'english'
select language, count(*) from tv_channel group by language order by count(*) asc limit 1
select language, count(*) from tv_channel group by language order by count(*) limit 1
select language, count(*) from tv_channel group by language
select language, count(*) from tv_channel group by language
select t1.series_name from tv_channel as t1 join cartoon as t2 on t1.id = t2.channel where t2.title = "The Rise of the blue Beetle!"
select t1.series_name from tv_channel as t1 join cartoon as t2 on t1.id = t2.id where t2.title = "The Rise of the blue Beetle"
select t2.title from tv_channel as t1 join cartoon as t2 on t1.id = t2.channel where t1.series_name = "Sky Radio"
select t3.title from tv_channel as t1 join tv_series as t2 on t1.id = t2.channel join cartoon as t3 on t3.id = t2.channel where t1.series_name = "Sky Radio"
select episode from tv_series order by rating
select episode from tv_series order by rating
select episode, rating from tv_series order by rating desc limit 3
select episode, rating from tv_series order by rating desc limit 3
select min(share), max(share) from tv_series
select max(share), min(share) from tv_series
select air_date from tv_series where episode = "A love of a Lifetime"
select air_date from tv_series where episode = "A love of a Lifetime"
select weekly_rank from tv_series where episode = "A love of a Lifetime"
select weekly_rank from tv_series where episode = "A love of a Lifetime"
select t1.series_name from tv_channel as t1 join tv_series as t2 on t1.id = t2.id where episode = "A love of a Lifetime"
select 'A love of a Lifetime' from tv_series where episode = "A love of a Lifetime"
select 'Epidemic' from tv_series as t1 join tv_channel as t2 on t2.id = t1.id join tv_channel as t3 on t1.channel = t3.id where t3.series_name = "Sky Radio"
select 'Episode' from tv_series as t1 join t
select directed_by, count(*) from cartoon group by directed_by
select directed_by, count(*) from cartoon group by directed_by
select production_code, channel from cartoon where original_air_date = (select max(original_air_date) from cartoon)
select title, channel from cartoon order by channel desc limit 1
select package_option, series_name from tv_channel where hight_definition_tv = 'Yes'
select package_option, series_name from tv_channel where hight_definition_tv = 'Yes'
select t1.country from tv_channel as t1 join cartoon as t2 on t1.id = t2.channel where t2.written_by = 'Tony Casey'
select t1.country from tv_channel as t1 join cartoon as t2 on t1.id = t2.id where t2.written_by = "Tony Casey"
select country from tv_channel except select t1.country from tv_channel as t1 join cartoon as t2 on t1.id = t2.channel where t2.written_by = "Tony Casey"
select t1.country from tv_channel as t1 join cartoon as t2 on t1.id = t2.id where t2.written_by = "Tony Casey"
select t1.series_name, t1.country from tv_channel as t1 join cartoon as t2 on t1.id = t2.channel where t2.directed_by = 'Ben Jones' intersect select t1.series_name, t1.country from tv_channel as t1 join cartoon as t2 on t1.id = t2.channel where t2.directed_by = 'Michael Chang'
select t1.series_name, t1.country from tv_channel as t1 join cartoon as t2 on t1.id = t2.channel where t2.directed_by = 'Ben Jones' intersect select t1.series_name, t1.country from tv_channel as t1 join cartoon as t2 on t1.id = t2.channel where t2.directed_by = 'Michael Chang'
select t1.pixel_aspect_ratio_par, t1.country from tv_channel as t1 join t
select pixel_aspect_ratio_par, country from tv_channel where language!= 'English'
select id from tv_channel where country = 2
select id from tv_channel group by id having count(*) > 2
select id from tv_channel except select id from cartoon where directed_by = 'Ben Jones'
select id from TV_channel except select id from cartoon where directed_by = 'Ben Jones'
select package_option from tv_channel where id not in (select id from cartoon where directed_by = 'Ben Jones')
select package_option from tv_channel where id not in (select id from cartoon where directed_by = 'Ben Jones')
select count(*) from poker_player
select count(*) from poker_player
select earnings from poker_player order by earnings desc
select earnings from poker_player order by earnings desc
select final_table_made, best_finish from poker_player
select final_table_made, max(best_finish) from poker_player
select avg(e
select avg(e
select money_rank from poker_player order by earnings desc limit 1
select money_rank from poker_player order by earnings desc limit 1
select max(final_table_made) from poker_player where earnings < 200000
select max(final_table_made) from poker_player where earnings < 200000
select t2.name from poker_player as t1 join people as t2 on t1.people_id = t2.people_id
select t2.name from poker_player as t1 join people as t2 on t1.people_id = t2.people_id
select t2.name from poker_player as t1 join people as t2 on t1.people_id = t2.people_id
select t2.name from poker_player as t1 join people as t2 on t1.people_id = t2.people_id
select t2.name from poker_player as t1 join people as t2 on t1.people_id = t2.people_id order by t1.final_table_made asc
select t2.name from poker_player as t1 join people as t2 on t1.people_id = t2.people_id order by t1.final_table_made asc
select t2.birth_date from poker_player as t1 join people as t2 on t1.people_id = t2.people_id order by t1.e
select t2.birth_date from poker_player as t1 join people as t2 on t1.people_id = t2.people_id order by t1.e
select t1.money_rank from poker_player as t1 join people as t2 on t1.people_id = t2.people_id order by t2.height desc limit 1
select t1.money_rank from poker_player as t1 join people as t2 on t1.people_id = t2.people_id order by t2.height desc limit 1
select avg(t1.e
select avg(t1.e
select t2.name from poker_player as t1 join people as t2 on t1.people_id = t2.people_id order by t1.e
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
select name from people where nationality!= "Russia"
select name from people where people_id not in (select people_id from poker_player)
select name from people where people_id not in (select people_id from poker_player)
select count(distinct nationality) from people
select count(distinct nationality) from people
select count(distinct state) from area_code_state
select contestant_number, contestant_name from contestants order by contestant_name desc
select vote_id, phone_number, state from votes
select max(area_code), min(area_code) from area_code_state
select max(created) from votes where state = 'CA'
select contestant_name from contestants where contestant_name!= 'Jessie Alloway'
select distinct state, created from votes
select t1.contestant_number, t1.contestant_name from contestants as t1 join votes as t2 on t1.contestant_number = t2.contestant_number group by t2.contestant_number having count(*) >= 2
select t2.contestant_number, t2.contestant_name from votes as t1 join contestants as t2 on t1.contestant_number = t2.contestant_number group by t1.contestant_number order by count(*) asc limit 1
select count(*) from votes where state = 'NY' or state = 'CA'
select count(*) from contestants where contestant_number not in (select contestant_number from votes)
select t1.area_code from area_code_state as t1 join votes as t2 on t1.area_code = "null" group by t1.area_code order by count(*) desc limit 1
select t1.created, t1.state, t1.phone_number from votes as t1 join contestants as t2 on t1.contestant_number = t2.contestant_number where t2.contestant_name = 'Tabatha Gehling'
select t3.area_code from contestants as t1 join votes as t2 join area_code_state as t3 on t1.contestant_number = t2.contestant_number join area_code_state as t4 on t3.state = t4.area_code where t1.contestant_name = 'Tabatha Gehling' intersect select t3.area_code from contestants as t1 join votes as t2 on t1.contestant_number = t2.contestant_number join area_code_state as t3 on t1.contestant_number = t2.contestant_number join area_code_state as t4 on t3.area_code = t4.area_code where t1.contestant_name = 'Kelly Clauss'
select contestant_name from contestants where contestant_name like '%al%'
select name from country where indepyear > 1950 and governmentform > 'Independence'
select name from country where indepyear > 1950
select count(*) from country where governmentform = "Republica"
select count(distinct name) from country where governmentform = 'Republik'
select sum(surfacearea) from country where region = "Cariba"
select count(*) from country where surfacearea like "%carribean%" group by surfacearea
select continent from country where name = "Anguilla"
select continent from country where localname = 'Anguilla'
select district from city where name = "Bahul"
select region from country where name = 'Kayakul'
select t1.language from countrylanguage as t1 join country as t2 on t1.countrycode = t2.code where t2.localname = 'Aruba' group by t1.language order by count(*) desc limit 1
select t1.language from countrylanguage as t1 join country as t2 on t1.countrycode = t2.code where t2.localname = "Aruba"
select population, lifeexpectancy from country where name = 'Brazil'
select population, lifeexpectancy from country where name = "Brazil"
select region, population from country where localname = "Angola"
select region, population from country where localname = "Angola"
select avg(lifeexpectancy) from country where region = "Central Africa"
select avg(lifeexpectancy) from country where region = 'Central Africa'
select name from country where continent = 'Asie' order by lifeexpectancy limit 1
select name from country where continent = 'Asie' order by lifeexpectancy limit 1
select sum(population), max(gnp) from country where continent = 'Asie'
select gnp, count(*) from country where continent = 'Asie' group by gnp order by count(*) desc limit 1
select avg(lifeexpectancy) from country where continent = 'Africa' and governmentform = 'Republik'
select avg(lifeexpectancy) from country where continent = 'Africa'
select sum(surfacearea) from country where continent = "Asie" intersect select sum(surfacearea) from country where continent = "Europe"
select sum(surfacearea) from country where continent = 'Asie' or continent = 'Europe'
select count(*) from city where district = 'Gelderland'
select sum(population) from city where district = "Gelderland"
select avg(gnp), sum(population) from country where governmentform = "USA"
select avg(gnp), sum(population) from country where code2 = "USA"
select count(distinct language) from countrylanguage
select count(distinct language) from countrylanguage
select count(distinct governmentform) from country where continent = 'Africa'
select count(distinct governmentform) from country where continent = 'Africa'
select count(*) from country where name = 'Aruba'
select count(distinct t1.language) from countrylanguage as t1 join country as t2 on t1.countrycode = t2.code where t2.name = 'Aruba'
select count(*) from countrylanguage where language = 'Afghanistan'
select count(*) from countrylanguage as t1 join countrylanguage as t2 on t1.countrycode = t2.countrycode join country as t3 on t1.countrycode = t3.code where t3.name = 'Afghanistan'
select t1.name from country as t1 join countrylanguage as t2 on t1.code = t2.countrycode group by t2.countrycode order by count(*) desc limit 1
select t1.name from country as t1 join countrylanguage as t2 on t1.code = t2.countrycode group by t2.countrycode order by count(*) desc limit 1
select continent from country group by continent order by count(*) desc limit 1
select continent from country group by continent order by count(*) desc limit 1
select count(*) from countrylanguage where language = "English" intersect select countrycode from countrylanguage where language = "Holstein"
select count(*) from countrylanguage where language = 'England' or language = 'Holstein'
select t1.name from country as t1 join countrylanguage as t2 on t2.countrycode = t2.countrycode where t2.language = 'England' intersect select t1.name from country as t1 join countrylanguage as t2 on t2.countrycode = t2.countrycode where t2.language = 'France'
select t1.name from country as t1 join countrylanguage as t2 on t1.code = t2.countrycode where t2.language = 'England' intersect select t1.name from country as t1 join countrylanguage as t2 on t1.code = t2.countrycode where t2.language = 'France'
select t2.name from countrylanguage as t1 join country as t2 on t1.countrycode = t2.code where t1.language = 'English' intersect select t2.name from countrylanguage as t1 join country as t2 on t1.countrycode = t2.code where t1.language = 'France'
select t1.name from country as t1 join countrylanguage as t2 on t2.countrycode = t2.countrycode where t2.language = 'England' intersect select t1.name from country as t1 join countrylanguage as t2 on t2.countrycode = t2.countrycode where t2.language = 'France'
select count(distinct t1.continent) from country as t1 join countrylanguage as t2 on t2.countrycode = t2.countrycode where t2.language = 'Chinese'
select count(*) from country as t1 join countrylanguage as t2 on t1.code = t2.countrycode where t2.language = "Chinese"
select t2.region from countrylanguage as t1 join country as t2 on t1.countrycode = t2.code where t1.language = "England" or t1.language = "Holstein"
select t1.region from country as t1 join countrylanguage as t2 on t1.code = t2.countrycode where t2.language = "Holstein" or t2.language = "English"
select t1.name from country as t1 join countrylanguage as t2 on t2.countrycode = t2.countrycode where t2.language = 'English' or t2.language = 'Houston'
select t1.name from country as t1 join countrylanguage as t2 on t2.countrycode = t2.countrycode where t2.language = 'English' or t2.language = 'Holstein'
select t1.language from countrylanguage as t1 join country as t2 on t1.countrycode = t2.code where t2.continent = 'Asie' group by t1.countrycode order by count(*) desc limit 1
select t1.language from countrylanguage as t1 join country as t2 on t1.countrycode = t2.code where t2.continent = 'Asie' group by t1.countrycode order by count(*) desc limit 1
select t1.language from countrylanguage as t1 join country as t2 on t1.countrycode = t2.code where t2.governmentform = 'Republik' group by t1.countrycode having count(*) = 1
select t1.language from countrylanguage as t1 join country as t2 on t1.countrycode = t2.code where t2.governmentform = 'Republik'
select district from city where population like "%english%" group by district order by count(*) desc limit 1
select t1.name from city as t1 join countrylanguage as t2 on t1.id = t2.countrycode where t2.language = "English" group by t1.id order by count(*) desc limit 1
select name, population, lifeexpectancy from country where continent = 'Asie' order by surfacearea desc limit 1
select name, population, lifeexpectancy from country where continent = "Asie" group by name order by count(*) desc limit 1
select avg(lifeexpectancy) from country as t1 join countrylanguage as t2 on t1.code = t2.countrycode where t2.language!= 'English'
select avg(lifeexpectancy) from country except select t1.lifeexpectancy from country as t1 join countrylanguage as t2 on t2.countrycode = t2.countrycode where t2.language = 'English'
select sum(t1.population) from country as t1 join countrylanguage as t2 on t1.code = t2.countrycode where t2.language!= 'English'
select count(*) from country where language not in (select t4.countrycode from countrylanguage as t1 join countrylanguage as t2 on t1.countrycode = t2.countrycode join countrylanguage as t3 on t1.countrycode = t3.countrycode join countrylanguage as t4 on t3.countrycode = t4.countrycode where t4.language = 'England') and t4.language!= 'England'
select t2.language from country as t1 join countrylanguage as t2 on t1.code = t2.countrycode where t1.headofstate = 'Brix'
select t2.language from country as t1 join countrylanguage as t2 on t1.code = t2.countrycode where t1.headofstate = 'Brix'
select count(distinct language) from countrylanguage where countrycode < 1930
select count(t2.language) from country as t1 join countrylanguage as t2 on t2.countrycode = t2.countrycode where t1.indepyear < 1930 group by t2.language
select name from country where surfacearea > (select max(surfacearea) from country where continent = 'Europe')
select name from country where surfacearea > (select max(surfacearea) from country where continent = 'Europe')
select name from country where population < (select min(population) from country where continent = 'Asie')
select name from country where population < (select min(population) from country where continent = 'Asie')
select name from country where population > (select max(population) from country where continent = 'Asie')
select name from country where population > (select max(population) from country where continent = 'Asie')
select code from country except select countrycode from countrylanguage where language = "English"
select code from country except select countrycode from countrylanguage where language = "English"
select countrycode from countrylanguage where language!= 'English'
select countrycode from countrylanguage where language!= 'English'
select distinct governmentform from country where language!= 'English' and governmentform!= 'Republika
select code from country where language!= 'England' and governmentform!= 'Regierungsform
select t1.name from city as t1 join countrylanguage as t2 on t1.countrycode = t2.countrycode where t2.language!= 'England'
select t1.name from city as t1 join countrylanguage as t2 on t1.id = t2.countrycode where t2.language!= 'England'
select distinct t1.name from city as t1 join countrylanguage as t2 on t1.countrycode = t2.countrycode where t2.language = "Asia" and t2.language = "Chinese"
select distinct t1.name from city as t1 join countrylanguage as t2 on t1.countrycode = t2.countrycode where t2.language = 'Asie' intersect select distinct t1.name from city as t1 join countrylanguage as t2 on t1.id = t2.countrycode where t2.language = 'Chinese'
select name, indepyear, surfacearea from country order by population asc limit 1
select name, indepyear, surfacearea from country order by population limit 1
select population, name, headofstate from country order by surfacearea desc limit 1
select name, population, headofstate from country order by surfacearea desc limit 1
select t2.name, count(*) from countrylanguage as t1 join country as t2 on t1.countrycode = t2.code group by t1.countrycode having count(*) >= 3
select t1.name, count(*) from country as t1 join countrylanguage as t2 on t1.code = t2.countrycode group by t1.name having count(*) > 2
select count(*), district from city where population > (select avg(population) from city) group by district
select count(*), district from city group by district having avg(population) > (select avg(population) from city)
select governmentform, sum(lifeexpectancy) from country group by governmentform having avg(lifeexpectancy) > 72
select governmentform, sum(lifeexpectancy) from country group by governmentform having avg(lifeexpectancy) > 72
select continent, avg(lifeexpectancy), sum(population) from country group by continent having avg(lifeexpectancy) < 72
select continent, sum(lifeexpectancy), avg(lifeexpectancy) from country group by continent having avg(lifeexpectancy) < 72
select name, surfacearea from country order by surfacearea desc limit 5
select name, surfacearea from country order by surfacearea desc limit 5
select name from country order by population desc limit 3
select name from country order by population desc limit 3
select name from country order by population asc limit 3
select name from country order by population asc limit 3
select count(*) from country where continent = 'Asie'
select count(*) from country where continent = 'Asie'
select name from country where continent = "Europe" and population = 80000
select name from country where continent = "Europe" and population > 80000
select sum(population), avg(surfacearea) from country where continent = "North America" and surfacearea > 3000
select sum(surfacearea), avg(surfacearea) from country where region = "North America" and surfacearea > 3000
select name from city where population between 160000 and 900000
select name from city where population between 160000 and 900000
select language from countrylanguage group by language order by count(*) desc limit 1
select language from countrylanguage group by language order by count(*) desc limit 1
select language, max(percentage) from countrylanguage group by countrycode
select countrycode, count(*) from countrylanguage group by countrycode order by count(*) desc limit 1
select count(*) from countrylanguage where language = "Spanish" group by percentage order by count(*) desc limit 1
select count(*) from countrylanguage where language = 'Spanish' group by countrycode order by count(*) desc limit 1
select countrycode from countrylanguage where language = "Spanish" group by countrycode order by count(*) desc limit 1
select countrycode from countrylanguage where language = "Spanish" group by countrycode order by count(*) desc limit 1
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
select max(share), min(share) from performance where type!= "Live final"
select count(distinct nationality) from conductor
select count(distinct nationality) from conductor
select name from conductor order by year_of_work desc
select name from conductor order by year_of_work desc
select name from conductor order by year_of_work desc limit 1
select name from conductor order by year_of_work desc limit 1
select t2.name, t2.orchest
select t2.name, t2.name from performance as t1 join conductor as t2 on t1.
select t2.name from performance as t1 join conductor as t2 on t1.
select t2.name from orchestra as t1 join conductor as t2 on t1.orchest
select t2.name from orchestra as t1 join conductor as t2 on t1.orchestr
select t2.name from performance as t1 join conductor as t2 on t1.
select t3.name from orchestra as t1 join show as t2 on t2.show_id = t2.show_id join conductor as t3 on t2.d
select t2.name from orchestra as t1 join conductor as t2 on
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
select year_of_founded from orchestra where orchestra_id in(select orchestra_id from performance) group by orchestra_id having count(*) > 1
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
select id from highschooler where name = "Knowy"
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
select count(t2.friend_id), t1.student_id from friend as t1 join friend as t2 on t1.student_id = t2.student_id group by t1.student_id
select t1.name, count(t2.friend_id) from highschooler as t1 join friend as t2 on t1.id = t2.student_id group by t2.friend_id
select t1.name, count(t2.friend_id) from highschooler as t1 join friend as t2 on t1.id = t2.friend_id group by t1.name
select t1.name from highschooler as t1 join friend as t2 on t1.id = t2.friend_id group by t2.friend_id order by count(*) desc limit 1
select t1.name from highschooler as t1 join friend as t2 on t1.id = t2.student_id group by t2.student_id order by count(*) desc limit 1
select t1.name from highschooler as t1 join friend as t2 on t1.id = t2.friend_id group by t2.friend_id having count(*) >= 3
select t1.name from highschooler as t1 join friend as t2 on t1.id = t2.friend_id group by t2.friend_id having count(*) >= 3
select distinct t3.name from highschooler as t1 join friend as t2 on t1.id = t2.friend_id join highschooler as t3 on t2.student_id = t3.id where t1.name = "Knowy"
select t3.name from highschooler as t1 join friend as t2 on t1.id = t2.friend_id join highschooler as t3 on t2.student_id = t3.id where t1.name = "Knowy"
select count(t2.friend_id) from highschooler as t1 join friend as t2 on t1.id = t2.friend_id where t1.name = "Knowy"
select count(t2.friend_id) from highschooler as t1 join friend as t2 on t1.id = t2.friend_id where t1.name = "Knowy"
select student_id from
select t1.id from highschooler as t1 join friend as t2 on t1.id = t2.student_id where t2.friend_id not in (select student_id from friend)
select name from highschooler where id not in (select student_id from friend)
select name from highschooler where id not in (select student_id from friend)
select t1.id from highschooler as t1 join likes as t2 on t1.id = t2.friend_id
select student_id from likes intersect select student_id from likes
select t1.name, t2.friend_id, t2.student_id from highschooler as t1 join likes as t2
select t1.name from highschooler as t1 join likes as t2 on t1.id = t2.friend_id
select count(*), student_id from likes group by student_id
select student_id, count(*) from likes group by student_id
select t1.name, count(*) from highschooler as t1 join likes as t2 on t1.id = t2.student_id group by t1.name
select t1.name, count(*) from highschooler as t1 join likes as t2 on t1.id = t2.student_id group by t2.student_id
select name from highschooler group by name order by count(*) desc limit 1
select t1.name from highschooler as t1 join likes as t2 on t1.id = t2.student_id group by t2.student_id order by count(*) desc limit 1
select t1.name from highschooler as t1 join likes as t2 on t1.id = t2.student_id group by t2.student_id having count(*) >= 2
select t2.name from likes as t1 join highschooler as t2 on t1.student_id = t2.id group by t1.student_id having count(*) >= 2
select t1.name from highschooler as t1 join friend as t2 on t1.id = t2.student_id where t1.grade > 5 and t2.friend_id >= 2
select t1.name from highschooler as t1 join friend as t2 on t1.id = t2.friend_id group by t2.friend_id having grade > 5 intersect select t1.name from highschooler as t1 join friend as t2 on t1.id = t2.friend_id group by t2.friend_id having count(*) >= 2
select count(*) from likes as t1 join highschooler as t2 on t1.student_id = t2.id where t2.name = "Knowy"
select count(*) from highschooler where name = "Knowy"
select avg(t1.grade) from highschooler as t1 join friend as t2 on t1.id = t2.student_id
select avg(t1.grade) from highschooler as t1 join friend as t2 on t1.id = t2.student_id
select min(t1.grade) from highschooler as t1 join friend as t2 on t1.id = t2.student_id where t2.friend_id = "null"
select min(grade) from highschooler where id not in (select student_id from friend)
select state from owners intersect select state from professionals
select state from owners intersect select state from professionals
select avg(age) from dogs where dog_id not in ( select dog_id from treatments )
select avg(age) from dogs as t1 join treatments as t2 on t1.dog_id = t2.dog_id
select t1.professional_id, t1.last_name, t1.cell_number from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id group by t1.professional_id having count(*) > 2
select t2.professional_id, t2.last_name, t2.cell_number from treatments as t1 join professionals as t2 on t1.professional_id = t2.professional_id where t2.state = "Indiana" group by t2.professional_id having count(*) > 2 union select t2.professional_id, t2.last_name, t2.cell_number from treatments as t1 join professionals as t2 on t1.professional_id = t2.professional_id where t2.state = "Indiana"
select name from dogs except select t1.name from dogs as t1 join treatments as t2 on t1.dog_id = t2.dog_id where t2.cost_of_treatment > 1000
select name from dogs except select t1.name from dogs as t1 join treatments as t2 on t1.dog_id = t2.dog_id where t2.cost_of_treatment > 1000
select first_name from professionals union select first_name from owners except select t1.first_name from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id
select first_name from professionals union select first_name from owners except select t1.first_name from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id
select professional_id, role_code, email_address from professionals except select t1.professional_id, t1.role_code, t1.email_address from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id
select professional_id, role_code, email_address from professionals except select t1.professional_id, t1.role_code, t1.email_address from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id
select t1.owner_id, t1.first_name, t1.last_name from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id group by t1.owner_id order by count(*) desc limit 1
select t1.owner_id, t1.first_name, t1.last_name from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id group by t1.owner_id order by count(*) desc limit 1
select t1.professional_id, t1.role_code, t1.first_name from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id group by t1.professional_id having count(*) >= 2
select t1.professional_id, t1.role_code, t1.first_name from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id group by t1.professional_id having count(*) >= 2
select breed_name from breeds order by count(*) desc limit 1
select breed_name from breeds group by breed_code order by count(*) desc limit 1
select t1.owner_id, t1.last_name from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id group by t1.owner_id order by count(*) desc limit 1
select t1.owner_id, t1.last_name from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id group by t1.owner_id order by count(*) desc limit 1
select t1.treatment_type_description from treatment_types as t1 join treatments as t2 on t1.treatment_type_code = t2.treatment_type_code group by t1.treatment_type_code order by sum(t2.cost_of_treatment) asc limit 1
select t1.treatment_type_description from treatment_types as t1 join treatments as t2 on t1.treatment_type_code = t2.treatment_type_code group by t1.treatment_type_code order by sum(t2.cost_of_treatment) asc limit 1
select t1.owner_id, t1.zip_code from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id group by t1.owner_id order by sum(t2.charge
select t1.owner_id, t1.zip_code from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id group by t1.owner_id order by sum(t2.cost_of_treatment
select t1.professional_id, t1.cell_number from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id group by t1.professional_id having count(*) >= 2
select t1.professional_id, t1.cell_number from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id group by t1.professional_id having count(*) >= 2
select t2.first_name, t2.last_name from treatments as t1 join professionals as t2 on t1.professional_id = t2.professional_id where t1.cost_of_treatment < (select avg(cost_of_treatment) from treatments)
select t2.first_name, t2.last_name from treatments as t1 join professionals as t2 on t1.professional_id = t2.professional_id where t1.cost_of_treatment < (select avg(cost_of_treatment) from treatments)
select t1.date_of_treatment, t2.first_name from treatments as t1 join professionals as t2 on t1.professional_id = t2.professional_id
select t1.date_of_treatment, t2.first_name from treatments as t1 join professionals as t2 on t1.professional_id = t2.professional_id
select t1.cost_of_treatment, t2.treatment_type_description from treatments as t1 join treatment_types as t2 on t1.treatment_type_code = t2.treatment_type_code
select t1.cost_of_treatment, t2.treatment_type_description from treatments as t1 join treatment_types as t2 on t1.treatment_type_code = t2.treatment_type_code
select t1.first_name, t1.last_name, t2.size_code from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id
select t1.first_name, t1.last_name, t2.size_code from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id
select t1.first_name, t2.name from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id
select t1.first_name, t2.name from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id
select t2.name, t1.date_of_treatment from treatments as t1 join dogs as t2 on t1.dog_id = t2.dog_id group by t1.dog_id order by count(*) desc limit 1
select t2.name, t1.date_of_treatment from treatments as t1 join dogs as t2 on t1.dog_id = t2.dog_id group by t1.dog_id order by count(*) asc limit 1
select first_name, last_name from owners where state = 'Virgina'
select t1.first_name, t2.name from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id where t1.state = "Virgina"
select date_arrived, date_departed from dogs as t1 join treatments as t2 on t1.dog_id = t2.dog_id
select date_arrived, date_departed from treatments as t1 join dogs as t2 on t1.dog_id = t2.dog_id
select t1.last_name from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id order by t2.date_of_birth limit 1
select t1.last_name from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id order by t2.date_of_birth limit 1
select email_address from professionals where state = "Hawaii" or state = "Wisconsin"
select email_address from professionals where state = "Ohio" or state = "Wisconsin"
select date_arrived, date_departed from dogs
select date_arrived, date_departed from dogs
select count(*) from treatments
select count(*) from treatments
select count(distinct professional_id) from treatments as t1 join dogs as t2 on t1.dog_id = t2.dog_id
select count(distinct professional_id) from treatments
select role_code, street, city, state from professionals where city like '%west%'
select role_code, street, city, state from professionals where city like '%west%'
select first_name, last_name, email_address from owners where state like '%ny%'
select first_name, last_name, email_address from owners where state like '%ny%'
select count(*) from dogs where age < ( select avg(age) from dogs )
select count(*) from dogs where age < (select avg(age) from dogs)
select sum(cost_of_treatment) from treatments order by date_of_treatment desc limit 1
select cost_of_treatment from treatments order by date_of_treatment desc limit 1
select count(*) from dogs where dog_id not in ( select dog_id from treatments )
select count(*) from dogs where dog_id not in ( select dog_id from treatments )
select count(*) from owners where owner_id not in ( select owner_id from dogs )
select count(*) from owners where owner_id not in (select owner_id from dogs)
select count(*) from professionals where professional_id not in ( select professional_id from treatments )
select count(*) from professionals where professional_id not in ( select professional_id from treatments )
select name, age, weight from dogs where abandoned_yn = 1 and abandoned_yn = 0
select name, age, weight from dogs where abandoned_yn = 1 and abandoned_yn = 0
select avg(age) from dogs
select avg(age) from dogs
select age from dogs order by age desc limit 1
select age from dogs order by age desc limit 1
select charge_type, charge_amount from charges group by charge_type
select charge_type, charge_amount from charges group by charge_type
select max(charge_amount) from charges
select charge_amount from charges order by charge_type desc limit 1
select email_address, cell_number, home_phone from professionals
select email_address, cell_number, home_phone from professionals
select distinct breed_name from breeds as t1 join sizes as t2 on t2.size_code = t2.size_code
select distinct 'type_code','size_type_code' from dogs
select t1.first_name, t3.treatment_type_description from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id join treatment_types as t3 on t2.treatment_type_code = t3.treatment_type_code
select t1.first_name, t1.last_name from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id
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
select citizenship, count(*) from singer group by citizenship
select citizenship from singer group by citizenship order by count(*) desc limit 1
select citizenship from singer group by citizenship order by count(*) desc limit 1
select citizenship, max(net_worth_millions) from singer group by citizenship
select citizenship, max(net_worth_millions) from singer group by citizenship
select t3.title, t2.name from song as t1 join singer as t2 on t1.singer_id = t2.singer_id join song as t3 on t1.song_id = t3.song_id
select t1.title, t2.name from song as t1 join singer as t2 on t1.singer_id = t2.singer_id
select distinct t1.name from singer as t1 join song as t2 on t1.singer_id = t2.singer_id where t2.sales > 300000
select distinct t1.name from singer as t1 join song as t2 on t1.singer_id = t2.singer_id where t2.sales > 300000
select t1.name from singer as t1 join song as t2 on t1.singer_id = t2.singer_id group by t2.singer_id having count(*) > 1
select t1.name from singer as t1 join song as t2 on t1.singer_id = t2.singer_id group by t2.singer_id having count(*) > 1
select t1.name, sum(t2.sales) from singer as t1 join song as t2 on t1.singer_id = t2.singer_id group by t1.singer_id
select sum(sales), t2.name from song as t1 join singer as t2 on t1.singer_id = t2.singer_id group by t2.name
select name from singer where singer_id not in (select singer_id from song)
select name from singer where singer_id not in (select singer_id from song)
select citizenship from singer where birth_year < 1945 intersect select citizenship from singer where birth_year > 1955
select citizenship from singer where birth_year < 1945 intersect select citizenship from singer where birth_year > 1955
select count(*) from other_available_features
select t3.feature_type_name from other_available_features as t1 join ref_feature_types as t2 on t1.feature_type_code = t2.feature_type_code join ref_feature_types as t3 on t2.feature_type_code = t3.feature_type_code where t1.feature_name = "AirCon"
select t1.property_type_description from ref_property_types as t1 join properties as t2 on t1.property_type_code = t2.property_type_code
select property_name from properties where property_type_code = "Haus" or room_count > 1
