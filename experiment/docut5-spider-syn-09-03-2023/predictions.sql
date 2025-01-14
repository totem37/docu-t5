select count(*) from singer
select count(*) from singer
select name from singer order by age desc
select name, country, age from singer order by age desc
select avg(age), min(age), max(age) from singer where country = 'France'
select avg(age), min(age), max(age) from singer where country = 'F'
select song_name, song_release_year from singer order by age limit 1
select song_name, song_release_year from singer order by age limit 1
select distinct country from singer where age > 20
select distinct country from singer where age > 20
select country, count(*) from singer group by country
select
select song_name from singer where age > (select avg(age) from singer)
select t2.song_name from concert as t1 join singer as t2 on
select location, name from stadium where capacity between 5000 and 10000
select location, name from stadium where capacity between 5000 and 10000
select avg(capacity), max(capacity) from stadium
select avg(capacity), max(capacity) from stadium
select t2.name, t2.s
select t2.name, t2.s
select count(*) from concert where year = 2014 or year = 2015
select count(*) from concert where year = 2014 or year = 2015
select t2.name, count(*) from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id group by t1.stadium_id
select t2.name, count(*) from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id group by t1.stadium_id
select name, max(t2.capacity) from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id where t1.year >= 2014 group by t1.stadium_id
select name, count(*) from stadium where capacity > 2013 group by name order by count(*) desc limit 1
select year from concert group by year order by count(*) desc limit 1
select year from concert group by year order by count(*) desc limit 1
select name from stadium where stadium_id not in (select stadium_id from concert)
select name from stadium where stadium_id not in (select stadium_id from concert)
select country from singer where age > 40 or age < 30
select name from stadium except select t2.name from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id where t1.year = 2014
select name from stadium except select t2.name from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id where t1.year = 2014
select t2.song_name, t1.theme, count(*) from concert as t1 join singer as t2 on t1
select t2.name, t2.theme, count(*), t1.song_name from singer_in_concert as
select t2.name, count(*) from singer_in_concert as t1 join concert as t2
select t1.name, count(*) from singer as t1 join singer_in_concert as t2 on t1.singer_id = t2.singer_id group by t1.song_name
select name from singer where song_release_year = 2014
select t2.name from concert as t1 join singer_in_concert as t2
select name, country from singer where song_name like '%hey%'
select t2.song_name, t2.country from concert as t1 join singer as t2 on t1.song_
select t2.name, t2.location from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id where t1.year = 2014 intersect select t2.name, t2.location from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id where t1.year = 2015
select t2.name, t2.a
select count(*) from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id order by t2.capacity desc limit 1
select count(*) from stadium as t1 join concert as t2 on t1.stadium_id = t2.stadium_id where t1.capacity = (select max(capacity) from stadium)
select count(*) from pets where weight > 10
select count(*) from pets where weight > 10
select t1.weight from pets as t1 join has_pet as t2 on t1.petid = t2.petid order by t2.p
select weight from pets order by weight asc limit 1
select max(weight), pettype from pets group by pettype
select max(weight), pettype from pets group by pettype
select count(*) from pets as t1 join has_pet as t2 on t1.petid = t2.petid join student as t3 on t2.stuid = t3.stuid where t3.age > 20;
select count(*) from pets as t1 join has_pet as t2 on t1.petid = t2.petid join student as t3 on t2.stuid = t3.stuid where t3.age > 20;
select count(*) from pets as t1 join has_pet as t2 on t1.petid = t2.petid join student as t3 on t2.stuid = t3.stuid where t3.sex = "F"
select count(*) from has_pet as t1 join pets as t2 on t1.petid = t2.petid join student as t3 on t3.stuid = t1.stuid where t3.sex = "F"
select count(distinct pettype) from pets
select count(distinct pettype) from pets
select distinct t1.fname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid where t2.pet
select distinct t1.fname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid where t2.pet
select t1.fname, t1.lname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid join pets as t3 on t2.petid = t3.petid where t3.pettype = 'kitties' intersect select t1.lname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid where t3.pettype = 'Poot
select distinct t1.fname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid where t2.pet
select major, age from student where stuid not in (select stuid from has_pet)
select t2.stuid, t2.age from has_pet as t1 join student as t2 on t1.stuid = t2.stuid where t1.pettype
select stuid from student except select stuid from has_pet
select stuid from student except select stuid from has_pet
select fname, age from student where stuid in (select t1.stuid from has_pet as t1 join pets as t2 on t1.petid = t2.petid where t2.pettype = 'cat')
select t1.fname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid where t2.pettype
select distinct t1.pettype, t1.weight from pets as t1 join has_pet as t2 on t1.petid = t2.petid order by t1.weight asc limit 1
select t1.pettype, t1.weight from pets as t1 join has_pet as t2 on t1.petid = t2.petid order by t1.weight asc limit 1
select petid, weight from pets where pet_age > 1
select petid, weight from pets where pet_age > 1
select avg(t1.age), max(t1.age), t1.sex from pets as t1
select avg(t1.age), max(t1.age), t2.stuid from has_pet
select avg(weight), pettype from pets group by pettype
select pettype, avg(weight) from pets group by pettype
select distinct t1.fname, t1.age from student as t1 join has_pet as t2 on t1.stuid = t2.stuid where t2.p
select distinct t3.fname, t3.age from has_pet as t1 join pets as t2 on t1.petid = t2.petid join student as t3 on t1.stuid = t3.stuid where t2.pet_age = 'T'
select stuid from has_pet as t1 join pets as t2 on t1.petid = t2.petid join has_pet as t3 on t3.petid = t2.petid join student as t4 on t4.stuid = t1.stuid
select stuid from has_pet join pets as t1 on t1.petid = t2.petid join has_pet as t2 on t1.petid = t2.petid join student as t3 on t3.stuid = t1.stuid
select count(*), t1.stuid from has_pet as t1 join pets as t2 on t1.petid = t2.petid group by t1.stuid
select count(*), t1.stuid from has_pet as t1 join pets as t2 on t1.petid = t2.petid group by t1.stuid
select t1.fname, t1.sex from student as t1 join has_pet as t2 on t1.stuid = t2.stuid group by t1.stuid having count(*) > 1
select t2.fname, t2.sex from has_pet as t1 join student as t2 on t1.stuid = t2.stuid group by t1.stuid having count(*) > 1
select t1.lname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid where t2.pet_
select t1.lname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid where t2.pet_
select avg(age) from student where stuid not in (select t1.stuid from has_pet as t1 join pets as t2 on t1.petid = t2.petid)
select avg(age) from student where stuid not in (select t1.stuid from has_pet as t1 join pets as t2 on t1.petid = t2.petid)
select count(*) from continents
select count(*) from continents
select continent, continent, count(*) from countries group by continent
select continent, countryname, count(*) from countries group by continent
select count(distinct continent) from countries
select count(distinct countryid) from countries
select t1.maker, count(*) from car_makers as t1 join model_list as t2 on t1.id = t2.modelid group by t1.id
select t1.fullname, t1.id, count(*) from car_makers as t1 join model_list as t2 on t2.modelid = t1.id group by t1.id
select t1.model from model_list as t1 join car_makers as t2 on t1.modelid = t2.id where t2.
select t1.model from model_list as t1 join cars_data as t2 on t1.model = t2.id order by t2.
select t1.model from model_list as t1 join cars_data as t2 on t1.model = t2.id where t2.weight < (select avg(weight) from cars_data)
select model from car_names where weight < (select avg(weight) from cars_data group by modelid
select t3.maker from model_list as t1 join car_makers as t2 on t1.maker = t2.id join car_makers as t3 group by t3.maker having count(*) >= 1970
select distinct t1.maker from car_makers as t1 join model_list as t2 on t1.id = t2.modelid where t2.model = 1970
select t1.make,
select t1.maker, t2.year from car_makers as t1 join cars_data as t2 on
select distinct model from model_list except select distinct model from car_makers
select distinct t1.model from model_list as t1 join cars_data as t2 on t1.modelid = t2.id where t2.year > 1980
select count(*), continent from continents group by continent
select t1.continent, count(*) from continents as t1 join car_makers as t2 on t1.con
select t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.country group by t1.countryid order by count(*) desc limit 1
select country from car_makers group by country
select count(*), t2.fullname from model_list as t1 join car_makers as t2 on t1.maker = t2.id group by t2.id
select t1.id, t1.fullname from car_makers as t1 join model_list as t2 on t1.id = t2.modelid group by t1.id
select accelerate from car_names as t1 join model_list as t2 on t1.model
select sum(t2.ac
select count(*) from car_makers where country = "France"
select count(distinct countryid) from countries where countryname = "France"
select count(distinct t1.model) from model_list as t1 join countries as t2 on
select count(*) from car_makers where country = "United States"
select avg(m
select t1.id, avg(t2.
select min(weight) from cars_data where year = 1974 and cylinders = 8
select min(weight) from cars_data where year = 1974
select
select maker, model from model_list
select t2.country, t1.id from car_makers as t1 join
select t2.countryname, t1.id from car_makers as t1 join countries as t2 on t1.country = t2.countryid group by t2.countryid having count(*) >= 1
select count(*) from cars_data where horsepower > 150
select count(*) from cars_data where horsepower > 150
select avg(weight), year from cars_data group by year
select avg(weight), year from cars_data group by year
select continent from continents where continent = "europe" group by continent having count(*) >= 3
select continent from continents where continent = "europe" group by continent having count(*) >= 3
select max(
select t1.id, t1.maker from car_makers as t1 join model_list as t2 on t1.id = t2.modelid where t2.cylinders
select model from car_names where mpg = (select mpg from cars_data group by mpg
select t1.model from model_list as t1 join cars_data as t2 on t1.model = t2.id order by t2.mpg desc limit 1
select avg(
select t1.id from car_makers as t1 join cars_data as t2 on t1.id = t2.c
select avg(t2.edispl) from model_list as t1 join cars_data as t2 on t1.modelid = t2.id where t1.model = "volvo"
select avg(edispl), t1.maker from model_list as t1 join car_names as t2 on t1.modelid = t2.id
select max(accelerate), cylinders from cars_data group by cylinders
select max(accelerate), cylinders from cars_data group by cylinders
select model from car_names group by model order by count(*) desc limit 1
select model from model_list group by model order by count(*) desc limit 1
select count(*) from cars_data where cylinders > 4
select count(*) from cars_data where cylinders > 4
select count(distinct id) from cars_data where year = 1980
select count(*) from car_makers where maker = "80%"
select count(*) from car_makers where fullname = "American Motor Company"
select count(*) from car_makers where maker = "American Motor Company"
select t1.fullname, t1.id from car_makers as t1 join model_list as t2 on t1.id = t2.modelid group by t1.id having count(*) > 3
select t1.maker, t1.id from car_makers as t1 join model_list as t2 on t1.id = t2.maker group by t1.id having count(*) > 3
select distinct
select distinct t1.model from model_list as t1 join car_makers as t2 on t1.maker = t2.id where t2.fullname = "General Motors" union select distinct t1.model from model_list as t1 join cars_data as t2 on t1.model = t2.id where t2.weight > 3500
select year from cars_data where weight < 3000 intersect select year from cars_data group by year having count(*) < 4000
select distinct year from cars_data where weight < 4000 intersect select distinct year from cars_data where weight > 3000
select avg(
select max(
select count(*) from model_list where model = 'volvo' group by modelid order by count(*) asc limit 1
select count(*) from model_list where model = "vovo" group by model order by count(*) asc limit 1
select count(*) from car_makers where accelerate > (select max(
select count(*) from car_makers where accelerate >(edispl) and horsepower
select count(distinct countryid), count(distinct t1.countryid) from countries as t1 join car_makers as t2 on t1.countryid = t2.id group by t1.countryid having count(distinct t1.countryid) > 2
select count(*) from countries where countryid > 2;
select count(*) from cars_data where cylinders > 6
select count(*) from cars_data where cylinders > 6
select t1.model from car_names as t1 join cars_data as t2 on t1.model = t2.id where t2.cylinders = 4
select t1.id from car_makers as t1 join cars_data as t2 on t1.id = 4
select t1.makeid, t2.maker from car_names as t1 join car_makers as t2 on t1.makeid = t2.id group by t1.makeid having count(*) > 3
select id, t1.maker from car_makers as t1 join cars_data as t2 on t1.id = t2.c
select t1.mpg, t1.m
select max(mpg) from cars_data where cylinders = 8 union select mpg from cars_data where year < 1980
select t1.model from model_list as t1 join car_makers as t2 on t1.modelid = t2.id where t2.fullname = 'Ford Motor Company' and t2.
select distinct model from model_list where weight < 3500 and id not in (select t1.model from model_list as t1 join car_makers as t2 on t1.maker = t2.id where t2.fullname = "Fordering Motor Company" 
select countryname from countries except select t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t1.countryid
select countryname from countries except select t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.country
select t1.id, t2.maker from car_makers as t1 join model_list as t2 on t1.id = t2.modelid group by t1.id having count(*) >= 2 intersect select t1.id, t2.maker from car_makers as t1 join car_makers as t2 on t1.maker = t2.id group by t1.id having count(*) > 3
select t1.id, t1.
select t1.countryid, t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.country where t2.maker = 'fiat' group by t1.countryid having count(*) > 3 union select t1.countryid, t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.country where t2.fullname = 'Fiat'
select t1.countryid, t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.country where t2.maker = 'fiat' group by t1.countryid having count(*) > 3 union select t1.countryid, t1.countryname from countries as t1 join cars_data as t2 on t1.countryid = t2.countryid
select country from airlines where airline = 'JetBlue Airways'
select country from airlines where airline = 'JetBlue Airways'
select abbreviation from airlines where airline = 'JetBlue Airways'
select abbreviation from airlines where airline = 'JetBlue Airways'
select t2.abbreviation, t1.abbreviation from airlines as t1 join flights on t1.uid = t2.abbreviation
select t2.abbreviation, t2.abbreviation from airlines as t1 join flights on t1.uid = t2.abbreviation
select airportcode, airportname from airports where city = 'Antonio'
select airportcode, airportname from airports where city = 'Antonio'
select count(*) from air
select count(*) from air
select count(*) from
select count(*) from
select count(*) from flights
select count(*) from flights
select abbreviation from airlines where abbreviation = 'UAL'
select avg(abbreviation) from airlines where abbreviation = 'UAL'
select count(*) from airlines where country = 'USA'
select count(*) from airlines where country = 'USA'
select city,
select city, countryabbrev from airports where airportname = 'Alton'
select airportname from airports where airportcode = 'AKO'
select t2.airportname from airports as t1 join flights as
select city from airports where city = 'Aberdeen'
select city from airports where city = 'Aberdeen'
select count(*) from flights where sourceairport = 'APG'
select count(*) from flights where sourceairport = 'APG'
select count(*) from airports where airportcode = 'ATO'
select count(*) from airports where airportcode = 'ATO'
select count(*) from airports as t1 join flights as t2 on t1.city = t1.city where t1.city = "Aberdeen"
select count(*) from airports where city = 'Aberge'
select count(*) from airports where city = 'Aberdeen'
select count(*) from airports where city = 'Aberdeen'
select count(*) from airports as t1 join flights as t2 on t1.city = t2.airport
select count(*) from airports as t1 join flights as t2 on t1.city = t2.airport
select count(*) from airlines as t1 join flights as t2 on t1.uid = t2.a
select count(*) from airlines as t1 join flights as t2 on t1.uid = t2.air
select count(*) from airlines as t1 join flights as t2 on t1.uid = t2.air
select count(*) from flights as t1 join airlines as t2 on t1.airline = t2.uid where destairport = "ASY"
select count(*) from flights as t1 join airlines as t2 on t1.airline = t2.uid where destairport = 'AHD'
select count(*) from flights where airline = 'United Airlines' and destairport = "AHD"
select count(*) from airlines as t1 join flights as t2 on t1.uid = t2.abbreviation
select count(*) from flights as t1 join airlines as t2 on t1.airline = t2.uid where t2.country = 'Aberdeen'
select city, count(*), t1.city from airports as t1 join flights as t2 on t1.city = t2.destairport group by t1.city order by count(*) desc limit 1
select city from airports group by city order by count(*) desc limit 1
select city, count(*), t1.city from airports as t1 join flights as t2 on t1.city = t2.destairport group by t1.city order by count(*) desc limit 1
select city from airports group by city order by count(*) desc limit 1
select flightno from flights group by flightno order by count(*) desc limit 1
select t2.airportcode, count(*) from flights as t1 join
select t2.airportcode, count(*) from flights as t1 join
select flightno from flights group by flightno order by count(*) asc limit 1
select sourceairport from flights group by sourceairport order by count(*) desc limit 1
select sourceairport from flights group by sourceairport order by count(*) desc limit 1
select t1.abbreviation, t1.country, t2.airport
select t2.abbreviation, t1.countryabbrev from flights as
select avg (sourceairport) from flights where destairport = 'AHD'
select t2.air
select sourceairport from flights where destairport = 'AHD'
select t2.air
select avg(sourceairport) from flights where airportcode = 'APG" intersect select avg(sourceairport) from flights where
select t2.airportname from airports as t1 join flights as t2
select avg(sourceairport) from flights where airportcode = 'CVO'
select t2.abbreviation from airports as t1 join airlines as t2 on t1.city = t2.a
select t2.airport
select t2.air
select t2.air
select t2.air
select flightno from flights where airline = "United Airlines"
select flightno from flights where airline = 'United Airlines'
select flightno from flights where sourceairport = "APG"
select flightno from flights where sourceairport = "APG"
select flightno from flights where destairport = "APG"
select flightno from flights where destairport = "APG"
select flightno from flights as t1 join airports as t2 on
select flightno from flights where city = 'Ashley' and countryabbrev = 'Atlanta
select airportcode from airports where city = "Aberdeen"
select flightno from flights where city = 'Ashley City' and countryabbrev = 'Athens City
select airportcode from airports where city = 'Aberge' or countryabbrev = 'Abilene'
select count(*) from airports where city = 'Aberge' or city = 'Abilene'
select air
select
select count(*) from employee
select count(*) from evaluation
select name from employee order by age asc
select name from employee order by age asc
select city, count(*) from employee group by city
select count(*), city from employee group by city
select city from employee where age < 30 group by city having count(*) > 1
select city from employee where age < 30 group by city having count(*) > 1
select count(*), district from shop group by district
select count(*), district from shop group by district
select name, district from shop order by number_products desc limit 1
select t1.name, t1.district from shop as t1 join shop as t2 on t1.shop_id = t2.shop_id group by t1.shop_id order by count(*) desc limit 1
select min(number_products), max(number_products) from shop
select min(number_products), max(number_products) from shop
select t2.name, t2.city, t2.district from shop as t1 join employee as t2
select name, district, number_products from shop order by number_products desc
select name from shop where number_products > (select avg(number_products) from shop)
select name from shop where number_products > (select avg(number_products) from shop)
select t2.name from evaluation as t1 join employee as t2 on t1.employee_id = t2.employee_id group by t1.employee_id order by count(*) desc limit 1
select t2.name from evaluation as t1 join employee as t2 on t1.employee_id = t2.employee_id group by t1.employee_id order by count(*) desc limit 1
select t2.name from evaluation as t1 join employee as t2 on t1.employee_id = t2.employee_id order by t1.bonus desc limit 1
select t2.name from evaluation as t1 join employee as t2 on t1.employee_id = t2.employee_id order by t1.bonus desc limit 1
select name from employee where employee_id not in (select employee_id from evaluation)
select name from employee where employee_id not in (select employee_id from evaluation)
select t2.name from hiring as t1 join shop as t2 on t1.shop_id = t2.shop_id group by t1.shop_id order by count(*) desc limit 1
select name from shop group by name order by count(*) desc limit 1
select name from shop where shop_id not in (select shop_id from hiring)
select name from shop where shop_id!= "null"
select count(*), t1.name from employee as t1 join hiring as t2 on t1.employee_id = t2.employee_id group by t1.name
select count(*), name from shop group by name
select Sum(bonus), t2.employee_id from evaluation as t1 join employee as t2 on t1.employee_id = t2.employee_id group by t1.employee_id
select sum(t1.bonus) from evaluation as t1 join employee as t2 on t1.employee_id = t2.employee_id
select * from hiring
select * from hiring
select district from shop where number_products < 3000 intersect select district from shop where number_products > 10000
select district from shop where number_products < 3000 intersect select district from shop where number_products > 10000
select count(distinct city), t1.location from shop as t1 join evaluation as t2 on t1.shop_id = t2.shop_id
select count(distinct t2.city) from shop as t1 Join employee as t2 on t1.shop_id = t2.shop_id
select count(*) from documents
select count(*) from documents
select document_id, document_name, document_description from documents
select document_id, document_name, document_description from documents
select document_name, template_id from documents where document_description like '%w%'
select t1.document_name,
select document_id, document_id, document_description from documents where document_name = "Robbin CV"
select t1.document_id,
select count(*) from documents
select count(*) from templates as t1 join paragraphs as t2 on t1.template_type_code = t2.template_type_code
select count(*) from templates where template_type_code = 'PPT'
select count(*) from templates where template_type_code = "PPT"
select
select count(*), template_id from documents group by template_id
cre_Doc_Template_Mgt
cre_Doc_Template_Mgt
cre_Doc_Template_Mgt
select template_id from templates group by template_id having count(*) > 1
select template_id from templates except select template_id from documents
select template_id from templates except select template_id from documents
select count(*) from templates
select count(*) from templates
select avg (version_number), avg(version_number) from templates ;
select avg(version_number), avg(version_number) from templates group by avg(version_number)
select distinct template_type_code from templates
select distinct template_type_code from ref_template_types
select template_id from templates where template_type_code = "PP" or template_type_code = "PPT"
select template_id from templates where template_type_code = "PP" or template_type_code = "PPT"
select count(*) from templates where template_type_code = "CV"
select count(*) from ref_template_types where template_type_code = "CV"
select t1.version_number, t2.
select t1.version_number, t2.
select template_type_code, count(*) from templates group by template_type_code
select t2.template_type_code, count(*) from templates as t1 join ref_template_types as t2 on t1.template_type_code = t2.template_type_code group by t2.template_type_code
select template_type_code from templates group by template_type_code order by count(*) desc limit 1
cre_Doc_Template_Mgt
select template_type_code from templates group by template_type_code having count(*) < 3
select
select min(version_number), template_type_code from templates
select min(version_number) from templates
select
select
select t1.document_name from documents as t1 join templates as t2 on t2.template_type_code = t2.template_type_code where template_type_code = "BK"
select t1.document_name from documents as t1 join templates as t2 on t1.document_id = t2.document_id
select
select t2.template_type_code, count(*) from templates as t1 join ref_template_types as t2 on t1.template_type_code = t2.template_type_code group by t2.template_type_code
cre_Doc_Template_Mgt
select template_type_code from templates group by template_type_code order by count(*) desc limit 1
select template_type_code from templates where template_id not in (select template_id from documents)
select template_type_code from templates where template_type_code not in (select template_type_code from documents
select template_type_description, template_type_code from ref_template_types
select template_type_code, template_type_description from ref_template_types
select
select t2.template_type_description from templates as t1 join ref_template_types as t2 on t1.template_type_code = t2.template_type_code where t2.template_type_code = "AD"
select
select
select distinct template_type_description from ref_template_types
select distinct t1.
select
select
select count(*) from paragraphs
select count(*) from paragraphs
select count(*) from paragraphs as t1 join documents as t2 on t1.paragraph_id = t2.document_id where t2.document_name = 'Summer Show'
select count(distinct paragraph_id) from paragraphs where document_name = 'Summer Show
select other_details from paragraphs where paragraph_text = 'Korea'
select other_details from paragraphs where paragraph_text like '%korea%'
select t1.paragraph_id, t1.paragraph_text from paragraphs as t1 join documents as t2 on t1.paragraph_id = t2.document_id where t2.document_name = "Welcome to NY"
select t1.paragraph_id, t1.paragraph_text from paragraphs as t1 join documents as t2 on t1.paragraph_id = t2.document_id where t2.document_name = "Welcome to NY"
select t1.paragraph_text from paragraphs as t1 join documents as t2 on t1.paragraph_id = t2.document_id where t2.document_name = "Customer reviews"
select t1.paragraph_text from paragraphs as t1 join documents as t2 on t1.paragraph_id = t2.document_id where t2.document_name = "Customer reviews"
select t1.document_id, count(*) from documents as t1 join paragraphs as t2 on t1.document_id = t2.document_id group by t1.document_id order by count(*)
select document_id, count(*) from paragraphs group by document_id order by count(*) asc
select t1.document_id, t1.document_name, count(*) from documents as t1 join paragraphs as t2 on t1.document_id = t2.document_id group by t1.document_id
select t1.document_id, t1.document_name, count(*) from documents as t1 join paragraphs as t2 on t1.document_id = t2.document_id group by t1.document_id
select document_id from paragraphs group by paragraph_id having count(*) >= 2
select document_id from paragraphs group by document_id having count(*) >= 2
select t1.document_id, t2.document_name from paragraphs as t1 join documents as t2 on t1.paragraph_id = t2.document_id group by t1.document_id order by count(*) desc limit 1
select t1.document_id, t1.document_name from documents as t1 join paragraphs as t2 on t1.document_id = t2.document_id group by t1.document_id order by count(*) desc limit 1
select document_id from paragraphs group by document_id order by count(*) asc limit 1
select document_id from paragraphs group by document_id order by count(*) asc limit 1
select document_id from paragraphs group by document_id having count(*) between 1 and 2
select document_id from paragraphs group by document_id having count(*) between 1 and 2
select document_id from paragraphs where paragraph_text = 'Brazil' intersect select document_id from paragraphs where paragraph_text = 'Ireland'
select document_id from paragraphs where paragraph_text = 'Brazil' intersect select document_id from paragraphs where paragraph_text = 'Irlanda'
select count(*), t2.name from course_arrange as t1 join teacher as t2 on t1.teacher_id = t2.teacher_id group by t2.name
select count(*) from teacher
select name from teacher order by age asc
select name from teacher order by age asc
select age, hometown from teacher
select age, hometown from teacher
select name from teacher where hometown!= "Little lever Urban District"
select name from teacher where hometown!= "Little lever Urban District"
select name from teacher where age = 32 or age = 33
select name from teacher where age = 32 or age = 33
select hometown from teacher order by age asc limit 1
select
select t2.hometown, count(*) from teacher as t1 join teacher as t2 on t1.teacher_id = t2.teacher_id group by t2.hometown
select hometown, count(*) from teacher group by hometown
select hometown from teacher group by hometown order by count(*) desc limit 1
select hometown from teacher group by hometown order by count(*) desc limit 1
select hometown from teacher group by hometown having count(*) >= 2
select hometown from teacher group by hometown having count(*) >= 2
select t2.name, t1.course_id from course_arrange as t1 join teacher as t2 on t1.teacher_id = t2.teacher_id
select t2.name, t2.name from course_arrange as t1 join teacher as t2 on t1.teacher_id = t2.teacher_id
select t2.name, t2.name from course_arrange as t1 join teacher as t2 on t1.teacher_id = t2.teacher_id join course as t3 on t1.course_id = t3.course_id order by t2.name asc
select t2.name, t2.name from course_arrange as t1 join teacher as t2 on t1.teacher_id = t2.teacher_id order by t2.name asc
select t1.name from teacher as t1 join course as t2 on t1.teacher_id = t2.teacher_id
select t1.name from teacher as t1 join course as t2 on t1.teacher_id = t2.teacher_id
select t2.name, count(*) from course_arrange as t1 join teacher as t2 on t1.teacher_id = t2.teacher_id group by t2.name
select t2.name, count(*) from course_arrange as t1 join teacher as t2 on t1.teacher_id = t2.teacher_id group by t1.teacher_id
select t2.name from course_arrange as t1 join teacher as t2 on t1.teacher_id = t2.teacher_id group by t2.name having count(*) >= 2
select t2.name from course_arrange as t1 join teacher as t2 on t1.teacher_id = t2.teacher_id group by t2.name having count(*) >= 2
select name from teacher where teacher_id not in (select teacher_id from course_arrange)
select name from teacher except select t2.name from course_arrange as t1 join teacher as t2 on t1.teacher_id = t2.teacher_id
select count(*) from visitor where age < 30
select name from visitor where level_of_membership > 4 order by level_of_membership desc
select avg(age) from visitor where level_of_membership!= 4
select name, level_of_membership from visitor where level_of_membership > 4 order by age desc
select t1.museum_id, t1.name from museum as t1 join visit as t2 on t1.museum_id = t2.museum_id group by t1.museum_id order by count(*) desc limit 1
select avg(num_of_staff) from museum where open_year < 2009
select open_year, num_of_staff from museum where name = 'Pala Museum'
select name from museum where num_of_staff > (select min(open_year) from museum where open_year > 2010)
select t1.id, t1.name, t1.age from visitor as t1 join visit as t2 on t1.id = t2.visitor_id group by t1.id having count(*) > 1
select t1.id, t1.name, t1.level_of_membership from visitor as t1 join visit as t2 on t1.id = t2.visitor_id group by t1.id order by sum(t2.total_spent) desc limit 1
select t1.museum_id, t1.name from museum as t1 join visit as t2 on t1.museum_id = t2.museum_id group by t1.museum_id order by count(*) desc limit 1
select name from museum where museum_id not in (select museum_id from visit)
select t1.name, t1.age from visitor as t1 join visit as t2 on t1.id = t2
select avg(num_of_ticket), max(num_of_ticket) from visit
select sum(num_of_ticket), t1.name from visitor as t1 join visit as t2 on t1.id= t2.visitor_id where t1.level_of_membership = 1
select t2.name from visit as t1 join visitor as t2 on t1.visitor_id = t2.visitor
select count(*) from visitor where visitor_id not in (select visitor_id from visit as t1 join museum as t2 on t1.museum_id = t2.museum_id where t2.open_year > 2010) and num_of_ticket = "T1.num_of_ticket"
select count(*) from museum where open_year > 2013 or open_year < 2008
select count(*) from players
select count(*) from players
select count(*) from matches
select count(*) from matches
select t1.first_name, t1.birth_date from players as t1 join matches as t2 on t1.player_id = t2.player_id
select birth_date, first_name from players where country_code = "USA"
select avg(winner_age), avg(loser_age) from matches
select avg(winner_age), avg(loser_age) from matches
select avg(winner_rank) from matches
select avg(winner_rank) from matches
select max(t2.loser_rank) from matches as t1 join rankings as t2
select max(t1.loser_rank) from matches as t1 join rankings as t2 on t1.loser_id = t2.loser_io
select count(*) from players
select count(distinct country_code) from players
select count(*) from players
select count (distinct loser_name) from
select tourney_name from matches group by tourney_name having count(*) > 10
select tourney_name from matches group by tourney_name having count(*) > 10
select winner_name from matches where winner_age = 2013 intersect select winner_name from matches where winner_age = 2016
select winner_name from matches where winner_age = 2013 intersect select winner_name from matches where winner_age = 2016
select count(*) from matches where year = 2013 or year = 2016;
select count(*) from matches where year = 2013 or year = 2016
select t1.country_code, t1.country_code from players as t1 join matches as t2 on t1.player_id = t2.winner_id where tourney_name = "WTA Championships" intersect select t1.country_code, t1.country_code from players as t1 join matches as t2 on t1.player_id = t2.winner_id where tourney_name = "Australian Open"
select t1.first_name, t1.country_code from players as t1 join matches as t2 on t1.player_id = t2.player_id
select t2.first_name, t2.last_name, t1.
select t2.country_code, t2.country_code from players as t1 join
select birth_date, birth_date from players order by birth_date
select first_name, last_name from players order by birth_date
select t1.first_name, t1.last_name from players as t1 join matches as t2 on t1.player_id = t2.loser_id where t1.hand = 'L' order by t1.birth_date
select first_name, last_name from players where hand = 'left' order by birth_date
select t1.first_name, t1.country_code, t1.country_code from players as
select t2.first_name, t2.last_name, t2.country_code from players as t1 join
select year from matches group by year order by count(*) desc limit 1
select year from matches group by year order by count(*) desc limit 1
select t1.winner_name, t1.winner_rank_points from
select t2.winner_name, t1.winner_rank_points from matches as t1 join
select t1.winner_name, t1.winner_seed from players as t1
select t2.winner_name, t1.winner_rank_points from matches as t1 join
select t2.loser_name, t1.winner_name from matches as t1 join
select t2.winner_name, t2.loser_name from matches as t1 join
select avg(ranking), t1.first_name, t1.last_name from players as t1 join rankings as t2 on t1.player_id = t2.player_id group by t1.player_id
select t2.first_name, t2.last_name, avg (t1.ranking) from rankings as t1 join players as t2 on t1.player_id = t2.player_id group by t1.player_id
select sum(ranking_points), t2.winner_name from rankings as t1 join players as t2
select t2.first_name, t2.last_name, sum(t1.ranking_points) from rankings as t1 join players as t2 on t1.player_id = t2.player_id group by t1.player_id
select count(*),
select count(*), country_code from players group by country_code
select
select country_code from players group by country_code order by count(*) desc limit 1
select country_code from players group by country_code having count(*) > 50
select country_code from players group by country_code having count(*) > 50
select count(*), ranking_date from rankings group by ranking_date
select count(*), t1.rank
select count(*), year from matches group by year
select count(*), year from matches group by year
select winner_name, winner_rank from matches order by winner_age limit 3
select winner_name, winner_rank from matches order by winner_age asc limit 3
select count(distinct winner_id) from matches where tourney_name = "WTA Championships" and winner_rank = "left handed"
select count(distinct winner_id) from matches where tourney_name = "WTA Championships"
select t1.first_name, t1.country_code, t1.birth_date from players as t1 join matches as t2 on t1.player_id = t2.winner_id order by t2.winner_rank desc limit 1
select t1.first_name, t1.country_code, t1.birth_date from players as t1 join rankings as t2 on t1.player_id = t2.winner_rank
select count(*), hand from players group by hand
select hand, count(*) from players group by hand
select count(*) from ship where disposition_of_ship = 'Captured'
select name, tonnage from ship order by tonnage desc
select name, date, result from battle
select max(t1.killed), min(t2.injured), t2.name from death as t1 join battle as t2
select count(*), avg(injured) from death group by id
select 'Death', 'Injured' from death where caused_by_ship_id = 'Tonnage'
select name, result from battle where bulgarian_commander!= 'Boril'
select distinct t2.id, t2.name from ship as t1 join battle as t2 on t1.id = t1.lost_in_battle where t1.ship_type = 'Brig'
select id, name from battle where result > 10 group by id having count(*) > 10
select t1.id, t1.name from ship as t1 join death as t2 on t1.id = t2.ship_
select distinct t1.name from battle as t1 join battle as t2 on t1.id = t2.b
select count(distinct result) from battle
select count(*) from battle where id not in ( select lost_in_battle from ship where tonnage = 225 );
select name, date from battle where t1.id in (select t1.id from battle as t1 join ship as t2 on
select name, result, bulgarian_commander from battle except select t1.name, t1.result, t1.id from battle as t1 join ship as t2 on t1.ship_
select note from death where note like '%east%'
select address_id from addresses where line_1 = 1 intersect select address_id from addresses where line_2 = 2
select t2.line_1, t2.line_2 from addresses as t1 join addresses as t2 on t1.address_id = t2.address_id
select count(*), t1.course_name from courses as t1 join student_enrolment_courses as t2 on t1.course_id = t2.course_id group by t1.course_name
select count(*), t1.course_id from courses as t1 join student_enrolment_courses as t2 on t1.course_id = t2.course_id group by t1.course_id
select course_description from courses where course_name = "mathachian"
select course_description from courses where course_name = "mathachian"
select zip_postcode from addresses where city = "Port Chelsea"
select zip_postcode from addresses where city = "Port Chelsea"
select t1.d
select t2.department_name, count(*) from degree_programs as t1 join departments as t2 on t1.department_id = t2.department_id group by t2.department_id order by count(*) desc limit 1
select count(distinct department_id) from degree_programs
select count(distinct department_id) from degree_programs
select count(distinct degree_program_id) from degree_programs
select count(distinct degree_program_id) from degree_programs
select count(*) from degree_programs where department_id = "Engineering"
select count(*) from degree_programs as t1 join departments as t2 on t1.department_id = t2.department_id
select section_name, section_description from sections
select section_name, other_details from sections
select t1.course_name, t1.course_id from courses as t1 join sections as t2 on t1.course_id = t2.course_id group by t1.course_id having count(*) < 2
select t1.course_name, t1.course_id from courses as t1 join student_enrolment_courses as t2 on t1.course_id = t2.course_id group by t1.course_id having count(*) < 2
select section_name from sections order by section_name desc
select section_name from sections order by section_name desc
select t1.first_name, t1.student_id from students as t1 join student_enrolment as t2 on t1.student_id = t2.student_id group by t1.student_id order by count(*) desc limit 1
select t2.semester_name, t1.student_id from student_enrolment as t1 join semesters as t2 on t1.semester_id = t2.semester_id group by t1.student_id order by count(*) desc limit 1
select
select other_details from departments where department_name like '%computer%'
select t1.first_name, t1.middle_name, t1.f
select t1.first_name, t1.middle_name, t1.f
select t1.first_name, t1.middle_name, t1.f
select t1.first_name, t1.middle_name, t1.f
select degree_program_id from student_enrolment group by degree_program_id order by count(*) desc limit 1
select t2.degree_summary_name from student_enrolment as t1 join courses as t2
select t1.degree_program_id, t1.semester_id from student_enrolment as t1 join students as t2 on t1.student_id = t2.student_id group by t1.student_id order by count(*) desc limit 1
select t2.degree_program_id, t2.degree_summary_name from student_enrolment as t1 join degree_programs as t2 on t1.degree_program_id = t2.degree_program_id group by t2.degree_program_id order by count(*) desc limit 1
select t1.student_id, t1.middle_name, t1.f
select t1.first_name, t1.middle_name, t1.f
select course_name from courses where course_id not in (select student_enrolment_id from student_enrolment)
select course_name from courses where course_id not in (select student_enrolment_id from student_enrolment)
select t1.course_name from courses as t1 join student_enrolment_courses as t2 on t1.course_id = t2.course_id
select t1.course_name from courses as t1 join student_enrolment_courses as t2 on t1.course_id = t2.course_id
select t1.course_name from courses as t1 join student_enrolment_courses as t2 on t1.course_id = t2.course_id group by t1.course_name order by count(*) desc limit 1
select t1.course_name from courses as t1 join student_enrolment_courses as t2 on t1.course_id = t2.course_id group by t1.course_name order by count(*) desc limit 1
select t2.f
select t1.first_name, t1.last_name from students as t1 join student_enrolment as t2 on t1.student_id = t2.student_id where t1.state_province_county
select t1.date_first_registered, t1.student_id from students as t1 join student_enrolment as t2 on t1.student_id = t2.student_id group by t1.student_id having count(*) >= 2
select t2.date_first_registered, t1.student_id from student_enrolment as t1 join students as t2 on t1.student_id = t2.student_id group by t1.student_id having count(*) >= 2
select cell_mobile_number from students where first_name = "Timmothy" and last_name = "Gard"
select cell_mobile_number from students where first_name = "T Timothy Ward" and last_name = "Garden"
select t1.first_name, t1.middle_name, t1.f
select t1.first_name, t1.middle_name, t1.f
select t1.first_name, t1.middle_name, t1.f
select t1.first_name, t1.middle_name, t1.f
select t2.first_name, t2.last_name from addresses as t1 join students as t2 on t1.address_id = t2.address_id
select distinct t1.first_name, t1.last_name from students as t1 join student_enrolment as t2 on t1.student_id = t2.student_id where t1.current_address_id = (select permanent_address_id from students group by permanent_address_id)
select t1.address_id, t1.line_3 from addresses as t1 join student_enrolment as t2 on t1.address_id = t2.student_id group by t1.address_id order by count(*) desc limit 1
select t1.address_id, t1.line_1, t1.line_2 from addresses as t1 join student_enrolment as t2 on t1.address_id = t2.student_id group by t1.address_id order by count(*) desc limit 1
select avg(date_first_registered) from student_enrolment as t1 join students as t2 on t1.student_id = t2.student_id
select avg(date_first_registered) from student_enrolment as t1 join students as t2 on t1.student_id = t2.student_id
select date_first_registered, date_left from students order by date_first_registered asc limit 1
select date_left, date_left from transcripts
select count(*) from student_enrolment
select count(*) from student_enrolment
select date_left from students order by date_left desc limit 1
select last_name from students order by date_first_registered asc limit 1
select count(*), student_enrolment_id from student_enrolment group by student_enrolment_id order by count(*) desc
select max(t1.student_enrolment_id), t1.student_id from student_enrolment as t1 join students as t2 on t1.student_id = t2.student_id group by t1.student_enrolment_id
select date_first_registered, date_left, student_id, count(*) from students group by date_left order by count(*) asc limit 1
select date_first_registered, date_first_registered, student_id from students group by student_id order by count(*) asc limit 1
select semester_id from student_enrolment where degree_program_id = 'Master' intersect select semester_id from student_enrolment where degree_summary_name = 'Bernail' 
select student_enrolment_id from student_enrolment where semester_id = 'MA' intersect select student_enrolment_id from student_enrolment where semester_id = 'Boston'
select count(distinct permanent_address_id) from students
select count(distinct address_id) from addresses
select other_student_details from students order by other_student_details desc
select other_student_details from students order by other_student_details desc
select section_name from sections where section_description like '%h%'
select section_description from sections where section_name = "h"
select t1.first_name, t1.last_name from students as t1 join student_enrolment as t2 on t1.student_id = t2.student_id join addresses as t3 on t3.address_id = t2.address_id
select distinct t1.first_name, t1.last_name from students as t1 join student_enrolment as t2 on t1.student_id = t2.student_id where t1.
select title from cartoon order by title
select title from cartoon order by title
select title from cartoon where directed_by = "Ben Jones"
select title from cartoon where directed_by = "Ben Jones"
select count(*) from cartoon where written_by = "Joseph Kuhr"
select count(*) from cartoon where written_by = "Joseph Kuhr"
select t1.title, t1.directed_by from cartoon as t1 join tv_series as t2 on t1.id = t2.
select t2.title, t2.directed_by from cartoon as t1 join tv
select title from cartoon where directed_by = "Ben Jones" or directed_by = "Brandon Vietti"
select title from cartoon where directed_by = "Ben Jones" or directed_by = "Ben Jones"
select country, count(*) from tv_channel group by country order by count(*) desc limit 1
select country, count(*) from tv_channel group by country order by count(*) desc limit 1
select count(distinct series_name), content from tv_channel
select count(distinct t1.series_name), t1.content from tv_channel as t1 join tv_series as t2 on t1.id = t2.channel where t1.hight_definition_tv = "High"
select content from tv_channel where series_name = "Sky Radio"
select content from tv_channel where series_name = 'City Radio'
select package_option from tv_channel where series_name = "Sky Radio"
select package_option from tv_channel where series_name = 'City Radio'
select count(*) from tv_channel where language = 'English'
select count(*) from tv_channel where language = "English"
select language, count(*) from tv_channel group by language order by count(*) asc limit 1
select language, count(*) from tv_channel group by language order by count(*) asc limit 1
select language, count(*) from tv_channel group by language
select language, count(*) from tv_channel group by language
select t1.series_name from tv_channel as t1 join cartoon as t2 on t1.id = t2.channel where t2.title = "The rise of the blue betle!"
select t1.series_name from tv_channel as t1 join cartoon as t2 on t1.id = t2.channel where t2.title = "The Rise of the blue Beetle"
select distinct t1.title from cartoon as t1 join tv_channel as t2 on t1.id = t2.
select distinct t1.title from cartoon as t1 join tv_channel as t2 on t1.id = t2.
select episode from tv_series order by rating
select episode from tv_series order by rating
select episode, max(t1.rating) from tv_series as t1 join tv_series as t2 on t1.id = t2.series
select episode, rating from tv_series group by rating order by count(*) desc limit 3
select min(share), max(share) from tv_series
select max(share), min(share) from tv_series
select air_date from tv_series where episode = "A love of a Lifetime"
select 'Falls' from tv_series where episode = "A love of a Lifetime"
select weekly_rank from tv_series where episode = "A love of a Lifetime"
select weekly_rank, t2.rating from tv_series as t1 join
select t2.channel from tv_series as t1 join tv
select tv_series.series_name from tv_series as t1 join tv_series as t2 on t1.id = t2.series
select episode from tv_series
select episode from tv_series
select directed_by, count(*) from cartoon group by directed_by
select t1.title, count(*) from cartoon as t1 join tv_series as t2 on t1.id = t2.directed_by
select t1.production_code, t1.channel from cartoon as t1 join tv_channel as t2 on t1.id = t2.channel
select t1.channel, t1.id from cartoon as t1 join tv_channel as t2 on t1.id = t2.channel
select package_option, t1.series_name from tv_channel as t1 join tv_series as t2 on t1.id = t2.channel where t1.hight_definition_tv = 'HD'
select package_option, t1.series_name from tv_channel as t1 join tv_series as t2 on t1.id = t2.channel where t1.hight_definition_tv = 'HD'
select country from tv_channel where written_by = 'Tony Casey
select country from tv_channel as t1 join cartoon as t2 on t2.directed_by = t1.id where t2.written_by = "Tony Casey"
select country from tv_channel where id not in (select t1.country from tv_channel as t1 join cartoon as t2 on t1.id = t2.directed_by where t2.written_by = "Tony Casey")
select country from tv_channel except select t1.country from tv_channel as t1 join cartoon as t2 on t1.id = t2.directed_by where t2.written_by = "Tony Casey"
select t1.series_name, t1.country from tv_channel as t1 join cartoon as t2 on t1.id = t2.directed_by where t2.directed_by = 'Ben Jones' intersect select t1.series_name, t
select t1.series_name, t1.country from tv_channel as t1 join tv_series as t2 on t1.id = t2.channel
select pixel_aspect_ratio_par, country from tv_channel where language!= 'English'
select pixel_aspect_ratio_par, country from tv_channel where language!= 'English'
select id from tv_channel where country = "USA" group by id having count(*) > 2
select id from tv_channel where hight_definition_tv > 2
select id from tv_channel except select t1.id from tv_channel as t1 join cartoon as t2 on t1.id = t2.directed_by where t2.directed_by = "Ben Jones"
select t1.id from tv_channel as t1 join cartoon as t2 on t1.id = t2.directed_by where t2.directed_by = "Ben Jones"
select package_option from tv_channel except select t1.package_option from tv_channel as t1 join cartoon as t2 on t1.id = t2.channel where t2.directed_by = "Ben Jones"
select package_option from tv_channel where t2.directed_by!= "Nancy" and 
select count(*) from poker_player
select count(*) from poker_player
select earnings from poker_player order by earnings desc
select earnings from poker_player order by earnings desc
select final_table_made, best_finish from poker_player
select final_table_made, best_finish from poker_player
select t1.money_rank from poker_player as t1 join poker_player as t2 on t1.poker_player_id = t2.poker_player_id group by t2.poker_player_id
select avg(e
select money_rank from poker_player order by earnings desc limit 1
select money_rank from poker_player order by earnings desc limit 1
select max(t2.final_table_made) from poker_player as t1 join
select max(final_table_made) from poker_player where earnings < 200000
select name from people as t1 join poker_player as t2 on t1.people_id = t2.people_id
select name from people as t1 join poker_player as t2 on t1.people_id = t2.people_id
select t1.name from people as t1 join poker_player as t2 on t1.people_id = t2.people_id where money_rank > 300000
select t1.name from people as t1 join poker_player as t2 on t1.people_id = t2.people_id where money_rank > 300000
select t1.name from people as t1 join poker_player as t2 on t1.people_id = t2.people_id order by t2.final_table_made asc
select t1.name from people as t1 join poker_player as t2 on t1.people_id = t2.people_id order by t2.final_table_made asc
select 'birth_date' from poker_player order by earnings asc limit 1
select t2.birth_date from poker_player as t1 join people as t2 on t1.people_id = t2.people_id order by t1.money_rank limit 1
select t1.money_rank from poker_player as t1 join people as t2 on t1.people_id = t2.people_id order by t2.height desc limit 1
select t1.money_rank from poker_player as t1 join people as t2 on t1.people_id = t2.people_id order by t2.height desc limit 1
select avg(t1.e
select avg(t1.e
select t1.name from people as t1 join poker_player as t2 on t1.people_id = t2.people_id order by t2.e
select t1.name from people as t1 join poker_player as t2 on t1.people_id = t2.people_id order by t2.e
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
select name from people except select t1.name from people as t1 join poker_player as t2 on t1.people_id = t2.people_id
select count(distinct nationality) from people
select count(distinct nationality) from people
select count(distinct state) from area_code_state
select contestant_number, contestant_name from contestants order by contestant_name desc
select vote_id, phone_number, state from votes
select max(area_code), min(area_code) from area_code_state
select created from votes where state = 'CA'
select contestant_name from contestants where contestant_name!= "Jessie Alloway"
select distinct t1.state, t1.created from votes as t1 join area_code_state as t2 on t1.state = t2.state
select t1.contestant_number, t1.contestant_name from contestants as t1 join votes as t2 on t1.contestant_number = t2.contestant_number group by t1.contestant_number having count(*) >= 2
select t1.contestant_number, t1.contestant_name from contestants as t1 join votes as t2 on t1.contestant_number = t2.contestant_number group by t1.contestant_number order by count(*) asc limit 1
select count(*) from votes where state = 'NY' or state = 'CA'
select count(*) from contestants where contestant_number not in (select contestant_number from votes)
select count(*) from votes group by state order by count(*) desc limit 1
select t1.created, t1.state, t1.phone_number from votes as t1 join contestants as t2 on t1.contestant_number = t2.contestant_number where t2.contestant_name = 'Tabatha Gehling'
select t1.state from votes as t1 join area_code_state as t2 on t1.state = t2.area_code join contestants as t3 on t1.contestant_number = t3.contestant_number where t3.contestant_name = 'Tabatha Gehling' intersect select t1.state from votes as t1 join area_code_state as t2 on t1.state = t2.
select contestant_name from contestants where contestant_name like '%al%'
select name from country where indepyear > 1950
select name from country where indepyear > 1950
select count(*) from country where governmentform = 'Republik'
select count(*) from country where governmentform = 'Republik'
select sum(t2.surfacearea) from country as t1 join country as t2 on
select sum(t2.surfacearea) from country as t1 join country as t2 on t1.countrycode
select continent from country where name = 'Anguilla'
select continent from country where name = 'Anguilla'
select region from country where name = 'Kayakul'
select region from country where name = 'Kayakul'
select language, count(*) from country as t1 join countrylanguage as t2 on t2.language = t2.language where t1.name = "Aruba" group by t2.language order by count(*) desc limit 1
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
select sum(t1.surfacearea) from country as t1 join country as t2 on t1.iD
select sum(t1.surfacearea) from country as t1 join country as t2 on t1.code = t2.country
select count(*) from city where district = "Gelderland"
select sum(population) from city where district = 'Gelderland'
select avg(gnp), sum(population) from country where governmentform = 'US Territory'
select avg(gnp), sum(population) from country where governmentform = 'US Territory'
select count(distinct language) from countrylanguage
select count(distinct language) from countrylanguage
select count(distinct governmentform) from country where continent = 'Africa'
select count(distinct governmentform) from country where continent = 'Africa'
select count(*) from country as t1 join countrylanguage as t2 on t2.countrycode = t1.code where t1.name = "Aruba"
select count(distinct language) from country as t1 join countrylanguage as t2 on t2.countrycode = t2.countrycode where t1.name = "Aruba"
select count(distinct language) from countrylanguage where countrycode = 'Afghanistan'
select count(distinct language) from countrylanguage where countrycode = 'Afghanistan'
select t1.name from country as t1 join countrylanguage as t2 on t1.code = t2.countrycode group by t1.name order by count(*) desc limit 1
select t2.name from countrylanguage as t1 join country as t2 on t1.countrycode = t2.code group by t1.countrycode order by count(*) desc limit 1
select continent, count(*) from country group by continent order by count(*) desc limit 1
select continent, count(*) from country as t1 join countrylanguage as t2 on t2.language = t2.language group by t2.language order by count(*) desc limit 1
select count(*) from countrylanguage where language = 'English' intersect select count(*) from country
select count(*) from countrylanguage where language = 'English' intersect select countrycode from countrylanguage where language = 'N'
select language from countrylanguage where language = 'English' intersect select language from countrylanguage where language = 'France'
select countrycode from countrylanguage where language = 'English' intersect select countrycode from countrylanguage where language = 'France'
select countrycode from countrylanguage where language = 'English' intersect select countrycode from countrylanguage where language = 'France'
select language from countrylanguage where language = 'English' intersect select language from countrylanguage where language = 'France'
select count(distinct t1.continent) from country as t1 join countrylanguage as t2 on t2.countrycode = t2.countrycode where t2.language = 'Chinese'
select count(*) from country as t1 join countrylanguage as t2 on t1.country
select language from countrylanguage where language = 'England' or language = 'Hoslecht'
select countrycode from countrylanguage where language = 'Niederlande' or language = 'English'
select countrycode from countrylanguage where language = 'English' or language = 'N'
select countrycode from countrylanguage where language = 'English' or language = 'N'
select t2.language from country as t1 join countrylanguage as t2 on t1.country
select t2.language from country as t1 join countrylanguage as t2 on t1.country
select t2.language from country as t1 join countrylanguage as t2 on t1.code = t2.countrycode where t1.governmentform = "Republik" group by t2.language having count(*) = 1
select t2.language from country as t1 join countrylanguage as t2 on t1.code = t2.countrycode where t1.governmentform = "Republik"
select t1.name from city as t1 join countrylanguage as t2 on t1.id = t2.countrycode where t2.language = 'English' group by t1.name order by count(*) desc limit 1
select t1.name from city as t1 join countrylanguage as t2 on t1.id = t2.countrycode where t2.language = 'English' group by t1.name order by count(*) desc limit 1
select name, population, lifeexpectancy from country where continent = 'Asie' order by surfacearea desc limit 1
select name, population, lifeexpectancy from country where continent = 'Asie' group by name order by count(*) desc limit 1
select avg(lifeexpectancy) from country where language!= 'England' - t1.countrycode
select avg(t2.lifeexpectancy) from countrylanguage as t1 join country as t2 on t1.countrycode = t1.countrycode where t1.language!= 'English'
select sum(population) from city where countrycode!= 'English'
select count(*) from countrylanguage where language!= 'English'
select t2.language from country as t1 join countrylanguage as t2 on t1.code = t2.countrycode where t1.headofstate = "Brittrix"
select t2.language from country as t1 join countrylanguage as t2 on t1.code = t2.countrycode where t1.headofstate = "Brittrix"
select count(distinct language) from country
select count(distinct language) from countrylanguage where isofficial = 1930
select name from country where surfacearea > (select max(surfacearea) from country where continent = 'Europe')
select name from country where surfacearea > (select max(surfacearea) from country where continent = 'Europe')
select name from country where population < (select max(population) from country where continent = 'Asie')
select name from country where population < (select min(population) from country where continent = 'Asie')
select name from country where population > (select min(population) from country where continent = 'Asie')
select name from country where population > (select min(population) from country where continent = 'Asie')
select name from country where language
select distinct t1.name from country as t1 join countrylanguage as t2 on t1.country
select t1.name from country as t1 join countrylanguage as t2 on t1.code = t2.countrycode where t2.language!= 'English'
select t1.name from country as t1 join countrylanguage as t2 on t1.code = t2.countrycode where t2.language!= 'English'
select t1.name from country as t1 join countrylanguage as t2 on t1.code = t2.countrycode where t2.language!= 'England' except select t1.name from country as t1 join countrylanguage as t2 on t1.country
select t1.name from country as t1 join country as t2 on t1.country
select name from city where countrycode like '%europe%'
select name from city where countrycode = 'Europe' except select t1.name from city as t1 join countrylanguage as t2 on t1.id = t2.countrycode where t2.language = 'English'
select distinct t1.name from city as t1 join countrylanguage as t2 on t1.id = t2.countrycode where t2.language = 'Chinese' and t2.isofficial = 'T'
select distinct t1.name from city as t1 join countrylanguage as t2 on t1.id = t2.countrycode where t2.language = 'Chinese'
select t1.name,
select t1.name,
select population, name, headofstate from country order by surfacearea desc limit 1
select name, population, headofstate from country order by surfacearea desc limit 1
select t1.name, count(*) from country as t1 join countrylanguage as t2 on t1.code = t2.countrycode group by t1.name having count(*) >= 3
select t1.name, count(*) from country as t1 join countrylanguage as t2 on t1.code = t2.countrycode group by t1.name having count(*) > 2
select district, count(*) from city group by district having avg(population) > (select avg(population) from city)
select count(*), district from city where population > (select avg(population) from city) group by district
select t1.name, sum(t2.population), t2.governmentform from city as t1 join country as t2 on t1.id = t2.governmentform group by t2.governmentform having avg(t2.lifeexpectancy) >= 72
select governmentform, avg(lifeexpectancy), sum(lifeexpectancy), governmentform from country group by governmentform having avg(lifeexpectancy) >= 72
select avg(lifeexpectancy), sum(lifeexpectancy) from country group by continent having avg(lifeexpectancy) < 72
select count(*), avg(lifeexpectancy), continent from country group by continent having avg(lifeexpectancy) < 72
select name, region from country order by surfacearea desc limit 5
select t1.name, t1.region from country as t1 join country as t2 on t1.code = t2.country
select name from country order by population desc limit 3
select name from country order by population desc limit 3
select name from country order by population asc limit 3
select name from country order by population asc limit 3
select count(*) from country where continent = 'Asie'
select count(*) from country where continent = 'Asie'
select name from country where continent = 'Europe' and population > 80000
select name from country where continent = 'Europe' and population > 80000
select sum(t1.population), avg(t2.population) from country as t1 join country as t2 on t1.country
select sum(t1.population), avg(t1.population) from country as t1 join country as t2 on t1.countrycode
select name from city where population between 160000 and 900000
select name from city where population between 160000 and 900000
select language from countrylanguage group by language order by count(*) desc limit 1
select language from countrylanguage group by language order by count(*) desc limit 1
select language, count(*) from country as t1 join countrylanguage as
select t1.name, count(*) from country as t1 join countrylanguage as t2 on t1.code = t2.countrycode group by t1.name order by count(*) desc limit 1
select count(*) from countrylanguage where language = 'Spanish' group by countrycode order by count(*) desc limit 1
select count(*) from countrylanguage where language = 'Spanish' group by language order by count(*) desc limit 1
select countrycode from countrylanguage where language = 'Spanish' group by countrycode order by count(*) desc limit 1
select countrycode from countrylanguage where language = 'Spanish' group by countrycode having count(*) >= 2
select count(*) from conductor
select count (*) from conductor
select name from conductor order by age asc
select name from
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
select
select t2.name from performance as t1 join orchestra as t2
select name from conductor order by year_of_work desc limit 1
select t2.name from performance as t1 join conductor as t2 on
select t1.name, t2.orchestr
select t2.name, t2.orchestr
select t1.name from conductor as t1 join orchestra as t2 on t1.orchestr
select t1.name from conductor as t1 join orchestra as t2 on t1
select t1.name from conductor as t1 join orchestra as t2 on t1.orchestr
select t1.name from conductor as t1 join orchestra as t2 on
select t1.name from conductor as t1 join orchestra as t2 on t1.orchestr
select t2.name from performance as t1 join conductor as t2 on t1.orchestr
select record_company, count(*) from orchestra group by record_company
select t2.name, count(*) from performance as t1 join orchestra as t2
select type from performance order by count(*) asc
select major_record_format from orchestra order by count(*) desc
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
select t2.student_id from highschooler as t1 join
select id from highschooler where name = 'Knowy'
select count(*) from highschooler where grade = 9 or grade = 10
select count(*) from highschooler where grade = 9 or grade = 10
select grade, count(*) from highschooler group by grade
select grade, count(*) from highschooler group by grade
select grade from highschooler group by grade order by count(*) desc limit 1
select grade from highschooler group by grade order by count(*) desc limit 1
select distinct grade from highschooler group by grade having count(*) >= 4
select grade from highschooler group by grade having count(*) >= 4
select student_id, count(*) from friend group by student_id
select count(t2.friend_id), count(*) from likes as t1 join friend as t2 on t1.student_id = t2.student_id group by t2.friend_id
select t2.name, count(*) from
select t1.name, count(t1.friend_id), t2.student_id
select student_id, count(*) from friend group by student_id order by count(*) desc limit 1
select avg(t1.friend_id), t2.name from
select t2.name from friend as t1 join highschooler as t2 on t1.student_id = t1.student_id group by t1.student_id having count(*) >= 3
select t2.name from friend as t1 join highschooler as t2 on t1.friend_id = t1.student_id group by t1.student_id having count(*) >= 3
select t2.name from friend as t1 join
select t2.friend_id from likes as t1 join friend as t2 on t2.friend_id = t1.friend_id
select count(distinct t2.friend_id) from highschooler as t1 join
select count(t1.friend_id) from friend as t1 join highschooler as t2 on t1.friend_id = t1.student_id where t2.name = 'Knowy'
select student_id
select student_id from
select name from highschooler where student_id not in (select student_id from friend
select name from
select student_id from likes intersect select student_id from likes
select student_id from likes intersect select student_id from likes
select t2.name from likes as t1 join
select t1.name from highschooler as t1 join likes as t2 on t2.student_id = t2.student_id intersect select t1.name from highschooler as t1 join likes as t2 on t2.student_id = t2.student_id where liked_id = 1
select count(*), student_id from likes group by student_id
select student_id, count(*) from likes group by student_id
select t2.name, count(*) from likes as t1 join highschooler as t2 on t1.student_id = t1.student_id group by t1.student_id
select t2.name, count(*) from likes as t1 join highschooler as t2 on t1.student_id = t1.student_id group by t1.student_id
select student_id, count(*) from likes group by student_id order by count(*) desc limit 1
select t2.name from likes as t1 join highschooler as t2 on t1.student_id = t1.student_id group by t1.student_id order by count(*) desc limit 1
select t2.name from likes as t1 join highschooler as t2 on t1.student_id = t1.student_id group by t1.student_id having count(*) >= 2
select name from highschooler group by name having count(*) >= 2
select name from highschooler where grade > 5 group by name having count(*) >= 2
select name from highschooler where grade > 5 intersect select name from highschooler group by name having count(*) >= 2
select count(*) from friend as t1 join highschooler as t2 on t1.friend_id = t1.friend_id where t2.name = 'Knowy'
select count(*) from friend as t1 join highschooler as t2 on t1.friend_id = t1.friend_id where t2.name = 'Knowy'
select avg(t2.grade) from friend as t1 join highschooler as t2 on t1.friend_id = t1.student_id
select avg(t2.grade) from friend as t1 join highschooler as t2 on t1.friend_id = t1.student_id
select min(grade) from highschooler where id not in (select student_id from friend)
select min(grade) from highschooler where id not in (select student_id from friend)
select state from owners intersect select state from owners where email_address like '%balance%'
select state from owners intersect select state from owners where email_address like '%balance%'
select avg(age) from dogs where treatment_type_code = 'Medication_type - avg(age) from dogs where abandoned_yn!= "
select avg(age), dog_id from dogs where date_arrived like '%santa%'
select professional_id, first_name, last_name, cell_number from professionals where state = "Indiana" group by professional_id having count(*) > 2
select professional_id, first_name, last_name, cell_number from
select name from dogs except select t1.name from dogs as t1 join owners as t2 on t1.owner_id = t2.owner_id where t2.city = '1000'
select t2.name from treatments as t1 join dogs as t2 on t1.dog_id = t2.dog_id group by t2.dog_id having count(*) > 1000
select first_name from owners where owner_id not in (select dog_id from dogs)
select distinct first_name from owners as t1 join dogs as t2 on t1.owner_id = t2.dog_id where t1.email_address like '%dain_yn%'
select t2.professional_id, t2.role_code, t2.email_address from dogs as t1 join treatments on t1.dog_id = t2.dog_id
select t1.professional_id, t1.role_code, t1.email_address from professionals as t1 join dogs as t2 on t1.professional_id = t2.professional_id
select t1.owner_id, t1.first_name, t1.last_name from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id group by t1.owner_id order by count(*) desc limit 1
select t1.first_name, t1.last_name, t2.home_phone from owners as t1 join dogs as t2
select t1.professional_id, t1.role_code, t2.name from professionals as t1 join treatment_types as t2
select t1.professional_id, t1.role_code, t1.first_name, t1.last_name from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id group by t1.professional_id having count(*) >= 2
select breed_code from dogs group by breed_code order by count(*) desc limit 1
select t2.
select
select
select t1.treatment_type_description from treatment_types as t1 join treatments as t2 on t1.treatment_type_code = t2.treatment_type_code group by t1.treatment_type_code order by sum(t2.cost_of_treatment) asc limit 1
select t1.treatment_type_description from treatment_types as t1 join treatments as t2 on t1.treatment_type_code = t2.treatment_type_code group by t1.treatment_type_code order by sum(t2.cost_of_treatment) asc limit 1
select
select
select t2.
select t1.
select t2.first_name, t2.f
select t1.first_name, t1.last_name from owners as t1 join treatments as t2 on t1.owner_id = t2.professional_id where t2.cost_of_treatment < ( select avg(cost_of_treatment) from treatments )
select t1.date_arrived, t1.email_address from treatment_types as t2 join dogs as t3 on t1.treatment_type_code = t2.treatment_type
select t1.date_arrived, t1.date_adopted from treatments as t2 join dogs as t1 on t1.dog_id = t2.dog_id group by t2.treatment_type_code
select avg(cost_of_treatment), t1.treatment_type_description from treatment_types as t1 join charges as t2 on t1.treatment_type_code = t2.treatment_type_code
select t1.charge_type, t2.treatment_type_description, t2.treatment_type_code from treatment_types as t2 join treatment_types as t3 on t1.treatment_type_code = t3.treatment_type
select t2.first_name, t2.last_name, t1.size_code from dogs as t1 join
select t2.first_name, t2.last_name, t1.size_code from dogs as t1 join
select t2.first_name, t2.last_name from owners as t1 join dogs as t2
select t1.first_name, t1.last_name from owners as t1 join dogs as t2 on t1.owner_id = t2
select t2.name, t1.date_arrived from dogs as t1 join
select name, date_arrived from dogs order by date_arrived limit 1
select first_name, last_name from dogs as t1 join owners as t2 on t1.owner_id= t2.owner_id where t2.state = "Virgina"
select t1.first_name, t1.last_name, t2.owner_id from owners as t1 join dogs as t2 on t2.dog_id = t1.owner_id where t1.state = "Virgina"
select date_arrived, date_departed from dogs where
select date_arrived, date_departed from dogs where abandoned_yn = 'Health check'
select t1.first_name, t1.last_name from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id order by t2.date_of_birth desc limit 1
select t2.last_name from dogs as t1 join owners as t2 on t1.owner_id = t2.owner_id order by t1.date_of_birth desc limit 1
select email_address from professionals where state = "Wisconsin" or state = "Wisconsin"
select email_address from owners where state = "Wisconsin" or state = "Wisconsin"
select date_arrived, date_departed from dogs
select date_arrived, date_departed from dogs
select count(*) from dogs where date_arrived like "%santa%"
select count(*) from dogs where date_arrived like "%santa%"
select count(distinct t2.professional_id) from treatment_types as t1 join dogs as t2
select count(*) from treatments where treatment_type_code = 'PROF'
select role_code, street, state from professionals where city like '%west%'
select t2.role_code, t2.street, t2.city, t2.state from owners as t1 join professional
select first_name, last_name, email_address from owners where state like '%ny%'
select first_name, last_name, email_address from owners where state like '%ny%'
select count(*) from dogs where age < (select avg(age) from dogs)
select count(*) from dogs where age < (select avg(age) from dogs)
select max(cost_of_treatment) from treatments
select cost_of_treatment from treatments order by date_of_treatment desc limit 1
select count(*) from dogs where dog_id not in ( select dog_id from treatment_types
select count(*) from dogs where abandoned_yn = 'Health check'
select count(*) from dogs where abandoned_yn = '1';
select count(*) from dogs where owner_id not in (select owner_id from owners)
select count(*) from dogs where dog_id not in ( select treatment_type_code from treatments )
select count(*) from dogs where dog_id not in ( select treatment_type_code from treatments )
select name, age, weight from dogs where abandoned_yn = '1' and 0 = 'null'
select name, age, weight from dogs where abandoned_yn = '1' and 0 = 'null'
select avg(age) from dogs
select avg(age) from dogs
select age from dogs order by age desc limit 1
select max(age) from dogs
select charge_type, charge_amount from charges
select charge_type, charge_amount from charges;
select charge_type, sum(charge_amount) from charges group by charge_type order by sum(charge_type) desc limit 1
select charge_amount from charges order by charge_type desc limit 1
select email_address - cell_number, home_phone, t2.email_address from dogs as t1 join
select email_address, cell_number - home_phone, t2.email_address from dogs as t1 join professionals as t2 on t1.dog_id = t2.email_address group by t2.email_address
select breed_code, size_code from
select distinct breed_code, size_code from
select t2.first_name, t2.last_name, t2.email_address from dogs as t1 join treatment_types as t2
select t2.first_name, t2.email_address, t1.home_phone from treatment_types as
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
select
select
select t1.
select avg(net_worth_millions), max(net_worth_millions) from singer group by avg(net_worth_millions)
select max(net_worth_millions),
select t1.title, t2.name from song as t1 join singer as t2 on t1.song_id = t2.song_i
select t1.title, t2.name from song as t1 join singer as t2 on t1.song_id = t1.song_id where t2.name = "Song_id"
select distinct t2.name from song as t1 join singer as t2 on t1.song_id = t1.song_id where t1.sales > 300000
select distinct t2.name from song as t1 join singer as t2 on t1.song_id = t1.song_id where t1.sales > 300000
select t2.name, t1.song_id from song as t1 join singer as t2 on t1.song_id = t1.song_id group by t1.song_id having count(*) > 1
select t2.name from song as t1 join singer as t2 on t1.song_id = t1.song_id group by t1.song_id having count(*) > 1
select t2.name, sum(t1.sales) from song as t1 join singer as t2 on t1.song_id = t2.song_id
select sum(sales), t2.name from song as t1 join singer as t2 on t1.song_id = t1.song_id group by t2.name
select name from singer where singer_id not in (select singer_id from song)
select name from singer where singer_id not in (select singer_id from song)
select citizenship from singer where birth_year < 1945 intersect select citizenship from singer where birth_year > 1955
select citizenship from singer where birth_year < 1945 intersect select citizenship from singer where birth_year > 1955
select count(*) from other_available_features
select feature_type_code from other_available_features where feature_name = 'AirCon'
select t1.property_type_description from ref_property_types as t1 join properties as t2 on t1.property_type_code = t2.property_type_code
select t1.property_name from properties as t1 join properties as t2 on t1.property_id = t2.property_id where t1.property_type_code = "Haus" or t2.property_type_code = "Apartment"
