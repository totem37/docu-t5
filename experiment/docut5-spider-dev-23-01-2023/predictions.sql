select count(*) from singer
select count(*) from singer
select t1.name, t1.country from singer as t1 join singer_in_concert as t2 on
select name, country from singer order by birthday desc
select avg(country), min(country), max(country) from singer
select avg(country), min(country), max(country) from singer
select name, song_release_year from singer order by birthday limit 1
select name, song_release_year from singer order by birthday limit 1
select distinct country from singer as t1 join singer_in_concert as t2 on
select distinct country from singer as t1 join singer_in_concert as t2 on
select country, count(*) from singer group by country
select country, count(*) from singer group by country
select song_name from singer order by average
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
select t2.name, t2.highest from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id join concert as t3 on t1.concert_id = t3.concert_id where t1.year > 2013 group by t1.stadium_id order by count(*) desc limit 1
select concert_name from concert order by year desc limit 1
select concert_name from concert order by year desc limit 1
select max(t1.highest) from stadium as t1 join singer_in_concert as t2 on t1.stadium_id = t2.stadium_id
select lowest from stadium where stadium_id not in (select stadium_id from concert)
select country from singer where birth
select average from stadium except select t2.name from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id where t1.year = 2014
select min(t2.lowest) from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id where t1.year!= 2014
select t2.concert_name, t2.theme, count(*) from singer_in_concert as t1 join concert as t2 on t1.concert_id = t2.concert_id group by t1.concert_id
select t3.name, t3.theme, count(*) from singer_in_concert as t1 join concert as t2 on t1.concert_id = t2.concert_id join singer as t3
select t3.name, count(*) from singer_in_concert as t1 join concert as t2 on t1.concert_id = t2.concert_id join
select t3.name, count(*) from singer_in_concert as t1 join concert as t2 on t1.concert_id = t2.concert_id join singer as t3 on
select t3.name from singer_in_concert as t1 join concert as t2 on t1.concert_id = t2.concert_id join singer as t3 on
select t3.name from singer_in_concert as t1 join concert as t2 on t1.concert_id = t2.concert_id join
select name, country from singer where song_name like '%hey%'
select name, country from singer where song_name like '%hey%'
select
select max(t2.highest), min(t1.highest) from stadium as t1 join concert on t1.stadium_id = t2.stadium_id join singer_in_concert as t3 on t2.concert_id =
select count(*) from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id where t2.capacity = (select max(capacity) from stadium)
select count(*) from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id where t2.capacity = (select max(capacity) from stadium)
select count(*) from pets where weight > 10
select count(*) from pets where weight > 10
select weight from pets order by birthdate desc limit 1
select weight from pets order by weight asc limit 1
select max(weight), pettype from pets group by pettype
select pettype, max(weight), max(weight) from pets group by pettype
select count(*) from pets as t1 join has_pet as t2 on t1.petid = t2.petid join student as t3 on t2.stuid = t3.stuid where t3.age > 20
select count(*) from pets as t1 join has_pet as t2 on t1.petid = t2.petid join student as t3 on t2.stuid = t3.stuid where t3.age > 20;
select count(*) from pets as t1 join has_pet as t2 on t1.petid = t2.petid join student as t3 on t2.stuid = t3.stuid where t3.sex = 'F'
select count(*) from pets as t1 join has_pet as t2 on t1.petid = t2.petid join student as t3 on t2.stuid = t3.stuid where t3.sex = 'F'
select count(distinct pettype) from pets
select count(distinct pettype) from pets
select distinct t1.fname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid join pets as t3 on t3.petid = t2.petid where t3.pettype = 'kitties' or t3.pettype = 'cat'
select distinct t1.fname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid join pets as t3 on t3.petid = t2.petid where t3.pettype = 'kitchen' or t3.pettype = 'cat'
select t1.fname, t1.lname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid join pets as t3 on t2.petid = t3.petid where t3.pettype = 'kitten' intersect select t1.lname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid where t3.pettype = 'Pootyl
select distinct t1.fname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid join pets as t3 on t3.petid = t2.petid where t3.pettype = 'kitties' intersect select t1.fname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid where t2.pet
select major, age from student where stuid not in (select stuid from has_pet as t1 join pets as t2 on t1.petid = t2.petid where t2.pettype = 'kitty')
select major, age from student where stuid not in (select stuid from has_pet)
select stuid from student except select stuid from has_pet
select stuid from student except select stuid from has_pet
select t1.fname, t1.age from student as t1 join has_pet as t2 on t1.stuid = t2.stuid where t2.pettype
select t1.fname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid where t2.petid not in (select t3.petid from has_pet as t3 join pets as t4 on t3.petid = t4.petid where t4.pettype = 'cat')
select distinct t1.pettype, t1.weight from pets as t1 join has_pet as t2 on t1.petid = t2.petid order by t1.birthdate desc limit 1
select pettype, weight from pets order by weight asc limit 1
select petid, weight from pets where birthdate > (select max(birthdate) from pets where birthdate like "2020%")
select petid, weight from pets where birthdate > (select max(birthdate) from pets where birthdate like "2020%")
select pettype, avg(petid), max(petid) from pets group by pettype
select pettype, avg(petid), max(petid) from pets group by pettype
select pettype, avg(petid), max(petid) from pets group by pettype
select pettype, avg(weight) from pets group by pettype
select t1.fname, t1.age from student as t1 join has_pet as t2 on t1.stuid = t2.stuid
select distinct t3.fname, t3.age from has_pet as t1 join pets as t2 on t1.petid = t2.petid join student as t3 on t1.stuid = t3.stuid
select t2.petid from has_pet as t1 join pets as t2 on t1.petid = t2.petid join student as t3 on t1.stuid = t3.stuid where t3.lname = 'Smith'
select t2.petid from has_pet as t1 join pets as t2 on t1.petid = t2.petid join student as t3 on t3.stuid = t1.stuid where t3.lname = 'Smith'
select count(*), t1.stuid from has_pet as t1 join pets as t2 on t1.petid = t2.petid group by t1.stuid
select count(*), t1.stuid from has_pet as t1 join pets as t2 on t1.petid = t2.petid group by t1.stuid
select t1.fname, t1.sex from student as t1 join has_pet as t2 on t1.stuid = t2.stuid group by t1.stuid having count(*) > 1
select t1.fname, t1.sex from student as t1 join has_pet as t2 on t1.stuid = t2.stuid group by t1.stuid having count(*) > 1
select t1.lname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid join pets as t3 on t3.petid = t2.petid where t3.birthdate = 2001 and t3.pettype = 'cat'
select t1.lname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid join pets as t3 on t3.petid = t2.petid where t3.birthdate = 2001 and t3.pettype = 'cat'
select avg(age) from student where stuid not in ( select stuid from has_pet );
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
select t3.maker from model_list as t1 join car_makers as t2 on t1.model = t2.id join car_makers as t3 on t1.maker = t3.id group by t3.maker having count(*) >= 2
select distinct t3.maker from model_list as t1 join car_names as t2 on t1.model = t2.model join car_makers as t3 on t1.maker = t3.id group by t3.maker having count(*) >= 2
select t3.make, t2.year from model_list as t1 join car_makers on t1.model = t2.id join car_names as t3 on t1.model = t3.id
select t1.maker, t2.year from car_makers as t1 join cars_data as t2 on t1.id = t2.modelid
select distinct model from model_list where year < 1980 or year = "null
select distinct t1.model from model_list as t1 join car_makers as t2 on t1.modelid = t2.id where t
select count(*), continent from continents group by continent
select t1.continent, count(*) from continents as t1 join car_makers as t2 on t1.contid = t2.id group by t1.contid
select t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.country group by t1.countryid order by count(*) desc limit 1
select t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.country group by t1.countryid order by count(*) desc limit 1
select count(*), t2.maker from model_list as t1 join car_makers as t2 on t1.maker = t2.id group by t2.maker
select t1.id, t1.fullname from car_makers as t1 join model_list as t2 on t1.id = t2.modelid group by t1.id
select accelerate from car_names as t1 join model_list as t2 on t2.modelid = t2.modelid join cars_data as t3 on t2.modelid = t3.id where t1.make = "amc" and t3.ac
select sum(avg(acc
select count(distinct maker) from car_makers where country = "Japanese"
select count(*) from countries where countryid = "Japanese"
select count(distinct id) from cars_data where continent = 'americaa%%
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
select t1.model from model_list as t1 join car_names as t2 on t1.model = t2.id
select avg(s
select avg(h
select avg(edispl) from cars_data as t1 join model_list as t2 on t2.model = t1.id where t2.model = 'tesla'
select avg(edispl) from cars_data
select max(accelerate), cylinders from cars_data group by cylinders
select max(accelerate), cylinders from cars_data group by cylinders
select model from car_names group by model order by count(*) desc limit 1
select model from model_list group by model order by count(*) desc limit 1
select count(*) from cars_data where cylinders > 4
select t1.id, count(*) from cars_data as t1 join cars_data as t2 on t1.id = 4
select count(*) from cars_data where year = 2
select count(*), maker from car_makers group by maker having count(*) >= 2
select count(*) from model_list as t1 join car_makers as t2 on t1.modelid = t2.id where t2.maker = "American Motor"
select count(*) from model_list as t1 join car_makers as t2 on t1.modelid = t2.id where t2.maker = "American Motor"
select t1.fullname, t1.id from car_makers as t1 join model_list as t2 on t1.id = t2.maker group by t1.id having count(*) > 3
select t1.maker, t1.id from car_makers as t1 join model_list as t2 on t1.id = t2.maker group by t1.maker having count(*) > 3
select distinct t1.model from model_list as t1 join car_makers as t2 on t1.maker = t2.id where t2.fullname = "General Motors" union select distinct t1.model from model_list as t1 join car_makers as t2 on t1.model = t2.id where t2.maker = "3500"
select distinct t1.model from model_list as t1 join car_makers as t2 on t1.maker = t2.id where t2.fullname = "General Motors" union select distinct t1.model from model_list as t1 join car_makers as t2 on t1.model = t2.id where t2.maker = "3500"
select year from cars_data where weight < 3000 intersect select year from cars_data group by year having count(*) < 4000
select distinct year from cars_data where weight < 4000 intersect select distinct year from cars_data where weight > 3000
select horsepower from cars_data order by accelerate desc limit 1
select horsepower from cars_data order by accelerate desc limit 1
select t1.cylinders, count(*) from cars_data as t1 join model_list as t2 on t1.id = t2.modelid where t1.edispl = (select t1.id from cars_data as t1 join model_list as t2 on t1.id = t2.modelid group by t1.id order by count(*) asc limit 1)
select count(*), cylinders from model_list as t1 join cars_data as t2 on t1.model = t2.id where t2.edispl = (select t2.edispl from model_list as t3 join car_makers as t4 on t3.model = t4.id group by t3.modelid order by count(*) asc limit 1)
select count(distinct id) from cars_data where horsepower > (select max(h
select count(*) from cars_data where accelerate > (select max (select accelerate from cars_data) order by horsepower desc limit 1)
select count(distinct t1.countryid) from countries as t1 join car_makers as t2 on t1.countryid = t2.id group by t1.countryid having count(*) > 2
select count(distinct t1.countryid) from countries as t1 join car_makers as t2 on t1.countryid = t2.id group by t1.countryid having count(*) > 2
select count(*), t1.id from cars_data as t1 join cars_data as t2 on t1.id = t2.c
select count(*) from cars_data where cylinders > 6
select t1.model from car_names as t1 join cars_data as t2 on t1.model = t2.id where t2.cylinders = 4
select t3.id from model_list as t1 join car_names as t2 on t1.model = t2.model join cars_data as t3 on t2.model = t3.id where t1.cylinders
select t1.makeid, t1.makeid from car_names as t1 join cars_data as t2 on t1.model = t2.id join car_names as t3 group by t1.makeid having count(*) > 3 union select t1.makeid, t1.makeid from car_names as t1 join cars_data as t2 on t1.model = t2.model
select id, t3.make from car_names as t1 join cars_data as t2 on t1.model = t2.id join car_names as t3 group by t3.makeid having count(*) < 4
select max(t2.mpg) from cars_data as t1 join car_makers as t2
select max(mpg) from cars_data where cylinders >= 8 union select max(mpg) from cars_data where year < 1980
select t1.model from model_list as t1 join cars_data as t2 on t1.modelid = t2.id join car_makers as t3 group by t1.modelid having avg(t2.weight) < 3500 except select t3.model from model_list as t1 join car_makers as t2 on t1.model = t2.id join car_names as t3 on t3.makeid = t3.model where t3.model = 'Ford Motor'
select distinct model from model_list where weight < 3500 and model not in (select distinct t1.model from model_list as t1 join car_makers as t2 on t1.model = t2.id join cars_data as t3 on t3.model
select countryname from countries except select t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.country
select countryname from countries except select t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.country
select maker, count(*) from car_makers group by maker having count(*) >= 2
select t2.id, t2.maker from model_list as t1 join car_makers as t2 on t1.maker = t2.id group by t2.maker having count(*) >= 2 union select t2.id, t2.maker from model_list as t1 join car_makers as t2 on t1.maker = t2.id group by t2.maker having count(*) > 3
select t1.countryid, t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.country where t2.maker = 'tesla' group by t1.countryid having count(*) > 3 union select t1.countryid, t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.country where t2.maker = "3"
select t1.countryid, t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.country group by t1.countryid having count(*) > 3 union select t1.countryid, t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.country where t2.maker = "Telas"
select country from airlines where airline = 'JetBlue'
select country from airlines where abbreviation = 'JetBlue Airways'
select abbreviation from airlines where abbreviation = 'JetBlue'
select abbreviation from airlines where abbreviation = 'JetBlue'
select airline, abbreviation from airlines where abbreviation = 'American Airlines'
select airline, abbreviation from airlines where airline = 'American Airlines'
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
select count(*) from flights where airportcode = 'ATO
select count(*) from airports as t1 join flights as t2 on t1.city = t2.airport
select count(*) from flights where destairport = "Janessa"
select count(*) from flights where destairport = "Janessa"
select count(*) from flights where city = 'Janessa
select count(*) from flights where country = 'Janelburgh’; t1.fliegno = t2.fleetno group by t1.fleetno order
select count(*) from flights where city = 'Syracuse' and destairport = 'Ashley
select count(*) from flights where city = "Sylvania" and airportname = "Ashelp
select count(*) from flights as t1 join airlines as t2 on t1.airline = t2.uid where t2.abbreviation = 'JetBlue'
select count(*) from airlines where abbreviation = 'JetBlue Airways'
select count(*) from airlines as t1 join flights as t2 on t1.uid = t2.air
select count(*) from airlines as t1 join flights as t2 on t1.uid = t2.airport
select count(*) from flights where sourceairport = 'AHD' and airline = 'JetBlue'
select count(*) from flights where flightno = "JetBlue" and destairport = "AHD"
select count(*) from airlines as t1 join flights as t2 on t1.uid = t2.airport
select count(*) from airlines as t1 join flights as t2 on t1.uid = t2.airport
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
select flightno from flights where airline = "JetBlue"
select flightno from flights where airline = 'JetBlue'
select flightno from flights where sourceairport = "APG"
select flightno from flights where sourceairport = 'APG'
select flightno from flights where sourceairport = "APG"
select flightno from flights where sourceairport = 'APG'
select flightno from flights where
select flightno from flights where destairport = "Janessa"
select flightno from flights as t1 join airports as t2 on t1.airport
select flightno from flights where
select count(*) from flights where city = 'Sylvania' or city = 'Janessas
select count(*) from flights where city = 'Sylvania' or city = 'Janessas
select airportname from airports except select t1.airportname from airports as t1 join flights as t2 on t1.city = t2.destairport
select airportname from airports except select destairport from flights
select count(*) from documents
select count(*) from documents
select document_id, document_name, document_description from documents
select document_id, document_name, document_description from documents
select document_name from documents where document_description like '%w%'
select document_name, template_id from documents where document_description like "%w%"
select document_description, template_id from documents where document_name = "Robbin CV"
select document_description, template_id from documents where document_name = "Robbin CV"
select count(distinct template_id) from documents
select count(distinct template_id) from documents
select count(*) from templates where template_type_code = "PPT"
select count(*) from templates where template_type_code = "PPT"
select template_id, count(*) from documents group by template_id
select count(*), template_id from documents group by template_id
select t1.date_effective_to from templates as t1 join documents as t2 on t2.template_id = t1.template_id group by t1.template_type_code order by count(*) desc limit 1
select t1.date_effective_to from templates as t1 join documents as t2 on t2.template_id = t1.template_id group By t1.template_id order by count(*) desc limit 1
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
select date_effective_to from templates where template_type_code = "CV"
select date_effective_to from templates where template_type_code = "CV"
select date_effective_from, template_type_code from templates where version_number < 5
select date_effective_from, template_type_code from templates where version_number > 5
select date_effective_from, count(*) from templates group by date_effective_to
select date_effective_to, count(*) from templates group by date_effective_to
select date_effective_to from templates group by date_effective_to order by count(*) desc limit 1
select date_effective_to from templates group by date_effective_to order by count(*) desc limit 1
select date_effective_to from templates group by date_effective_to having count(*) < 3
select date_effective_to from templates group by date_effective_to having count(*) < 3
select min(version_number), date_effective_to from templates
select version_number, date_effective_to from templates order by date_effective_from limit 1
select t2.date_effective_to from documents as t1 join templates as t2 on t1.document_id = t2.document_id
select t1.date_effective_to from templates as t1 join documents as t2 on t1.
select document_name, template_id from documents as t1 join templates as t2 on t1.document_id = t2.document_id
select t1.document_name, t1.document_id from documents as t1 join templates as t2 on t1.document_id = t2.document_id
select date_effective_from, date_effective_to, count(*) from documents
select date_effective_from, date_effective_to, count(*) from documents
select date_effective_to from documents
select date_effective_to from documents
select date_effective_from, date_effective_to from documents
select date_effective_to, date_effective_to from templates where template_id not in (select template_id from documents)
select template_type_code, template_type_description from ref_template_types
select template_type_code, template_type_description from ref_template_types
select template_type_description from ref_template_types where template_type_code = "AD"
select template_type_description from ref_template_types where template_type_code = "AD"
select template_type_code from ref_template_types where template_type_description = "Book"
select template_type_code from ref_template_types where template_type_description = "Book"
select distinct template_type_description from ref_template_types
select distinct template_type_description from templates as t1 join ref_template_types as t2 on t1.template_type_code = t2.template_type_code
select date_effective_from from templates where template_type_description like "%presentation%" 
select t1.date_effective_to from templates as t1 join ref_template_types as t2 on t1.template_type_code = t2.template_type_code where t2.
select distinct t1.player
select t2.player_
select t2.year from matches as t1 join players as t2
select t1.year from matches as t1 join players as t2 on t2.player_id = t2.player_id where t2.birth_date = "Janessa" group by t2.player_id
select first_name, birth_date from players where country_code = "USA"
select first_name, birth_date from players where country_code = "USA"
select avg(loser_age), avg(winner_age) from matches
select avg(loser_age), avg(winner_age) from matches
select avg(t1.winner_rank), t2.loser_rank from matches as t1 join rankings as t2
select avg(t1.loser_rank), t2.winner_rank from matches as t1 join players as t2
select max(t2.winner_rank), t2.loser_rank from matches as t1 join players as t2
select t2.winner_rank, t1.loser_rank from matches as t1 join players as t2
select count(distinct country_code) from players
select count(distinct country_code) from players
select count(*) from players
select count (distinct loser_name) from
select tourney_name from matches group by tourney_name having count(*) > 10
select tourney_name from matches group by tourney_name having count(*) > 10
select t2.winner_name, t2.loser_name from matches as t1 join players as t2
select t2.player_
select distinct t1.player
select t2.player_
select t1.country_code, t1.first_name from players as t1 join matches as t2 on t1.player_id = t2.player_id
select t1.first_name, t1.country_code from players as t1 join matches as t2 on t1.player_id = t2.player_id
select first_name, country_code from players order by birth_date desc limit 1
select first_name, country_code from players order by birth_date desc limit 1
select first_name, last_name from players order by birth_date
select first_name, last_name from players order by birth_date desc
select first_name, last_name from players where hand = "left" order by birth_date desc
select hand from players where birth_date like '%jung%' order by birth_date
select t2.first_name, t2.country_code from
select t2.first_name, t2.country_code from
select year from matches group by year order by count(*) desc limit 1
select year from matches group by year order by count(*) desc limit 1
select t2.winner_name, t2.winner_rank_points from rankings as t1 join players as t2
select t1.player
select
select t1.winner_name, t1.loser_id from players as t2 join matches as t3 on t1.winner_id = t3.winner_ioc and t3.winner_rank = t3.winner_ioc
select t2.player_
select t2.winner_name, t1.winner_name from matches as t1 join
select avg(ranking), t2.first_name from rankings as t1 join players as t2 on t1.player_id = t2.player_id group by t2.player_id
select t1.first_name, avg(t2.rank
select t1.first_name, t1.last_name, sum(t2.
select t1.first_name, t1.last_name, sum(t2.ranking_points) from players as t1 join rankings as t2 on t1.player_id = t2.player_id group by t1.player_id
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
select t2.winner_name, t2.birth_date from matches as t1 join players as t2
select t1.first_name, t1.birth_date from players as t1 join matches as t2 on t1.player_id = t2.winner_id group by t2.winner_id order by count(*) desc limit 1
select hand, count(*) from players group by hand
select hand, count(*) from players group by hand
select distinct line_1 from addresses
select line_3 from addresses
select count(*) from show
select count(*) from show as t1 join show as t2 on t1.show_id = t2.if_first_show
select name from conductor order by birthday asc
select name from conductor order by birthday
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
select name from conductor order by birthday asc
select name from conductor order by birthday asc
select name from conductor order by year_of_work desc limit 1
select name from conductor order by year_of_work desc limit 1
select t2.name, t3.orchestr
select t2.name, t3.name from performance as t1 join conductor as t2 on t1.orchestr
select t2.name from performance as t1 join conductor as t2 on t1.orchestr
select t2.name from performance as t1 join conductor as t2 on t1.orchestr
select t1.name from conductor as t1 join orchestra as t2 on t1.orchestr
select orchestra, count(*) from orchestra group by orchestra_id order by count(*) desc limit 1
select t1.name from conductor as t1 join orchestra as t2 on t1.orchestr
select t2.name from performance as t1 join conductor as t2 on t1.orchestr
select record_company, count(*) from orchestra group by record_company
select record_company, count(*) from orchestra group by record_company
select t1.major_record_format from orchestra as t1 join show as t2 on t1.orchestr
select major_record_format from orchestra order by
select t2.record_company from performance as t1 join orchestra as t2 on t1.orchestr
select record_company from orchestra order by year_of_founded desc limit 1
select orchestra from orchestra where orchestra_id not in (select orchestra_id from performance)
select orchestra from orchestra where orchestra_id not in (select orchestra_id from performance)
select record_company from orchestra where year_of_founded < 2003
select record_company from orchestra where year_of_founded >= 2003
select count(*) from show as t1 join show as t2 on t1.show_id = t2.show_id where t1.result = 'Glebe Park'
select count(*) from show as t1 join show as t2 on t1.show_id = t2.show_id where t1.result = 'Glebe Park'
select t1.type from performance as t1 join show as t2 on t1.performance_id = t2.performance_id group by t1.type having count(*) > 1
select t2.type from show as t1 join performance as t2 on t1.performance_id = t2.performance_id where t1.if_first_show > 1
select state from professionals intersect select state from owners
select state from owners intersect select state from professionals
select avg(age) from dogs where dog_id not in ( select dog_id from treatments )
select avg(t1.age) from dogs as t1 join treatments as t2 on t1.dog_id = t2.dog_id
select t1.professional_id, t1.last_name, t1.cell_number from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id group by t1.professional_id having count(*) > 2 union select t1.professional_id, t1.last_name, t1.cell_number from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id where t1.state = "Indiana"
select t1.professional_id, t1.last_name, t1.cell_number from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id where t1.state = "Indiana" or t2.cost_of_treatment > 2
select distinct name from dogs as t1 join treatments as t2 on t1.dog_id = t2.dog_id where t2.cost_of_treatment > 1000
select t2.name from treatments as t1 join dogs as t2 on t1.dog_id = t2.dog_id group by t2.owner_id having count(*) > 1000
select first_name from professionals union select t1.first_name from owners as t1 join dogs as t2 on t1.owner_id = t2.professional_id
select first_name from professionals union select t1.first_name from owners as t1 join dogs as t2 on t1.owner_id = t2.professional_id
select t1.professional_id, t1.first_name, t1.last_name from professionals as t1 join treatment_types as t2 on t1.professional_id = t2.treatment_id
select t1.professional_id, t1.first_name, t1.last_name from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id except select t2.professional_id, t2.name from dogs as t3 join treatment_types as t4 on t3.dog_id = t4.treatment_type
select t1.owner_id, t2.name from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id group by t1.owner_id order by count(*) desc limit 1
select t1.owner_id, t1.last_name from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id group by t1.owner_id order by count(*) desc limit 1
select t1.professional_id, t1.home_phone, t1.professional_id from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id group by t1.professional_id having count(*) >= 2
select t1.professional_id, t1.home_phone, t1.home_phone from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id group by t1.professional_id having count(*) >= 2
select name from dogs where abandoned_yn = 1 group by breed_code order by count(*) desc limit 1
select breed_name from breeds where abandoned_yn >= (select abandoned_yn from dogs group by abandoned_yn having count(*) >= (select abandoned_yn from dogs group by abandoned_yn
select t1.owner_id, t1.last_name from owners as t1 join treatment_types as t2 on t1.owner_id = t2.treatment_type_code group by t1.owner_id order by count(*) desc limit 1
select t1.owner_id, t1.last_name from owners as t1 join treatment_types as t2 on t1.owner_id = t2.treatment_type_code group by t1.owner_id order by count(*) desc limit 1
select t1.treatment_type_description from treatment_types as t1 join treatments as t2 on t1.treatment_type_code = t2.treatment_type_code group by t1.treatment_type_code order by sum(t2.cost_of_treatment) asc limit 1
select t1.treatment_type_description from treatment_types as t1 join treatments as t2 on t1.treatment_type_code = t2.treatment_type_code group by t1.treatment_type_code order by sum(t2.cost_of_treatment) asc limit 1
select t1.owner_id, t1.zip_code from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id group by t1.owner_id order by sum(t2.abandoned_yn) desc limit 1
select t1.owner_id, t1.zip_code from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id group by t1.owner_id order by sum(t2.abandoned_yn) desc limit 1
select t1.professional_id, t1.first_name, t1.last_name from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id group by t1.professional_id having count(*) >= 2
select t1.professional_id, t1.home_phone, t1.home_phone from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id group by t1.professional_id having count(*) >= 2
select t1.first_name, t1.last_name from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id where t2.cost_of_treatment < ( select avg(cost_of_treatment) from treatments )
select t2.first_name, t2.last_name from treatments as t1 join professionals as t2 on t1.professional_id = t2.professional_id where t1.cost_of_treatment < ( select avg(cost_of_treatment) from treatments )
select t1.date_of_treatment, t1.name from treatment_types as t2 join professionals as t3 on t1.professional_id = t2.prof
select t2.date_of_treatment, t1.first_name, t1.last_name from treatments as t1
select t1.cost_of_treatment, t2.treatment_type_description from treatments as t1 join treatment_types as t2 on t1.treatment_type_code = t2.treatment_type_code
select t1.cost_of_treatment, t2.treatment_type_description from treatments as t1 join treatment_types as t2 on t1.treatment_type_code = t2.treatment_type_code
select t2.first_name, t2.last_name, t1.size_code from dogs as t1 join owners as t2 on t1.owner_id = t2.owner_id group by t2.owner_id
select t1.first_name, t1.last_name, t2.size_code from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id group by t2.owner_id
select t2.first_name, t2.last_name, t1.name from dogs as t1 join owners as t2 on t1.owner_id = t2.owner_id
select t2.first_name, t2.last_name, t1.name from dogs as t1 join owners as t2 on t1.owner_id = t2.owner_id
select t2.name, t1.date_of_treatment from treatments as t1 join dogs as t2 on t1.dog_id = t2.dog_id group by t2.dog_id order by count(*) desc limit 1
select t2.name, t1.date_of_treatment from treatments as t1 join dogs as t2 on t1.dog_id = t2.dog_id group by t1.dog_id order by count(*) asc limit 1
select t2.first_name, t2.last_name from owners as t1 join dogs on t1.owner_id = t2.owner_id
select t1.first_name, t1.last_name from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id where t1.street = 'VA'
select date_arrived, date_departed from treatments as t1 join dogs as t2 on t1.dog_id = t2.dog_id
select date_of_treatment from treatments where date_departed >= '2004-04-19 15:06:20' and date_arrived < '2016-03-15 00:33:18
select t1.last_name from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id order by t2.date_of_birth desc limit 1
select t2.last_name from dogs as t1 join owners as t2 on t1.owner_id = t2.owner_id order by t1.age limit 1
select email_address from professionals where state = 'HI' or state = 'WI'
select email_address from professionals where state = 'HI' or state = 'WI'
select date_arrived, date_adopted from dogs where abandoned_yn = '1'
select date_arrived, date_adopted from dogs where abandoned_yn = '1'
select count(*) from dogs where date_arrived not in ( select dog_id from treatments )
select count(*) from dogs as t1 join treatment_types as t2 on t1.dog_id = t2.treatment_type_code group by t2.treatment_type_code
select count(distinct professional_id) from treatments
select count(distinct professional_id) from treatments
select first_name, last_name from professionals where city like '%west%'
select first_name from professionals where city like '%west%'
select owner_id from owners where state like '%ny%'
select first_name, last_name from owners where state like '%ny%'
select count(*) from dogs where age < (select avg(age) from dogs)
select count(*) from dogs where age < (select avg(age) from dogs)
select max(cost_of_treatment) from treatments
select cost_of_treatment from treatments order by date_of_treatment desc limit 1
select count(*) from dogs where abandoned_yn not in ( select abandoned_yn from treatment_types
select count(*) from dogs where dog_id not in ( select dog_id from treatments )
select count(*) from owners where owner_id not in ( select owner_id from dogs where abandoned_yn = '1' )
select count(*) from owners where owner_id not in ( select owner_id from dogs );
select count(*) from professionals where professional_id not in ( select professional_id from treatments )
select count(*) from professionals where professional_id not in ( select professional_id from treatments )
select name, age, weight from dogs where abandoned_yn = '1' and 0 = 'null'
select name, age, weight from dogs where abandoned_yn = '1' and 0 = 0
select avg(age) from dogs where abandoned_yn = '1'
select avg(age) from dogs where abandoned_yn = '1'
select age from dogs order by age desc limit 1
select age from dogs order by age desc limit 1
select charge_type, charge_amount from charges group by charge_type
select charge_type, charge_amount from charges;
select charge_type, sum(charge_amount) from charges group by charge_type order by sum(charge_type) desc limit 1;
select charge_amount from charges order by charge_type desc limit 1
select email_address, email_address from professionals
select email_address, email_address from professionals
select distinct size_code, breed_name from breed
select distinct breed_code, size_code from dogs
select t2.first_name, t2.last_name, t3.treatment_type_description from treatments as t1 join professionals as t2 on t1.professional_id = t2.professional_id join treatment_types as t3 on t1.treatment_type_code = t3.treatment_type_code
select t1.first_name, t1.last_name, t2.treatment_type_description from professionals as t1 join treatment_types as t2 on t1.professional_id = t2.treatment_type_code
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
select distinct t2.name from song as t1 join singer as t2 on t1.song_id = t2.song_id
select distinct t2.name from song as t1 join singer as t2 on t1.song_id = t1.song_id where t1.sales > 300000
select t2.name from song as t1 join singer as t2 on t1.song_id = t2.song_id
select t2.name from song as t1 join singer as t2 on t1.song_id = t1.song_id group by t1.song_id having count(*) > 1
select t2.name, max(t1.highest_position) from song as t1 join singer as t2 on t1.song_id = t2.song_id
select max(t1.highest_position), t2.name from song as t1 join singer as t2 on t1.song_id = t1.song_id group by t2.name
select name from singer where singer_id not in (select singer_id from song)
select title from song where singer_id not in (select singer_id from song)
select citizenship from singer where birth_year < 1945 or birth_year = 1945
select citizenship from singer where birth_year < 1945 or birth_year = 1945
