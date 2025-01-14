select count(*) from singer
select count(*) from singer
select name, country, age from singer order by age desc
select name, country, age from singer order by age desc
select avg(age), min(age), max(age) from singer where country = 'France'
select avg(age), min(age), max(age) from singer where country = 'F'
select name, song_release_year from singer order by age asc limit 1
select name, song_release_year from singer order by age asc limit 1
select distinct(country) from singer where age > 20
select distinct(country) from singer where age > 20
select country, count(*) from singer group by country
select country, count(*) from singer group by country
select name from singer where age > (select avg(age) from singer)
select name from singer where age > (select avg(age) from singer)
select location, name from stadium where capacity between 5000 and 10000
select location, name from stadium where capacity between 5000 and 10000
select max(capacity), avg(average) from stadium
select avg(capacity), max(capacity) from stadium
select name, capacity from stadium order by average desc limit 1
select name, capacity from stadium order by average desc limit 1
select count(*) from concert where year = 2014 or year = 2015
select count(*) from concert where year = 2014 or year = 2015
select t2.name, count(*) from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id group by t1.stadium_id
select t2.location, count(*) from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id group by t1.stadium_id
select t2.name, t2.capacity from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id where t1.year >= 2014 group by t2.stadium_id order by count(*) desc limit 1
select t2.name, t2.capacity from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id where t1.year > 2013 group by t2.stadium_id order by count(*) desc limit 1
select year from concert group by year order by count(*) desc limit 1
select year from concert group by year order by count(*) desc limit 1
select name from stadium except select t1.name from stadium as t1 join concert as t2 on t1.stadium_id = t2.stadium_id
select name from stadium except select t1.name from stadium as t1 join concert as t2 on t1.stadium_id = t2.stadium_id
select country from singer where age > 40 intersect select country from singer where age < 30
select name from stadium except select t1.name from stadium as t1 join concert as t2 on t1.stadium_id = t2.stadium_id where t2.year = 2014
select name from stadium except select t1.name from stadium as t1 join concert as t2 on t1.stadium_id = t2.stadium_id where t2.year = 2014
select t2.name, t2.theme, count(*) from singer_in_concert as t1 join concert as t2
select t2.name, t2.theme, count(*) from singer_in_concert as t1 join concert as t2
select t2.name, count(*) from singer_in_concert as t1 join singer as t2 on t1
select t1.name, count(*) from singer as t1 join singer_in_concert as t2 on
select t1.name from singer as t1 join singer_in_concert as t2 on t1.s
select t1.name from singer as t1 join singer_in_concert as t2 on t1.s
select name, country from singer where song_name like '%hey%'
select name, country from singer where song_name like '%hey%'
select t2.name, t2.location from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id where t1.year = 2014 intersect select t2.name, t2.location from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id where t1.year = 2015
select t2.name, t2.location from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id where t1.year = 2014 intersect select t2.name, t2.location from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id where t1.year = 2015
select count(*) from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id where t2.capacity = (select max(capacity) from stadium)
select count(*) from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id where t2.capacity = (select max(capacity) from stadium)
select count(*) from pets where weight > 10
select count(*) from pets where weight > 10
select t2.weight from has_pet as t1 join pets as t2 on t1.petid = t2.petid where t1.pet_
select min(weight) from pets where pettype = 'dog'
select max(weight), pettype from pets group by pettype
select max(weight), pettype from pets group by pettype
select count(*) from pets as t1 join has_pet as t2 on t1.petid = t2.petid join student as t3 on t2.stuid = t3.stuid where t3.age > 20 or t3.age > 30
select count(*) from pets as t1 join has_pet as t2 on t1.petid = t2.petid join student as t3 on t2.stuid = t3.stuid where t3.age > 20 or t3.age > 30
select count(*) from pets as t1 join has_pet as t2 on t1.petid = t2.petid join student as t3 on t2.stuid = t3.stuid where t3.sex = 'F'
select count(*) from pets as t1 join has_pet as t2 on t1.petid = t2.petid join student as t3 on t2.stuid = t3.stuid where t3.sex = 'F'
select count(distinct pettype) from pets
select count(distinct pettype) from pets
select t1.fname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid where t2.
select t1.fname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid where t2.
select t1.fname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid where t2.
select t1.fname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid where t2.pettype
select major, age from student where stuid not in ( select stuid from has_pet as t1 join pets as t2 on t1.petid = t2.petid where t2.pettype = 'cat')
select major, age from student where stuid not in ( select stuid from has_pet as t1 join pets as t2 on t1.petid = t2.petid where t2.pettype = 'cat')
select t2.stuid from pets as t1 join has_pet as t2 on t1.petid = t2.petid where t1.pettype = 'cat'
select stuid from
select fname, age from student where stuid not in ( select stuid from has_pet as t1 join pets as t2 on t1.petid = t2.petid where t2.pettype = 'cat')
select fname from student where stuid not in ( select stuid from has_pet as t1 join pets as t2 on t1.petid = t2.petid where t2.pettype = 'dog' except select stuid from has_pet as t1 join pets as t2 on t1.petid = t2.petid where t2.pettype = 'cat')
select t4.pettype, t2.weight from has_pet as t1 join pets as t2 on t1.petid = t2.petid join student as t3 on t1.stuid = t3.stuid
select t2.pettype, t2.weight from has_pet as t1 join pets as t2 on t1.petid = t2.petid order by t2.weight asc limit 1
select t2.petid, t2.weight from pets as t1 join pets as t2 on t1.petid + t2.pet_age > 1
select t2.petid, t2.weight from has_pet as t1 join pets as t2 on t1.petid = t2.petid where 1
select distinct(t2.pettype), avg(t2.age) from pets as t1 join has_pet as t2
select pettype, avg(age), max(age) from pets
select distinct(t2.pettype) from pets as t1 join pets as t2 on t1.petid = t2.petid group by t1.petid
select pettype, avg(weight) from pets group by pettype
select t1.fname, t1.age from student as t1 join has_pet as t2 on t1.stuid = t2.petid
select distinct(t1.fname), t1.age from student as t1 join has_pet as t2 on t1.stuid = t2.stuid where t2.pet_age
select t2.petid from student as t1 join has_pet as t2 on t1.stuid = t2.stuid where t1.lname = 'Smith'
select t2.petid from student as t1 join has_pet as t2 on t1.stuid = t2.stuid where t1.lname = 'Smith'
select count(*), t1.stuid from has_pet as t1 join pets as t2 on t1.petid = t2.petid group by t1.stuid
select stuid from has_pet group by stuid order by count(*) asc limit 1
select fname, sex from student where t1.stuid = (select stuid from has_pet group by stuid having count(*) >
select t1.fname, t1.sex from student as t1 join has_pet as t2 on t1.stuid = t2.stuid group by t2.stuid having count(*) > 1
select lname from student where t1.stuid = (select stuid from has_pet where t2.pettype = 'cat' and t2.age = 3
select lname from student where t1.stuid in (select stuid from has_pet as t1 join pets as t2 on t1.petid = t2.
select avg(age) from student where stuid not in ( select stuid from has_pet);
select avg(age) from student where stuid not in ( select stuid from has_pet);
select count(*) from continents
select count(*) from continents
select continent, countryname, count(*) from countries group by continent
select continent, countryname, count(*) from countries group by continent
select count(*) from countries
select count(*) from countries
select maker, id, count(*) from car_makers group by maker
select maker, count(*) from car_makers group by maker
select t1.model from model_list as t1 join car_makers as t2 on t1.modelid = t2.id order by t2
select t1.model from model_list as t1 join car_makers as t2 on t1.modelid = t2.id order by count(*) asc limit 1
select t1.model from model_list as t1 join car_makers as t2 on t1.modelid = t2.
select t1.model from model_list as t1 join car_makers as t2 on t1.modelid = t2.
select t3.maker from model_list as t1 join car_makers as t2 on t1.modelid = t2.id join car_makers as t3 on t1.maker = t3.id where t1.model = '1970'
select distinct(make), t2.maker from model_list as t1 join car_makers as t2 on t1.modelid = t2.modelid
select t1.make, count(*), t1.year from car_makers as t2 join cars_data as t3 join car_makers as t4 on t3.id = t1.modelid
select t1.maker, t2.year from car_makers as t1 join cars_data as t2 on t01.modelid = t2.modelid
select distinct(model) from model_list where model > 1980
select distinct(model) from model_list where model > 1980
select t1.continent, count(*) from continents as t1 join car_makers as t2 on t1.continent = t2.id group by t1.continent
select t3.continent, count(*) from car_makers as t1 join continents as t2 on t1.continent
select t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.id group by t1.countryid order by count(*) desc limit 1
select country from car_makers group by country order by count(*) desc limit 1
select count(*), maker from car_makers group by maker
select t1.id, t2.fullname from car_makers as t1 join car_makers as t2 on t1.maker = t2.id group by t2.maker
select t2.acc
select sum(t2.
select count(*) from car_makers where country = 'France'
select count(*) from car_makers where country = 'France'
select count(*) from model_list as t1 join car_makers as t2 on t1.modelid = t2.modelid
select count(*)from model_list as t1 join car_makers as t2 on t1.modelid = t2.id where t2.country = (select id from car_makers where country = 'United States')
select avg(t1.
select avg(t1.
select min(t2.weight) from model_list as t1 join cars_data as t2 on t1.modelid = t2.id where t1.model = '8' and t2.year = 1974
select min(t2.weight) from model_list as t1 join car_makers as
select maker, model from model_list
select maker, model from model_list
select maker, id from car_makers group by maker having count(*) >= 1
select country, id from car_makers group by country having count(*) >= 1
select count(*) from car_makers where
select count(*) from car_makers where
select year, avg(weight), min(year) from cars_data group by year
select year, avg(weight) from cars_data group by year
select t3.country from car_makers as t1 join continents as t2 on t1.country
select countryname from countries where continent = "Europe" group by countryname having count(*) >= 3
select max (select id, t2.makeid from model_list as t1 join car_makers as t2
select avg (select id from model_list as t1 join cars_data as t2 on t1.modelid = t2.id where t2.cylinders = 3)
select t1.model from model_list as t1 join cars_data as t2 on t1.modelid = t2.id where t2.mpg = 'gas' group by t1.model order by count(*) desc limit 1
select t1.model from model_list as t1 join cars_data as t2 on t1.modelid = t2.id where t2.mpg = (select max(mpg) from cars_data)
select avg (select avg (select id from car_makers where year < 1980
select avg (select id from car_makers where year < 1980
select avg(t2.edispl) from model_list as t1 join cars_data as t2 on t1.modelid = t2.id where t1.model = 'Volvo'
select avg(t2.edispl) from car_names as t1 join cars_data as t2 on t1.modeli
select max(t2.accelerate), count(*) from car_makers as t1 join cars_data as t2 on
select max(accelerate), t1.cylinders from cars_data as t1 join car_makers as t2 on t1.id = t2
select model from car_names group by model order by count(*) desc limit 1
select model from model_list group by model order by count(*) desc limit 1
select count(*), t1.cylinders from car_names as t2 join cars_data as t1 on t3.id = t2.c
select count(*), t1.cylinders from car_makers as t2 join cars_data as t1 on t3.id = t2.c
select count(*) from car_makers where model = '1980’; and country = "Controversal" on t1.id = t2.car_id
select count(*) from car_makers where maker = '1980'
select count(*) from car_makers where maker = 'American Motor Company'
select count(*) from car_makers where maker = 'American Motor Company'
select maker, model from model_list group by maker having count(*) > 3
select maker, id from car_makers group by maker having count(*) > 3
select distinct(t1.model) from model_list as t1 join car_makers as t2 on t1.maker = t2.id where t2.fullname = 'General Motors'
select distinct(t1.model) from model_list as t1 join car_makers as t2 on t1.maker = t2.id where t2.fullname = 'Carolean General Motors' or count(*) > 3500
select year from cars
select distinct(t2.year) from car_makers as t1 join cars_data as t2 on
select horsepower from car
select horsepower from cars
select count(*) from model_list as t1 join cars_data as t2 on t1.modelid = t2.id where t1.model = 'Volvo' order by t2.year asc limit 1
select count(*) from model_list where model = 'Volvo'
select count(*), t1.id from car_makers as t1 Join cars_data as t2 on t01.modelid = t2.modelid
select count(*) from car_makers where accelerate > '1'
select count(*) from countries group by countryid having count(*) > 2
select count(*) from countries group by countryid having count(*) > 2
select count(*) from car_names where mpg > 6000 and cylinders =
select count(*), t1.cylinders from car_makers as t2 join cars_data as t1 on t3.id = t2.c
select t1.model from car_names as t1 join cars_data as
select t1.model from car_names as t1 join cars_data as t2 on t1.model
select t1.makeid, t1.makeid from car_names as t1 join cars_data as t2 on
select id, t2.makeid from car_names as t1 join cars_data as t2
select max(t1.
select max(t2.mpg) from car_makers as t1 join cars_data as t2 on t1.
select model from model_list where weight < 3500 and model not in (select id from car_makers as t1 join cars_data as t2 on t1.
select distinct(model) from model_list where weight < 3500 and model not in ( select t1.model from model_list as t1 join car_makers as t2 on t1.modelid = t2.id where t2.fullname = 'Ford Motor Company') and t2.year = (select max(t1.weight) from model_list as
select countryname from countries except select country from car_makers
select countryname from countries except select country from car_makers
select id, maker from car_makers group by maker having count(*) >= 2
select t2.id, t2.maker from model_list as t1 join car_makers as t2 on t1.modelid = t2.modelid
select t1.countryid, t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.id where t2.maker = 'fiat' group by t1.countryid having count(*) > 3 union select t1.countryid from cars
select t1.countryid, t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.id where t2.maker = 'Fiat' or t2.fullname = 'Fat'
select country from airlines where airline = 'JetBlue Airways'
select country from airlines where airline = 'JetBlue Airways'
select abbreviation from airlines where airline = 'JetBlue Airways'
select abbreviation from airlines where airline = 'JetBlue Airways'
select airline, abbreviation from airlines where country = 'United States'
select airline, abbreviation from airlines where country = 'United States'
select airportcode, airportname from airports where city = 'Antonio'
select airportcode, airportname from airports where city = 'Atlanta'
select count(*) from airlines
select count(*) from airlines
select count(*) from airports
select count(*) from airports
select count(*) from flights
select count(*) from flights
select airline from airlines where abbreviation = 'UAL'
select airline from airlines where abbreviation = 'UAL'
select count(*) from airlines where country = 'United States'
select count(*) from airlines where country = 'United States'
select city, country from airports where airportname = 'Alton'
select city, country from airports where airportname = 'Alton'
select airportname from airports where airportcode = 'AKO'
select airportname from airports where airportcode = 'AKO'
select airportname from airports where city = 'Aberdeen'
select airportname from airports where city = 'Aberna'
select count(*) from flights where sourceairport = 'APG'
select count(*) from flights where sourceairport = 'APG'
select count(*) from flights where airportcode = 'ATO%’; t1.aircraft is t2.aircraftno.airport = t2.airport N1.air
select count(*) from flights where airportcode = 'ATO’; t1.airport = '
select count(*) from flights as t1 join airports as t2 on t1.air
select count(
select count(*) from flights as t1 join airports as t2 on t1.air
select count(*) from flights as t1 join airports as t2 on
select count(*) from flights where airportname = 'Aberdeen' and city = 'Ashley
select count(*) from flights where city = 'Ashley' and country = 'Ashley’; t
select count(*) from airlines as t1 join flights as t2 on t1.airport
select count(*) from airlines where airline = 'JetBlue Airways'
select count(*) from airlines as t1 join flights as t2 on t1.uid = t2.air
select count(*) from airlines as t1 join flights as t2 on t1.uid = t2.airport
select count(*) from flights where airline = 'United Airlines' and sourceairport = 'AHD'
select count(*) from flights where airline = 'United Airlines' and sourceairport = 'AHD'
select count(*) from airlines as t1 join flights as t2 on t1.uid = t2.airport
select count(*) from airlines where airline = 'United Airlines' and country = 'Aberdeen'
select t1.city from airports as t1 join flights as t2 on t1.country = t2.country
select city from airports group by city order by count(*) desc limit 1
select t1.city from airports as t1 join flights as t2 on t1.country = t2.country
select city from airports group by city order by count(*) desc limit 1
select t2.airportcode from flights as t1 join airports as t2 on t1.airport
select t2.airportcode from flights as t1 join airports as t2 on t1.airport
select t2.airportcode from flights as t1 join airports as t2 on t1.airport
select t2.airportcode from flights as t1 join airports as t2 on t1.airport
select airline from flights group by airline order by count(*) desc limit 1
select airline from flights group by airline order by count(*) desc limit 1
select abbreviation, country from airlines group by abbreviation order by count(*) asc limit 1
select abbreviation, country from airlines group by country order by count(*) asc limit 1
select airline from flights where sourceairport = 'AHD'
select airline from flights where sourceairport = 'AHD'
select airline from flights where sourceairport = 'AHD'
select airline from flights where sourceairport = 'AHD'
select airline from flights where sourceairport = 'APG' intersect select airline from flights where sourceairport = 'CVO'
select airline from flights where sourceairport = "APG" intersect select airline from flights where sourceairport = "CVO"
select airline from flights where sourceairport = 'CVO' except select airline from flights where sourceairport = 'APG'
select airline from flights where airportcode!= 'CVO’ except select airline from flights where airportcode = ’CVO' and countryabbrev not in ( select airline from flights where airportcode = 'APG'
select airline from flights group by airline having count(*) >= 10
select airline from flights group by airline having count(*) >= 10
select airline from flights where airline < 200
select airline from flights where airline < 200
select flightno from flights as t1 join airlines as t2 on t1.airline = t2.airline where t2.airline = 'United Airlines'
select flightno from flights where airline = 'United Airlines'
select flightno from flights where sourceairport = "APG"
select flightno from flights where sourceairport = "APG"
select flightno from flights where sourceairport = "APG"
select flightno from flights where sourceairport = (select airportcode from airports where airportcode = "APG")
select flightno from flights as t1 join airports as t2 on t1.airport
select flightno from flights where city = 'Aberna
select flightno from flights as t1 join airports as t2 on t1.airport
select flightno from flights
select count(*) from flights as t1 join airports as t2 on t1.air
select count(*) from flights where city = 'Aberna' or country = 'Abilene’; t1.airport = t2.airport
select airportname from airports except select t1.airportname from airports as t1 join flights as t2 on t1.airport
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
select name, district from shop order by number_products desc limit 1
select t1.manager_name, t1.district from shop as t1 join shop as t2 on t1.shop_id = t2.shop_id where t2.number_products = (select max(number_products) from shop)
select min(number_products), max(number_products) from shop
select min(number_products), max(number_products) from shop
select name, location, district from shop order by number_products desc
select name, location, district from shop order by number_products desc
select name from shop where number_products > (select avg(number_products) from shop)
select name from shop where number_products > (select avg(number_products) from shop)
select t1.name from employee as t1 join evaluation as t2 on t1.employee_id = t2.employee_id group by t2.employee_id order by count(*) desc limit 1
select t2.name from evaluation as t1 join employee as t2 on t1.employee_id = t2.employee_id group by t1.employee_id order by count(*) desc limit 1
select t2.name from evaluation as t1 join employee as t2 on t1.employee_id = t2.employee_id order by t1.year_awarded desc limit 1
select t2.name from evaluation as t1 join employee as t2 on t1.employee_id = t2.employee_id order by t1.year_awarded desc limit 1
select name from employee except select t1.name from employee as t1 join evaluation as t2 on t1.employee_id = t2.employee_id where t2.year_awarded = (select max(year_awarded) from evaluation)
select name from employee except select t1.name from employee as t1 join evaluation as t2 on t1.employee_id = t2.employee_id
select t2.name from hiring as t1 join shop as t2 on t1.shop_id = t2.shop_id group by t1.shop_id order by count(*) desc limit 1
select name from shop group by name order by count(*) desc limit 1
select name from shop where shop_id not in (select shop_id from hiring)
select name from shop where shop_id not in (select shop_id from hiring)
select count(*), name from shop group by name
select count(*), name from shop group by name
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
select document_name, template_id from documents where document_description like '%w%'
select document_id, template_id, document_description from documents where document_name = "Robbin CV"
select document_id, template_id, document_description from documents where document_name = "Robbin CV"
select count(distinct template_id) from documents
select count(distinct template_id) from documents
select count(*) from templates where template_type_code = "PPT"
select count(*) from templates where template_type_code = "PPT"
select template_id, count(*) from documents group by template_id
select count(*), template_id from documents group by template_id
select template_id, template_type_code from templates group by template_id order by count(*) desc limit 1
cre_Doc_Template_Mgt
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
select version_number, template_type_code from templates where version_number < 5
select version_number, template_type_code from templates where version_number > 5
select template_type_code, count(*) from templates group by template_type_code
select template_type_code, count(*) from templates group by template_type_code
select template_type_code from templates group by template_type_code order by count(*) desc limit 1
select template_type_code from templates group by template_type_code order by count(*) desc limit 1
select template_type_code from templates where version_number < 3
select template_type_code from templates group by template_type_code having count(*) < 3
select min(version_number), template_type_code from templates
select version_number, template_type_code from templates order by date_effective_to asc limit 1
select t2.
cre_Doc_Template_Mgt
select document_name from documents where template_type_code = (select template_type_code from templates where template_type_code = "BK"
select t1.document_name from documents as t1 join templates as t2 on t1.document_id = t2.document_id
select template_type_code, count(*) from document
select template_type_code, count(*) from document
select template_type_code from templates group by template_type_code order by count(*) desc limit 1
select template_type_code from templates group by template_type_code order by count(*) desc limit 1
select template_type_code from templates except select template_type_code from templates
select template_type_code from templates except select template_type_code from templates where document_id not in ( select template_type_code from documents
select template_type_code, template_type
select template_type_code, template_type
select template_type_description from ref_template_types where template_type_code = "AD"
select template_type_description from ref_template_types where template_type_code = "AD"
select template_type_code from ref_template_types where template_type_description = "Book"
select template_type_code from ref_template_types where template_type_description = "Book"
select distinct(version_number) from templates
select distinct(version_number) from templates as t1 join documents as t2 on t1.
select template_id from ref_template_types
select template_id from templates where template_type_description like '%presentation%%
select count(*) from paragraphs
select count(*) from paragraphs
select count(*) from documents where document_name = 'Summer Show'
select count(*) from paragraphs as t1 join documents as t2 on t1.document_id = t2.document_id where t2.document_name = 'Summer Show'
select distinct(t1.other_details) from paragraphs as t1 join paragraphs as t2 on t1.paragraph_id = t2.paragraph_id where t2.paragraph_text = 'Korea'
select * from paragraphs where paragraph_text like '%korea%'
select t2.paragraph_id, t2.paragraph_text from documents as t1 join paragraphs as t2 on t1.document_id = t2.document_id where t1.document_name = 'Welcome to NY'
select t2.document_id, t2.paragraph_text from documents as t1 join paragraphs as t2 on t1.document_id = t2.document_id where t1.document_name = 'Welcome to NY'
select distinct(t1.paragraph_text) from paragraphs as t1 join documents as t2 on t1.document_id = t2.document_id where t2.document_name = "Customer reviews"
select t1.paragraph_text from paragraphs as t1 join documents as t2 on t1.document_id = t2.document_id where t2.document_name = 'Customer reviews'
select document_id, count(*) from paragraphs group by document_id order by paragraph_id
select distinct(document_id), count(*) from paragraphs group by document_id order by count(*)
select document_id, document_name, count(*) from documents group by document_id
select document_id, document_name, count(*) from documents group by document_id
select document_id from paragraphs group by document_id having count(*) >= 2
select document_id from paragraphs group by document_id having count(*) >= 2
select t2.document_id, t2.document_name from paragraphs as t1 join documents as t2 on t1.document_id = t2.document_id group by t1.document_id order by count(*) desc limit 1
select document_id, document_name from documents group by document_id order by count(*) desc limit 1
select document_id from paragraphs group by document_id order by count(*) asc limit 1
select document_id from paragraphs group by document_id order by count(*) asc limit 1
select document_id from paragraphs where paragraph_id between 1 and 2
select document_id from paragraphs group by document_id having count(*) between 1 and 2
select document_id from paragraphs where paragraph_text = 'Brazil' intersect select document_id from documents where document_name like '%ira%'
select document_id from paragraphs where paragraph_text = 'Brazil' intersect select document_id from documents where document_name like '%ira%'
select count(*) from teacher
select count(*) from teacher
select name from teacher order by age asc
select name from teacher order by age asc
select age, hometown from teacher
select age, hometown from teacher
select name from teacher where hometown!= 'Locking Lever Urban District'
select name from teacher where hometown!= 'Locking Lever Urban District'
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
select t2.name, t3.course from course_arrange as t1 join teacher as t2 on t1.teacher_id = t2.teacher_id join
select t2.name, t1.course from course as t1 join teacher as t2 on t1.teacher_id
select t2.name, t3.course from course_arrange as t1 join teacher as t2 on t1.teacher_id = t2.teacher_id
select name from teacher order by name asc
select t1.name from teacher as t1 join course as t2 on t1.teacher_id = t2.teacher_id
select t3.name from course as t1 join teacher as t2 on t1.course_id = t2.course_id
select t2.name, count(*) from course_arrange as t1 join teacher as t2 on t1.teacher_id = t2.teacher_id group by t2.name
select t2.name, count(*) from course_arrange as t1 join teacher as t2 on t1.teacher_id = t2.teacher_id group by t2.name
select t2.name from course as t1 join teacher as t2 on t1
select t3.name from course_arrange as t1 join teacher as t2 on t1.teacher_id = t2.teacher_id
select name from teacher except select t1.name from teacher as t1 join course_arrange as t2 on t1.teacher_id = t2.teacher_id
select name from teacher except select t1.name from teacher as t1 join course_arrange as t2 on t1.teacher_id = t2.teacher_id
select count(*) from visitor where age < 30
select name from visitor where level_of_membership > 4 order by level_of_membership
select avg(t1.age) from visitor as t1 join visit as t2 on t1.id = t2.visitor_id where t2.level_of_membership
select name, level_of_membership from visitor where level_of_membership > 4 order by age desc
select t2.museum_id, t2.name from museum as t1 join museum as t2 on t1.museum_id = t2.museum_id group by t1.museum_id order by count(*) desc limit 1
select avg(t1.num_of_staff) from museum as t1 join museum as t2 on t1.museum_id = t2.museum_id where t2.open_year < 2009
select open_year, num_of_staff from museum where name = 'Palacia Museum'
select name from museum where num_of_staff > (select min(num_of_staff) from museum where open_year > 2010)
select id, name, age from visitor group by id having count(*) > 1
select t1.id, t1.name, t1.level_of_membership from visitor as t1 join visit as t2 on t1.id = t2.visitor_id where t2.num_of_ticket = (select max(total_spent) from visit)
select t2.museum_id, t2.name from visit as t1 join museum as t2 on t1.museum_id = t2.museum_id group by t1.museum_id order by count(*) desc limit 1
select name from museum except select t1.name from museum as t1 join visit as t2 on t1.museum_id = t2.museum_id where t2.num_of_ticket = (select max(num_of_ticket) from visit)
select t1.name, t1.age from visitor as t1 join visit as t2 on t1.id = t2.visitor_id group by t2.visitor_id order by count(*) desc limit 1
select avg(num_of_ticket), max(num_of_ticket) from visit
select sum(t1.num_of_ticket) from visit as t1 join visitor as t2 on t1.visitor_id = t2.id where t2.level_of_membership = 1
select t1.name from visitor as t1 join visit as t2 on t1.id = t2.visitor_id join museum as t3 on t2.museum_id = t3.museum_id where t3.open_year < 2009 intersect select t1.name from visitor as t1 join visit as t2 on t1.museum_id
select count(*) from visitor where visitor_id not in ( select visitor_id from visit where open_year > 2010
select count(*) from museum where open_year > 2013 or open_year <= 2008
select count(*) from players
select count(*) from players
select count(*) from matches
select count(*) from matches
select first_name, birth_date from players where country_code = 'United States'
select first_name, birth_date from players where country_code = "United States"
select avg(t1.loser_age) from matches as t1 join matches as t2 on t1.winner_id = t2.winner_id
select avg(t1.loser_age), t1.winner_age from matches as t1 join matches as t2 on t1.winner_id = t2.winner_id
select avg(t2.winner_rank) from matches as t1 join rankings as t2
select avg(t2.winner_rank) from matches as t1 join rankings as t2
select max(t2.rank
select max(t2.rank
select count(distinct country_code) from players
select count(distinct country_code) from players
select count(*) from players
select count(distinct loser_name) from
select tourney_name from matches group by tourney_name having count(*) > 10
select tourney_name from matches group by tourney_name having count(*) > 10
select winner_name from matches where year = 2013 intersect select winner_name from matches where year = 2016
select * from players where winner_name between 2013 and 2016 
select count(*) from matches where year = 2013 or year = 2016
select count(*) from matches where year = 2013 or year = 2016
select t1.country_code, t1.first_name from players as t1 join matches as t2 on t1.player_id = t2.player_id
select t1.first_name, t1.country_code from players as t1 join matches as t2 on t1.player_id = t2.player_id
select first_name, country_code from players order by birth_date asc limit 1
select first_name, country_code from players order by birth_date asc limit 1
select first_name, last_name from players order by birth_date
select first_name, last_name from players order by birth_date
select first_name, last_name from players where hand = 'L' order by birth_date
select first_name, last_name from players order by birth_date
select first_name, country_code from players group by country_code order by count(*) desc limit 1
select first_name, country_code from players group by country_code order by count(*) desc limit 1
select year from matches group by year order by count(*) desc limit 1
select year from matches group by year order by count(*) desc limit 1
select t2.winner_name, t2.winner_rank_points from matches as t1 join
select t2.winner_name, t1.winner_rank_points from matches as t1 join players as t2
select t1.winner_name from matches as t1 join
select t2.winner_name, t1.winner_rank_points from matches as t1 join
select t2.loser_name, t2.winner_name from matches as t1 join
select t2.winner_name, t2.loser_name from matches as t1 join
select distinct(t2.player_id), t1.first_name from players as t1 join rankings as t2 on t1.player_id = t2.player_id group by t2.player_id
select first_name, avg(t2.winner_rank) from players as t1 join rankings as t2
select t3.player_id, t2.winner_rank_points from matches as t1 join rankings as t2
select t1.first_name, sum(t2.ranking_points) from players as t1 join rankings as t2 on t1.player_id = t2.player_id group by t1.player_id order by count(*) desc limit 1
select country_code, count(*) from players group by country_code
select country_code, count(*) from players group by country_code
select country_code from players group by country_code order by count(*) desc limit 1
select country_code from players group by country_code order by count(*) desc limit 1
select country_code from players group by country_code having count(*) > 50
select country_code from players group by country_code having count(*) > 50
select ranking_date, count(*) from rankings group by ranking_date
select t2.ranking_date, count(*) from players as t1 join rankings as t2 on t1.player_id = t2.player_id group by t2.ranking_date
select count(*), year from matches group by year
select count(*), year from matches group by year
select t2.winner_name, t2.winner_rank from matches as t1 join rankings as t2
select winner_name, winner_rank from matches order by year asc limit 3
select count(*) from matches where tourney_name = 'WTA Championships' intersect select count(*) from matches where tourney_name = 'WTA Championships'
select count(*) from matches where tourney_name = 'WTA Championships'
select t1.first_name, t1.country_code, t1.birth_date from players as t1 join matches as t2 on t1.player_id = t2.winner_id where t2.winner_rank_points = (select max(winner_rank) from matches)
select t1.first_name, t1.country_code, t1.birth_date from players as t1 join matches as t2 on t1.player_id = t2.winner_id where t2.winner_rank_points = (select max(winner_rank) from matches)
select count(*), hand from players group by hand
select hand, count(*) from players group by hand
select count(*) from ship where disposition_of_ship = 'Captured'
select name, tonnage from
select name, date, result from battle
select max(t2.killed), min(t2.injured) from death as t1 join death as t2 on t1.id = t2.id
select avg(injured) from death
select t2.killed, t2.injured from ship as t1 join death as t2 on t1.id =
select name, result from battle where bulgarian_commander!= 'Boril'
select distinct(t2.id), t2.name from ship as t1 join battle as t2 on t1.ship_type = 'Brig'
select id, name from battle where killed > 10
select t1.id, t1.name from ship as t1 join death as t2 on t1.id= t2.injured group by t2.id order by count(*) desc limit 1
select distinct(T1.name) from battle as t1 join battle as t2 on t1.id = t2.bulgarian_commander where t2.bulgarian_commander = 'Kaloyan' intersect select distinct(t2.name) from battle as t1 join battle as t2 on t1
select count(distinct result) from battle
select count(*) from battle where id not in ( select t1.id from battle as t1 join ship as t2 on
select t2.name, t2.date from ship as t1 join battle as t2 on t1.id = 2 and t1.lost_in_battle = t2.id where t1.name = 'Lettice' and t1.name = 'HMS Atalanta'
select name, result, bulgarian_commander from battle where ship_type not in (select t1.id from battle as t1 join ship as t2 on
select note from death where note like '%east%'
select address_id from addresses where line_1 = 1 and line_2 = 2
select line_1, line_2 from addresses
select count(*) from courses
select count(*) from courses
select course_description from courses where course_name ='math'
select course_description from courses where course_name ='math'
select t2.zip_postcode from addresses as t1 join addresses as t2 on t1.address_id = t2.address_id where t1.city = 'Port Chelsea'
select zip_postcode from addresses where city = 'Port Chelsea'
select t2.department_name, t2.department_id from degree_programs as t1 join departments as t2 on t1.department_id = t2.department_id group by t1.department_id order by count(*) desc limit 1
select t2.department_name, t2.department_id from degree_programs as t1 join departments as t2 on t1.department_id = t2.department_id group by t1.department_id order by count(*) desc limit 1
select count(*) from departments where degree_program_id =
select count(distinct department_id) from degree_programs
select count(*) from courses
select count(*) from courses
select count(*) from departments where department_name = 'Engineering'
select count(*) from departments where department_name = 'Engineering'
select section_name, section_description from sections
select section_name, section_description from sections
select t1.course_name, t1.course_id from courses as t1 join sections as t2 on t1.course_id = t2.course_id group by t2.course_id having count(*) <= 2
select t2.course_name, t2.course_id from sections as t1 join courses as t2 on t1.course_id = t2.course_id group by t1.course_id having count(*) < 2
select section_name from sections order by section_name desc
select section_name from sections order by section_name desc
select t2.semester_name, t2.student_id from student_enrolment_courses as t1 join semesters as t2
select t2.semester_name, t2.student_id from student_enrolment_courses as t1 join students as t2
select department_description from departments where department_name like '%computer%'
select department_description from departments where department_name like '%computer%'
select first_name, middle_name, last_name, student_id from student_enrolment
select t2.first_name, t2.middle_name, t2.last_name, t2.degree_program_id from student_enrolment as t1 join courses as t2
select t2.first_name, t2.middle_name, t2.last_name from degree_programs as t1 join student_enrolment_courses as t2
select t2.first_name, t2.middle_name, t2.last_name from student_enrolment as t1 join students as t2 on t1.student_id = t2.student_id where t1.degree_program_id = (select degree_program_id from student_enrolment)
select t1.degree_program_id from student_enrolment as t1 join students as t2 on t1.student_id = t2.student_id group by t1.degree_program_id order by count(*) desc limit 1
select t3.degree_summary_name from student_enrolment as t1 join students as t2 on t1.student_id = t2.student_id
select t2.course_id, t2.semester_id from student_enrolment_courses as t3 join students as t4 on t4.student_id = t1.student_id
select t2.degree_program_id, t2.degree_summary_name from student_enrolment_courses as t1 join students as t2
select t1.student_id, t2.first_name, t2.middle_name, count(*) from student_enrolment as t1 join students as t2 on t1.student_id = t2.student_id group by t1.student_id order by count(*) desc limit 1
select first_name, middle_name, last_name, student_enrolment_id, count(*) from student_enrolment
select semester_name from semesters except select t1.semester_name from semesters as t1 join student_enrolment as t2 on t1.semester_id = t2.student_id
select semester_name from semesters where semester_id not in (select semester_id from student_enrolment)
select t1.course_name from courses as t1 join student_enrolment_courses as t2 on t1.course_id = t2.course_id where t2.student_enrolment_id = (select semester_id from student_enrolment)
select t1.course_name from courses as t1 join student_enrolment_courses as t2 on t1.course_id = t2.course_id where t2.student_enrolment_id = (select semester_id from student_enrolment)
select t1.course_name from courses as t1 join student_enrolment_courses as t2 on t1.course_id = t2.course_id group by t1.course_name order by count(*) desc limit 1
select t1.course_name from courses as t1 join student_enrolment_courses as t2 on t1.course_id = t2.course_id group by t1.course_name order by count(*) desc limit 1
select last_name from students where current_address_id!= 'North Carolina' except select t1.last_name from students as t1 join student_enrolment_courses as t2 on t1.student_id = t2.student_id
select t2.last_name from student_enrolment as t1 join students as t2 on t1.student_id = t2.student_id where t1.state_province_county
select transcript_date, course_id from transcripts
select transcript_date, course_id from transcripts
select cell_mobile_number from students where first_name = 'Timmothy' and last_name = 'Warwick'
select cell_mobile_number from students where first_name = 'Timmothy' and last_name = 'Keith'
select first_name, middle_name, last_name from students order by date_first_registered asc limit 1
select first_name, middle_name, last_name from students order by date_first_registered asc limit 1
select first_name, middle_name, last_name from students where student_enrolment_id = (select student_enrolment_id from student_enrolment order by date_first_registered
select t2.first_name, t2.middle_name, t2.last_name from student_enrolment as t1 join students as t2 on t1.student_id = t2.student_id order by t2.date_first_registered asc limit 1
select distinct(t2.first_name) from addresses as t1 join students as t2 on t1.address_id = t2.current_address_id
select first_name from students where current_address_id = (select current_address_id from students)
select t2.address_id, t1.line_3 from addresses as t1 join student_enrolment_courses as t2
select t2.address_id, t1.line_1, t2.line_2 from addresses as t1 join student_enrolment_courses as t2
select avg(t1.transcript_date) from transcripts as t1 join student_enrolment_courses as t2 on t1.student_id
select avg(transcript_date) from transcripts
select date_first_registered, other_details
select transcript_date, other_details from transcripts
select count(*) from transcripts
select count(*) from transcripts
select max(t2.transcript_date) from student_enrolment_courses as t1 join transcripts as t2 on t1.student_course_id = t2.student_i
select max(t1.date_left) from student_enrolment as t2 join transcript_contents as t3 on t1.student_enrolment_id = t2.student_
select count(*) from student_enrolment
select max(student_enrolment_id) from student_enrolment_courses
select t2.transcript_date, t1.student_id from student_enrolment as t1 join transcripts as t2 on t1.transcript_id
select t2.
select semester_id from student_enrolment as t1 join students as t2 on t1.student_id = t2.student_id
select semester_id from student_enrolment as t1 join students as t2 on t1.student_id = t2.student_id where t2.student_id = (semester_id) intersect select semester_id from student_enrolment as t1 join students as t2 on t1.student_id = t2.student_id where t2.student_
select count(*) from students where current_address_id = (select current_address_id from students)
select distinct(address_id) from addresses as t1 join student_enrolment_courses as t2 on t1.address_id = t2.address_id
select * from student_enrolment_courses order by student_enrolment_id desc
select other_student_details from students order by other_student_details desc
select section_id from sections group by section_id order by count(*) desc limit 1
select section_description from sections where section_name = 'h'
select first_name from students where permanent_address_id like '%hai%' or cell_mobile_number = '09700166582'
select first_name from students where permanent_address_id like '%hai%' or cell_mobile_number = '09700166582'
select title from cartoon order by title
select title from cartoon order by title
select title from cartoon where directed_by = "Ben Jones"
select title from cartoon where directed_by = 'Ben Jones'
select count(*) from cartoon where written_by = 'Joseph Kuhr'
select count(*) from cartoon where written_by = 'James Kuhr'
select t2.title, t1.directed_by from cartoon as t1 join cartoon as t2 on t1.title = t2.title where t1.directed_by = 'Null' order by t2.air
select t2.title, t2.directed_by from tv_series as t1 join cartoon as t2 on t1.id = t2.
select title from cartoon where directed_by = "Ben Jones" or directed_by = "Brandon Vietti"
select title from cartoon where directed_by = 'Ben Jones' or directed_by = 'Ben Jones'
select country, count(*) from tv_channel group by country order by count(*) desc limit 1
select country, count(*) from tv_channel group by country order by count(*) desc limit 1
select count(distinct t1.series_name), t1.content from tv_channel as t1 join
select count(distinct t1.series_name), t1.content from tv_channel as t1 join
select content from tv_channel where series_name = 'Sky Radio'
select content from tv_channel where series_name = 'City Radio'
select package_option from tv_channel where series_name = 'Sky Radio'
select package_option from tv_channel where series_name = 'Sky Radio'
select count(*) from tv_channel where language = 'English'
select count(*) from tv_channel where language = 'English'
select language, count(*) from tv_channel group by language order by count(*) asc limit 1
select language, count(*) from tv_channel group by language order by count(*) asc limit 1
select language, count(*) from tv_channel group by language
select count(*), language from tv_channel group by language
select t2.series_name from cartoon as t1 join tv_channel as t2 on t1.id = t2.channel
select t1.series_name from tv_channel as t1 join cartoon as t2 on t1.id = t2.
select t2.title from tv_channel as t1 join cartoon as t2 on t1.id = t2.
select t2.title from tv_channel as t1 join t
select episode from tv_series order by rating
select episode from tv_series order by rating
select episode, rating from tv_series order by rating desc limit 3
select episode, t2.rating from tv_series as t1 join
select min(share), max(share) from tv_series
select max(share), min(share) from tv_series
select air_date from tv_series where episode = 'A love of a Lifetime'
select air_date from tv_series where episode = 'A love of a Lifetime'
select weekly_rank from tv_series where episode = 'A love of a Lifetime'
select weekly_rank from tv_series where episode = 'A love of a Lifetime'
select t2.series_name from tv_series as t1 join
select t2.series_name from tv_series as t1 join
select episode from tv_series where t1.series_name = 'Sky Radio' 
select episode from tv_series
select count(*) from cartoon where directed_by = 'Manufacturer' group by directed_by
select directed_by, count(*) from cartoon group by directed_by
select production_code, channel from cartoon where original_air_date like '%avg(air_date) ='
select t1.channel, t1.id, t2.title from cartoon as t1 join t
select package_option, series_name from tv_channel where hight_definition_tv = (select hight_definition_tv from tv_channel where hight_definition_tv = "High")
select package_option, t2.series_name from tv_channel as t1 join t
select distinct(country) from tv_channel as t1 join cartoon as t2 on t1.id = t2.channel where t2.written_by = 'Tony Casey'
select t1.country from tv_channel as t1 join cartoon as t2 on t1.id = t2.
select country from tv_channel where t1.channel = 'Tony Casey'
select country from cartoon
select t1.series_name, t1.country from tv_channel as t1 join cartoon as t2 on t1.id = t2.directed_by where t2.directed_by = 'Beijing Jones' intersect select t1.series_name, t2.country from t
select t1.series_name, t1.country from tv_channel as t1 join cartoon as t2 on t1.id = t2.channel
select t2.pixel_aspect_ratio_par, t2.country from tv_channel as t1 join
select t1.pixel_aspect_ratio_par, t1.country
select id from tv_channel where country > 2
select id from tv_channel where count(*) > 2
select id from tv_channel except select id from cartoon where directed_by = 'Ben Jones'
select t1.id from tv_channel as t1 join cartoon as t2 on t1.channel
select package_option from tv_channel except select t2.package_option from cartoon as t1 join t
select package_option from tv_channel where id not in ( select t2.package_option from cartoon as t1 join
select count(*) from poker_player
select count(*) from poker_player
select earnings from poker_player order by earnings desc
select earnings from poker_player order by earnings desc
select final_table_made, best_finish from poker_player
select final_table_made, best_finish from poker_player
select avg(t1.e
select avg(t1.e
select money_rank from poker_player order by earnings desc limit 1
select money_rank from poker_player order by earnings desc limit 1
select max(t1.final_table_made) from poker_player as t1 join people as t2 on t1.poker_player_id = t2.people_id where t2.e
select max(t1.final_table_made) from poker_player as t1 join people as t2 on t1.poker_player_id = t2.people_id where
select t2.name from poker_player as t1 join people as t2 on t1.poker_player_id = t2.people_id
select t2.name from poker_player as t1 join people as t2 on t1.poker_player_id = t2.people_id
select t2.name from poker_player as t1 join people as t2 on t1.poker_player_id = t2.people_id where t1.
select t2.name from poker_player as t1 join people as t2 on t1.poker_player_id = t2.people_id where t1.money_
select t2.name from poker_player as t1 join poker_player as
select t2.name from poker_player as t1 join people as t2 on t1.poker_player_id = t2.people_id order by t1.final_table_made asc
select t2.birth_date from poker_player as t1 join people as t2 on t1.poker_player_id = t2.people_id where t1.money_rank = (select min(money_rank) from poker_player)
select t2.birth_date from poker_player as t1 join people as t2 on t1.poker_player_id = t2.people_id order by t1.money_rank asc limit 1
select t1.money_rank from poker_player as t1 join people as t2 on t1.poker_player_id = t2.people_id order by t2.height desc limit 1
select t1.money_rank from poker_player as t1 join people as t2 on t1.poker_player_id = t2.people_id order by t2.height desc limit 1
select avg(t1.e
select avg(height) from poker_player as t1 join people as t2 on t1.poker_player_id = t2.people_id where t2.height > 200
select t2.name from poker_player as t1 join people as t2 on t1.poker_player_id = t2.people_id order by t1.e
select t2.name from poker_player as t1 join people as t2 on t1.poker_player_id = t2.people_id order by t1.e
select nationality, count(*) from people group by nationality
select nationality, count(*) from people group by nationality
select nationality from people group by nationality order by count(*) desc limit 1
select nationality from people group by nationality order by count(*) desc limit 1
select nationality from people group by nationality having count(*) >= 2
select nationality from people group by nationality having count(*) >= 2
select name, birth_date from people order by birth_date asc
select name, birth_date from people order by birth_date
select name from people where nationality!= 'Russia'
select name from people where nationality!= 'Russia'
select name from people except select t1.name from people as t1 join poker_player as t2 on t1.people_id = t2.people_id
select name from people except select t1.name from people as t1 join poker_player as t2 on t1.people_id = t2.people_id
select count(distinct nationality) from people
select count(distinct nationality) from people
select count(distinct state) from area_code_state
select contestant_number, contestant_name from contestants order by contestant_name desc
select vote_id, phone_number, state from votes
select max(area_code) from area_code_state group by area_code order by count(*) asc limit 1
select max(created) from votes where state = 'CA'
select contestant_name from contestants where contestant_name!= 'Jessie Alloway'
select distinct(t1.state), t2.created from votes as t1 join votes as t2 on t1.vote_id = t2.vote_id
select t2.contestant_number, t2.contestant_name from votes as t1 join contestants as t2 on t1.contestant_number = t2.contestant_number group by t1.contestant_number having count(*) >= 2
select t2.contestant_number, t2.contestant_name from votes as t1 join contestants as t2 on t1.contestant_number = t2.contestant_number group by t1.contestant_number order by count(*) asc limit 1
select count(*) from votes where state = 'NY' or state = 'CA'
select count(*) from contestants where contestant_number not in ( select contestant_number from votes );
select t2.area_code from votes as t1 join area_code_state as t2 on t1.area_code
select t2.created, t2.state, t2.phone_number from contestants as t1 join votes as t2 on t1.contestant_number = t2.contestant_number where t1.contestant_name = 'Tabatha Gehling'
select t2.area_code from contestants as t1 join votes on t1.contestant_number = t2.contestant_number and t1.contestant_name = 'Tabatha Gehling'
select contestant_name from contestants where contestant_name like '%al%'
select name from country where indepyear > 1950
select name from country where
select count(*) from country where governmentform = 'Republik'
select count(*) from country where governmentform = 'Republik'
select sum(t2.surfacearea) from country as t1 join country as t2 on
select sum(t2.surfacearea) from country as t1 join
select continent from country where name = 'Angulla'
select continent from country where name = 'Angulla'
select t2.region from city as t1 join country as t2 on t1.id = t2.country
select region from city
select t2.language from country as t1 join countrylanguage as t2 on t1.country
select language from country as t1 join countrylanguage as t2 on t1.country
select population, lifeexpectancy from country where name = 'Brazil'
select population, lifeexpectancy from country where name = 'Brazil'
select region, population from country where localname = 'Anggola'
select region, population from country where name = 'Anggola'
select avg(lifeexpectancy) from country where region = 'Central Africa'
select avg(lifeexpectancy) from country where region = 'Central Africa'
select name from country where lifeexpectancy = (select min(lifeexpectancy) from country where continent = 'Asie')
select name from country where continent = 'Asie' order by lifeexpectancy asc limit 1
select sum(population), max(gnp) from country where continent = 'Asie'
select count(*), gnp from country where continent = 'Asie' group by gnp order by count(*) desc limit 1
select avg(lifeexpectancy) from country where continent = 'Africa' and governmentform = 'Republik'
select avg(lifeexpectancy) from country where continent = 'Africa' and governmentform = 'Republik'
select sum(surfacearea) from country where continent = 'Asie' intersect select sum(surfacearea) from country where continent = 'Europe'
select sum(surfacearea) from country where continent = 'Asie' or continent = 'Europe'
select count(*) from city where district = 'Gelderland'
select sum(population) from city where district = 'Gelderland'
select avg(t1.gnp), sum(t1.population) from country as t1 join country as t2 on t1.country
select avg(gnp), sum(population) from country where governmentform = 'United States'
select count(distinct language) from countrylanguage
select count(distinct language) from
select count(*) from country where continent = 'Africa'
select count(distinct governmentform) from country where continent = 'Africa'
select count(*) from country where name = 'Aruba'
select count(*) from country where name = 'Aruba'
select count(*) from country where name = 'Afghanistan'
select count(*) from country where name = 'Afghanistan'
select t1.name from country as t1 join countrylanguage as t2 on
select t1.name from country as t1 join countrylanguage as t2 on
select continent from country group by continent order by count(*) desc limit 1
select continent from country
select count(*) from country as t1 join countrylanguage as t2 on
select count(*) from country as t1 join countrylanguage as t2 on
select language from countrylanguage where language = "English" intersect select language from countrylanguage where language = "France"
select t1.name from country as t1 join countrylanguage as t2 on
select t1.name from country as t1 join countrylanguage as t2 on
select t1.name from country as t1 join countrylanguage as t2 on
select count(*) from country as t1 join countrylanguage as t2 on t1.country
select count(*) from country as t1 join countrylanguage as t2 on t1.country
select region from country where language = "English" or language = "Hoslecht
select region from country where language = 'Hoslecht' or language = 'Englise
select country
select distinct (select avg(countrycode), t2.language from country as t1 join countrylanguage as t2 on t1
select t2.language from country as t1 join countrylanguage as t2 on t1.country
select t2.language from country as t1 join countrylanguage as t2 on t1.country
select distinct(language) from country as t1 join countrylanguage as t2 on
select distinct (t2.language) from country as t1 join countrylanguage as t2 on t1.country
select t2.name from country as t1 join city as t2 on t1.country
select t1.name from city as t1 join countrylanguage as t2 on t1.id = t2.countrycode where t2.language = 'English' group by t1.name order by count(*) desc limit 1
select name, population, lifeexpectancy from country where continent = 'Asie' order by surfacearea desc limit 1
select name, population, lifeexpectancy from country where continent = 'Asie' order by lifeexpectancy desc limit 1
select avg(t1.lifeexpectancy) from country as t1 join countrylanguage as t2 on
select avg(t1.lifeexpectancy) from country as t1 join countrylanguage as t2 on
select sum(population) from country where language not in (select t1.language from country as t
select count(*) from country where language not in (select 'countrycode' from country where language like '%english%'
select 'official' from country where headofstate = 'Brittrix'
select 'official' from country where headofstate = 'Brittrix'
select count(distinct t2.language) from country as t1 join countrylanguage as t2 on t1
select count(distinct t2.language) from country as t1 join countrylanguage as t2 on
select region from country where surfacearea > (select max(surfacearea) from country where continent = 'Europe')
select distinct(surfacearea) from country where continent = 'Europe'
select name from country where continent < 'Asie'
select name from country where continent = 'Africa' and population < 'Asie'
select t2.name from country as t1 join country as t2 on t1.country
select t1.country
select countrycode from country
select countrycode from country
select countrycode from countrylanguage where language!= 'English'
select countrycode from countrylanguage where language!= 'English'
select code from country where language not in (select 'English' from country where governmentform!= 'Republica') and governmentform!= 'Republica'
select code from country where language not in (select 'English') and governmentform!= 'Republik'
select t2.name from country as t1 join country as t2 on
select t1.name from city as t1 join countrylanguage as t2 on t1.id = t2.country
select distinct(t2.region), t1.name from city as t1 join country as t2 on t1.id = t2.country
select distinct(t1.name) from city as t1 join countrylanguage as t2 on t1.id = t2.country
select name, indepyear, surfacearea from country order by population asc limit 1
select t1.name, t1.indepyear, t1.surfacearea from country as t1 join country as t2 on t1.country
select population, name, headofstate from country order by surfacearea desc limit 1
select name, population, headofstate from country order by surfacearea desc limit 1
select t1.name, count(*) from country as t1 join countrylanguage as t2 on t1.code = t2.country
select t1.name, count(*) from country as t1 join countrylanguage as t2 on
select count(*), district from city where population > (select avg(population) from city) group by district
select district, count(*) from city where population > (select avg(population) from city) group by district
select governmentform, sum(lifeexpectancy) from country group by governmentform having avg(lifeexpectancy) > 72
select distinct(governmentform), sum(lifeexpectancy), governmentform from country where lifeexpectancy > 72 group by governmentform having avg(lifeexpectancy) >= 2
select continent, avg(lifeexpectancy) from country where lifeexpectancy < 72 group by continent
select distinct(t2.region), t1.population, avg(t2.lifeexpectancy) from country as t1 join
select name, region from country order by surfacearea desc limit 5
select name, surfacearea from country order by surfacearea desc limit 5
select name from country order by population desc limit 3
select name from country order by population desc limit 3
select name from country order by population asc limit 3
select name from country order by population asc limit 3
select count(*) from country where continent = 'Asie'
select count(*) from country where continent = 'Asie'
select name from country where continent = 'Europe' and population = 80000
select name from country where continent = 'Europe' and population > 80000
select sum(population), avg(surfacearea) from country where continent = 'North America' and population > 3000
select sum(population), avg(surfacearea) from country where region = 'North America' and population > 3000
select
select name from city where population between 160000 and 900000
select language from country
select language from country
select countrycode, count(*) from country
select distinct(countrycode), count(*) from country
select count(*) from country where language = 'Spain'
select count(*) from country where language = 'Spanish'
select t2.countrycode from country as t1 join countrylanguage as t2 on
select countrycode from countrylanguage where language = 'Spain' group by countrycode order by count(*) desc limit 1
select count(*) from conductor
select count(*) from conductor
select name from conductor order by age asc
select name from conductor order by age
select name from conductor where nationality!= 'United States'
select name from conductor where nationality!= 'United States'
select record_company from orchestra order by year_of_founded desc
select record_company from orchestra order by year_of_founded desc
select avg(attendance) from show
select avg(attendance) from show
select max(share), min(share) from performance where type!= 'Live final'
select max(share), min(share) from performance where type!= 'Live final'
select count(distinct nationality) from conductor
select count(distinct nationality) from conductor
select name from conductor order by year_of_work desc
select name from conductor order by year_of_work desc
select name from conductor order by year_of_work desc limit 1
select name from conductor order by year_of_work desc limit 1
select t1.name, t2.orchestr
select t1.name, t2.orchestr
select t1.name from conductor as t1 join orchestra as t2 on t1.orchestr
select t2.name from performance as t1 join conductor as t2 on t1.orchestr
select t2.name from orchestra as t1 join conductor as t2 on t1.orchestr
select t2.name from orchestra as t1 join conductor as t2 on t1.orchestr
select t1.name from conductor as t1 join orchestra as t2 on t1.orchestr
select t2.name from orchestra as t1 join conductor as t2 on t1.orchestr
select record_company, count(*) from orchestra group by record_company
select record_company, count(*) from orchestra group by record_company
select major_record_format from orchestra order by count(*) asc
select major_record_format from orchestra order by count(*)
select record_company from orchestra group by record_company order by count(*) desc limit 1
select record_company from orchestra group by record_company order by count(*) desc limit 1
select orchestra from orchestra where orchestra_id not in (select orchestra_id from performance)
select orchestra from orchestra where orchestra_id not in (select orchestra_id from performance)
select record_company from orchestra where year_of_founded < 2003 intersect select record_company from orchestra where year_of_founded > 2003
select record_company from orchestra where year_of_founded < 2003 intersect select record_company from orchestra where year_of_founded > 2003
select count(*) from orchestra where major_record_format = "CD" or major_record_format = "DVD"
select count(*) from orchestra where major_record_format = 'CD' or major_record_format = 'DVD'
select t2.year_of_founded from performance as t1 join orchestra as t2 on t1.orchestr
select t1.year_of_founded from orchestra as t1 join performance as t2 on t1.orchestr
select count(*) from highschooler
select count(*) from highschooler
select name, grade from highschooler
select name, grade from highschooler
select grade from highschooler
select distinct(grade) from highschooler
select grade from highschooler where name = 'Keith'
select grade from highschooler where name = 'Keith'
select name from highschooler where grade = 10
select name from highschooler where grade = 10
select id from highschooler where name = 'Keith'
select id from highschooler where name = 'Keith'
select count(*) from highschooler where grade = 9 or grade = 10
select count(*) from highschooler where grade = 9 or grade = 10
select grade, count(*) from highschooler group by grade
select grade, count(*) from highschooler group by grade
select grade from highschooler group by grade order by count(*) desc limit 1
select grade from highschooler group by grade order by count(*) desc limit 1
select grade from highschooler group by grade having count(*) >= 4
select grade from highschooler group by grade having count(*) >= 4
select student_id, count(*) from friend group by student_id
select count(*) from highschooler as t1 join friend as t2 on t1.student_id
select t2.name, count(t2.friend_id) from highschooler as t1 join
select t2.name, count(*) from friend as t1 join highschooler as t2 on t1.student_id = t2.student_id
select t2.name from friend as t1 join highschooler as t2 on t1.student_id = t2.student_id
select t1.name from highschooler as t1 join friend as t2 on t01.student_id = t2.student_id
select t2.name from friend as t1 join highschooler as t2 on t1.student_id = t2.student_id
select t2.name from friend as t1 join highschooler as t2 on t1.student_id = t2.student_id
select name from highschooler where student_id = (select t1.student_id from highschooler as t3 join friend as t4 on t3.id = t1.student_id
select t2.friend_id from highschooler as t1 join friend as t2 on t2.friend_id = t2.friend_id where t2.student_id = 'Keith'
select count(*) from friend as t1 join highschooler as t2 on t1.student_id = t2.student_id
select count(*) from friend as t1 join highschooler as t2 on t1.student_id = t2.student_id
select t2.student_id from highschooler as t1 join friend as t2 on t3.student_id = t2.student_id
select id from highschooler except select id from highschooler
select name from highschooler except select t1.name from highschooler as t1 join friend as t2 on t1.student_id
select distinct(t2.name) from friend as t1 join highschooler as t2 on t1.student_id = t2.student_id
select t2.id from likes as t1 join highschooler as t2 on t1.student_id = t2.student_id
select student_id from likes intersect select student_id from likes
select t2.name from likes as t1 join highschooler as t2 on t1.student_id = t2.student_id
select t2.name from likes as t1 join highschooler as t2 on t1.student_id = t2.student_id
select count(*), student_id from likes group by student_id
select student_id, count(*) from likes group by student_id
select t1.name, count(*) from highschooler as t1 join likes as t2 on t2.student_id = t1.id group by t1.name
select count(*), t1.name from highschooler as t1 join likes as t2 on t1.student_id
select t2.name from likes as t1 join highschooler as t2 on t1.student_id = t2.student_id
select t1.name from highschooler as t1 join likes as t2 on t2.student_id = t2.student_id group by t2.student_id order by count(*) desc limit 1
select t2.name from likes as t1 join highschooler as t2 on t1.student_id = t2.student_id
select t2.name from likes as t1 join highschooler as t2 on t1.student_id = t2.student_id
select t2.name from highschooler as t1 join
select t2.name from highschooler as t1 join
select count(*) from likes as t1 join highschooler as t2 on t1.student_id = t2.student_id
select count(*) from highschooler where name = 'Keith'
select avg(t2.grade) from friend as t1 join highschooler as t2 on t1.student_id = t2
select avg(t2.grade) from friend as t1 join highschooler as t2 on t1.student_id = t2
select min(grade) from highschooler where student_id not in ( select min(grade) from highschooler where friend_id = 'T'
select min(grade) from highschooler where student_id not in (select student_id from friend
select state from owners intersect select state from professionals
select state from owners intersect select state from professionals
select avg(t1.age) from dogs as t1 join treatments as t2 on t1.dog_id = t2.dog_id where t2.date_of_treatment = 'Test_id'
select avg(t1.age) from dogs as t1 join treatments as t2 on t1.dog_id = t2.dog_id where t2.date_of_treatment = 'Test'
select t2.professional_id, t2.last_name, t2.cell_number from treatments as t1 join professionals as t2 on
select t2.professional_id, t2.last_name, t2.cell_number from treatments as t1 join professionals as t2 on t1.professional_id = t2.professional_id where t2.state = 'Indiana' group by t1.treatment_id having count(*) > 2
select name from dogs where owner_id not in ( select dog_id from treatments where cost_of_treatment > 1000 )
select name from dogs where owner_id not in ( select dog_id from treatments where cost_of_treatment > 1000)
select first_name from professionals
select first_name from professionals
select t1.professional_id, t1.role_code, t1.email_address from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id where t2.treatment_type_code = "null"
select professional_id, role_code, email_address from professionals except select t2.treatment_id, t2.role_code, t2.email_address from dogs as t1 join treatments as t2
select t2.owner_id, t2.first_name, t2.last_name from dogs as t1 join owners as t2 on t1.owner_id = t2.owner_id group by t2.owner_id order by count(*) desc limit 1
select t2.owner_id, t2.first_name, t2.last_name from dogs as t1 join owners as t2 on t1.dog_id = t2.owner_id group by t2.owner_id order by count(*) desc limit 1
select t2.professional_id, t1.role_code, t1.first_name from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id group by t2.professional_id having count(*) >= 2
select t2.professional_id, t1.role_code, t1.first_name from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id group by t2.professional_id having count(*) >= 2
select breed_code from dogs group by breed_code order by count(*) desc limit 1
select breed_code from dogs group by breed_code order by count(*) desc limit 1
select t1.owner_id, t1.last_name from owners as t1 join treatments as t2 on t1.owner_id = t2.owner_id
select t1.owner_id, t1.last_name from owners as t1 join treatments as t2 on t1.owner_id = t2.dog_id group by t1.owner_id order by count(*) desc limit 1
select t1.treatment_type_description from treatment_types as t1 join treatments as t2 on t1.treatment_type_code = t2.treatment_type_code group by t2.treatment_type_code order by sum(t2.cost_of_treatment) asc limit 1
select t2.treatment_type_description from treatments as t1 join treatment_types as t2 on t1.treatment_type_code = t2.treatment_type_code group by t1.treatment_type_code order by sum(t1.cost_of_treatment) asc limit 1
select t2.owner_id, t2.zip_code from dogs as t1 join owners as t2 on t1.dog_id = t2.owner_id group by t2.owner_id order by count(*) desc limit 1
select t2.owner_id, t2.zip_code from dogs as t1 join owners as t2 on t1.dog_id = t2.owner_id group by t2.owner_id order by count(*) desc limit 1
select t2.professional_id, t2.cell_number from treatments as t1 join treatment_types as t2
select t2.professional_id, t2.cell_number from treatments as t1 join professionals as t2 on t1.professional_id = t2.professional_id group by t1.treatment_type_code having count(*) >= 2
select first_name, last_name from professionals
select first_name, last_name from professionals where role_code < (select avg(cost_of_treatment) from treatments)
select t2.date_of_treatment, t3.first_name from dogs as t1 join treatments as t2 on t1.dog_id = t2.dog_id join professionals as t3 on t2.professional_id = t3.professional_id
select t1.date_of_treatment, t2.first_name from treatments as t1 join professionals as t2 on t1.professional_id = t2.professional_id where t1.professional_id = (select professional_id from treatments)
select t2.cost_of_treatment, t1.treatment_type_description from treatment_types as t1 join treatments as t2 on t1.treatment_type_code = t2.treatment_type_code
select t2.cost_of_treatment, t1.treatment_type_description from treatment_types as t1 join treatments as t2 on t1.treatment_type_code = t2.treatment_type_code
select t1.first_name, t1.last_name, t2.size_code from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id where t2.name = 'dog'
select t1.first_name, t1.last_name, t2.size_code from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id where t2.name = 'dog'
select t2.first_name, t1.name from dogs as t1 join owners as t2 on t1.dog_id = t2.owner_id where t2.owner_id = (select dog_id from dogs)
select t2.first_name, t1.name from dogs as t1 join owners as t2 on t1.dog_id = t2.owner_id
select t2.name, t2.treatment_type_code from treatments as t1 join dogs as t2
select t2.name, t2.treatment_type_code from dogs as t1 join treatments as t2
select first_name, name from dogs as t1 join owners as t2 on t1.dog_id = t2.owner_id where t2.state = 'Virgina'
select t2.first_name, t1.name from dogs as t1 join owners as t2 on t1.dog_id = t2.owner_id where t2.state = 'Virgin'
select t2.date_arrived, t2.date_departed from treatments as t1 join dogs as t2 on t1.dog_id = t2.dog_id where t1.treatment_type_code = "null"
select t2.date_arrived, t2.date_departed from treatments as t1 join dogs as t2 on t1.dog_id = t2.dog_id where t1.treatment_type_code = "null"
select t2.last_name from dogs as t1 join owners as t2 on t1.dog_id = t2.owner_id order by t1.date_adopted asc limit 1
select name from dogs order by date_of_birth asc limit 1
select email_address from professionals where state = 'Hawaii' or state = 'Wisconsin'
select email_address from professionals where state = 'Hawaii' or state = 'Wisconsin'
select date_arrived, date_departed from dogs
select date_arrived, date_departed from dogs
select count(*) from treatments
select count(*) from dogs as t1 join treatments as t2 on t1.dog_id = t2.dog_id where t2.date_of_treatment = (select max(date_of_treatment) from treatments)
select count(*) from treatments as t1 join dogs as t2 on t1.dog_id = t2.dog_id
select count(*) from professionals as t1 join treatments as t2 on t1.professional_id = t2.treatment_id where t2.date_of_treatment = "T"
select role_code, street, state from professionals where city like '%west%'
select role_code, street, city, state from professionals where city like '%west%'
select first_name, last_name, email_address from owners where state like '%north%'
select first_name, last_name, email_address from owners where state like '%north%'
select count(*) from dogs where age < (select avg(age) from dogs)
select count(*) from dogs where age < (select avg(age) from dogs)
select max(cost_of_treatment) from treatments
select t2.cost_of_treatment from treatments as t1 join treatments as t2 on t1.treatment_id = t2.treatment_id order by t1.date_of_treatment desc limit 1
select count(*) from dogs where dog_id not in ( select dog_id from treatments );
select count(*) from dogs where dog_id not in ( select dog_id from treatments );
select count(*) from owners where owner_id not in ( select breed_code from dogs where abandoned_yn = 'T' );
select count(*) from owners where owner_id not in ( select breed_code from dogs );
select count(*) from professionals where professional_id not in ( select treatment_type_code from treatments );
select count(*) from professionals where professional_id not in ( select professional_id from treatments );
select name, age, weight from dogs where abandoned_yn = 1 and 0 = 'No'
select name, age, weight from dogs where abandoned_yn = 1 and 0 = 'No'
select avg(age) from dogs
select avg(age) from dogs
select age from dogs order by date_arrived asc limit 1
select age from dogs order by date_arrived asc limit 1
select charge_type, charge_amount from charges group by charge_type
select charge_type, charge_amount from charges
select charge_amount from charges group by charge_type order by count(*) desc limit 1
select charge_amount from charges order by charge_type desc limit 1
select email_address, cell_number, home_phone from professionals
select email_address, cell_number, home_phone from professionals
select breed_code, size_code
select distinct(t2.
select t2.first_name, t1.treatment_type_description from treatment_types as t1 join treatments as t2
select t2.first_name, t2.treatment_type_description from treatments as t1 join professionals as t2
select count(*) from singer
select count(*) from singer
select name from singer order by net_worth_millions asc
select name from singer order by net_worth_millions asc
select birth_year, citizenship from singer
select birth_year, citizenship from singer
select name from singer where citizenship!= 'France'
select name from singer where citizenship!= 'France'
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
select t1.title, t2.name from song as t1 join singer as t2 on t1.s
select title, name from song as t1 join singer as t2 on t1.s
select distinct(t2.name) from song as t1 join singer as t2 on t1.song_id = t2.song
select distinct(t2.name) from song as t1 join singer as t2 on t1.song_id = t2.song
select count(*) from singer group by name having count(*) > 1
select count(*) from singer group by count(*) having count(*) > 1
select t1.name, sum(t2.sales) from singer as t1 join song as t2 on t1.song_
select t1.name, sum(t2.sales) from singer as t1 join song as t2 on t1
select name from singer where singer_id not in (select singer_id from song)
select t1.title from song as t1 join song as t2 on t1.song_id = t2.song_id where t2.song_id not in (select song_id from song)
select citizenship from singer where birth_year < 1945 intersect select citizenship from singer where birth_year > 1955
select citizenship from singer where birth_year < 1945 intersect select citizenship from singer where birth_year > 1955
select sum(t1.apt_feature_1), t2.apt_feature_2 from other_available_features as t3 join
select t2.feature_type_name from other_available_features as t1 join ref_feature_types as t2 on t1.feature_id = t2.feature_id
select t2.property_type_description from properties as t1 join ref_property_types as t2 on t1.property_type_code = t2.property_type_code
select t2.property_name from properties as t1 join properties as t2 on t1.property_id = t2.property_id where t1.property_type_code = 'House' or t1.property_type_code > 1
