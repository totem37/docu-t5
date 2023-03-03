select count(*) from singer
select count(*) from singer
select name, country from singer order by birthday
select name, country from singer order by birthday desc
select avg(t1.average), min(t1.average), max(t1.sing
select avg(t1.average), avg(t1.average), avg(t1.
select name, song_release_year from singer order by birthday asc limit 1
select name, song_release_year from singer order by birthday asc limit 1
select distinct(country) from singer where birthday = '2001'
select distinct(country) from singer where birthday = '2001'
select country, count(*) from singer group by country
select country, count(*) from singer group by country
select t2.name from singer as t1 join singer as t2 on t1.s
select name from singer where birthday > (select avg(birthday) from singer)
select location, name from stadium where capacity between 5000 and 10000
select location, name from stadium where capacity between 5000 and 10000
select avg(capacity), max(capacity) from stadium
select avg(capacity), max(capacity) from stadium
select name, capacity from stadium order by average desc limit 1
select name, capacity from stadium order by average desc limit 1
select count(*) from concert where year >= 2014
select count(*) from concert where year >= 2014
select t2.name, count(*) from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id group by t1.stadium_id
select t2.location, count(*) from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id group by t1.stadium_id
select t2.name, t2.capacity from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id where t1.year >= 2014 group by t2.stadium_id order by count(*) desc limit 1
select t2.name, t2.highest from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id where t1.year > 2013 group by t2.stadium_id order by count(*) desc limit 1
select concert_name from concert order by year asc limit 1
select concert_name from concert order by year asc limit 1
select max(t2.highest) from singer_in_concert as t1 join concert on t1.concert_id = t2.stadium_id
select min(t1.lowest) from stadium as t1 join concert as t2 on t1.stadium_id = t2.stadium_id except select t2.lowest from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id
select country from singer where birthday = 1981 or birthday = 1991
select avg(t1.average) from stadium as t1 join concert as t2 on t1.stadium_id = t2.stadium_id except select t2.name from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id where t1.year = 2014
select min(t1.lowest) from stadium as t1 join concert as t2 on t1.stadium_id = t2.stadium_id except select t2.lowest from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id where t1.year = 2014
select t2.name, t2.theme, count(*) from singer_in_concert as t1 join concert as t2
select t2.name, t2.theme, count(*) from singer_in_concert as t1 join concert as t2
select t1.name, count(*) from singer as t1 join singer_in_concert as t2 on
select t1.name, count(*) from singer as t1 join singer_in_concert as t2 on
select t1.name from singer as t1 join singer_in_concert as t2 on t1.s
select t1.name from singer as t1 join singer_in_concert as t2 on t1.s
select name, country from singer where song_name like '%hey%'
select name, country from singer where song_name like '%hey%'
select min(t2.lowest), t2.average from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id where t1.year = 2014 intersect select t2.stadium_id from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id where t1.year = 2015
select min(t2.lowest), t2.average from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id where t1.year = 2014 intersect select t2.stadium_id from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id where t1.year = 2015
select count(*) from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id where t2.capacity = (select max(capacity) from stadium)
select count(*) from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id where t2.capacity = (select max(capacity) from stadium)
select count(*) from pets where weight > 10
select count(*) from pets where weight > 10
select weight from pets where pettype = 'dog' order by birthdate desc limit 1
select weight from pets where pettype = 'dog' order by weight asc limit 1
select max(weight), pettype from pets group by pettype
select max(weight), pettype from pets group by pettype
select count(*) from pets as t1 join has_pet as t2 on t1.petid = t2.petid join student as t3 on t2.stuid = t3.stuid where t3.age > 20 or t3.age > 30
select count(*) from pets as t1 join has_pet as t2 on t1.petid = t2.petid join student as t3 on t2.stuid = t3.stuid where t3.age > 20 or t3.age > 30
select count(*) from pets as t1 join has_pet as t2 on t1.petid = t2.petid join student as t3 on t2.stuid = t3.stuid where t3.sex = 'F'
select count(*) from pets as t1 join has_pet as t2 on t1.petid = t2.petid join student as t3 on t2.stuid = t3.stuid where t3.sex = 'F'
select count(distinct pettype) from pets
select count(distinct pettype) from pets
select t1.fname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid where t2.
select t1.fname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid
select t1.stuid from has_pet as t1 join pets as t2 on t1.petid = t2.petid where t2.pettype = 'kitten' intersect select t1.stuid from has_pet as t1 join pets as t2 on t1.petid = t2.petid where t2.pettype = 'dog'
select t1.fname from student as t1 join has_pet as t2 on
select major, age from student where stuid not in ( select stuid from has_pet as t1 join pets as t2 on t1.petid = t2.petid where t2.pettype = 'kitties')
select major, age from student where stuid not in ( select stuid from has_pet as t1 join pets as t2 on t1.petid = t2.petid where t2.pettype = 'cat')
select t2.stuid from pets as t1 join has_pet as t2 on t1.petid = t2.petid where t1.pettype = 'kitties'
select t2.stuid from pets as t1 join has_pet as t2 on t1.petid = t2.petid where t1.pettype = 'kitties'
select fname, age from student where stuid not in ( select stuid from has_pet as t1 join pets as t2 on t1.petid = t2.petid where t2.pettype = 'dog')
select fname from student where stuid not in ( select stuid from has_pet as t1 join pets as t2 on t1.petid = t2.petid where t2.pettype = 'cat')
select
select t2.pettype, t2.weight from has_pet as t1 join pets as t2 on t1.petid = t2.petid order by t2.weight asc limit 1
select t2.petid, t2.weight from student as t1 join pets as t2 on t1.stuid = t2.petid where t1.age > '2020'
select t2.petid, t2.weight from student as t1 join pets as t2 on t1.stuid = t1.stuid where t1.age > t1.birthdate
select distinct(t2.pettype), avg(t1.petid) from has_pet as t1 join pets as t2 on t1.petid = t2.petid group by t2.petid
select pettype, avg(t1.petid), max(t1.petid) from pets as t1 join has_pet as t2 on t1.petid = t2.petid group by t1.pettype
select pettype, avg(t1.petid), max(t1.petid) from pets as t1 join has_pet as t2 on t1.petid = t2.petid group by t1.pettype
select pettype, avg(weight) from pets group by pettype
select t1.fname, t1.age from student as t1 join has_pet as t2 on t1.stuid = t2.stuid
select distinct(t1.fname), t1.age from student as t1 join has_pet as t2 on t1.stuid = t2.stuid
select t2.petid from student as t1 join has_pet as t2 on t1.stuid = t2.stuid where t1.lname = 'Smith'
select t2.petid from student as t1 join has_pet as t2 on t1.stuid = t2.stuid where t1.lname = 'Smith'
select count(*), t1.stuid from has_pet as t1 join pets as t2 on t1.petid = t2.petid group by t1.stuid
select count(*) from student as t1 join has_pet as t2 on t1.stuid = t2.stuid group by t1.stuid having count(*) = 1
select fname, sex from student where sex > 1 and stuid = 1
select t1.fname, t1.sex from student as t1 join has_pet as t2 on t1.stuid = t2.stuid group by t2.stuid having count(*) > 1
select lname from student where t1.stuid in (select stuid from has_pet as t1 join pets as t2 on t1.petid = t2.petid where t2.pettype = 'cat' and t2.birthdate = 2001
select lname from student where t1.stuid = (select stuid from has_pet where t1.pettype = 'cat' and t1.birthdate = 2001
select avg(age) from student where stuid not in ( select stuid from has_pet );
select avg(age) from student where stuid not in ( select stuid from has_pet );
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
select t3.maker from model_list as t1 join car_makers as t2 on t1.modelid = t2.id join car_makers as t3 group by t3.maker having count(*) = 2
select distinct(t2.maker) from model_list as t1 join car_makers as t2 on t1.modelid = t2.id where t1.model = '2'
select t1.make, count(*), t1.year from car_makers as t2 join cars_data as t3 join car_makers as t4 on t3.id = t1.modelid
select t1.maker, t2.year from car_makers as t1 join cars_data as t2 on t01.modelid = t2.modelid
select distinct(model) from model_list where model <= 1980
select distinct(model) from model_list where model <= 1980
select t1.continent, count(*) from continents as t1 join car_makers as t2 on t1.continent = t2.id group by t1.continent
select t3.continent, count(*) from car_makers as t1 join continents as t2 on t1.continent
select t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.id group by t1.countryid order by count(*) desc limit 1
select country from car_makers group by country order by count(*) desc limit 1
select count(*), maker from car_makers group by maker
select t1.id, t2.fullname from car_makers as t1 join car_makers as t2 on t1.maker = t2.id group by t2.maker
select t2.acc
select sum(t2.
select count(*) from car_makers where maker = 'Japanese'
select count(*) from car_makers where country = 'Japanese'
select count(*), t1.model from model_list as t1 join car_makers as t2 on t1.modelid = t2.modelid
select count(*)from model_list as t1 join car_makers as t2 on t1.modelid = t2.id where t2.country = (select id from car_makers where country = 'United States')
select avg(t1.
select avg(t1.
select min(t2.weight) from model_list as t1 join cars_data as t2 on t1.modelid = t2.id where t1.model = '8' and t2.year = 1974
select min(t2.weight) from model_list as t1 join cars_data as t2 on t1.modelid = t2.id where t1.model = '8' and t2.year = 1974
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
select avg (select avg (select id from car_makers) union select avg (select id from car_makers where year <= 1980
select avg (select avg (select id from car_makers where year <= 1980
select avg(t2.edispl) from model_list as t1 join cars_data as t2 on t1.modelid = t2.modelid
select avg(edispl) from cars_data
select max(t2.accelerate), count(*) from car_makers as t1 join cars_data as t2 on
select max(accelerate), t1.cylinders from cars_data as t1 join car_makers as t2 on t1.id = t2
select model from car_names group by model order by count(*) desc limit 1
select model from model_list group by model order by count(*) desc limit 1
select count(*), t1.cylinders from car_names as t2 join cars_data as t1 on t3.id = t2.c
select count(*), t1.cylinders from car_makers as t2 join cars_data as t1 on t3.id = t2.c
select count(*) from car_makers where year = (select max(year) from car_makers
select count(*) from cars
select count(*) from model_list as t1 join car_makers as t2 on t1.modelid = t2.modelid
select count(*) from car_makers where country = 'American Motor'
select maker, model from model_list group by maker having count(*) > 3
select maker, id from car_makers group by maker having count(*) > 3
select distinct(t1.model) from model_list as t1 join car_makers as t2 on t1.maker = t2.id where t2.fullname = 'General Motors'
select distinct(t1.model) from model_list as t1 join car_makers as t2 on t1.maker = t2.id where t2.fullname = 'Carolean General Motors' or count(*) > 3500
select year from cars
select distinct(t2.year) from car_makers as t1 join cars_data as t2 on
select horsepower from car
select horsepower from cars
select count(*) from car_makers as t1 join model_list as t2 on t1.id = t2.model
select count(*) from model_list as t1 join car_makers as t2 on t1.modelid = t2.id where t1.model = (select t1.model from model_list as t1 join cars_data as t2 on t1.modelid = t2.id order by t2.year asc limit 1)
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
select model from model_list where weight < 3500 and model not in (select id from car_makers as t1 join cars_data as t2 on
select distinct(model) from model_list where weight < 3500 and model not in ( select t1.model from model_list as t1 join car_makers as t2 on t1.modelid = t2.id where t2.maker = 'Ford'
select countryname from countries except select country from car_makers
select countryname from countries except select country from car_makers
select id, t2.maker from model_list as t1 join car_makers as t2 on t1.modelid = 2 and t1.model > 3;
select t2.id, t2.maker from model_list as t1 join car_makers as t2 on t1.modelid = t2.modelid
select t1.countryid, t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.id where t2.maker = 'tesla' group by t1.countryid having count(*) > 3 or t1.countryname = 'countryid'
select t1.countryid, t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.id where t2.maker > 3 or t2.maker = 'teslas'
select country from airlines where airline = 'JetBlue'
select country from airlines where abbreviation = 'JetBlue Airways'
select abbreviation from airlines where abbreviation = 'JetBlue'
select abbreviation from airlines where abbreviation = 'JetBlue'
select airline, abbreviation from airlines where airline = 'United States'
select airline, abbreviation from airlines where airline = 'United States'
select airportcode, airportname from airports where city = "June"
select airportcode, airportname from airports where city = "Syracon"
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
select airportname from airports where airportname = 'Jackson'
select airportname from airports where city = 'June'
select count(*) from flights where sourceairport = 'APG'
select count(*) from flights where sourceairport = 'APG'
select count(*) from flights where airportcode = 'ATO%’; t1.aircraft is t2.aircraftno.airport = t2.airport N1.air
select count(*) from flights where airportcode = 'ATO’; t1.airport = '
select count(*) from flights where destairport = "Michael"
select count(*) from flights where sourceairport = "June"
select count(*) from flights where city = 'Michael Jackson
select count(*) from flights where country = 'Michael Jackson’; click here for more information.footless.foot
select count(*) from flights where airportname = 'Syracuse' and city = 'Ashley
select count(*) from flights where city = "Syracon" and airportname = "Ashley's
select count(*) from airlines where airline = 'JetBlue'
select count(*) from flights where airline = 'JetBlue'
select count(*) from flights where airline = 'JetBlue' and airportcode = 'ASY%" group by t1.airport order by count(*)
select count(*) from flights as t1 join airports as t2 on t1.air
select count(*) from flights where sourceairport = 'AHD'
select count(*) from flights where sourceairport = "AHD"
select count(*) from airlines as t1 join flights as t2 on t1.uid = t2.airport
select count(*) from airlines as t1 join flights as t2 on t1.uid = t2.airport
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
select airline from flights where sourceairport = "CVO" except select airline from flights where sourceairport = "APG"
select airline from flights group by airline having count(*) >= 10
select airline from flights group by airline having count(*) >= 10
select airline from flights where airline < 200
select airline from flights where airline < 200
select flightno from flights where airline = "JetBlue"
select flightno from flights where airline = 'JetBlue'
select flightno from flights where sourceairport = "APG"
select flightno from flights where sourceairport = "APG"
select flightno from flights where sourceairport = "APG"
select flightno from flights where sourceairport = (select airportcode from airports where airportcode = "APG")
select flightno from flights where flight
select flightno from flights where
select flightno from flights where
select flightno from flights where country = 'Michael Jackson
select count(*) from flights where city = "Syracon" or country = "Michael Jackson
select count(*) from flights where city = "Sylvania" or country = "Michael Jackson
select airportname from airports except select t1.airportname from airports as t1 join flights as t2 on t1.airport
select airport
select count(*) from documents
select count(*) from documents
select document_id, document_name, document_description from documents
select document_id, document_name, document_description from documents
select t1.document_name from documents as t1 join templates as t2 on t1.
select document_name, template_id from documents where document_description like '%w%'
select document_description from documents where document_name = "Robbin CV" intersect select document_description from documents where template_id = (select template_id from documents where document_name = "Robbin CV")
select document_description, template_id from documents where document_name = "Robbin CV"
select count(distinct template_id) from documents
select count(distinct template_id) from documents
select count(*) from templates where template_type_code = "PPT"
select count(*) from templates where template_type_code = "PPT"
select template_id, count(*) from documents group by template_id
select count(*), template_id from documents group by template_id
select t1.date_effective_from, t1.date_effective_to from templates as t1 join documents as t2 on
select t1.date_effective_from, t1.date_effective_to from templates as t1 join documents as t2 on
select template_id from documents group by template_id having count(*) > 1
select template_id from documents group by template_id having count(*) > 1
select template_id from templates except select template_id from documents
select template_id from templates except select template_id from documents
select count(*) from templates
select count(*) from templates
select date_effective_from, template_type_code from templates
select date_effective_from, template_type_code from templates
select date_effective_from, date_effective_to from templates
select date_effective_from from templates
select date_effective_from from templates where template_type_code = "PP" or template_type_code = "PPT"
select date_effective_from, date_effective_to from templates where template_type_code = "PP" or template_type_code = "PPT"
select date_effective_from, date_effective_to from templates where template_type_code = "CV"
select date_effective_from, date_effective_to from templates where template_type_code = "CV"
select date_effective_from, template_type_code from templates where version_number < 5
select date_effective_from, template_type_code from templates where version_number > 5
select date_effective_from, count(*) from templates group by date_effective_from
select date_effective_from, count(*) from templates group by date_effective_from
select date_effective_from from templates group by date_effective_to order by count(*) desc limit 1
select date_effective_from, version_number from templates group by date_effective_to order by count(*) desc limit 1
select date_effective_from from templates where version_number < 3
select date_effective_from from templates group by date_effective_to having count(*) < 3
select version_number, date_effective_to from templates order by date_effective_from asc limit 1
select version_number, date_effective_to from templates order by date_effective_from asc limit 1
select t2.date_effective_from from documents as t1 join templates as t2 on t1.document_id = t2.document_id
select t2.date_effective_from from documents as t1 join templates as t2 on t1.document_id = t2.document_id
select t1.document_name, t1.document_id from documents as t1 join templates as t2 on t1.document_id = t2.document_id
select t2.document_name, t2.document_id from templates as t1 join documents as t2 on
select date_effective_from, count(*) from documents
select t2.date_effective_from, count(*) from documents as t1 join templates as t2 on t1.document_id = t2.document_id
select date_effective_from, date_effective_to from documents
select date_effective_from, date_effective_to from documents
select date_effective_from, date_effective_to from documents
select date_effective_from, date_effective_to from documents
select template_type_code, template_type
select template_type_code, template_type
select template_type_description from ref_template_types where template_type_code = "AD"
select template_type_description from ref_template_types where template_type_code = "AD"
select template_type_code from ref_template_types where template_type_description = "Book"
select template_type_code from ref_template_types where template_type_description = "Book"
select distinct(version_number) from templates
select distinct(version_number) from templates as t1 join documents as t2 on t1.
select date_effective_from, date_effective_to from templates where template_type_description like '%presentations%' 
select t1.date_effective_from, t1.date_effective_to from templates as t1 join ref_template_types as t2 on
select distinct(t1.player_id) from players as t1 join matches as t2 on t1.player_id = t2.player_id
select distinct(t1.player_id) from players as t1 join matches as t2 on t1.player_id = t2.player_id
select distinct(t2.player
select t2.player_
select first_name, birth_date from players where country_code = (select country_code from players group by country_code order by count(*) desc limit 1)
select first_name, birth_date from players where country_code = (select country_code from players)
select avg(loser_age), avg(winner_age) from matches
select avg(loser_age), avg(winner_age) from matches
select distinct(t2.winner_rank), avg(t2.winner_rank) from matches as t1 join rankings as t2
select avg(t2.winner_rank), t2.winner_rank from matches as t1 join players as t2
select t2.winner_rank, t2.winner_rank from matches as t1 join rankings as t2
select t2.best_of, t2.winner_rank from matches as t1 join rankings as t2
select count(distinct country_code) from players
select count(distinct country_code) from players
select count(*) from players
select count(distinct loser_name) from
select tourney_name from matches group by tourney_name having count(*) > 10
select tourney_name from matches group by tourney_name having count(*) > 10
select * from matches where winner_name like '%2013%' intersect select loser_name from matches where year = 2016
select * from matches where winner_name like '%2013%' intersect select t1.player
select distinct(t2.player_id) from matches as t1 join players as t2 on t1.player_id
select * from matches where year = 2013 or year = 2016
select t1.country_code, t1.first_name from players as t1 join matches as t2 on t1.player_id = t2.player_id
select t1.first_name, t1.country_code from players as t1 join matches as t2 on t1.player_id = t2.player_id
select first_name, country_code from players order by birth_date asc limit 1
select first_name, country_code from players order by birth_date asc limit 1
select first_name, last_name from players order by birth_date
select first_name, last_name from players order by birth_date
select first_name, last_name from players where hand = 'L' order by birth_date
select first_name, last_name from players order by birth_date asc
select first_name, country_code from players group by country_code order by count(*) desc limit 1
select first_name, country_code from players group by country_code order by count(*) desc limit 1
select year from matches group by year order by count(*) desc limit 1
select year from matches group by year order by count(*) desc limit 1
select t2.winner_name, t2.winner_rank_points from matches as t1 join players as t2
select t1.player_
select t1.player_
select t1.player_
select t1.player_
select t2.winner_name, t1.loser_name from matches as t1 join
select distinct(t2.player_id), t1.first_name from players as t1 join rankings as t2 on t1.player_id = t2.player_id group by t2.player_id
select first_name, avg(t2.winner_rank) from players as t1 join rankings as t2
select sum(t2.ranking_points) from players as t1 join rankings as t2 on t1.player_id = t2.player_id group by t1.player_id
select t1.player_
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
select t2.winner_name, t2.birth_date from matches as t1 join
select t2.player_
select count(*), hand from players group by hand
select hand, count(*) from players group by hand
select distinct(line_1) from addresses
select line_1 from addresses
select count(*) from show
select count(*) from show where if_first_show = 'T'
select name from conductor order by birthday asc
select name from conductor order by birthday
select name from conductor where nationality = 'United States'
select name from conductor where nationality = 'United States'
select record_company from orchestra order by year_of_founded
select record_company from orchestra order by year_of_founded
select avg(attendance) from show where if_first_show!= 'T'
select avg(attendance) from show where if_first_show!= 'T'
select max(share), min(share) from performance where type!= 'Live final'
select max(share), min(share) from performance where type!= 'Live final'
select count(distinct nationality) from conductor
select count(distinct nationality) from conductor
select name from conductor order by birthday asc
select name from conductor order by birthday asc
select name from conductor order by year_of_work asc limit 1
select name from conductor order by year_of_work asc limit 1
select t1.name, t2.orchestr
select t2.name, t2.name from performance as t1 join orchestra as t2
select t2.name from performance as t1 join conductor as t2 on t1.orchestr
select t2.name from performance as t1 join conductor as t2 on t1.orchestr
select t2.name from orchestra as t1 join conductor as t2 on t1.orchestr
select t2.name from performance as t1 join conductor as t2 on t1.orchestr
select t2.name from orchestra as t1 join conductor as t2 on t1.orchestr
select t2.name from performance as t1 join conductor as t2 on t1.orchestr
select record_company, count(*) from orchestra group by record_company
select count(*) from orchestra
select t3.type from performance as t1 join orchestra as t2 on t1.orchestr
select major_record_format from orchestra order by
select record_company from orchestra order by share asc
select record_company from orchestra order by year_of_founded desc limit 1
select orchestra from orchestra where orchestra_id not in (select orchestra_id from performance)
select orchestra from orchestra where orchestra_id not in ( select orchestra_id from performance)
select record_company from orchestra where year_of_founded <= 2003
select record_company from orchestra where year_of_founded >= 2003
select count(*) from show where result = 'Glebe Park'
select count(*) from show where result = 'Glebe Park'
select t2.type from show as t1 join performance as t2 on t1.performance_id = t2.performance_id group by t1.performance_id having count(*) > 1
select t2.type from show as t1 join performance as t2 on t1.performance_id = t2.performance_id group by t1.performance_id having count(*) > 1
select state from owners intersect select state from professionals
select state from owners intersect select state from professionals
select avg(t1.age) from dogs as t1 join treatments as t2 on t1.dog_id = t2.dog_id where t2.date_of_treatment = 'Test_id'
select avg(t1.age) from dogs as t1 join treatments as t2 on t1.dog_id = t2.dog_id where t2.date_of_treatment = 'Test'
select t2.professional_id, t2.last_name, t2.cell_number from treatments as t1 join professionals as t2 on
select t2.professional_id, t2.last_name, t2.cell_number from treatments as t1 join professionals as t2 on t1.professional_id = t2.professional_id where t2.state = 'Indiana' group by t1.treatment_id having count(*) > 2
select name from dogs where owner_id not in ( select dog_id from treatments where cost_of_treatment > 1000 )
select t2.name from treatments as t1 join dogs as t2 on t1.dog_id = t2.dog_id group by t2.owner_id having count(*) > 1000
select first_name from professionals
select first_name from professionals
select professional_id, name, treatment_type_code from dogs
select t2.professional_id, t2.first_name, t2.name from dogs as t1 join treatments on t1.dog_id = t2.dog_id
select owner_id, name from dogs group by owner_id order by count(*) desc limit 1
select t2.owner_id, t1.name from dogs as t1 join owners as t2 on t1.dog_id = t2.owner_id group by t2.owner_id order by count(*) desc limit 1
select t2.professional_id, t1.home_phone, t1.home_phone from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id group by t2.professional_id having count(*) >= 2
select t2.professional_id, t2.home_phone, t2.home_phone from treatments as t1 join professionals as t2 on t1.professional_id = t2.professional_id group by t1.treatment_id having count(*) >= 2
select breed_code from dogs where date_adopted = (select max(date_adopted) from dogs)
select breed_code from dogs where abandoned_yn = (select abandoned_yn from dogs group by abandoned_yn order by count(*) desc limit 1)
select t1.owner_id, t1.last_name from owners as t1 join treatments as t2 on t1.owner_id = t2.owner_id
select t1.owner_id, t1.last_name from owners as t1 join treatments as t2 on t1.owner_id = t2.dog_id group by t1.owner_id order by count(*) desc limit 1
select t2.treatment_type_description from treatments as t1 join treatment_types as t2 on t1.treatment_type_code = t2.treatment_type_code group by t1.treatment_type_code order by sum(t1.cost_of_treatment) asc limit 1
select t2.treatment_type_description from treatments as t1 join treatment_types as t2 on t1.treatment_type_code = t2.treatment_type_code group by t1.treatment_type_code order by sum(t1.cost_of_treatment) asc limit 1
select t2.owner_id, t2.zip_code from dogs as t1 join owners as t2 on t1.dog_id = t2.owner_id group by t2.owner_id order by count(*) desc limit 1
select t2.owner_id, t2.zip_code from dogs as t1 join owners as t2 on t1.dog_id = t2.owner_id group by t2.owner_id order by count(*) desc limit 1
select t2.professional_id, t2.treatment_type_code from treatments as t1 join treatments as t2 on t1.treatment_type_code = t2.treatment_type_code group by t1.professional_id having count(*) >= 2
select t2.professional_id, t2.email_address, t2.home_phone from treatments as t1 join professionals as t2 on t1.professional_id = t2.professional_id group by t1.treatment_type_code having count(*) >= 2
select t2.professional_id from treatments as t1 join professionals as t2 on t1.professional_id = t2.professional_id where t1.cost_of_treatment < (select avg(cost_of_treatment) from treatments)
select t2.professional_id from treatments as t1 join professionals as t2 on t1.professional_id = t2.professional_id where t1.cost_of_treatment < (select avg(cost_of_treatment) from treatments)
select date_of_treatment, t3.email_address from dogs as t1 join treatments as t2 on t1.dog_id = t2.dog_id join professionals as t3 on t2.professional_id = t3.professional_id
select t2.date_of_treatment, t1.first_name from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id
select t2.cost_of_treatment, t1.treatment_type_description from treatment_types as t1 join treatments as t2 on t1.treatment_type_code = t2.treatment_type_code
select t2.cost_of_treatment, t1.treatment_type_description from treatment_types as t1 join treatments as t2 on t1.treatment_type_code = t2.treatment_type_code
select t2.name, t2.size_code from dogs as t1 join owners as t2
select t1.name, t1.size_code from dogs as t1 join owners as t2 on t1.dog_id = t2.owner_id
select t2.name, t2.name from owners as t1 join dogs as t2 on t1
select t2.owner
select t2.name, t2.treatment_type_code from treatments as t1 join dogs as t2
select t2.name, t2.treatment_type_code from dogs as t1 join treatments as t2
select first_name, name from dogs as t1 join owners as t2 on t1.dog_id = t2.owner_id where t2.owner_id = (select owner_id from dogs where t2.city = 'VA')
select t2.first_name, t1.name from dogs as t1 join owners as t2 on t1.dog_id = t2.owner_id where t2.city = 'VA'
select date_arrived, date_departed from dogs order by date_arrived asc limit 1
select date_of_treatment from treatments order by date_arrived
select t2.last_name from dogs as t1 join owners as t2 on t1.dog_id = t2.owner_id order by t1.date_adopted asc limit 1
select name from dogs order by date_of_birth asc limit 1
select email_address from professionals where state = 'HI' or state = 'WI'
select email_address from professionals where state = 'HI' or state = 'WI'
select date_arrived, date_adopted from dogs where abandoned_yn = 1
select date_arrived, date_adopted from dogs where abandoned_yn = 1
select count(*) from treatments
select count(*) from dogs as t1 join treatments as t2 on t1.dog_id = t2.dog_id where t2.date_of_treatment = (select max(date_of_treatment) from treatments)
select count(*) from treatments as t1 join dogs as t2 on t1.dog_id = t2.dog_id
select count(*) from professionals as t1 join treatments as t2 on t1.professional_id = t2.treatment_id where t2.date_of_treatment = "T"
select first_name from professionals where city like '%west%'
select first_name from professionals where city like '%west%'
select owner_id from owners where state like '%north%'
select owner_id from owners where state like '%nord%'
select count(*) from dogs where age < (select avg(age) from dogs)
select count(*) from dogs where age < (select avg(age) from dogs)
select max(cost_of_treatment) from treatments
select t2.cost_of_treatment from treatments as t1 join treatments as t2 on t1.treatment_id = t2.treatment_id order by t1.date_of_treatment desc limit 1
select count(*) from dogs where abandoned_yn not in ( select dog_id from treatments );
select count(*) from dogs where treatment_type_code =
select count(*) from owners where owner_id not in ( select owner_id from dogs where abandoned_yn = "null" );
select count(*) from dogs where owner_id not in ( select owner_id from dogs where date_adopted = "null" );
select count(*) from professionals where professional_id not in ( select treatment_type_code from treatments );
select count(*) from professionals where professional_id not in ( select professional_id from treatments );
select name, age,weight from dogs where abandoned_yn = 1 and abandoned_yn = 0
select name, age, weight from dogs where abandoned_yn = 1 and 0 = 'No'
select avg(age) from dogs where abandoned_yn = 1
select avg(t1.age) from dogs as t1 join dogs as t2 on t1.dog_id = t2.dog_id where t2.abandoned_yn = 1
select age from dogs order by date_arrived asc limit 1
select age from dogs order by date_arrived asc limit 1
select charge_type, charge_amount from charges group by charge_type
select charge_type, charge_amount from charges
select charge_amount from charges group by charge_type order by count(*) desc limit 1
select charge_amount from charges order by charge_type desc limit 1
select email_address, email_address from professionals
select email_address, email_address from professionals
select breed_code, size_code
select distinct(t2.
select t1.professional_id, t2.treatment_type_description from treatments as t1 join treatment_types as t2 on t1.treatment_type_code = t2.treatment_type_code
select t1.professional_id, t2.treatment_type_description from treatments as t1 join treatment_types as t2 on t1.treatment_type_code = t2.treatment_type_code
select count(*) from singer
select count(*) from singer
select name from singer order by birth_year asc
select name from singer order by birth_year asc
select birth_year, citizenship from singer
select birth_year, citizenship from singer
select name from singer where citizenship!= 'France'
select name from singer where citizenship!= 'France'
select name from singer where birth_year < 1948
select name from singer where birth_year < 1948
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
select distinct(t2.name) from song as t1 join singer as t2 on t1.song_id = t2.song
select distinct(t2.name) from song as t1 join singer as t2 on t1.song_id = t2.song
select count(*) from singer group by name having count(*) > 1
select count(*) from singer group by count(*) having count(*) > 1
select t1.name, max(t2.highest_position) from singer as t1 join song as t2 on t1
select t1.name, max(t2.highest_position) from singer as t1 join song as t2 on t1.song_id
select name from singer where singer_id not in (select singer_id from song)
select t1.title from song as t1 join song as t2 on t1.song_id = t2.song_id where t2.song_id not in (select song_id from song)
select citizenship from singer where birth_year <= 1945
select citizenship from singer where birth_year <= 1945
