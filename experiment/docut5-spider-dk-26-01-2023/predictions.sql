select count(*) from singer
select count(*) from singer
select name, country from singer order by age desc
select name, country from singer order by age desc
select avg(country), min(country), max(country) from singer
select avg(country), min(country), max(country) from singer
select t3.name, t2.song_release_year from singer_in_concert as t1 join song as t2 on t1.song_id = t2.song_id join singer as t3 on t1.song_id = t3.song_id order by t1.birthday desc limit 1
select name, song_release_year from singer order by birthday limit 1
select distinct country from singer where birth_year = 2001
select distinct country from singer where birth_year = 2001
select country, count(*) from singer group by country
select country, count(*) from singer group by country
select song_name from singer where age > (select avg(age) from singer)
select name from singer where birthday > (select avg(birthday) from singer)
select location, name from stadium where capacity between 5000 and 10000
select location, name from stadium where capacity between 5000 and 10000
select avg(capacity), max(capacity) from stadium
select avg(capacity), max(capacity) from stadium
select name, capacity from stadium order by average desc limit 1
select name, capacity from stadium order by average desc limit 1
select count(*) from concert where year > 2014
select count(*) from concert where year > 2014
select t2.name, count(*) from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id group by t1.stadium_id
select t2.name, count(*) from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id group by t1.stadium_id
select name, capacity from stadium order by capacity desc limit 1
select t2.name, t2.highest from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id join singer_in_concert as t3 on t1.song_id = t3.song_id where t1.year > 2013 group by t1.stadium_id order by avg(t1.attendance) desc limit 1
select concert_name from concert order by year desc limit 1
select concert_name from concert order by year desc limit 1
select highest from concert except select max(attendance) from concert
select min(attendance) from stadium where stadium_id not in (select stadium_id from concert)
select country from singer where birth_year = 1981 or birth_year = 1991
select average from stadium except select t2.name from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id where t1.year = 2014
select min(attendance) from stadium where stadium_id not in (select stadium_id from concert where year = 2014)
select t3.name, t3.theme, count(*) from singer_in_concert as t1 join concert as t2 on t1.concert_id = t2.concert_id join singer as t3 on t1.song_id = t3.song_id group by t3.concert_id
select t3.name, t3.theme, count(*) from singer_in_concert as t1 join concert as t2 on t1.song_id = t2.song_id join singer as t3 on t1.song_id = t3.song_id group by t3.concert_id
select t2.name, count(*) from singer_in_concert as t1 join concert as t2 on t1.song_id = t2.song_id group by t1.song_id
select t2.name, count(*) from singer_in_concert as t1 join concert as t2 on t1.song_id = t2.song_id group by t1.song_id
select t3.name from singer_in_concert as t1 join concert as t2 on t1.song_id = t2.song_id join singer as t3 on t1.song_id = t3.song_id where t2.year > 2014
select t3.name from singer_in_concert as t1 join concert as t2 on t1.song_id = t2.song_id join singer as t3 on t1.song_id = t3.song_id where t2.year < 2014
select t1.name, t1.country from singer as t1 join singer_in_concert as t2 on t1.song_id = t2.song_id where t2.song_name like "%hey%"
select t1.name, t1.country from singer as t1 join singer_in_concert as t2 on t1.song_id = t2.song_id where t2.song_name like "%hey%"
select min(attendance), max(attendance) from stadium as t1 join concert as t2 on t1.stadium_id = t2.stadium_id where t2.year = 2014 intersect select t1.lowest, t1.highest from stadium as t1 join concert as t2 on t1.stadium_id = t2.stadium_id where t2.year = 2015
select min(attendance), max(attendance) from stadium where year = 2014 intersect select t1.lowest, t1.highest from stadium as t1 join concert as t2 on t1.stadium_id = t2.stadium_id where t2.year = 2015
select count(*) from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id where t2.capacity = (select max(capacity) from stadium)
select count(*) from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id where t2.capacity = (select max(capacity) from stadium)
select count(*) from pets where weight > 10
select count(*) from pets where weight > 10
select t3.weight from has_pet as t1 join pets as t2 on t1.petid = t2.petid join student as t3 on t1.stuid = t3.stuid where t2.pettype = 'dog' and t3.birthdate = (select min(birthdate) from pets)
select weight from pets order by weight asc limit 1
select max(weight), pettype from pets group by pettype
select pettype, max(weight), max(weight) from pets group by pettype
select count(*) from pets as t1 join has_pet as t2 on t1.petid = t2.petid join student as t3 on t2.stuid = t3.stuid where t3.age > 20
select count(*) from pets as t1 join has_pet as t2 on t1.petid = t2.petid join student as t3 on t2.stuid = t3.stuid where t3.age > 20;
select count(*) from pets as t1 join has_pet as t2 on t1.petid = t2.petid join student as t3 on t2.stuid = t3.stuid where t3.sex = 'F'
select count(*) from pets where sex = 'F'
select count(distinct pettype) from pets
select count(distinct pettype) from pets
select distinct t1.fname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid where t2.pettype = 'kitties' or t2.pettype = 'pudding'
select distinct t1.fname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid join pets as t3 on t3.petid = t2.petid where t3.pettype = 'cat' or t3.lname = 'cat'
select t1.fname, t1.lname from has_pet as t1 join pets as t2 on t1.stuid = t2.stuid where t2.pettype = 'kitten' intersect select t1.lname from has_pet as t1 join pets as t2 on t1.stuid = t2.stuid where t2.pettype = 'dog'
select t1.fname from has_pet as t1 join pets as t2 on t1.petid = t2.petid where t2.pettype = 'kitties' intersect select t1.fname from has_pet as t1 join pets as t2 on t1.petid = t2.petid where t2.pettype = 'dog'
select major, age from student where stuid not in (select stuid from has_pet where birthdate like '%cat%')
select major, age from student where stuid not in (select stuid from has_pet)
select stuid from student except select stuid from has_pet where pettype = 'cat'
select stuid from has_pet except select stuid from pets
select fname, age from has_pet where stuid not in (select stuid from has_pet where pettype = 'dog')
select t1.fname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid where t2.pettype = 'dog' except select t1.fname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid where t2.pettype = 'cat'
select distinct t1.pettype, t1.weight from pets as t1 join has_pet as t2 on t1.petid = t2.petid order by t1.birthdate desc limit 1
select pettype, weigh from pets order by weight asc limit 1
select petid, weight from pets where birthdate > (select max(birthdate) from pets where birthdate like "2020%")
select t2.petid, t2.weight from has_pet as t1 join pets as t2 on t1.petid = t2.petid where t1.birthdate > (select max(age) from pets where birthdate like "2020)
select pettype, avg(petid), max(petid) from pets group by pettype
select pettype, avg(petid), max(petid) from pets group by pettype
select pettype, avg(petid), max(petid) from pets group by pettype
select pettype, avg(weight) from pets group by pettype
select t1.fname, t1.age from student as t1 join has_pet as t2 on t1.stuid = t2.stuid
select distinct t1.fname, t1.age from student as t1 join has_pet as t2 on t1.stuid = t2.stuid where t2.pettype = 'dog'
select t2.petid from has_pet as t1 join pets as t2 on t1.petid = t2.petid join student as t3 on t1.stuid = t3.stuid where t3.lname = 'Smith'
select stuid from has_pet as t1 join pets as t2 on t1.petid = t2.petid join student as t3 on t3.stuid = t1.stuid where t3.lname = 'Smith'
select count(*), t1.stuid from has_pet as t1 join pets as t2 on t1.petid = t2.petid group by t1.stuid
select count(*), t1.stuid from has_pet as t1 join pets as t2 on t1.petid = t2.petid group by t1.stuid
select t1.fname, t1.sex from student as t1 join has_pet as t2 on t1.stuid = t2.stuid group by t1.stuid having count(*) > 1
select t1.fname, t1.sex from student as t1 join has_pet as t2 on t1.stuid = t2.stuid group by t1.stuid having count(*) > 1
select t1.lname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid where t2.pettype = 'cat' and t2.birthdate = 2001
select t1.lname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid where t2.pettype = 'cat' and t2.birthdate = 2001
select avg(age) from student where stuid not in ( select stuid from has_pet );
select avg(age) from student where stuid not in (select stuid from has_pet)
select count(*) from continents
select count(*) from continents
select t1.continent, t1.continent, count(*) from continents as t1 join countries as t2 on t1.continent = t2.id group by t1.continent
select t1.continent, t1.countryname, count(*) from continents as t1 join countries as t2 on t1.continent = t2.id group by t1.continent
select count(distinct countryid) from countries
select count(distinct countryid) from countries
select t1.maker, count(*) from car_makers as t1 join model_list as t2 on t1.id = t2.car_id group by t1.id
select t1.maker, count(*) from car_makers as t1 join model_list as t2 on t1.id = t2.car_id group by t1.id
select t1.model from model_list as t1 join cars as t2 on t1.model = t2.id where t2.pumpg = (select min(pumpg) from cars_data)
select model from car_makers order by horsepower asc limit 1
select model from car_names where weight < (select avg(weight) from car_makers)
select model from model_list where weight < (select avg(weight) from cars_data)
select t1.maker from car_makers as t1 join models_data as t2 on t1.id = t2.car_id where t2.year = 2000
select distinct maker from model_list where year = 2
select t1.make, t1.production from car_makers as t1 join models_data as t2 on t1.id = t2.car_id where t2.year = (select min(year) from car_makers)
select maker, year from car_makers order by year asc limit 1
select distinct model from model_list where year < 1980
select distinct model from model_list where year < 1980
select t1.continent, count(*) from continents as t1 join car_makers as t2 on t1.contid = t2.id group by t1.contid
select t1.continent, count(*) from continents as t1 join car_makers as t2 on t1.id = t2.continent group by t1.continent
select t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.countryid group by t1.countryid order by count(*) desc limit 1
select t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.countryid group by t1.countryid order by count(*) desc limit 1
select count(*), t1.maker from car_makers as t1 join model_list as t2 on t1.id = t2.car_id group by t1.maker
select t1.id, t1.fullname from car_makers as t1 join model_list as t2 on t1.id = t2.car_id group by t1.id
select t1.accelerated from car_makers as t1 join model_list as t2 on t1.id = t2.car_id where t2.make = "amc" and t2.make = "amc hornet" and t1.sportabout = "sw"
select sum(t1.accelerated) from car_makers as t1 join model_list as t2 on t1.id = t2.car_id where t2.make = "amc" and t2.make = "amc hornet" and t1.sportabout = "sw"
select count(distinct maker) from car_makers where country = "Japanese"
select count(distinct maker) from countries where country = "Japanese"
select count(*) from car_makers where continent = 'america'
select count(*) from car_makers where country = "United States"
select avg(miles per gallon) from cars_data where cylinders = 4
select avg(miles per gallon) from cars_data where cylinders = 4
select min(weight) from car_makers where year = 1974 and cylinders = 8
select min(weight) from cars_data where year = 1974
select maker, model from car_makers
select maker, model from model_list
select t1.countryname, t1.id from countries as t1 join car_makers as t2 on t1.countryid = t2.countryid group by t1.countryid having count(*) >= 1
select t1.countryname, t1.id from countries as t1 join car_makers as t2 on t1.countryid = t2.countryid group by t1.countryid having count(*) >= 1
select count(*) from cars_makers where horsepower > 150
select count(*) from cars_makers where horsepower > 150
select avg(weight), year from cars group by year
select avg(weight), year from cars_data group by year
select t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.country where t2.continent = "europe" group by t1.country having count(*) >= 3
select t1.countryname from countries as t1 join continents as t2 on t1.countryid = t2.continent where t2.continent = "europe" group by t1.countryid having count(*) >= 3
select max(price), max(price), t1.make from car_makers as t1 join models as t2 on t1.id = t2.car_id where t2.cylinders = 3
select max(phphphphphphphphphphphphphphphphphphphphphphphphphphphphphphphphphphphphphphphphphphphphphphphphphphphphph
select model from cars_data group by model order by sum(miles per gallon) desc limit 1
select t1.model from model_list as t1 join cars as t2 on t1.model = t2.id order by t2.mpg desc limit 1
select avg(php) from cars_makers where year < 1980
select avg(php) from cars_data where year < 1980
select avg(edispl) from models where model = tesla
select avg(edispl) from cars_data
select max(elevation), count(*) from cylinders group by t1.id
select max(elevation), cylinders from cars_data group by cylinders
select model from model_list where make = (select max(make) from cars)
select model from model group by model order by count(*) desc limit 1
select count(*) from cars where cylinders > 4
select count(*) from cars where cylinders > 4
select count(*) from cars_makers where year = (select max(year) from cars_makers)
select count(*) from car_makers where make = 2
select count(distinct t1.id) from model_list as t1 join car_makers as t2 on t1.car_id = t2.id where t2.name = "American Motor"
select count(*) from model_list as t1 join car_makers as t2 on t1.modelid = t2.id where t2.name = "American Motor"
select t1.fullname, t1.id from car_makers as t1 join model_list as t2 on t1.id = t2.maker group by t1.id having count(*) > 3
select t1.maker, t1.id from car_makers as t1 join model_list as t2 on t1.id = t2.maker group by t1.maker having count(*) > 3
select distinct t1.model from model_list as t1 join car_makers as t2 on t1.maker = t2.id where t2.fullname = "General Motors" or t2.weight > 3500
select distinct t1.model from model_list as t1 join car_makers as t2 on t1.maker = t2.id where t2.fullname = "General Motors" or t2.weight > 3500
select year from cars_data where weight < 3000 intersect select year from cars_makers where weight < 4000
select distinct year from cars_data where weight < 4000 intersect select distinct year from cars_data where weight > 3000
select t1.pumpg from car_makers as t1 join accelerate as t2 on t1.id = t2.car_id group by t2.car_id order by sum(t2.spent) desc limit 1
select horsepower from cars_data order by accelerate desc limit 1
select t1.cylinders, count(*) from car_names as t1 join models as t2 on t1.id = t2.modelid where t2.speed = (select min(speed) from cars_data)
select count(*), t1.cylinders from model_list as t1 join cars as t2 on t1.model = t2.id where t2.edispl = (select t1.model from model_list as t1 join cars as t2 on t1.model = t2.id where t2.edispl = "2008" group by t1.modelid order by count(*) asc limit 1)
select count(*) from cars_data where accelerate > (select max(speed) from cars_data where horsepower = (select max(hph) from cars_makers)
select count(*) from cars_data where accelerate > (select max(accelerated) from cars_data where horsepower = (select max(pumpg) from cars_makers)
select count(distinct countryid) from car_makers group by continent having count(distinct countryid) > 2
select count(distinct countryid) from car_makers group by countryid having count(*) > 2
select count(*) from cars where cylinders > 6
select count(*) from cars_data where cylinders > 6
select t1.model from car_names as t1 join cars_data as t2 on t1.model = t2.id where t2.cylinders = 4 order by t2.pumpg desc limit 1
select t1.id from car_names as t1 join models as t2 on t1.model = t2.id where t2.cylinders = 4 and t2.pumpg = (select max(pumpg) from cars_data)
select t1.makeid, t1.makeid from car_names as t1 join cars_data as t2 on t1.car_id = t2.id where t2.pumpg > 3 except select t1.makeid, t1.makeid from car_names as t1 join cars_data as t2 on t1.car_id = t2.id where t2.pumpg > 3
select id, make from cars_names where mpg = (select min(pumpg) from cars_data) and cylinders < 4
select max(miles per gallon) from cars_data where cylinders < 1980
select max(mpg) from cars_data where cylinders >= 8 union select max(mpg) from cars_data where year < 1980
select model from model_list where weight < 3500 except select model from car_makers where model = 'Ford Motor'
select distinct model from model_list where weight < 3500 except select distinct model from car_makers where model = "Ford"
select countryname from countries where countryid not in (select countryid from car_makers)
select countryname from countries where countryid not in (select countryid from car_makers)
select t1.id, t1.maker from car_makers as t1 join model_list as t2 on t1.id = t2.car_id group by t1.id having count(*) >= 2 intersect select t1.id, t1.maker from car_makers as t1 join model_list as t2 on t1.id = t2.car_id group by t1.id having count(*) > 3
select t1.id, t1.maker from car_makers as t1 join model_list as t2 on t1.id = t2.car_id group by t1.id having count(*) >= 2 intersect select t1.id, t1.maker from car_makers as t1 join models as t2 on t1.car_id = t2.id group by t1.id having count(*) > 3
select t1.countryid, t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.countryid where t2.maker = 'tesla' union select t1.countryid, t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.countryid group by t1.countryid having count(*) > 3
select t1.id, t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.countryid group by t1.countryid having count(*) > 3 union select t1.countryid, t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.countryid where t2.maker = "Telas"
select country from airlines where airline = 'JetBlue'
select country from airlines where abbreviation = 'JetBlue Airways'
select abbreviation from airlines where abbreviation = 'JetBlue'
select abbreviation from airlines where abbreviation = 'JetBlue'
select t1.airport, t1.abbreviation from airlines as t1 join flights as t2 on t1.uid = t2.airport where t1.abbreviation = 'American Airlines'
select t1.airportname, t1.abbreviation from airlines as t1 join flights as t2 on t1.uid = t2.airport where t1.abbreviation = 'American Airlines'
select airportcode, airportname from airports where city like "%jenna%"
select airportcode, airportname from airports where city like "%sylvania%"
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
select airportname from airports where airportname = 'Jackson'
select airportname from airports where city = 'Janessa'
select count(*) from flights where sourceairport = 'APG'
select count(*) from flights where sourceairport = 'APG'
select count(*) from flights where airportcode = 'ATO'
select count(*) from flights where airportcode = 'ATO'
select count(*) from flights where destairport = "Janessa"
select count(*) from flights where destairport = "Janessa"
select count(*) from flights where city = "Janessa"
select count(*) from flights where country = 'Janessa'
select count(*) from flights where city = 'Syracuse' and city = 'Ashley'
select count(*) from flights as t1 join airports as t2 on t1.airport = t2.airport where t2.city = 'Staford' and t2.airportname = 'Ashley'
select count(*) from airlines as t1 join flights as t2 on t1.uid = t2.airport where t1.abbreviation = 'JetBlue'
select count(*) from airlines as t1 join flights as t2 on t1.uid = t2.airport where t1.abbreviation = 'JetBlue Airways'
select count(*) from flights as t1 join airports as t2 on t1.airport = t2.sourceairport where t2.airportcode = 'ASY'
select count(*) from flights as t1 join airports as t2 on t1.airport = t2.airport where t2.airportcode = 'ASY'
select count(*) from flights as t1 join airports as t2 on t1.airport = t2.airport where t2.airport = 'AHD' and t2.fleetno = 'JetBlue'
select count(*) from flights as t1 join airports as t2 on t1.airport = t2.airport where t2.airport = 'AHD'
select count(*) from flights as t1 join airports as t2 on t1.airport = t2.airport where t2.city = 'Aberdeen'
select count(*) from flights as t1 join airports as t2 on t1.airport = t2.destairport where t2.city = 'Aberdeen'
select city from flights group by city order by count(*) desc limit 1
select city from airport group by city order by count(*) desc limit 1
select city from flights group by city order by count(*) desc limit 1
select city from airports group by city order by count(*) desc limit 1
select airportcode from flights group by airportcode order by count(*) desc limit 1
select t1.airportcode from airports as t1 join flights as t2 on t1.airport = t2.airport group by t1.airportcode order by count(*) desc limit 1
select airportcode from flights group by airportcode order by count(*) limit 1
select airportcode from flights group by airportcode order by count(*) asc limit 1
select airline from flights group by airline order by count(*) desc limit 1
select t2.aircraft from flights as t1 join airlines as t2 on t1.airport = t2.airport group by t2.airport order by count(*) desc limit 1
select t1.abbreviation, t1.country from airlines as t1 join flights as t2 on t1.uid = t2.airport group by t2.uid order by count(*) limit 1
select abbreviation, country from flights group by countryabbrev order by count(*) limit 1
select t1.aircraft from airlines as t1 join flights as t2 on t1.uid = t2.airport where t2.airport = 'AHD'
select t1.aircraft from airlines as t1 join flights as t2 on t1.uid = t2.airport where t2.sourceairport = 'AHD'
select t1.aircraft from airlines as t1 join flights as t2 on t1.uid = t2.airport where t2.airport = 'AHD'
select t1.aircraft from airlines as t1 join flights as t2 on t1.uid = t2.airport where t2.airport = 'AHD'
select t1.aircraft from airlines as t1 join flights as t2 on t1.uid = t2.airport where t2.airport = 'APG' intersect select t1.aircraft from airlines as t1 join flights as t2 on t1.airport = t2.airport where t2.airport = 'CVO'
select t1.airline from airlines as t1 join flights as t2 on t1.uid = t2.airport where t2.airportcode = 'APG' intersect select t1.airline from airlines as t1 join flights as t2 on t1.airport = t2.airport where t2.destairport = 'CVO'
select t1.aircraft from airlines as t1 join flights as t2 on t1.uid = t2.airport where t2.airport = 'CVO' except select t1.aircraft from airlines as t1 join flights as t2 on t1.uid = t2.airport where t2.airport = 'APG'
select t1.aircraft from airlines as t1 join flights as t2 on t1.uid = t2.airport where t2.airport = "CVO" except select t1.aircraft from airlines as t1 join flights as t2 on t1.airport = t2.airport where t2.airport = "APG"
select t1.aircraft from airlines as t1 join flights as t2 on t1.uid = t2.airport group by t2.uid having count(*) >= 10
select t1.aircraft from airlines as t1 join flights as t2 on t1.uid = t2.airport group by t1.uid having count(*) >= 10
select airline from flights group by airline having count(*) < 200
select airline from flights group by airline having count(*) < 200
select flightno from flights where abbreviation = "JetBlue"
select flightno from flights where abbreviation = "JetBlue"
select flightno from flights where sourceairport = "APG"
select flightno from flights where sourceairport = 'APG'
select flightno from flights where sourceairport = "APG"
select flightno from flights where airportcode = 'APG'
select flightno from flights where flight from "Jackson"
select flightno from flights where destairport = "Janessa"
select flightno from flights where airport = "Jackson"
select flightno from flights where country = 'Janessa'
select count(*) from flights where city = "Sylvania" or city = "Janessa"
select count(*) from flights where city = "Sylvania" or city = "Janessa"
select airportname from airports where airportcode not in (select airportname from flights)
select airportname from airports except select t1.airport from airports as t1 join flights as t2 on t1.airport = t2.airportport
select count(*) from documents
select count(*) from documents
select document_id, document_name, document_description from documents
select document_id, document_name, document_description from documents
select t1.document_name from documents as t1 join templates as t2 on t1.freeze_id = t2.freeze_id where t2.document_description like '%w%'
select document_name, template_id from documents where document_description like "%w%"
select document_description, template_id from documents where document_name = "Robbin CV"
select document_description, template_id from documents where document_name = "Robbin CV"
select count(distinct template_id) from documents
select count(distinct template_id) from documents
select count(*) from templates where template_type_code = "PPT"
select count(*) from templates where template_type_code = "PPT"
select template_id, count(*) from documents group by template_id
select count(*), t1.type_id from templates as t1 join documents as t2 on t1.type_id = t2.type_id group by t1.type_id
select t1.date_effective_to from templates as t1 join documents as t2 on t1.model_id = t2.model_id group by t1.model_id order by count(*) desc limit 1
select t1.date_effective_to from templates as t1 join documents as t2 on t1.model_id = t2.model_id group by t1.model_id order by count(*) desc limit 1
select template_id from documents group by template_id having count(*) > 1
select template_id from documents group by template_id having count(*) > 1
select template_id from templates except select template_id from documents
select template_id from templates except select template_id from documents
select count(*) from templates
select count(*) from templates
select date_effective_from, template_type_code from templates
select date_effective_from, template_type_code from templates
select date_effective_to from templates
select date_effective_from from templates
select date_effective_to from templates where template_type_code = 'PP' or template_type_code = 'PPT'
select date_effective_to from templates where template_type_code = 'PP' or template_type_code = 'PPT'
select date_effective_to from documents as t1 join templates as t2 on t1.model_id = t2.model_id where t2.model_type_code = "CV"
select date_effective_to from templates where template_type_code = "CV"
select date_effective_from, template_type_code from templates where version_number < 5
select date_effective_from, template_type_code from templates where version_number > 5
select date_effective_from, count(*) from templates group by date_effective_to
select date_effective_to, count(*) from templates group by date_effective_to
select date_effective_to from templates group by date_effective_to order by count(*) desc limit 1
select date_effective_to from templates group by date_effective_to order by count(*) desc limit 1
select date_effective_to from documents group by date_effective_to having count(*) < 3
select date_effective_to from templates group by date_effective_to having count(*) < 3
select min(version_number), date_effective_to from templates intersect select min(date_effective_to), date_effective_to from documents
select version_number, date_effective_to from templates order by date_effective_from limit 1
select t1.date_effective_to from templates as t1 join documents as t2 on t1.model_id = t2.model_id where t2.document_name = "Data base"
select t1.date_effective_to from templates as t1 join documents as t2 on t1.model_id = t2.model_id where t2.document_name = "Data base"
select document_name, template_id from documents where template_type_code = "BK"
select t1.document_name, t1.document_id from documents as t1 join templates as t2 on t1.document_id = t2.document_id where t2.model_type_code = "BK"
select date_effective_from, date_effective_to, count(*) from documents group by template_type_code
select date_effective_from, date_effective_to, count(*) from documents group by template_type_code
select date_effective_to from documents group by date_effective_to order by count(*) desc limit 1
select date_effective_to from documents group by date_effective_to order by count(*) desc limit 1
select date_effective_from, date_effective_to from documents where document_id not in (select document_id from documents)
select date_effective_from, date_effective_to from documents where document_id not in (select document_id from documents)
select template_type_code, template_type_description from ref_template_types
select template_type_code, template_type_description from ref_template_types
select template_type_description from ref_template_types where template_type_code = "AD"
select t1.type_description from ref_template_types as t1 join templates as t2 on t1.template_type_code = t2.template_type_code where t2.type_type_code = "AD"
select template_type_code from ref_template_types where template_type_description = "Book"
select template_type_code from ref_template_types where template_type_description = "Book"
select distinct t1.model_type_description from ref_template_types as t1 join templates as t2 on t1.template_type_code = t2.template_type_code
select distinct t1.type_description from ref_template_types as t1 join templates as t2 on t1.template_type_code = t2.template_type_code
select date_effective_from from templates where template_type_description like "%presentation%"
select date_effective_to from templates where template_type_description = 'Presentation'
select t1.player_name, t2.player_name from players as t1 join matches as t2 on t1.player_id = t2.player_id group by t2.player_name
select t1.player_name, t2.player_name from players as t1 join matches as t2 on t1.player_id = t2.player_id
select t1.age, t2.match_name from matches as t1 join players as t2 on t1.player_id = t2.player_id group by t2.match_age
select t1.age, t2.match_age from matches as t1 join players as t2 on t1.player_id = t2.player_id group by t2.match_age
select first_name, birth_date from players where country_code = "USA"
select first_name, birth_date from players where country_code = "USA"
select avg(loser_age), avg(winner_age) from matches
select avg(loser_age), avg(winning_age) from matches
select avg(t1.rank), t2.winner_rank from matches as t1 join rankings as t2 on t1.winning_id = t2.winner_ioc group by t2.winner_rank
select avg(t1.loser_rank), t2.winner_rank from matches as t1 join players as t2 on t1.winner_id = t2.winner_id group by t2.winner_rank
select max(t2.rank_rank), t2.winner_rank from matches as t1 join players as t2 on t1.player_id = t2.player_id group by t2.winner_rank order by count(*) desc limit 1
select t1.best_rank, t2.winner_rank_points from matches as t1 join players as t2 on t1.player_id = t2.player_id where t1.winner_rank = 'L' group by t1.winner_rank
select count(distinct country_code) from players
select count(distinct country_code) from players
select count(distinct loser_name) from players
select count(distinct loser_name) from the world
select tourney_name from matches group by tourney_name having count(*) > 10
select tourney_name from matches group by tourney_name having count(*) > 10
select t2.player_name, t1.winner_name from matches as t1 join players as t2 on t1.player_id = t2.winner_id where t1.year = 2013 intersect select t2.player_name from matches as t1 join players as t2 on t1.player_id = t2.player_id where t1.year = 2016
select t2.player_name from matches as t1 join players as t2 on t1.player_id = t2.winner_id where t1.year = 2013 intersect select t2.player_name from matches as t1 join players as t2 on t1.player_id = t2.player_id where t1.year = 2016
select t2.player_name from matches as t1 join players as t2 on t1.player_id = t2.player_id where t1.year = 2013 or t1.year = 2016 group by t2.player_name
select t2.player_name from matches as t1 join players as t2 on t1.player_id = t2.player_id where t1.year = 2013 or t1.year = 2016
select t1.country_code, t1.first_name from players as t1 join matches as t2 on t1.player_id = t2.player_id join tourney_date as t3 on t2.turnal_id = t3.turnal_id where t3.turnal_name = "WTA Championships" intersect select t1.country_code, t1.first_name from players as t1 join matches as t2 on t1.player_id = t2.player_ioc where t3.turnal_name = "Australian Open"
select t1.first_name, t1.country_code from players as t1 join matches as t2 on t1.player_id = t2.player_id where t2.turner_name = "WTA Championships" intersect select t1.first_name, t1.country_code from players as t1 join matches as t2 on t1.player_id = t2.player_id where t2.turner_name = "Australian Open"
select first_name, country_code from players order by birth_date desc limit 1
select first_name, country_code from players order by birth_date desc limit 1
select first_name, last_name from players order by birth_date
select first_name, last_name from players order by birth_date desc
select t1.first_name, t1.last_name from players as t1 join matches as t2 on t1.player_id = t2.player_id where t2.left_handed = 'L' order by t2.birth_date
select player_name from players where hand = "left" order by birth_date
select t1.first_name, t1.country_code from players as t1 join tours as t2 on t1.player_id = t2.player_id group by t2.player_id order by count(*) desc limit 1
select t1.first_name, t1.country_code from players as t1 join tours as t2 on t1.player_id = t2.player_id group by t2.player_id order by count(*) desc limit 1
select year from matches group by year order by count(*) desc limit 1
select year from matches group by year order by count(*) desc limit 1
select t1.player_name, t1.winning_rank_points from players as t1 join rankings as t2 on t1.player_id = t2.winner_id group by t1.player_id order by count(*) desc limit 1
select t1.player_name, t2.winning_rank_points from players as t1 join rankings as t2 on t1.player_id = t2.winner_id group by t1.player_id order by count(*) desc limit 1
select t1.player_name, t3.winner_name from players as t1 join matches as t2 on t1.player_id = t2.player_id join tourney as t3 on t2.turner_id = t3.turner_id where t2.winner_name = "Australian Open" group by t2.winner_name order by count(*) desc limit 1
select t1.player_name, t1.winner_name from players as t1 join matches as t2 on t1.player_id = t2.player_id where t2.winner_rank_points = (select max(winner_rank) from matches as t3 join tourney_name as t4 on t3.turner_name = 'Australian Open')
select t1.player_name, t2.player_name from matches as t1 join players as t2 on t1.player_id = t2.player_id group by t2.player_name order by count(*) desc limit 1
select t2.winner_name, t1.winner_name from matches as t1 join loser_in as t2 on t1.winner_id = t2.winner_ioc order by t1.year desc limit 1
select avg(t2.rank), t2.first_name from rankings as t1 join players as t2 on t1.player_id = t2.player_id group by t2.player_id
select t1.first_name, avg(t2.rank_points) from players as t1 join rankings as t2 on t1.player_id = t2.player_id group by t1.player_id
select sum(t2.rank_points), t2.player_name from rankings as t1 join players as t2 on t1.player_id = t2.player_id group by t1.player_id
select t1.player_name, sum(t2.rank_points) from players as t1 join rankings as t2 on t1.player_id = t2.player_id group by t1.player_id
select country_code, count(*) from players group by country_code
select country_code, count(*) from players group by country_code
select country_code from players group by country_code order by count(*) desc limit 1
select country_code from players group by country_code order by count(*) desc limit 1
select country_code from players group by country_code having count(*) > 50
select country_code from players group by country_code having count(*) > 50
select sum(t1.tours), t2.rank from rankings as t1 join tours as t2 on t1.rank_date = t2.rank_date group by t2.rank_date
select sum(t1.tours), t2.rank from rankings as t1 join tours as t2 on t1.rank_date = t2.rank_date group by t1.rank_date
select count(*), year from matches group by year
select year, count(*) from matches group by year
select t2.winning_name, t2.winning_rank from matches as t1 join rankings as t2 on t1.winning_id = t2.winning_id order by t1.year limit 3
select t2.winning_name, t2.winning_rank from matches as t1 join rankings as t2 on t1.winning_id = t2.winning_id order by t1.year limit 3
select count(distinct winner_id) from matches where tourney_name = "WTA Championships" and hand = "left handed"
select count(*) from players as t1 join matches as t2 on t1.winner_id = t2.winner_id where t1.winner_name = "left" and t2.turner_name = "WTA Championships"
select t1.winning_name, t1.birth_date from players as t1 join matches as t2 on t1.player_id = t2.winner_id order by t2.winner_rank desc limit 1
select t1.first_name, t1.birth_date from players as t1 join rankings as t2 on t1.player_id = t2.winner_id group by t1.player_id order by count(*) desc limit 1
select hand, count(*) from players group by hand
select hand, count(*) from players group by hand
select distinct line_1 from addresses
select line_3 from addresses
select count(*) from show
select count(*) from show as t1 join show as t2 on t1.show_id = t2.if_first_show
select name from conductor order by age asc
select name from conductor order by age
select name from conductor where nationality = 'USA'
select name from conductor where nationality = 'USA'
select record_company from orchestra order by year_of_founded desc
select record_company from orchestra order by year_of_founded
select avg(attendance) from show where if_first_show!= 'T'
select avg(attendance) from show where if_first_show!= 'T'
select max(share), min(share) from performance where type!= "Live final"
select max(share), min(share) from performance where type!= "Live final"
select count(distinct nationality) from conductor
select count(distinct nationality) from conductor
select name from conductor order by age asc
select name from conductor order by age asc
select name from conductor order by year_of_work desc limit 1
select name from conductor order by year_of_work desc limit 1
select t2.name, t3.name from performance as t1 join orchestra as t2 on t1.orchester_id = t2.orchester_id join conductor as t3 on t1.orchester_id = t3.orchester_id
select t2.name, t3.name from performance as t1 join orchestra as t2 on t1.orchester_id = t2.orchester_id join perform as t3 on t1.orchester_id = t3.orchester_id
select t2.name from performance as t1 join orchestra as t2 on t1.orchester_id = t2.orchester_id group by t1.orchester_id having count(*) > 1
select t2.name from performance as t1 join conductor as t2 on t1.orchester_id = t2.orchester_id group by t1.orchester_id having count(*) > 1
select t2.name from performance as t1 join orchestra as t2 on t1.orchester_id = t2.orchester_id group by t1.orchester_id order by count(*) desc limit 1
select t2.name from performance as t1 join orchestra as t2 on t1.orchester_id = t2.orchester_id group by t1.orchester_id order by count(*) desc limit 1
select t2.name from performance as t1 join orchestra as t2 on t1.orchester_id = t2.orchester_id order by t2.year_of_work desc limit 1
select t2.name from performance as t1 join conductor as t2 on t1.orchester_id = t2.orchester_id order by t1.year_of_work desc limit 1
select record_company, count(*) from orchestra group by record_company
select record_company, count(*) from orchestra group by record_company
select major_record_format from orchestra order by age asc
select major_record_format from orchestra order by age
select record_company from orchestra order by share desc limit 1
select record_company from orchestra order by year_of_founded desc limit 1
select orchestra from orchestra where orchestra_id not in (select orchestra_id from performance)
select orchestra from orchestra except select t1.orchester from performance as t1 join orchestra as t2 on t1.orchester_id = t2.orchester_id
select record_company from orchestra where year_of_founded < 2003
select record_company from orchestra where year_of_founded >= 2003
select count(*) from show as t1 join show as t2 on t1.show_id = t2.show_id where t1.result = 'Glebe Park'
select count(*) from show as t1 join show as t2 on t1.show_id = t2.show_id where t1.result = 'Glebe Park'
select type from performance where if_first_show > 1
select type from performance where if_first_show > 1
select state from professionals intersect select state from owners
select state from owners intersect select state from professionals
select avg(age) from dogs where dog_id in ( select t1.dog_id from treatments as t1 join dogs as t2 on t1.treatment_id = t2.treatment_id group by t1.dog_id having count(*) > 0
select avg(t1.age) from dogs as t1 join treatment_types as t2 on t1.dog_id = t2.dog_id group by t2.dog_id having count(*) >= 2
select t1.professional_id, t1.last_name, t2.cell_number from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id where t1.state = "Indiana" or t2.cost_of_treatment > 2
select t1.professional_id, t1.last_name, t2.cell_number from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id where t1.state = "Indiana" or t2.cost_of_treatment > 2
select dog_name from dogs where owner_id not in (select dog_id from treatment_types group by dog_id having cost_of_treatment > 1000)
select t2.name from treatments as t1 join dogs as t2 on t1.dog_id = t2.dog_id group by t2.owner_id having count(*) > 1000
select first_name from professionals union select first_name from owners except select t1.first_name from dogs as t1 join treatments as t2 on t1.dog_id = t2.professional_id
select first_name from professionals union select first_name from owners except select t1.first_name from dogs as t1 join treatments as t2 on t1.dog_id = t2.dog_id join professionals as t3 on t2.professional_id = t3.professional_id
select t1.professional_id, t1.first_name, t1.last_name from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id where t2.race_of_treatment = 'dogs'
select t1.professional_id, t1.first_name, t1.last_name from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id except select t1.professional_id, t1.last_name from professionals as t1 join dogs as t2 on t1.professional_id = t2.treatment_id
select t1.owner_id, t1.name from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id group by t1.owner_id order by count(*) desc limit 1
select t1.owner_id, t1.last_name from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id group by t1.owner_id order by count(*) desc limit 1
select t1.professional_id, t1.home_phone, t1.professional_id from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id group by t1.professional_id having count(*) >= 2
select t1.professional_id, t1.home_phone, t1.home_phone from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id group by t1.professional_id having count(*) >= 2
select t2. breed_name from abandoned_yn as t1 join dogs as t2 on t1.dog_id = t2.dog_id group by t2. breed_code order by count(*) desc limit 1
select t2. breed_name from abandoned_yn as t1 join dogs as t2 on t1.dog_id = t2.dog_id group by t2. breed_code order by count(*) desc limit 1
select t1.owner_id, t1.last_name from owners as t1 join treatments as t2 on t1.owner_id = t2.owner_id group by t1.owner_id order by count(*) desc limit 1
select t1.owner_id, t1.last_name from owners as t1 join treatments as t2 on t1.owner_id = t2.owner_id group by t1.owner_id order by count(*) desc limit 1
select treatment_type_description from treatments group by treatment_type_code order by sum(cost_of_treatment) asc limit 1
select treatment_type_description from treatments group by treatment_type_code order by sum(cost_of_treatment) limit 1
select t1.owner_id, t1.zip_code from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id group by t1.owner_id order by sum(t2.salary) desc limit 1
select t1.owner_id, t1.zip_code from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id group by t1.owner_id order by sum(t2.admission) desc limit 1
select t1.professional_id, t1.name from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id group by t1.professional_id having count(*) >= 2
select t1.professional_id, t1.home_phone, t1.home_phone from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id group by t1.professional_id having count(*) >= 2
select t1.first_name, t1.last_name from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id where t2.cost_of_treatment < ( select avg(cost_of_treatment) from treatments )
select t2.first_name, t2.last_name from treatments as t1 join professionals as t2 on t1.professional_id = t2.professional_id where t1.cost_of_treatment < ( select avg(cost_of_treatment) from treatments )
select t1.date_of_treatment, t1.name from treatments as t1 join professionals as t2 on t1.professional_id = t2.professional_id
select t2.date_of_treatment, t1.first_name, t1.last_name from treatments as t1 join professionals as t2 on t1.professional_id = t2.professional_id
select t1.cost_of_treatment, t2.treatment_type_description from treatment_types as t1 join treatments as t2 on t1.treatment_type_code = t2.treatment_type_code
select t2.cost_of_treatment, t1.treatment_type_description from treatments as t1 join treatment_types as t2 on t1.treatment_type_code = t2.treatment_type_code
select t1.first_name, t1.last_name, t1.size_code from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id group by t1.owner_id
select t1.first_name, t1.last_name, t1.size_code from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id group by t1.owner_id
select t2.first_name, t2.last_name, t1.name from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id
select t2.owner_name, t1.name from dogs as t1 join owners as t2 on t1.owner_id = t2.owner_id
select t2.name, t1.date_of_treatment from treatments as t1 join dogs as t2 on t1.dog_id = t2.dog_id group by t2.dog_name order by count(*) desc limit 1
select t2.name, t1.date_of_treatment from treatments as t1 join dogs as t2 on t1.dog_id = t2.dog_id group by t2.dog_name order by count(*) desc limit 1
select t2.first_name, t2.last_name from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id where t1.city = 'VA'
select t2.first_name, t2.last_name from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id where t1.street = 'VA'
select date_arrived, date_departed from treatments as t1 join dogs as t2 on t1.dog_id = t2.dog_id
select date_of_treatment from treatments order by date_arrived asc limit 1
select t1.last_name from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id order by t2.date_of_birth desc limit 1
select t2.last_name from dogs as t1 join owners as t2 on t1.owner_id = t2.owner_id order by t1.age limit 1
select email_address from professionals where state = 'HI' or state = 'WI'
select email_address from professionals where state = 'HI' or state = 'WI'
select date_arrived, date_adopted from dogs where abandoned_yn = '1'
select date_arrived, date_adopted from dogs where abandoned_yn = '1'
select count(*) from dogs where date_arrived not in ( select dog_id from treatments )
select count(*) from dogs as t1 join treatment_types as t2 on t1.dog_id = t2.treatment_id group by t1.dog_id
select count(distinct professional_id) from treatments
select count(distinct professional_id) from treatments
select first_name, last_name from professionals where city like '%west%'
select first_name from professionals where city like '%west%'
select owner_name from owners where state like '%n%'
select distinct t2.name from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id where t1.state like '%ny%'
select count(*) from dogs where age < (select avg(age) from dogs)
select count(*) from dogs where age < (select avg(age) from dogs)
select max(cost_of_treatment) from treatments
select cost_of_treatment from treatments order by date_of_treatment desc limit 1
select count(*) from dogs where abandoned_yn not in ( select abandoned_yn from treatment_types )
select count(*) from dogs where dog_id not in ( select dog_id from treatment_types )
select count(*) from owners where owner_id not in ( select owner_id from dogs where abandoned_yn = '1' )
select count(*) from owners where owner_id not in ( select owner_id from dogs );
select count(*) from professionals where professional_id not in ( select professional_id from treatments )
select count(*) from professionals where professional_id not in ( select professional_id from treatments )
select name, age, weight from dogs where abandoned_yn = '1' and 0 = 'null'
select name, age, weight from dogs where abandoned_yn = '1' and 0 = 0
select avg(t1.age) from dogs as t1 join abandoned_yn as t2 on t1.dog_id = t2.dog_id
select avg(age) from dogs where abandoned_yn = '1'
select age from dogs order by age desc limit 1
select age from dogs order by age desc limit 1
select charge_type, charge_amount from charges group by charge_type
select charge_type, charge_amount from charges;
select charge_type, sum(charge_amount) from charges group by charge_type order by sum(charge_type) desc limit 1;
select charge_amount from charges order by charge_type desc limit 1
select email_address, email_address from professionals
select email_address, email_name from professionals
select breed_type, size_code from sizes
select distinct breed_type, size_code from dogs
select t2.first_name, t2.last_name, t1.treatment_type_description from treatments as t1 join professionals as t2 on t1.professional_id = t2.professional_id
select t2.professional_first_name, t2.treatment_type_description from treatments as t1 join professionals as t2 on t1.professional_id = t2.professional_id
select count(*) from singer
select count(*) from singer
select name from singer order by birth_year asc
select name from singer order by birth_year asc
select birth_year, citizenship from singer
select birth_year, citizenship from singer
select name from singer where citizenship!= "France"
select name from singer where citizenship!= "France"
select name from singer where birth_year < 1948 or birth_year >= "Song_id"
select name from singer where birth_year < 1948 or birth_year >= "Song_id"
select name from singer order by birth_year asc limit 1
select name from singer order by birth_year asc limit 1
select citizenship, count(*) from singer group by citizenship
select citizenship, count(*) from singer group by citizenship
select citizenship from singer group by citizenship order by count(*) desc limit 1
select citizenship from singer group by citizenship order by count(*) desc limit 1
select citizenship, max(net_worth_millions) from singer group by citizenship
select citizenship, max(net_worth_millions) from singer group by citizenship
select title from song order by sales desc limit 1
select title from song order by sales desc limit 1
select distinct t1.name from singer as t1 join song as t2 on t1.song_id = t2.song_id where t2.sales > 300000
select distinct t1.name from singer as t1 join song as t2 on t1.song_id = t2.song_id where t2.sales > 300000
select t1.name from singer as t1 join song as t2 on t1.song_id = t2.song_id group by t1.song_id having count(*) > 1
select t1.name from singer as t1 join song as t2 on t1.song_id = t2.song_id group by t1.song_id having count(*) > 1
select t1.name, max(t2.highest_position) from singer as t1 join song as t2 on t1.song_id = t2.song_id group by t1.song_id
select t1.name, max(t2.highest_position) from singer as t1 join song as t2 on t1.song_id = t2.song_id group by t1.song_id
select name from singer where singer_id not in (select singer_id from song)
select title from song where singer_id not in (select singer_id from song)
select citizenship from singer where birth_year < 1945 or birth_year = 1945
select citizenship from singer where birth_year < 1945 or birth_year = 1945
