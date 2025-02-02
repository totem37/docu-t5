select count(*) from singer
select count(*) from singer
select name, country, age from singer order by age desc
select name, country, age from singer order by age desc
select avg(age), min(age), max(age) from singer where country = 'F'
select avg(age), min(age), max(age) from singer where country = 'F'
select song_name, song_release_year from singer order by age asc limit 1
select song_name, song_release_year from singer order by age asc limit 1
select distinct country from singer where age > 20
select distinct country from singer where age > 20
select country, count(*) from singer group by country
select country, count(*) from singer group by country
select song_name from singer where age > (select avg(age) from singer)
select song_name from singer where age > (select avg(age) from singer)
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
select t2.name, t2.capacity from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id where t1.year >= 2014 group by t1.stadium_id order by count(*) desc limit 1
select t2.name, t2.capacity from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id where t1.year > 2013 group by t1.stadium_id order by count(*) desc limit 1
select year from concert group by year order by count(*) desc limit 1
select year from concert group by year order by count(*) desc limit 1
select name from stadium where stadium_id not in (select stadium_id from concert)
select name from stadium where stadium_id not in (select stadium_id from concert)
select country from singer where age > 40 intersect select country from singer where age < 30
select name from stadium except select t2.name from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id where t1.year = 2014
select name from stadium except select t2.name from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id where t1.year = 2014
select t2.concert_name, t2.theme, count(*) from singer_in_concert as t1 join concert as t2 on t1.concert_id = t2.concert_id group by t1.concert_id
select concert_name, theme, count(*) from concert group by concert_id
select t2.name, count(*) from singer_in_concert as t1 join singer as t2 on t1.singer_id = t2.singer_id group by t1.singer_id
select t2.name, count(*) from singer_in_concert as t1 join singer as t2 on t1.singer_id = t2.singer_id group by t1.singer_id
select t3.name from singer_in_concert as t1 join concert as t2 on t1.concert_id = t2.concert_id join singer as t3 on t1.singer_id = t3.singer_id where t2.year = 2014
select t3.name from singer_in_concert as t1 join concert as t2 on t1.concert_id = t2.concert_id join singer as t3 on t1.singer_id = t3.singer_id where t2.year = 2014
select name, country from singer where song_name like "%hey%"
select name, country from singer where song_name like '%hey%'
select t2.name, t2.location from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id where t1.year = 2014 intersect select t2.name, t2.location from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id where t1.year = 2015
select t2.name, t2.location from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id where t1.year = 2014 intersect select t2.name, t2.location from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id where t1.year = 2015
select count(*) from stadium as t1 join concert as t2 on t1.stadium_id = t2.stadium_id where t1.capacity = (select max(capacity) from stadium)
select count(*) from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id order by t2.capacity desc limit 1
select count(*) from pets where weight > 10
select count(*) from pets where weight > 10
select weight from pets order by pet_age asc limit 1
select min(weight) from pets
select max(weight), pettype from pets group by pettype
select max(weight), pettype from pets group by pettype
select count(*) from student as t1 join has_pet as t2 on t1.stuid = t2.stuid where t1.age > 20
select count(*) from student as t1 join has_pet as t2 on t1.stuid = t2.stuid where t1.age > 20
select count(*) from student as t1 join has_pet as t2 on t1.stuid = t2.stuid join pets as t3 on t2.petid = t3.petid where t1.sex = 'F' and t2.pet
select count(*) from pets as t1 join has_pet as t2 on t1.petid = t2.petid join student as t3 on t2.stuid = t3.stuid where t3.sex = 'F' and t1.pettype = 'dog'
select count(distinct pettype) from pets
select count(distinct pettype) from pets
select t2.fname from has_pet as t1 join student as t2 on t1.stuid = t2.stuid join pets as t3 on t1.petid = t3.petid where t3.pettype = 'cat' or t3.pettype = 'dog'
select t2.fname from has_pet as t1 join student as t2 on t1.stuid = t2.stuid join pets as t3 on t1.petid = t3.petid where t3.pettype = 'cat' or t3.pettype = 'dog'
select t1.fname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid join pets as t3 on t2.petid = t3.petid where t3.pettype = 'cat' intersect select t1.fname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid join pets as t3 on t2.petid = t3.petid where t3.pettype = 'dog'
select t1.fname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid join pets as t3 on t2.petid = t3.petid where t3.pettype = 'cat' intersect select t1.fname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid join pets as t3 on t2.petid = t3.petid where t3.pettype = 'dog'
select major, age from student except select t2.major, t2.age from has_pet as t1 join student as t2 on t1.stuid = t2.stuid where t1.petid = 'cat'
select major, age from student where stuid not in (select t1.stuid from has_pet as t1 join pets as t2 on t1.petid = t2.petid where t2.pettype = 'cat')
select stuid from student except select stuid from has_pet where petid = 'cat'
select stuid from student except select stuid from has_pet where petid in (select petid from pets where pettype = 'cat')
select fname, age from student where stuid in (select t1.stuid from has_pet as t1 join pets as t2 on t1.petid = t2.petid where t2.pettype = 'dog' except select t1.stuid from has_pet as t1 join pets as t2 on t1.petid = t2.petid where t2.pettype = 'cat')
select fname from student where stuid in (select t1.stuid from has_pet as t1 join pets as t2 on t1.petid = t2.petid where t2.pettype = 'dog' except select t1.stuid from has_pet as t1 join pets as t2 on t1.petid = t2.petid where t2.pettype = 'cat')
select pettype, weight from pets order by pet_age asc limit 1
select pettype, weight from pets order by pet_age asc limit 1
select petid, weight from pets where pet_age > 1
select petid, weight from pets where pet_age > 1
select pettype, avg(pet_age), max(pet_age) from pets group by pettype
select pettype, avg(pet_age), max(pet_age) from pets group by pettype
select pettype, avg(weight) from pets group by pettype
select pettype, avg(weight) from pets group by pettype
select fname, age from student where stuid in (select stuid from has_pet)
select distinct t1.fname, t1.age from student as t1 join has_pet as t2 on t1.stuid = t2.stuid
select t2.petid from has_pet as t1 join pets as t2 on t1.petid = t2.petid join student as t3 on t1.stuid = t3.stuid where t3.lname = 'Smith'
select t2.petid from has_pet as t1 join pets as t2 on t1.petid = t2.petid join student as t3 on t1.stuid = t3.stuid where t3.lname = 'Smith'
select count(*), stuid from has_pet group by stuid
select t1.stuid, count(*) from student as t1 join has_pet as t2 on t1.stuid = t2.stuid group by t1.stuid
select t1.fname, t1.sex from student as t1 join has_pet as t2 on t1.stuid = t2.stuid group by t2.stuid having count(*) > 1
select t1.fname, t1.sex from student as t1 join has_pet as t2 on t1.stuid = t2.stuid group by t2.stuid having count(*) > 1
select t2.lname from has_pet as t1 join student as t2 on t1.stuid = t2.stuid join pets as t3 on t1.petid = t3.petid where t3.pet_age = 3
select t2.lname from has_pet as t1 join student as t2 on t1.stuid = t2.stuid join pets as t3 on t1.petid = t3.petid where t3.pet_age = 3
select avg(age) from student where stuid not in (select stuid from has_pet)
select avg(age) from student where stuid not in (select stuid from has_pet)
select count(*) from continents
select count(*) from continents
select t1.continent, t1.continent, count(*) from continents as t1 join countries as t2 on t1.continent = t2.continent group by t1.continent
select continent, countryname, count(*) from countries group by continent
select count(*) from countries
select count(*) from countries
select t1.fullname, t1.maker, count(*) from car_makers as t1 join model_list as t2 on t1.id = t2.maker group by t1.maker
select t1.fullname, t1.maker, count(*) from car_makers as t1 join model_list as t2 on t1.id = t2.maker group by t1.maker
select t2.model from cars_data as t1 join model_list as t2 on t1.id = t2.modelid order by t1.horsepower asc limit 1
select t2.model from cars_data as t1 join model_list as t2 on t1.id = t2.modelid order by t1.horsepower asc limit 1
select t2.model from cars_data as t1 join model_list as t2 on t1.id = t2.modelid where t1.weight < (select avg(weight) from cars_data)
select t2.model from cars_data as t1 join model_list as t2 on t1.id = t2.modelid where t1.weight < (select avg(weight) from cars_data)
select t1.maker from car_makers as t1 join car_names as t2 on t1.id = t2.makeid join cars_data as t3 on t3.id = t2.makeid where t3.year = 1970
select distinct t1.maker from car_makers as t1 join cars_data as t2 on t1.maker = t2.id where t2.year = 1970
select t2.make, t1.year from cars_data as t1 join car_names as t2 on t1.id = t2.makeid order by t1.year limit 1
select t1.maker, t2.year from car_makers as t1 join cars_data as t2 on t1.maker = t2.id order by t2.year limit 1
select distinct t2.model from cars_data as t1 join model_list as t2 on t1.id = t2.modelid where t1.year > 1980
select distinct t2.model from cars_data as t1 join model_list as t2 on t1.id = t2.modelid where t1.year > 1980
select t2.continent, count(*) from countries as t1 join continents as t2 on t1.continent = t2.contid group by t1.continent
select t1.continent, count(*) from continents as t1 join car_makers as t2 on t1.contid = t2.country group by t1.continent
select t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.country group by t1.countryid order by count(*) desc limit 1
select t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.country group by t1.countryid order by count(*) desc limit 1
select count(*), t1.fullname from car_makers as t1 join model_list as t2 on t1.id = t2.maker group by t1.maker
select count(*), t1.maker from car_makers as t1 join model_list as t2 on t1.id = t2.maker where t1.fullname!= "id" group by t1.maker
select accelerate from cars_data as t1 join car_names as t2 on t1.id = t2.makeid where t2.make = "amc hornet sportabout (sw)"
select t1.accelerate from cars_data as t1 join car_names as t2 on t1.id = t2.makeid where t2.make = "amc hornet sportabout (sw)"
select count(*) from car_makers where country = "France"
select count(*) from car_makers where country = "France"
select count(*) from model_list as t1 join car_makers as t2 on t1.maker = t2.id where t2.country = "USA"
select count(*) from model_list as t1 join car_makers as t2 on t1.maker = t2.id where t2.country = "United States"
select avg(mpg) from cars_data where cylinders = 4
select avg(mpg) from cars_data where cylinders = 4
select min(weight) from cars_data where cylinders = 8 and year = 1974
select min(weight) from cars_data where year = 1974 and cylinders = 8
select maker, model from model_list
select maker, model from model_list
select t1.country, t1.maker from car_makers as t1 join countries as t2 on t1.country = t2.countryid
select t1.countryname, t1.countryid from countries as t1 join car_makers as t2 on t1.countryid = t2.country
select count(*) from cars_data where horsepower > 150
select count(*) from cars_data where horsepower > 150
select avg(weight), year from cars_data group by year
select avg(weight), year from cars_data group by year
select t2.countryname from car_makers as t1 join countries as t2 on t1.country = t2.countryid group by t2.countryid having count(*) >= 3
select t2.countryname from car_makers as t1 join countries as t2 on t1.country = t2.countryid group by t1.country having count(*) >= 3
select max(horsepower), t2.make from cars_data as t1 join car_names as t2 on t1.id = t2.makeid where t1.cylinders = 3
select max(horsepower) from cars_data where cylinders = 3 intersect select make from car_names group by make having count(*) >= 2
select t2.model from cars_data as t1 join model_list as t2 on t1.id = t2.modelid order by t1.mpg desc limit 1
select t2.model from cars_data as t1 join model_list as t2 on t1.id = t2.modelid order by t1.mpg desc limit 1
select avg(horsepower) from cars_data where year < 1980
select avg(horsepower) from cars_data where year < 1980
select avg(edispl) from cars_data as t1 join model_list as t2 on t1.
select avg(edispl) from cars_data where id = (select id from cars_data where make = 'Volvo'
select max(accelerate), cylinders from cars_data group by cylinders
select max(accelerate), cylinders from cars_data group by cylinders
select model from model_list group by model order by count(*) desc limit 1
select model from model_list group by model order by count(*) desc limit 1
select count(*) from cars_data where cylinders > 4
select count(*) from cars_data where cylinders > 4
select count(*) from cars_data where year = 1980
select count(*) from cars_data where year = 1980
select count(*) from model_list as t1 join car_makers as t2 on t1.maker = t2.id where t2.fullname = "American motor Company"
select count(*) from model_list as t1 join car_makers as t2 on t1.maker = t2.id where t2.maker = "American motor Company"
select t2.fullname, t1.maker from model_list as t1 join car_makers as t2 on t1.maker = t2.id group by t1.maker having count(*) > 3
select t1.fullname, t1.maker from car_makers as t1 join model_list as t2 on t1.id = t2.maker group by t1.maker having count(*) > 3
select distinct model from model_list as t1 join car_makers as t2 on t1.maker = t2.i
select distinct t1.model from model_list as t1 join car_names as t2 on t1.model = t2.makeid join car_makers as t3 on t1.maker = t3.id where t2.make = 'General Motors' union select distinct t1.model from model_list as t1 join car_names as t2 on t1.model = t2.makeid where
select year from cars_data where weight Between 3000 and 4000
select distinct year from cars_data where weight < 4000 intersect select distinct year from cars_data where weight > 3000
select horsepower from cars_data order by accelerate desc limit 1
select horsepower from cars_data order by accelerate desc limit 1
select count(*) from cars_data as t1 join car_names as t2 on t1.id = t2.makeid where t2.make = 'Volvo' order by t1.accelerate limit 1
select cylinders from cars_data where accelerate = (select min(accelerate) from cars_data)
select count(*) from cars_data where accelerate > (select max(horsepower) from cars_data)
select count(*) from cars_data where accelerate > (select max(horsepower) from cars_data)
select count(*) from car_makers group by country having count(*) > 2
select count(*) from car_makers group by country having count(*) > 2
select count(*) from cars_data where cylinders > 6
select count(*) from cars_data where cylinders > 6
select t2.model from cars_data as t1 join model_list as t2 on t1.id = t2.modelid where t1.cylinders = 4 order by t1.horsepower desc limit 1
select t2.model from cars_data as t1 join model_list as t2 on t1.id = t2.modelid where t1.cylinders = 4 order by t1.horsepower desc limit 1
select make, t1.id from cars_data as t1 join car_names as t2 on t1.id = t2.makeid where t1.horsepower > (select min(horsepower) from cars_data) except select t1.make from car_names as t1 join cars_data as t2 on t1.make = t2.id where t2.cylinders > 3
select t2.make, t1.make from car_names as t1 join cars_data as t2
select max(mpg) from cars_data where id in (select id from cars_data where cylinders = 8 or year < 1980)
select max(mpg) from cars_data where cylinders = 8 or year < 1980
select model from model_list where weight < 3500
select distinct t2.model from cars_data as t1 join model_list as t2 on t1.id = t2.modelid where t1.weight < 3500 except select distinct t2.model from cars_data as t1 join model_list as t2 on t1.id = t2.modelid join car_makers as t3 on
select countryname from countries where countryid not in (select country from car_makers)
select countryname from countries where countryid not in (select country from car_makers)
select t1.id, t1.maker from car_makers as t1 join model_list as t2 on t1.id = t2.maker group by t1.id having count(*) >= 2
select t1.id, t1.maker from car_makers as t1 join model_list as t2 on t1.id = t2.modelid group by t1.maker having count(*) >= 2 intersect select t1.id, t1.maker from car_makers as t1 join car_names as t2 on t1.id = t2.makeid group by t1.maker having count(*) > 3
select t1.countryid, t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.country group by t1.countryid having count(*) > 3 union select t1.countryid, t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.countryid
select t1.countryid, t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.country group by t1.countryid having count(*) > 3 union select t1.countryid, t1.countryname from countries as t1 join model_list as t2 on
select country from airlines where airline like "%jetblue%"
select country from airlines where airline like 'JetBlue Airways'
select abbreviation from airlines where airline = "JetBlue Airways"
select abbreviation from airlines where airline = 'JetBlue Airways'
select airline, abbreviation from airlines where country = 'USA'
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
select city, country from airports where airportname = "Alton"
select city, country from airports where airportname = "Alton"
select airportname from airports where airportcode = 'AKO'
select airportname from airports where airportcode = 'AKO'
select airportname from airports where city = 'Aberdeen'
select airportname from airports where city = "Aberdeen"
select count(*) from flights where sourceairport = 'APG'
select count(*) from flights where sourceairport = 'APG'
select count(*) from flights where destairport = "ATO"
select count(*) from flights where t1.sourceairport = t2.sourceairport and t2.destairport = t1.airport
select count(*) from flights where sourceairport = "City Aberdeen"
select count(*) from flights where sourceairport = "Aberdeen"
select count(*) from flights where sourceairport = "Aberdeen"
select count(*) from flights where sourceairport = "Aberdeen"
select count(*) from flights where sourceairport = 'Aberdeen' and destairport = 'Ashley'
select count(*) from flights where sourceairport = "Aberdeen" and destairport = "Ashley"
select count(*) from airlines as t1 join flights as t2 on t1.uid = t2.airline where t1.airline = 'JetBlue Airways'
select count(*) from flights as t1 join airlines as t2 on t1.airline = t2.airline where t2.airline = 'JetBlue Airways'
select count(*) from flights where airline = 'United Airlines' and destairport = 'ASY'
select count(*) from flights where sourceairport = "ASY" and airline = "United Airlines"
select count(*) from flights where sourceairport = 'AHD' and airline = 'United Airlines'
select count(*) from flights as t1 join airlines as t2 on t1.airline = t2.uid where t1.sourceairport = "AHD" and t1.flightno = 1
select count(*) from flights where destairport = 'Aberdeen' and sourceairport = 'Stansted'
select count(*) from flights where destairport = "Aberdeen" and sourceairport = "London" and airline = "United Airlines"
select t2.city from flights as t1 join airports as t2 on t1.sourceairport = t2.airport
select city from airports group by city order by count(*) desc limit 1
select t2.city from flights as t1 join airports as t2 on t1.sourceairport = t2.airport
select t2.city from flights as t1 join airports as t2 on t1.sourceairport = t2.airportcode group by t2.city order by count(*) desc limit 1
select t2.airportcode from flights as t1 join airports as t2 on t1.sourceairport= t2.airportcode group by t1.sourceairport order by count(*) desc limit 1
select t1.airportcode from airports as t1 join flights as t2 on t1.airport
select t1.airportcode from airports as t1 join flights as t2 on t1.airport
select t1.airportname from airports as t1 join flights as t2 on t1.airportcode = t2.sourceairport group by t2.sourceairport order by count(*) asc limit 1
select t1.airline from flights as t1 join airlines as t2 on t1.airline = t2.uid group by t1.airline order by count(*) desc limit 1
select t1.airline from flights as t1 join airlines as t2 on t1.airline = t2.uid group by t1.airline order by count(*) desc limit 1
select t1.abbreviation, t1.country from airlines as t1 join flights as t2 on t1.uid = t2.airline group by t2.airline order by count(*) asc limit 1
select t1.abbreviation, t1.country from airlines as t1 join flights as t2 on t1.abbreviation = t2.airline group by t2.airline order by count(*) asc limit 1
select t1.airline from airlines as t1 join flights as t2 on t1.uid = t2.airline where t2.sourceairport = 'AHD'
select t1.airline from airlines as t1 join flights as t2 on t1.uid = t2.airline where t2.sourceairport = "AHD"
select t1.airline from airlines as t1 join flights as t2 on t1.uid = t2.airline where t2.sourceairport = 'AHD'
select airline from flights where destairport = "AHD"
select t1.airline from airlines as t1 join flights as t2 on t1.uid = t2.airline where t2.sourceairport = 'APG' intersect select t1.airline from airlines as t1 join flights as t2 on t1.uid = t2.airline where t2.sourceairport = 'CVO'
select t1.airline from airlines as t1 join flights as t2 on t1.uid = t2.airline where t2.sourceairport = 'APG' intersect select t1.airline from airlines as t1 join flights as t2 on t1.uid = t2.airline where t2.destairport = 'CVO'
select t1.airline from airlines as t1 join flights as t2 on t1.uid = t2.airline where t2.sourceairport = 'CVO' except select t1.airline from airlines as t1 join flights as t2 on t1.uid = t2.airline where t2.sourceairport = 'APG'
select t1.airline from airlines as t1 join flights as t2 on t1.uid = t2.airline where t2.sourceairport = 'CVO' except select t1.airline from airlines as t1 join flights as t2 on t1.uid = t2.airline where t2.destairport = 'APG'
select t1.airline from airlines as t1 join flights as t2 on t1.uid = t2.airline group by t2.airline having count(*) >= 10
select t1.airline from airlines as t1 join flights as t2 on t1.uid = t2.airline group by t1.airline having count(*) >= 10
select airline from flights group by airline having count(*) < 200
select airline from flights group by airline having count(*) < 200
select t1.flightno from flights as t1 join airlines as t2 on t1.airline = t2.uid join airports as t3 on t1.sourceairport = t3.sourceairport
select t1.flightno from flights as t1 join airlines as t2 on t1.airline = t2.uid where t2.airline = 'United Airlines'
select flightno from flights where sourceairport = "APG"
select flightno from flights where sourceairport = "APG"
select flightno from flights where sourceairport = "APG"
select t1.flightno from flights as t1 join airports as t2 on t1.sourceairport = t2.airport
select flightno from flights where sourceairport = "Aberdeen"
select flightno from flights where sourceairport = "Aberdeen"
select flightno from flights where sourceairport = "Aberdeen"
select flightno from flights where sourceairport = "Aberdeen"
select count(*) from flights where sourceairport = "Aberdeen" or destairport = "Abilene"
select count(*) from flights where sourceairport = "Aberdeen" or destairport = "Abilene"
select airportname from airports where airportcode not in (select sourceairport, destairport from flights)
select airport
select count(*) from employee
select count(*) from employee
select name from employee order by age asc
select name from employee order by age asc
select city, count(*) from employee group by city
select city, count(*) from employee group by city
select city from employee where age < 30 group by city having count(*) > 1
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
select t1.name from employee as t1 join evaluation as t2 on t1.employee_id = t2.employee_id group by t2.employee_id order by count(*) desc limit 1
select t1.name from employee as t1 join evaluation as t2 on t1.employee_id = t2.employee_id order by t2.bonus desc limit 1
select t1.name from employee as t1 join evaluation as t2 on t1.employee_id = t2.employee_id order by t2.bonus desc limit 1
select name from employee where employee_id not in (select employee_id from evaluation)
select name from employee where employee_id not in (select employee_id from evaluation)
select t2.name from hiring as t1 join shop as t2 on t1.shop_id = t2.shop_id group by t1.shop_id order by count(*) desc limit 1
select t2.name from hiring as t1 join shop as t2 on t1.shop_id = t2.shop_id group by t1.shop_id order by count(*) desc limit 1
select name from shop where shop_id not in (select shop_id from hiring)
select name from shop where shop_id not in (select shop_id from hiring)
select count(*), t3.name from employee as t1 join hiring as t2 on t1.employee_id = t2.employee_id join shop as t3 on t2.shop_id = t3.shop_id group by t2.shop_id
select count(*), t3.name from hiring as t1 join shop as t2 on t1.shop_id = t2.shop_id join employee as t3 on t1.employee_id = t3.employee_id join shop as t4 on t2.shop_id = t4.shop_id
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
select document_name, template_id from documents where document_description like "%w%"
select document_name, template_id from documents where document_description like '%w%'
select document_id, template_id, document_description from documents where document_name = "Robbin CV"
select document_id, template_id, document_description from documents where document_name = "Robbin CV"
select count(distinct template_id) from documents
select count(distinct template_id) from documents
select count(*) from documents as t1 join templates as t2 on t1.template_id = t2.template_id where t2.template_type_code = 'PPT'
select count(*) from documents as t1 join templates as t2 on t1.template_id = t2.template_id where t2.template_type_code = "PPT"
select template_id, count(*) from documents group by template_id
select template_id, count(*) from documents group by template_id
select t1.template_id, t1.template_type_code from templates as t1 join documents as t2 on t1.template_id = t2.template_id group by t1.template_id order by count(*) desc limit 1
select t1.template_id, t1.template_type_code from templates as t1 join documents as t2 on t1.template_id = t2.template_id group by t1.template_id order by count(*) desc limit 1
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
select template_id from templates where template_type_code = "PP" or template_type_code = "PPT"
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
select version_number, template_type_code from templates order by version_number asc limit 1
select version_number, template_type_code from templates order by version_number asc limit 1
select t1.template_type_code from templates as t1 join documents as t2 on t1.template_id = t2.template_id where t2.document_name = "Data base"
select t1.template_type_code from templates as t1 join documents as t2 on t1.template_id = t2.template_id where t2.document_name = "Data base"
select document_name from documents as t1 join templates as t2 on t1.template_id = t2.template_id where t2.template_type_code = "BK"
select document_name from documents as t1 join templates as t2 on t1.template_id = t2.template_id where t2.template_type_code = "BK"
select t1.template_type_code, count(*) from templates as t1 join documents as t2 on t1.template_id = t2.template_id group by t1.template_type_code
select template_type_code, count(*) from templates group by template_type_code
select t1.template_type_code from templates as t1 join documents as t2 on t1.template_id = t2.template_id group by t1.template_type_code order by count(*) desc limit 1
select template_type_code from templates group by template_type_code order by count(*) desc limit 1
select template_type_code from templates except select templates.template_type_code from templates join documents on documents.template_id = templates.template_id
select template_type_code from templates except select t1.template_type_code from templates as t1 join documents as t2 on t1.template_id = t2.template_id
select template_type_code, template_type_description from ref_template_types
select template_type_code, template_type_description from ref_template_types
select t1.template_type_description from ref_template_types as t1 join templates as t2 on t1.template_type_code = t2.template_type_code where t2.template_type_code = "AD"
select t1.template_type_description from ref_template_types as t1 join templates as t2 on t1.template_type_code = t2.template_type_code where t2.template_type_code = "AD"
select t1.template_type_code from templates as t1 join ref_template_types as t2 on t1.template_type_code = t2.template_type_code where t2.template_type_description = "Book"
select template_type_code from ref_template_types where template_type_description = "Book"
select distinct t1.template_type_description from ref_template_types as t1 join templates as t2 on t1.template_type_code = t2.template_type_code join documents as t3 on t2.template_id = t3.template_id
select distinct t1.template_type_description from ref_template_types as t1 join templates as t2 on t1.template_type_code = t2.template_type_code join documents as t3 on t2.template_id = t3.template_id
select t1.template_id from templates as t1 join ref_template_types as t2 on t1.template_type_code = t2.template_type_code where t2.template_type_description = "Presentation"
select t1.template_id from templates as t1 join documents as t2 on t1.template_id = t2.template_id join ref_template_types as t3 on t1.template_type_code = t3.template_type_code where t3.template_type_description = "Presentation"
select count(*) from paragraphs
select count(*) from paragraphs
select count(*) from documents as t1 join paragraphs as t2 on t1.document_id = t2.document_id where t1.document_name = "Summer Show"
select count(*) from paragraphs as t1 join documents as t2 on t1.document_id = t2.document_id where t2.document_name = "Summer Show"
select other_details from paragraphs where paragraph_text like "%korea%"
select other_details from paragraphs where paragraph_text like "%korea%"
select t2.paragraph_id, t2.paragraph_text from documents as t1 join paragraphs as t2 on t1.document_id = t2.document_id where t1.document_name = "Welcome to NY"
select t2.paragraph_id, t2.paragraph_text from documents as t1 join paragraphs as t2 on t1.document_id = t2.document_id where t1.document_name = "Welcome to NY"
select t2.paragraph_text from documents as t1 join paragraphs as t2 on t1.document_id = t2.document_id where t1.document_name = "Customer reviews"
select t2.paragraph_text from documents as t1 join paragraphs as t2 on t1.document_id = t2.document_id where t1.document_name = "Customer reviews"
select document_id, count(*) from paragraphs group by document_id order by document_id
select document_id, count(*) from paragraphs group by document_id order by count(*) desc
select document_id, document_name, count(*) from documents group by document_id
select document_id, document_name, count(*) from documents group by document_id
select document_id from paragraphs group by document_id having count(*) >= 2
select document_id from paragraphs group by document_id having count(*) >= 2
select t1.document_id, t1.document_name from documents as t1 join paragraphs as t2 on t1.document_id = t2.document_id group by t1.document_id order by count(*) desc limit 1
select t1.document_id, t1.document_name from documents as t1 join paragraphs as t2 on t1.document_id = t2.document_id group by t1.document_id order by count(*) desc limit 1
select document_id from paragraphs group by document_id order by count(*) asc limit 1
select document_id from paragraphs group by document_id order by count(*) asc limit 1
select document_id from paragraphs group by document_id having count(*) between 1 and 2
select document_id from paragraphs group by document_id having count(*) between 1 and 2
select document_id from paragraphs where paragraph_text like '%brazil%' intersect select document_id from paragraphs where paragraph_text like '%ireland%'
select document_id from paragraphs where paragraph_text like '%brazil%' intersect select document_id from paragraphs where paragraph_text like '%ireland%'
select count(*) from teacher
select count(*) from teacher
select name from teacher order by age asc
select name from teacher order by age asc
select age, hometown from teacher
select age, hometown from teacher
select name from teacher where hometown!= ''
select name from teacher where hometown!= ''
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
select t2.name, t3.course from course_arrange as t1 join teacher as t2 on t1.teacher_id = t2.teacher_id join course as t3 on t1.course_id = t3.course_id
select t2.name, t3.course from course_arrange as t1 join teacher as t2 on t1.teacher_id = t2.teacher_id join course as t3 on t1.course_id = t3.course_id order by t2.name asc
select t2.name, t3.course from course_arrange as t1 join teacher as t2 on t1.teacher_id = t2.teacher_id join course as t3 on t1.course_id = t3.course_id order by t2.name asc
select t2.name from course_arrange as t1 join teacher as t2 on t1.teacher_id = t2.teacher_id join course as t3 on t1.course_id = t3.course_id where t3.course = 'Math'
select t2.name from course_arrange as t1 join teacher as t2 on t1.teacher_id = t2.teacher_id join course as t3 on t1.course_id = t3.course_id where t3.course = 'Math'
select t2.name, count(*) from course_arrange as t1 join teacher as t2 on t1.teacher_id = t2.teacher_id group by t2.name
select t2.name, count(*) from course_arrange as t1 join teacher as t2 on t1.teacher_id = t2.teacher_id group by t2.name
select t1.name from teacher as t1 join course_arrange as t2 on t1.teacher_id = t2.teacher_id group by t1.teacher_id having count(*) >= 2
select t1.name from teacher as t1 join course_arrange as t2 on t1.teacher_id = t2.teacher_id group by t1.teacher_id having count(*) >= 2
select name from teacher where teacher_id not in (select teacher_id from course_arrange)
select name from teacher where teacher_id not in (select teacher_id from course_arrange)
select count(*) from visitor where age < 30
select name from visitor where level_of_membership > 4 order by level_of_membership desc
select avg(age) from visitor where level_of_membership < 4
select name, level_of_membership from visitor where level_of_membership > 4 order by age desc
select t1.museum_id, t1.name from museum as t1 join visit as t2 on t1.museum_id = t2.museum_id group by t1.museum_id order by num_of_staff desc limit 1
select avg(num_of_staff) from museum where open_year < 2009
select open_year, num_of_staff from museum where name = "Plaza Museum"
select name from museum where num_of_staff > (select min(num_of_staff) from museum where open_year > 2010)
select t1.id, t1.name, t1.age from visitor as t1 join visit as t2 on t1.id = t2.visitor_id group by t1.id having count(*) > 1
select t1.id, t1.name, t1.level_of_membership from visitor as t1 join visit as t2 on t1.id = t2.visitor_id group by t1.id order by sum(t2.total_spent) desc limit 1
select t1.museum_id, t1.name from museum as t1 join visit as t2 on t1.museum_id = t2.museum_id group by t2.museum_id order by count(*) desc limit 1
select name from museum where museum_id not in (select museum_id from visit)
select t1.name, t1.age from visitor as t1 join visit as t2 on t1.id = t2.visitor_id group by t2.visitor_id order by sum(t2.num_of_ticket) desc limit 1
select avg(num_of_ticket), max(num_of_ticket) from visit
select sum(num_of_ticket) from visit as t1 join visitor as t2 on t1.visitor_id = t2.id where t2.level_of_membership = 1
select t1.name from visitor as t1 join visit as t2 on t1.id = t2.visitor_id join museum as t3 on t2.museum_id = t3.museum_id where t3.open_year < 2009 intersect select t1.name from visitor as t1 join visit as t2 on t1.id = t2.visitor_id join museum as t3 on t2.museum_id = t3.museum_id where t3.open_year > 2011
select count(*) from visitor where id not in ( select visitor_id from visit where open_year > 2010 
select count(*) from museum where open_year > 2013 or open_year < 2008
select count(*) from players
select count(*) from players
select count(*) from matches
select count(*) from matches
select first_name, birth_date from players where country_code = 'USA'
select first_name, birth_date from players where country_code = 'USA'
select avg(loser_age), avg(winner_age) from matches
select avg(loser_age), avg(winner_age) from matches
select avg(winner_rank) from matches
select avg(winner_rank) from matches
select loser_rank from matches order by loser_rank desc limit 1
select loser_rank from matches group by loser_rank order by count(*) desc limit 1
select count(distinct country_code) from players
select count(distinct country_code) from players
select count(distinct loser_name) from matches
select count(distinct loser_name) from matches
select tourney_name from matches group by tourney_name having count(*) > 10
select tourney_name from matches group by tourney_id having count(*) > 10
select winner_name from matches where year = 2013 intersect select winner_name from matches where year = 2016
select winner_name from matches where year = 2013 intersect select winner_name from matches where year = 2016
select count(*) from matches where year = 2013 or year = 2016
select count(*) from matches where year = 2013 or year = 2016
select t1.country_code, t1.first_name from players as t1 join matches as t2 on t1.player_id = t2.winner_id where t2.tourney_name = "WTA Championships" intersect select t1.country_code, t1.first_name from players as t1 join matches as t2 on t1.player_id = t2.winner_id where t2.t
select t1.first_name, t1.country_code from players as t1 join matches as t2 on t1.player_id = t2.winner_id where t2.winner_name = 'WTA Championships' intersect select t1.first_name, t1.country_code from players as t1 join matches as t2 on t1.player_id = t2.winner_id where t2.winner_name = 'Australian Open'
select first_name, country_code from players order by birth_date desc limit 1
select first_name, country_code from players order by birth_date desc limit 1
select first_name, last_name from players order by birth_date
select first_name, last_name from players order by birth_date
select first_name, last_name from players where hand = 'L' order by birth_date
select first_name, last_name from players where hand = 'L' order by birth_date
select t1.first_name, t1.country_code from players as t1 join rankings as t2 on t1.player_id = t2.player_id group by t2.player_id order by count(*) desc limit 1
select t1.first_name, t1.country_code from players as t1 join rankings as t2 on t1.player_id = t2.player_id group by t2.player_id order by count(*) desc limit 1
select year from matches group by year order by count(*) desc limit 1
select year from matches group by year order by count(*) desc limit 1
select winner_name, winner_rank_points from matches group by winner_id order by count(*) desc limit 1
select t1.winner_name, t1.winner_rank_points from matches as t1 join rankings as t2 on t1.winner_id = t2.player_id group by t2.player_id order by count(*) desc limit 1
select winner_name from matches as t1 join rankings as t2 on t1.winner_id = t2.player_id where tourney_name = "Australian open" order by winner_rank desc limit 1
select winner_name from matches where tourney_name = "Australian open" order by winner_rank_points desc limit 1
select t1.loser_name, t1.winner_name from matches as t1 join players as t2 on t1.loser_id = t2.player_id order by t1.minutes desc limit 1
select t1.winner_name, t1.loser_name from matches as t1 join players as t2 on t1.loser_id = t2.player_id order by t1.minutes desc limit 1
select t1.first_name, avg(t2.ranking) from players as t1 join rankings as t2 on t1.player_id = t2.player_id group by t1.player_id
select t1.first_name, avg(t2.ranking) from players as t1 join rankings as t2 on t1.player_id = t2.player_id group by t1.first_name
select sum(ranking_points), t1.first_name from players as t1 join rankings as t2 on t1.player_id = t2.player_id group by t1.first_name
select t1.first_name, sum(t2.ranking_points) from players as t1 join rankings as t2 on t1.player_id = t2.player_id group by t1.first_name
select country_code, count(*) from players group by country_code
select country_code, count(*) from players group by country_code
select country_code from players group by country_code order by count(*) desc limit 1
select country_code from players group by country_code order by count(*) desc limit 1
select country_code from players group by country_code having count(*) > 50
select country_code from players group by country_code having count(*) > 50
select ranking_date, count(*) from rankings group by ranking_date
select ranking_date, sum(tours) from rankings group by ranking_date
select count(*), year from matches group by year
select count(*), year from matches group by year
select winner_name, winner_rank from matches order by winner_age asc limit 3
select winner_name, winner_rank from matches order by winner_age asc limit 3
select count(distinct winner_name) from matches where loser_hand = 'R' and loser_hand = 'L' and tourney_name = "WTA Championships"
select count(*) from matches where winner_hand = 'L' and tourney_name = 'WTA Championships'
select t1.first_name, t1.country_code, t1.birth_date from players as t1 join matches as t2 on t1.player_id = t2.winner_id order by t2.winner_rank_points desc limit 1
select t1.first_name, t1.country_code, t1.birth_date from players as t1 join rankings as t2 on t1.player_id = t2.player_id group by t2.player_id order by count(*) desc limit 1
select hand, count(*) from players group by hand
select hand, count(*) from players group by hand
select count(*) from ship where id = 'Captured'
select name, tonnage from ship order by name desc
select name, date, result from battle
select max(t1.killed), min(t1.killed) from death as t1 join battle as t2 on t1.caused_by_ship_id = t2.id group by t1.id
select avg(injured), t1.id from death as t1 join battle as t2 on t1.caused_by_ship_id = t2.id group by t1.id
select t1.killed, t1.injured from death as t1 join ship as t2 on t1.ship_
select name, result from battle where bulgarian_commander!= 'Boril'
select distinct t1.id, t1.name from battle as t1 join ship as t2 on t1.id = t2.lost_in_battle where t2.ship_type = 'Brig'
select t1.id, t1.name from battle as t1 join death as t2 on t1.id = t2.caused_by_ship_id group by t1.id having sum(t2.killed) > 10
select t1.id, t1.name from ship as t1 join death as t2 on t1.id = t2.caused_by_ship_id group by t1.id order by sum(t2.injured) desc limit 1
select distinct name from battle where bulgarian_commander = 'Kaloyan' and latin_commander = 'Baldwin I'
select count(distinct result) from battle
select count(*) from battle where id not in ( select lost_in_battle from ship where tonnage = '225' );
select t1.name, t1.date from battle as t1 join ship as t2 on t1.id = t2.lost_in_battle where t2.name = 'Lettice' intersect select t1.name, t1.date from battle as t1 join ship as t2 on t1.id = t2.lost_in_battle where t2.name = 'HMS Atalanta'
select name, result, bulgarian_commander from battle except select t1.name, t1.result, t1.bulgarian_commander from battle as t1 join ship as t2 on t1.id = t2.lost_in_battle where t2.location = 'English Channel'
select note from death where note like "%east%"
select * from addresses where line_1
select line_1, line_2 from addresses
select count(*) from courses
select count(*) from courses
select course_description from courses where course_id in (select course_id from courses where course_description like '%math%')
select course_description from courses where course_description like '%math%'
select zip_postcode from addresses where city = "Port Chelsea"
select zip_postcode from addresses where city = "Port Chelsea"
select t2.department_name, t2.department_id from degree_programs as t1 join departments as t2 on t1.department_id = t2.department_id group by t2.department_id order by count(*) desc limit 1
select t2.department_name, t2.department_id from degree_programs as t1 join departments as t2 on t1.department_id = t2.department_id group by t2.department_id order by count(*) desc limit 1
select count(distinct department_id) from degree_programs
select count(distinct department_id) from degree_programs
select count(distinct degree_summary_name) from degree_programs
select count(distinct degree_summary_name) from degree_programs
select count(*) from departments as t1 join degree_programs as t2 on t1.department_id = t2.department_id where t1.department_name = "Engineering"
select count(*) from departments as t1 join degree_programs as t2 on t1.department_id = t2.department_id where t1.department_name = "Engineering"
select section_name, section_description from sections
student
select t1.course_name, t1.course_id from courses as t1 join sections as t2 on t1.course_id = t2.course_id group by t1.course_id having count(*) <= 2
select t1.course_name, t1.course_id from courses as t1 join sections as t2 on t1.course_id = t2.course_id group by t1.course_id having count(*) < 2
select section_name from sections order by section_name desc
select section_name from sections order by section_name desc
select t2.semester_name, t2.semester_id from student_enrolment as t1 join semesters as t2 on t1.semester_id = t2.semester_id group by t2.semester_id order by count(*) desc limit 1
select t1.semester_name, t1.semester_id from semesters as t1 join student_enrolment as t2 on t1.semester_id = t2.semester_id group by t1.semester_id order by count(*) desc limit 1
select department_description from departments where department_name like '%computer%'
select department_description from departments where department_name like '%computer%'
select t1.first_name, t1.middle_name, t1.last_name, t1.student_id from students as t1 join student_enrolment as t2 on t1.student_id = t2.student_id join degree_programs as t3 on t2.degree_program_id = t3.degree_program_id group by t1.student_id having count(*) >= 2
select t1.first_name, t1.middle_name, t1.student_id from students as t1 join student_enrolment as t2 on t1.student_id = t2.student_id join degree_programs as t3 on t2.degree_program_id = t3.degree_program_id group by t1.student_id having count(*) >= 1
select t1.first_name, t1.middle_name, t1.last_name from students as t1 join student_enrolment as t2 on t1.student_id = t2.student_id join degree_programs as t3 on t2.degree_program_id = t3.degree_program_id where t3.degree_summary_name = "Bache"
select t2.first_name, t2.middle_name, t2.last_name from student_enrolment as t1 join students as t2 on t1.student_id = t2.student_id where t1.degree_program_id = "Bachelors"
select t1.degree_program_id from student_enrolment as t1 join degree_programs as t2 on t1.degree_program_id = t2.degree_program_id group by t1.degree_program_id order by count(*) desc limit 1
select t2.degree_summary_name from student_enrolment as t1 join degree_programs as t2 on t1.degree_program_id = t2.degree_program_id group by t2.degree_summary_name order by count(*) desc limit 1
select t1.degree_program_id, t1.degree_summary_name from degree_programs as t1 join student_enrolment as t2 on t1.degree_program_id = t2.degree_program_id group by t1.degree_program_id order by count(*) desc limit 1
select t1.degree_program_id, t1.degree_summary_name from degree_programs as t1 join student_enrolment as t2 on t1.degree_program_id = t2.degree_program_id group by t1.degree_program_id order by count(*) desc limit 1
select t1.student_id, t2.first_name, t2.middle_name, count(*), t1.student_id from student_enrolment as t1 join students as t2 on t1.student_id = t2.student_id group by t1.student_id order by count(*) desc limit 1
select t1.first_name, t1.middle_name, t1.last_name, count(*) from students as t1 join student_enrolment as t2 on t1.student_id = t2.student_id group by t2.student_id order by count(*) desc limit 1
select semester_name from semesters where semester_id not in (select semester_id from student_enrolment)
select semester_name from semesters where semester_id not in (select semester_id from student_enrolment)
select t1.course_name from courses as t1 join student_enrolment_courses as t2 on t1.course_id = t2.course_id
select t1.course_name from courses as t1 join student_enrolment_courses as t2 on t1.course_id = t2.course_id
select t1.course_name from courses as t1 join student_enrolment_courses as t2 on t1.course_id = t2.course_id group by t1.course_id order by count(*) desc limit 1
select t1.course_name from courses as t1 join student_enrolment_courses as t2 on t1.course_id = t2.course_id group by t1.course_id order by count(*) desc limit 1
select t1.last_name from students as t1 join student_enrolment as t2 on t1.student_id = t2.student_id join addresses as t3 on t1.current_address_id = t3.address_id where t3.state_province_county = "North Carolina"
select t2.last_name from addresses as t1 join students as t2 on t1.address_id = t2.current_address_id except select t2.last_name from addresses as t3 join student_enrolment as t4 on t3.address_id = t4.student_id join degree_programs as t5 on t4.degree_program_id = t5.degree_program_id join student_enrolment as t6 on t2.student_id = t3.student_id
select t1.transcript_date, t1.transcript_id from transcripts as t1 join transcript_contents as t2 on t1.transcript_id = t2.transcript_id group by t1.transcript_id having count(*) >= 2
select t1.transcript_date, t1.transcript_id from transcripts as t1 join transcript_contents as t2 on t1.transcript_id = t2.transcript_id group by t1.transcript_id having count(*) >= 2
select cell_mobile_number from students where first_name = "Timmothy" and last_name = "Ward"
select cell_mobile_number from students where first_name = "Timmothy Ward"
select first_name, middle_name, last_name from students order by date_first_registered desc limit 1
select first_name, middle_name, last_name from students order by date_first_registered
select first_name, middle_name, last_name from students order by date_first_registered asc limit 1
select first_name, middle_name, last_name from students order by date_first_registered asc limit 1
select distinct t1.first_name from students as t1 join addresses as t2 on t1.permanent_address_id = t2.address_id
select t1.first_name from students as t1 join addresses as t2 on t1.permanent_address_id = t2.address_id where t2.address_id!= t1.current_address_id
select t1.address_id, t1.line_1, t1.line_3 from addresses as t1 join students as t2 on t1.address_id = t2.current_address_id group by t1.address_id order by count(*) desc limit 1
select t1.address_id, t1.line_1, t1.line_2 from addresses as t1 join students as t2 on t1.address_id = t2.current_address_id group by t1.address_id order by count(*) desc limit 1
select avg(transcript_date) from transcripts
select avg(transcript_date) from transcripts
select transcript_date, other_details from transcripts order by transcript_date asc limit 1
select transcript_date, other_details from transcripts
select count(*) from transcripts
select count(*) from transcripts
select transcript_date from transcripts order by transcript_date desc limit 1
select transcript_date from transcripts order by transcript_date desc limit 1
select count(*), t1.course_id from student_enrolment_courses as t1 join transcript_contents as t2 on t1.course_id = t2.student_course_id group by t1.course_id
select t1.course_id, count(*) from courses as t1 join transcript_contents as t2 on t1.course_id = t2.course_id
select transcript_date, transcript_id from transcripts group by transcript_id order by count(*) asc limit 1
select transcript_date, transcript_id from transcripts group by transcript_id order by count(*) asc limit 1
select t1.semester_name from semesters as t1 join student_enrolment as t2 on t1.semester_id = t2.semester_id where t2.student_id = 'Master' intersect select t1.semester_name from semesters as t1 join student_enrolment as t2 on t1.semester_id = t2.student_id where t2.student_id = 'Bache'
select semester_id from student_enrolment where degree_program_id = "Masters" intersect select semester_id from student_enrolment where degree_program_id = "Bachelors"
select count(distinct current_address_id) from students
select distinct t1.other_address_details from addresses as t1 join students as t2 on t1.address_id = t2.current_address_id
select other_student_details from students order by other_student_details desc
select other_student_details from students order by other_student_details desc
select t1.section_description from sections as t1 join addresses as t2 on t1.section_id = t2.address_id where t1.section_name = 'h'
select section_description from sections where section_name = "h"
select t1.first_name from students as t1 join addresses as t2 on t1.permanent_address_id = t2.address_id where t2.country = "Haiti" or t1.cell_mobile_number = "09700166582"
select first_name from students where permanent_address_id in (select permanent_address_id from addresses as t1 join students as t2 on t1.address_id = t2.current_address_id where t1.country = "Haiti" or t2.cell_mobile_number = "09700166582")
select title from cartoon order by title
select title from cartoon order by title
select title from cartoon where directed_by = "Ben Jones"
select title from cartoon where directed_by = "Ben Jones"
select count(*) from cartoon where written_by = "Joseph Kuhr"
select count(*) from cartoon where written_by = "Joseph Kuhr"
select title, directed_by from cartoon order by original_air_date
select title, directed_by from cartoon order by original_air_date
select title from cartoon where directed_by = "Ben Jones" or directed_by = "Brandon Vietti"
select title from cartoon where directed_by = "Ben Jones" or directed_by = "Brandon Vietti"
select country, count(*) from tv_channel group by country order by count(*) desc limit 1
select country, count(*) from tv_channel group by country order by count(*) desc limit 1
select count(distinct series_name), count(distinct content) from tv_channel
select count(distinct series_name), count(distinct content) from tv_channel
select content from tv_channel where series_name = "Sky Radio"
select content from tv_channel where series_name = "Sky Radio"
select package_option from tv_channel where series_name = "Sky Radio"
select package_option from tv_channel where series_name = "Sky Radio"
select count(*) from tv_channel where language = "english"
select count(*) from tv_channel where language = "english"
select language, count(*) from tv_channel group by language order by count(*) asc limit 1
select language, count(*) from tv_channel group by language order by count(*) asc limit 1
select language, count(*) from tv_channel group by language
select language, count(*) from tv_channel group by language
select tv_channel.series_name from tv_channel as t1 join tv_series as t2 on t1.id = t2.channel
select t2.series_name from cartoon as t1 join tv_channel as t2 on t1.channel = t2.id where t1.title = "The rise of the blue Beetle"
select t1.title from cartoon as t1 join tv_channel as t2 on t1.channel = t2.id where t2.series_name = "Sky Radio"
select t1.title from cartoon as t1 join tv_channel as t2 on t1.channel = t2.id where t2.series_name = "Sky Radio"
select episode from tv_series order by rating
select episode from tv_series order by rating
select episode, rating from tv_series order by rating desc limit 3
select episode, rating from tv_series order by rating desc limit 3
select min(share), max(share) from tv_series
select max(share), min(share) from tv_series
select air_date from tv_series where episode = "A love of a lifetime"
select air_date from tv_series where episode = "A love of a lifetime"
select weekly_rank from tv_series where episode = "A love of a lifetime"
select weekly_rank from tv_series where episode = "A love of a lifetime"
select t2.series_name from tv_series as t1 join tv_channel as t2 on t1.channel = t2.id where t1.episode = "A love of a Lifetime"
select tv_series.series_name from tv_series as t1 join tv_channel as t2 on t1.id = t2.channel
select t1.episode from tv_series as t1 join tv_channel as t2 on t1.channel = t2.id where t2.series_name = "Sky Radio"
select t1.episode from tv_series as t1 join tv_channel as t2 on t1.id = "t2.tv_channel" where t2.series_name = "Sky Radio"
select directed_by, count(*) from cartoon group by directed_by
select directed_by, count(*) from cartoon group by directed_by
select production_code, channel from cartoon order by original_air_date desc limit 1
select production_code, channel from cartoon order by original_air_date desc limit 1
select package_option, series_name from tv_channel where hight_definition_tv = 'yes'
select series_name, package_option from tv_channel where hight_definition_tv = 'yes'
select distinct t1.country from tv_channel as t1 join cartoon as t2 on t1.id = t2.channel where t2.written_by = "Todd Casey"
select t1.country from tv_channel as t1 join cartoon as t2 on t1.id = t2.directed_by where t2.written_by = "Todd Casey"
select country from tv_channel except select t1.country from tv_channel as t1 join cartoon as t2 on t1.id = t2.channel where t2.written_by = "Todd Casey"
select country from tv_channel except select t1.country from tv_channel as t1 join cartoon as t2 on t1.id = t2.channel where t2.written_by = "Todd Casey"
select t2.series_name, t2.country from cartoon as t1 join tv_channel as t2 on t1.channel = t2.id where t1.directed_by = "Ben Jones" intersect select t2.series_name, t2.country from cartoon as t1 join tv_channel as t2 on t1.channel = t2.id where t1.directed_by = "Michael Chang"
select t2.series_name, t2.country from cartoon as t1 join tv_channel as t2 on t1.channel = t2.id where t1.directed_by = "Ben Jones" intersect select t2.series_name, t2.country from cartoon as t1 join tv_channel as t2 on t1.channel = t2.id where t1.directed_by = "Michael Chang"
select pixel_aspect_ratio_par, country from tv_channel where language!= 'English'
select pixel_aspect_ratio_par, country from tv_channel where language!= 'English'
select id from tv_channel where country > 2
select id from tv_channel group by id having count(*) > 2
select id from tv_channel except select channel from cartoon where directed_by = "Ben Jones"
select id from tv_channel except select channel from cartoon where directed_by = "Ben Jones"
select package_option from tv_channel except select t1.package_option from tv_channel as t1 join cartoon as t2 on t1.id = t2.channel where t2.directed_by = "Ben Jones"
select package_option from tv_channel except select t1.package_option from tv_channel as t1 join cartoon as t2 on t1.id = t2.channel where t2.directed_by = "Ben Jones"
select count(*) from poker_player
select count(*) from poker_player
select earnings from poker_player order by earnings desc
select earnings from poker_player order by earnings desc
select final_table_made, best_finish from poker_player
select final_table_made, best_finish from poker_player
select avg(earnings) from poker_player
select avg(earnings) from poker_player
select money_rank from poker_player order by earnings desc limit 1
select money_rank from poker_player order by earnings desc limit 1
select max(final_table_made) from poker_player where earnings < 200000
select max(final_table_made) from poker_player where earnings < 200000
select t2.name from poker_player as t1 join people as t2 on t1.people_id = t2.people_id
select t2.name from poker_player as t1 join people as t2 on t1.people_id = t2.people_id
select t2.name from poker_player as t1 join people as t2 on t1.people_id = t2.people_id where t1.earnings > 300000
select t2.name from poker_player as t1 join people as t2 on t1.people_id = t2.people_id where t1.earnings > 300000
select t2.name from poker_player as t1 join people as t2 on t1.people_id = t2.people_id order by t1.final_table_made
select t2.name from poker_player as t1 join people as t2 on t1.people_id = t2.people_id order by t1.final_table_made asc
select t2.birth_date from poker_player as t1 join people as t2 on t1.people_id = t2.people_id order by t1.earnings asc limit 1
select t2.birth_date from poker_player as t1 join people as t2 on t1.people_id = t2.people_id order by t1.earnings asc limit 1
select t1.money_rank from poker_player as t1 join people as t2 on t1.people_id = t2.people_id order by t2.height desc limit 1
select t2.money_rank from people as t1 join poker_player as t2 on t1.people_id = t2.people_id order by t1.height desc limit 1
select avg(earnings) from poker_player as t1 join people as t2 on t1.people_id = t2.people_id where t2.height > 200
select avg(earnings) from poker_player as t1 join people as t2 on t1.people_id = t2.people_id where t2.height > 200
select t2.name from poker_player as t1 join people as t2 on t1.people_id = t2.people_id order by t1.earnings desc
select t2.name from poker_player as t1 join people as t2 on t1.people_id = t2.people_id order by t1.earnings desc
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
select max(area_code), min(area_code) from area_code_state
select created from votes where state = 'CA'
select contestant_name from contestants except select t1.contestant_name from contestants as t1 join votes as t2 on t1.contestant_number = t2.contestant_number where t1.contestant_name!= 'Jessie Alloway'
select distinct state, created from votes
select t1.contestant_number, t1.contestant_name from contestants as t1 join votes as t2 on t1.contestant_number = t2.contestant_number group by t1.contestant_number having count(*) >= 2
select t1.contestant_number, t1.contestant_name from contestants as t1 join votes as t2 on t1.contestant_number = t2.contestant_number group by t2.contestant_number order by count(*) asc limit 1
select count(*) from votes where state = 'NY' or state = 'CA'
select count(*) from contestants where contestant_number not in (select contestant_number from votes)
select t1.area_code from area_code_state as t1 join votes as t2 on t1.state = t2.state group by t1.area_code order by count(*) desc limit 1
select t2.created, t2.state, t2.phone_number from contestants as t1 join votes as t2 on t1.contestant_number = t2.contestant_number where t1.contestant_name = "Tabatha Gehling"
select t1.area_code from area_code_state as t1 join votes as t2 on t1.area_code = t2.area_code
select contestant_name from contestants where contestant_name like "%al%"
select name from country where indepyear > 1950
select name from country where indepyear > 1950
select count(*) from country where governmentform = 'Republic'
select count(*) from country where governmentform = 'Republic'
select sum(surfacearea) from country where region = "Caribbean"
select sum(surfacearea) from country where region = "Carribean"
select continent from country where name like "%anguilla%"
select continent from country where name like "%anguilla%"
select district from city where name = 'Kabul'
select region from country where name like "%kabul%"
select t2.language from city as t1 join countrylanguage as t2 on t1.countrycode = t2.countrycode where t1.name = 'Aruba' group by t2.language order by count(*) desc limit 1
select t2.language from city as t1 join countrylanguage as t2 on t1.id = t2.countrycode where t1.name = 'Aruba' group by t2.language order by count(*) desc limit 1
select population, lifeexpectancy from country where name = 'Brazil'
select population, lifeexpectancy from country where name = 'Brazil'
select region, population from country where name = 'Angola'
select region, population from country where name = 'Angola'
select avg(lifeexpectancy) from country where region = 'Central Africa'
select avg(lifeexpectancy) from country where name = 'Central Africa'
select name from country where lifeexpectancy = (select min(lifeexpectancy) from country where region = 'Asia')
select name from country where lifeexpectancy = (select min(lifeexpectancy) from country where region = 'Asia')
select sum(population), max(gnp) from country where name = 'Asia'
select t1.gnp, count(*) from country as t1 join city as t2 on t1.code = t2.countrycode where t1.region = 'Asia' group by t1.region order by sum(t1.gnp) desc limit 1
select avg(lifeexpectancy) from country where name = 'African republic'
select avg(lifeexpectancy) from country where countrycode = 'Africa' or countrycode = 'Republic of Congo"; note that this query requires t1.countrycode
select sum(surfacearea) from country where continent = 'Asia' intersect select sum(surfacearea) from country where region = 'Europe'
select sum(surfacearea) from country where region = 'Asia' or region = 'Europe'
select count(*) from city as t1 join country as t2 on t1.countrycode = t2.code2 join city as t3 on t1.id = t3.id where t1.district = "Gelderland"
select sum(population) from city where district = 'Gelderland'
select avg(gnp), sum(population) from country where governmentform = 'USA'
select avg(gnp), sum(population) from country where headofstate = 'USA'
select count(distinct language) from countrylanguage
select count(distinct language) from countrylanguage
select count(distinct governmentform) from country where continent = 'Africa'
select count(distinct governmentform) from country where continent = 'Africa'
select count(*) from countrylanguage as t1 join city as t2 on t1.countrycode = t2.countrycode where t2.name = 'Aruba'
select count(distinct language) from countrylanguage as t1 join city as t2 on t1.countrycode = t2.countrycode where t2.name = 'Aruba'
select count(*) from countrylanguage where countrycode = 'Afghanistan'
select count(distinct isofficial) from countrylanguage where countrycode = 'Afghanistan'
select t1.name from country as t1 join countrylanguage as t2 on t1.code = t2.countrycode group by t1.code order by count(*) desc limit 1
select t1.name from country as t1 join countrylanguage as t2 on t1.country
select t1.continent from country as t1 join countrylanguage as t2 on t2.countrycode = t1.countrycode
select t1.continent, count(*) from country as t1 join countrylanguage as t2 on t2.countrycode = t1.code2 join country as t3 on t1.region = t3.region group by t1.continent order by count(*) desc limit 1
select count(*) from countrylanguage where language = 'English' intersect select count(*) from countrylanguage where language = 'Dutch'
select count(*) from countrylanguage where language = 'English' intersect select count(*) from countrylanguage where language = 'Dutch'
select t1.name from city as t1 join countrylanguage as t2 on t1.id = t2.countrycode where t2.language = 'French' intersect select t1.name from city as t1 join countrylanguage as t2 on t1.id = t2.countrycode where t2.language = 'English'
select t1.name from city as t1 join countrylanguage as t2 on t1.id = t2.countrycode where t2.language = 'French' intersect select t1.name from city as t1 join countrylanguage as t2 on t1.id = t2.countrycode where t2.language = 'English'
select t1.name from city as t1 join countrylanguage as t2 on t1.id = t2.countrycode where t2.language = 'English' intersect select t1.name from city as t1 join countrylanguage as t2 on t1.id = t2.countrycode where t2.isofficial = 'French'
select t1.name from city as t1 join countrylanguage as t2 on t1.countrycode = t2.countrycode where t2.language = 'English' intersect select t1.name from city as t1 join countrylanguage as t2 on t1.countrycode = t2.countrycode where t2.language = 'French'
select count(distinct continent) from country where name like "%china%"
select count(*) from country where name like "%china%"
select distinct t1.region from country as t1 join countrylanguage as t2 on t1.country
select distinct region from country where language = 'Netherlandish' or language = 'Englandish
select distinct t1.name from city as t1 join countrylanguage as t2 on t1.countrycode = t2.countrycode where t2.language = 'English' or t2.language = 'Dutch'
select distinct countrycode from countrylanguage where language = 'English' or language = 'Dutch'
select t1.language from countrylanguage as t1 join country as t2 on t1.countrycode = t2.code2 where t2.continent = 'Asia' group by t1.language order by count(*) desc limit 1
select language from countrylanguage where countrycode = 'Asia' group by language order by count(*) desc limit 1
select language from countrylanguage where countrycode = 'Republic' group by language having count(*) = 1
select language from countrylanguage as t1 join country as t2 on t1.countrycode = t2.code2 where t2.governmentform = 'Republic'
select name from city where population = (select max(population) from city where name like '%english%')
select name from city where population = (select max(population) from city where name like '%english%')
select name, population, lifeexpectancy from country order by surfacearea desc limit 1
select name, population, lifeexpectancy from country where surfacearea = (select max(surfacearea) from country where code = 'Asia')
select avg(lifeexpectancy) from country where countrycode not in (select t1.countrycode from countrylanguage as t1 join country as t2 on t1.countrycode = t2.code where t1.isofficial = 'T'
select avg(lifeexpectancy) from country where language!= 'N' and
select sum(population) from city where countrycode not in (select countrycode from countrylanguage where isofficial = 'T')
select count(*) from city as t1 join country as t2 on t1.countrycode = t2.code where t2.name not in (select t1.countrycode from country as t3 join countrylanguage as t4 on t3.country
select t1.language from countrylanguage as t1 join country as t2 on t1.countrycode = t2.code2 join country as t3 on t1.countrycode = t3.code2 where t3.headofstate = 'Beatrice'
select t2.language from country as t1 join countrylanguage as t2 on t1.code = t2.countrycode where t1.headofstate = "Beatrice"
select count(distinct isofficial) from countrylanguage where countrycode = "null" and inde
select count(distinct language) from countrylanguage where countrycode < 1930
select name from country where surfacearea > (select min(surfacearea) from country where continent = 'Europe')
select name from country where surfacearea > (select min(surfacearea) from country where continent = 'Europe')
select name from country where population < (select max(population) from country where region = 'Asia')
select name from country where population < (select max(population) from country where region = 'Asia')
select name from country where population > (select max(population) from country where continent = 'Africa')
select name from country where population > (select min(population) from country where continent = 'Africa')
select countrycode from countrylanguage where language!= 'N'
select countrycode from countrylanguage where language!= 'N'
select countrycode from countrylanguage where language!= 'English'
select countrycode from countrylanguage where language!= 'N'
select code from country where language!= 'English' and governmentform!= 'Republican"; t1.countrycode = t2.countrycode where t1.name!= '
select code from country where language!= 'N' and governmentform!= 'Republic of China (select t1.countrycode from country as t1 join
select t1.name from city as t1 join countrylanguage as t2 on t1.countrycode = t2.countrycode where t2.isofficial!= 'N' and t1.name in (select t1.name from city as t1 join countrylanguage as t2 on t1.countrycode = t2.countrycode where t2.isofficial!= 'English')
select name from city where countrycode not in (select countrycode from countrylanguage where isofficial = 'T')
select distinct t1.name from city as t1 join countrylanguage as t2 on t1.countrycode = t2.countrycode where t2.language = 'Chinese'
select distinct t1.name from city as t1 join countrylanguage as t2 on t1.countrycode = t2.countrycode where t2.isofficial = 'Chinese'
select name, indepyear, surfacearea from country order by population asc limit 1
select name, indepyear, surfacearea from country order by population asc limit 1
select population, name, headofstate from country order by surfacearea desc limit 1
select name, population, headofstate from country order by surfacearea desc limit 1
select t1.name, count(*), t2.countrycode from country as t1 join countrylanguage as t2 on t2.countrycode = t1.code group by t2.countrycode having count(*) >= 3
select t1.name, t2.language from country as t1 join countrylanguage as t2 on t1.code = t2.countrycode group by t1.name having count(*) > 2
select count(*), district from city where population > (select avg(population) from city) group by district
select count(*), district from city where population > (select avg(population) from city) group by district
select governmentform, sum(population) from country where lifeexpectancy > 72 group by governmentform
select governmentform, sum(population) from country where lifeexpectancy > 72 group by governmentform
select avg(lifeexpectancy), sum(population) from country where lifeexpectancy < 72 group by continent
select continent, sum(population), avg(lifeexpectancy) from country where lifeexpectancy < 72 group by continent
select name, surfacearea from country order by surfacearea desc limit 5
select name, surfacearea from country order by population desc limit 5
select name from country order by population desc limit 3
select name from country order by population desc limit 3
select name from country order by population asc limit 3
select name from country order by population asc limit 3
select count(*) from country where region = 'Asia'
select count(*) from country where region = 'Asia'
select name from country where continent = 'Europe' and population = 80000
select name from country where continent = 'Europe' and population > 80000
select sum(population), avg(surfacearea) from country where continent = 'North America' and surfacearea > 3000
select sum(population), avg(surfacearea) from country where surfacearea > 3000 and continent = 'North America'
select name from city where population between 160000 and 900000
select name from city where population between 160000 and 900000
select language from countrylanguage group by language order by count(*) desc limit 1
select language from countrylanguage group by language order by count(*) desc limit 1
select language, percentage from countrylanguage group by language order by percentage desc limit 1
select countrycode, language from countrylanguage group by countrycode order by percentage desc limit 1
select count(*) from countrylanguage where percentage = (select max(percentage) from countrylanguage where language = 'Spanish')
select count(*) from countrylanguage where percentage = 'Spanish'
select countrycode from countrylanguage where percentage = (select max(percentage) from countrylanguage where language = 'Spanish')
select countrycode from countrylanguage where language = 'Spanish' group by countrycode having count(*) >= 1
select count(*) from conductor
select count(*) from conductor
select name from conductor order by age asc
select name from conductor order by age
select name from conductor where nationality!= "USA"
select name from conductor where nationality!= "USA"
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
select t2.name, t1.orchestra from orchestra as t1 join conductor as t2 on t1.conductor_id = t2.conductor_id
select t2.name, t1.orchestra from orchestra as t1 join conductor as t2 on t1.conductor_id = t2.conductor_id
select t2.name from orchestra as t1 join conductor as t2 on t1.conductor_id = t2.conductor_id group by t2.name having count(*) > 1
select t2.name from orchestra as t1 join conductor as t2 on t1.conductor_id = t2.conductor_id group by t2.name having count(*) > 1
select t2.name from orchestra as t1 join conductor as t2 on t1.conductor_id = t2.conductor_id group by t2.name order by count(*) desc limit 1
select t2.name from orchestra as t1 join conductor as t2 on t1.conductor_id = t2.conductor_id group by t2.name order by count(*) desc limit 1
select t2.name from orchestra as t1 join conductor as t2 on t1.conductor_id = t2.conductor_id where t1.year_of_founded > 2008
select t2.name from orchestra as t1 join conductor as t2 on t1.conductor_id = t2.conductor_id where t1.year_of_founded > 2008
select record_company, count(*) from orchestra group by record_company
select record_company, count(*) from orchestra group by record_company
select major_record_format from orchestra order by count(*) asc
select major_record_format from orchestra group by major_record_format order by count(*) asc
select record_company from orchestra group by record_company order by count(*) desc limit 1
select record_company from orchestra group by record_company order by count(*) desc limit 1
select orchestra from orchestra where orchestra_id not in (select orchestra_id from performance)
select orchestra from orchestra where orchestra_id not in (select orchestra_id from performance)
select record_company from orchestra where year_of_founded < 2003 intersect select record_company from orchestra where year_of_founded > 2003
select record_company from orchestra where year_of_founded < 2003 intersect select record_company from orchestra where year_of_founded > 2003
select count(*) from orchestra where major_record_format = "CD" or major_record_format = "DVD"
select count(*) from orchestra where major_record_format = 'CD' or major_record_format = 'DVD'
select t2.year_of_founded from performance as t1 join orchestra as t2 on t1.orchestra_id = t2.orchestra_id group by t1.orchestra_id having count(*) > 1
select t2.year_of_founded from performance as t1 join orchestra as t2 on t1.orchestra_id = t2.orchestra_id group by t1.orchestra_id having count(*) > 1
select count(*) from highschooler
select count(*) from highschooler
select name, grade from highschooler
select name, grade from highschooler
select distinct grade from highschooler
select distinct grade from highschooler
select grade from highschooler where id = 'Kyle'
select grade from highschooler where name = 'Kyle'
select name from highschooler where grade = 10
select name from highschooler where grade = 10
select id from highschooler where name = 'Kyle'
select t1.id from highschooler as t1 join friend as t2 on t1.id = t2.friend_id where t1.name = 'Kyle'
select count(*) from highschooler where grade = 9 or grade = 10
select count(*) from highschooler where grade = 9 or grade = 10
select count(*), grade from highschooler group by grade
select count(*), grade from highschooler group by grade
select grade from highschooler group by grade order by count(*) desc limit 1
select grade from highschooler group by grade order by count(*) desc limit 1
select grade from highschooler group by grade having count(*) >= 4
select grade from highschooler group by grade having count(*) >= 4
select student_id, count(*) from friend group by student_id
select count(*), student_id from friend group by student_id
select t1.name, count(*) from highschooler as t1 join friend as t2 on t1.id = t2.friend_id group by t2.friend_id
select count(*), t1.name from highschooler as t1 join friend as t2 on t1.id = t2.friend_id group by t1.name
select t1.name from highschooler as t1 join friend as t2 on t1.id = t2.friend_id group by t2.friend_id order by count(*) desc limit 1
select t1.name from highschooler as t1 join friend as t2 on t1.id = t2.friend_id group by t2.friend_id order by count(*) desc limit 1
select t2.name from friend as t1 join highschooler as t2 on t1.friend_id = t2.student_
select t1.name from highschooler as t1 join friend as t2 on t1.id = t2.friend_id group by t2.friend_id having count(*) >= 3
select distinct t3.name from highschooler as t1 join friend as t2 on t1.student_i
select t3.name from highschooler as t1 join friend as t2 on
select count(t2.friend_id) from highschooler as t1 join friend as t2 on t1.
select count(*) from friend as t1 join highschooler as t2 on t1.student_id = t2.student_id
select student_id from highschool
select student_id from highschool
select name from highschooler where id not in (select student_id from friend)
select name from highschooler where id not in (select student_id from friend)
select student_id from friend intersect select liked_id from likes
select student_id from friend intersect select student_id from likes
select t1.name from highschooler as t1 join friend as t2 on t1.id = t2.student_id join likes as t3 on t3.student_id = t2.student_id
select t1.name from highschooler as t1 join friend as t2 on t1.id = t2.student_id join likes as t3 on t2.student_id = t3.student_id
select count(*), student_id from likes group by student_id
select student_id, count(*) from likes group by student_id
select t1.name, count(*) from highschooler as t1 join likes as t2 on t1.id = t2.liked_id group by t2.liked_id
select t1.name, count(*) from highschooler as t1 join likes as t2 on t1.id = t2.liked_id group by t2.liked_id
select t1.name from highschooler as t1 join likes as t2 on t1.id = t2.liked_id group by t2.liked_id order by count(*) desc limit 1
select t1.name from highschooler as t1 join likes as t2 on t1.id = t2.student_id group by t2.student_id order by count(*) desc limit 1
select t1.name from highschooler as t1 join likes as t2 on t1.id = t2.student_id group by t2.student_id having count(*) >= 2
select t1.name from highschooler as t1 join likes as t2 on t1.id = t2.student_id group by t2.student_id having count(*) >= 2
select name from highschooler where grade > 5 intersect select t1.name from highschooler as t1 join friend as t2 on t1.id = t2.friend_id group by t2.friend_id having count(*) >= 2
select name from highschooler where grade > 5 intersect select t1.name from highschooler as t1 join friend as t2 on t1.id = t2.friend_id group by t2.friend_id having count(*) >= 2
select count(*) from likes as t1 join highschooler as t2 on t1.student_id = t2.id where t2.name = 'Kyle'
select count(*) from highschooler as t1 join likes as t2 on t1.id = t2.liked_id where t1.name = "Kyle"
select avg(grade) from highschooler where id in (select student_id from friend)
select avg(t1.grade) from highschooler as t1 join friend as t2 on t1.id = t2.friend_id
select min(grade) from highschooler where id not in (select student_id from friend)
select grade from highschooler where id not in (select student_id from friend)
select state from owners intersect select state from professionals
select state from owners intersect select state from professionals
select avg(age) from dogs where dog_id in ( select dog_id from treatments )
select avg(age) from dogs as t1 join treatments as t2 on t1.dog_id = t2.dog_id
select t1.first_name, t1.last_name, t1.cell_number from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id where t1.state = "Indiana" union select t1.professional_id, t1.last_name, t1.cell_number from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id group by t1.professional_id having count(*) > 2
select t1.professional_id, t1.last_name, t1.cell_number from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id where t1.state = "Indiana" union select t1.professional_id, t1.last_name, t1.cell_number from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id group by t1.professional_id having count(*) > 2
select name from dogs except select t2.name from treatments as t1 join dogs as t2 on t1.dog_id = t2.dog_id where t1.cost_of_treatment > 1000
select name from dogs where dog_id not in (select dog_id from treatments group by dog_id having cost_of_treatment > 1000)
select first_name from professionals union select first_name from owners except select t2.first_name from dogs as t1 join professionals as t2 on t1.dog_id = t2.professional_id
select first_name from professionals union select first_name from owners except select t2.first_name from dogs as t1 join professionals as t2 on t1.dog_id = t2.professional_id
select professional_id, role_code, email_address from professionals except select t1.professional_id, t1.role_code, t1.email_address from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id
select professional_id, role_code, email_address from professionals except select t1.professional_id, t1.role_code, t1.email_address from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id
select t1.owner_id, t1.first_name, t1.last_name from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id group by t1.owner_id order by count(*) desc limit 1
select t1.owner_id, t1.first_name, t1.last_name from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id group by t1.owner_id order by count(*) desc limit 1
select t1.professional_id, t1.role_code, t1.first_name from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id group by t1.professional_id having count(*) >= 2
select t1.professional_id, t1.role_code, t1.first_name from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id group by t1.professional_id having count(*) >= 2
select t1.breed_name from breeds as t1 join dogs as t2 on t1.breed_code = t2.breed_code group by t2.breed_code order by count(*) desc limit 1
select t2.breed_name from dogs as t1 join breeds as t2 on t1.breed_code = t2.breed_code group by t1.breed_code order by count(*) desc limit 1
select t1.owner_id, t1.last_name from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id group by t1.owner_id order by count(*) desc limit 1
select t1.owner_id, t1.last_name from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id join treatments as t3 on t3.dog_id = t2.dog_id group by t1.owner_id order by sum(t3.cost_of_treatment) desc limit 1
select t1.treatment_type_description from treatment_types as t1 join treatments as t2 on t1.treatment_type_code = t2.treatment_type_code group by t1.treatment_type_code order by sum(t2.cost_of_treatment) asc limit 1
select t1.treatment_type_description from treatment_types as t1 join treatments as t2 on t1.treatment_type_code = t2.treatment_type_code group by t1.treatment_type_code order by sum(t2.cost_of_treatment) asc limit 1
select t1.owner_id, t1.zip_code from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id group by t1.owner_id order by sum(t2.charge_amount
select t1.owner_id, t1.zip_code from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id group by t1.owner_id order by sum(t2.cost_of_treatment
select t1.professional_id, t1.cell_number from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id group by t1.professional_id having count(*) >= 2
select t1.professional_id, t1.cell_number from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id group by t1.professional_id having count(*) >= 2
select t2.first_name, t2.last_name from treatments as t1 join professionals as t2 on t1.professional_id = t2.professional_id where t1.cost_of_treatment < ( select avg(cost_of_treatment) from treatments)
select t2.first_name, t2.last_name from treatments as t1 join professionals as t2 on t1.professional_id = t2.professional_id where t1.cost_of_treatment < ( select avg(cost_of_treatment) from treatments)
select date_of_treatment, t2.first_name from treatments as t1 join professionals as t2 on t1.professional_id = t2.professional_id
select t1.date_of_treatment, t2.first_name from treatments as t1 join professionals as t2 on t1.professional_id = t2.professional_id
select t1.cost_of_treatment, t2.treatment_type_description from treatments as t1 join treatment_types as t2 on t1.treatment_type_code = t2.treatment_type_code
select t1.cost_of_treatment, t2.treatment_type_description from treatments as t1 join treatment_types as t2 on t1.treatment_type_code = t2.treatment_type_code
select t2.first_name, t2.last_name, t1.size_code from dogs as t1 join owners as t2 on t1.owner_id = t2.owner_id
select t2.first_name, t2.last_name, t1.size_code from dogs as t1 join owners as t2 on t1.owner_id = t2.owner_id
select t2.first_name, t3.name from dogs as t1 join owners as t2 on t1.owner_id = t2.owner_id join dogs as t3 on t1.dog_id = t3.dog_id
select t2.first_name, t3.name from dogs as t1 join owners as t2 on t1.owner_id = t2.owner_id join dogs as t3 on t1.dog_id = t3.dog_id
select t2.name, t1.date_of_treatment from treatments as t1 join dogs as t2 on t1.dog_id = t2.dog_id where t2.breed_code = (select breed_code from dogs group by breed_code order by count(*) desc limit 1)
select name, date_of_treatment from treatments as t1 join dogs as t2 on t1.dog_id = t2.dog_id where t2.breed_code = (select breed_code from dogs group by breed_code order by count(*) desc limit 1)
select first_name, name from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id where t1.state = 'Virginia'
select first_name, last_name from owners where zip_code = "VA" intersect select t2.first_name, t2.name from owners as t1 join dogs as t2
select date_arrived, date_departed from dogs as t1 join treatments as t2 on t1.dog_id = t2.dog_id
select date_arrived, date_departed from dogs as t1 join treatments as t2 on t1.dog_id = t2.dog_id
select t2.last_name from dogs as t1 join owners as t2 on t1.owner_id = t2.owner_id order by t1.age asc limit 1
select t2.last_name from dogs as t1 join owners as t2 on t1.owner_id = t2.owner_id order by t1.age asc limit 1
select email_address from professionals where state = "Hawaii" or state = "Wisconsin"
select email_address from professionals where state = "Hawaii" or state = "Wisconsin"
select date_arrived, date_departed from dogs
select date_arrived, date_departed from dogs
select count(*) from treatments
select count(*) from treatments
select count(distinct professional_id) from treatments
select count(distinct professional_id) from treatments
select first_name, last_name, street, city, state from professionals where city like "%west%"
select role_code, street, city, state from professionals where city like "%west%"
select first_name, last_name, email_address from owners where state like '%north%'
select first_name, last_name, email_address from owners where state like '%north%'
select count(*) from dogs where age < (select avg(age) from dogs)
select count(*) from dogs where age < (select avg(age) from dogs)
select max(cost_of_treatment) from treatments
select cost_of_treatment from treatments order by date_of_treatment desc limit 1
select count(*) from dogs where dog_id not in ( select dog_id from treatments )
select count(*) from dogs where dog_id not in (select dog_id from treatments)
select count(*) from owners where owner_id not in (select owner_id from dogs)
select count(*) from owners where owner_id not in ( select owner_id from dogs )
select count(*) from professionals where professional_id not in ( select professional_id from treatments )
select count(*) from professionals where professional_id not in ( select professional_id from treatments )
select name, age, weight from dogs where abandoned_yn = '1'
select name, age, weight from dogs where abandoned_yn = '1'
select avg(age) from dogs
select avg(age) from dogs
select age from dogs order by age desc limit 1
select age from dogs order by age desc limit 1
select charge_type, charge_amount from charges group by charge_type
select charge_type, charge_amount from charges group by charge_type
select charge_type, max(charge_amount) from charges group by charge_type
select charge_amount from charges order by charge_type desc limit 1
select email_address, cell_number, home_phone from professionals
select email_address, cell_number, home_phone from professionals
select count(distinct breed_code), count(distinct size_code) from dogs
select distinct breed_code, size_code from dogs
select t2.first_name, t3.treatment_type_description from treatments as t1 join professionals as t2 on t1.professional_id = t2.professional_id join treatment_types as t3 on t1.treatment_type_code = t3.treatment_type_code
select t2.first_name, t3.treatment_type_description from treatments as t1 join professionals as t2 on t1.professional_id = t2.professional_id join treatment_types as t3 on t1.treatment_type_code = t3.treatment_type_code
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
select t2.title, t1.name from singer as t1 join song as t2 on t1.singer_id = t2.singer_id
select t2.title, t1.name from singer as t1 join song as t2 on t1.singer_id = t2.singer_id
select distinct t1.name from singer as t1 join song as t2 on t1.singer_id = t2.singer_id where t2.sales > 300000
select distinct t1.name from singer as t1 join song as t2 on t1.singer_id = t2.singer_id where t2.sales > 300000
select t1.name from singer as t1 join song as t2 on t1.singer_id = t2.singer_id group by t2.singer_id having count(*) > 1
select t1.name from singer as t1 join song as t2 on t1.singer_id = t2.singer_id group by t2.singer_id having count(*) > 1
select t3.name, sum(t2.sales) from singer as t1 join song as t2 on t1.singer_id = t2.singer_id join singer as t3 on t2.singer_id = t3.singer_id group by t3.singer_id
select t2.name, sum(t1.sales) from song as t1 join singer as t2 on t1.singer_id = t2.singer_id group by t2.name
select name from singer where singer_id not in (select singer_id from song)
select name from singer where singer_id not in (select singer_id from song)
select citizenship from singer where birth_year < 1945 intersect select citizenship from singer where birth_year > 1955
select citizenship from singer where birth_year < 1945 intersect select citizenship from singer where birth_year > 1955
select count(*) from other_available_features
select t1.feature_type_name from ref_feature_types as t1 join other_available_features as t2 on t1.feature_type_code = t2.feature_type_code where t2.feature_name = "AirCon"
select t1.property_type_description from ref_property_types as t1 join properties as t2 on t1.property_type_code = t2.property_type_code
select property_name from properties where property_type_code = "house" or room_count > 1
