select count(*) from singer
select count(*) from singer
select name, country from singer order by year desc 
select name, country from singer order by country desc
select avg(t1.average), min(t1.average), max(t1.song
select avg(t1.average), min(t1.average), max(t1.song
select name, song_release_year from singer order by song_release_year asc limit 1
select name, song_release_year from singer order by birthday desc limit 1
select distinct country from singer where birth
select distinct country from singer where birth
select country, count(*) from singer group by country
select country, count(*) from singer group by country
select song_name from singer where t2.average > (select t1.name from singer as t1 join singer_in_concert as t2 on t1.singer_id = t2.singer_id
select song_name from singer where average > (select avg(average) from singer
select location, name from stadium where capacity between 5000 and 10000
select location, name from stadium where capacity between 5000 and 10000
select average, max(capacity) from stadium
select average, max(capacity) from stadium
select name, capacity from stadium order by average desc limit 1
select name, capacity from stadium order by average desc limit 1
select count(*) from concert where year >= 2014 or year >= "2014"
select count(*) from concert where year > 2014 or year >= 1
select t1.name, count(*) from stadium as t1 join concert as t2 on t1.stadium_id = t2.stadium_id group by t2.stadium_id
select t1.name, count(*) from stadium as t1 join concert as t2 on t1.stadium_id = t2.stadium_id group by t1.stadium_id
select t1.name, t1.capacity from stadium as t1 join concert as t2 on t1.stadium_id = t2.stadium_id where t2.year >= 2014 group by t1.stadium_id order by count(*) desc limit 1
select t1.name, max(t1.highest) from stadium as t1 join concert as t2 on t1.stadium_id = t2.stadium_id where t2.year > 2013 group by t1.stadium_id order by count(*) desc limit 1
select concert_name from concert order by year desc limit 1
select concert_name from concert order by year desc limit 1
select max(t1.highest) from stadium as t1 join concert as t2 on t1.stadium_id = t2.stadium_id where t2.year = 2004
select lowest from stadium where stadium_id not in (select stadium_id from concert)
select country from singer where birth
select average from stadium except select t1.average from stadium as t1 join concert as t2 on t1.stadium_id = t2.stadium_id where t2.year = 2014
select min(t1.lowest) from stadium as t1 join concert as t2 on t1.stadium_id = t2.stadium_id where t2.year!= 2014
select concert_name, theme, count(*) from concert group by concert_name
select t1.name, t3.theme, count(*) from singer as t1 join singer_in_concert as t2 on t1.singer_id = t2.singer_id
select t1.name, count(*) from singer as t1 join singer_in_concert as t2 on t1.singer_id = t2.singer_id group by t1.singer_id
select t1.name, count(*) from singer as t1 join singer_in_concert as t2 on t1.singer_id = t2.singer_id group by t1.song_name
select t1.name from singer as t1 join singer_in_concert as t2 on t1.singer_id = t2.singer_id where year > 2014 or year >=
select t1.name from singer as t1 join singer_in_concert as t2 on t1.singer_id = t2.singer_id where year < 2014 or year <
select name, country from singer where song_name like '%hey%'
select name, country from singer where song_name like '%hey%'
select min(t1.highest), max(t1.highest) from stadium as t1 join concert as t2 on t1.stadium_id = t2.stadium_id where t2.year = 2014 intersect select year from concert where year = 2015
select min(t1.lowest), max(t1.highest) from stadium as t1 join concert as t2 on t1.stadium_id = t2.stadium_id where t2.year = 2014 intersect select t1.lowest, t1.highest from stadium as t1 join concert as t2 on t1.stadium_id = t2.stadium_id where t2.year = 2015
select count(*) from stadium order by capacity desc limit 1
select count(*) from stadium order by capacity desc limit 1
select count(*) from pets where weight > 10
select count(*) from pets where weight > 10
select t1.weight from pets as t1 join has_pet as t2 on t1.petid = t2.petid join student as t3 on t2.stuid = t3.stuid where t1.pettype = 'dog' and t3.age = (select min(age) from pets as t1 join has_pet as t2 on t1.petid = t2.petid join student as t3 on t2.stuid = t3.stuid where t1.pettype = 'dog')
select t2.weight from has_pet as t1 join pets as t2 on t1.petid = t2.petid join student as t3 on t1.stuid = t3.stuid where t2.pettype = 'dog' order by t3.age limit 1
select max(weight), pettype from pets group by pettype
select max(weight), max(weight), pettype from pets group by pettype
select count(*) from has_pet as t1 join pets as t2 on t1.petid = t2.petid join student as t3 on t1.stuid = t3.stuid where t3.age > 20
select count(*) from has_pet as t1 join pets as t2 on t1.petid = t2.petid join student as t3 on t1.stuid = t3.stuid where t3.age > 20
select count(*) from has_pet as t1 join pets as t2 on t1.petid = t2.petid join student as t3 on t1.stuid = t3.stuid where t3.sex = 'F'
select count(*) from has_pet as t1 join pets as t2 on t1.petid = t2.petid join student as t3 on t1.stuid = t3.stuid where t3.sex = 'F'
select count(distinct pettype) from pets
select count(distinct pettype) from pets
select distinct fname from has_pet as t1 join pets as t2 on t1.petid = t2.petid join student as t3 on t1.stuid = t3.stuid where t2.pettype = 'cat' or t2.pettype = 'dog'
select distinct fname from has_pet as t1 join pets as t2 on t1.petid = t2.petid join student as t3 on t1.stuid = t3.stuid where t2.pettype = 'cat' or t2.pettype = 'dog'
select t1.fname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid join pets as t3 on t2.petid = t3.petid where t3.pettype = 'kitten' intersect select t1.lname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid where t3.pettype = 'Pridt2.pettype = t2.petid
select fname from has_pet as t1 join pets as t2 on t1.petid = t2.petid join student as t3 on t1.stuid = t3.stuid where t2.pettype = 'kitties' intersect select fname from has_pet
select major, age from student where stuid not in (select stuid from has_pet)
select major, count(*) from student where stuid not in (select stuid from has_pet as t1 join pets as t2 on t1.petid = t2.petid where t2.pettype = 'dog')
select stuid from student except select stuid from has_pet as t1 join pets as t2 on t1.petid = t2.petid where t2.pettype = 'dog'
select stuid from student except select stuid from has_pet as t1 join pets as t2 on t1.stuid = t2.petid where t2.pettype = 'dog'
select fname, age from student where stuid not in (select stuid from has_pet as t1 join pets as t2 on t1.petid = t2.petid where t2.pettype = 'dog')
select fname from student where stuid in (select stuid from has_pet)
select pettype, weight from pets order by birthdate desc limit 1
select pettype, count(*) from pets group by pettype order by count(*) asc limit 1
select petid, weight from pets where birthdate > (select max(birthdate) from pets where birthdate like "2020%")
select petid, weight from pets where birthdate > (select max(birthdate) from pets where birthdate like "2020%")
select pettype, avg(t1.petid), max(t1.petid) from pets as t1 join has_pet as t2 on t1.petid = t2.petid group by t1.pettype
select pettype, avg(t1.petid), max(t1.petid) from pets as t1 join has_pet as t2 on t1.petid = t2.petid group by t1.pettype
select pettype, avg(t1.petid), max(t1.petid) from pets as t1 join has_pet as t2 on t1.petid = t2.petid group by t1.pettype
select pettype, avg(weight) from pets group by pettype
select distinct t1.fname, t1.age from student as t1 join has_pet as t2 on t1.stuid = t2.stuid
select distinct t1.fname, t1.age from student as t1 join has_pet as t2 on t1.stuid = t2.stuid
select stuid from has_pet as t1 join pets as t2 on t1.petid = t2.petid join has_pet as t3 on t1.petid = t3.petid join student as t4 on t3.stuid = t1.stuid
select t2.petid from has_pet as t1 join pets as t2 on t1.petid = t2.petid join student as t3 on t1.stuid = t3.stuid where t3.lname = 'Smith'
select count(*), stuid from has_pet group by stuid
select t1.stuid, count(*) from has_pet as t1 join pets as t2 on t1.petid = t2.petid group by t1.stuid
select fname, sex from student group by sex having count(*) > 1
select fname, sex from student group by sex having count(*) > 1
select t1.lname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid join pets as t3 on t2.petid = t3.petid where t3.pettype = 'cat' and t2.birthdate
select t1.lname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid join pets as t3 on t2.petid = t3.petid where t3.birthdate = 2001
select avg(age) from student where stuid not in (select stuid from has_pet)
select avg(age) from student where stuid not in (select stuid from has_pet)
select count(*) from continents
select count(*) from continents
select continent, count(*) from countries group by continent
select continent, count(*) from countries group by continent
select count(*) from countries
select count(distinct countryid) from countries
select maker, id, count(*) from car_makers group by maker
select t1.fullname, count(*) from car_makers as t1 join model_list as t2 on t1.id = t2.modelid group by t1.id
select t1.model from model_list as t1 join cars_data as t2 on t1.model = t2.modelid
select t1.model from model_list as t1 join cars_data as t2 on t1.model = t2.model
select t1.model from model_list as t1 join cars_data as t2 on t1.model = t2.model
select t1.model from model_list as t1 join cars_data as t2 on t1.model = t2.model
select maker, count(*) from car_makers group by maker having count(*) >= 2
select maker from car_makers where year = (select min(year), t1.maker from car_makers as t1 join cars_data as t2 on t1.id = t2.c
select t1.make, "production" from car_names as t1 join cars_data as t2 on t1.makeid = t2.id order by t2.year limit 1
select maker, year from car_makers
select distinct model from model_list where model < 1980 or year =
select distinct model from model_list where year < 1980 or year =
select continent, count(*) from continents group by continent
select t2.continent, count(*) from car_makers as t1 join countries as t2 on t1.country = t2.countryid group by t2.continent
select countryname from countries group by countryname order by count(*) desc limit 1
select countryname from countries group by countryname order by count(*) desc limit 1
select count(*), t1.maker from car_makers as t1 join model_list as t2 on t1.id = t2.modelid group by t1.maker
select count(*), t1.id, t1.fullname from car_makers as t1 join model_list as t2 on t1.id = t2.modelid group by t1.id
select t2.accelerate from car_names as t1 join cars_data as t2 on t1.makeid = t2.id where t1.make = "ac" and t1.make = "ac"
select t1.acc
select count(*) from car_makers where country = "Japanese"
select count(*) from car_makers where country = "Japanese"
select count(distinct t1.model) from model_list as t1 join countries as t2 on t2.countryid = t2.countryid where t2.continent = 'america'
select count(*) from model_list where countryid in (select t1.countryid from countries as t1 join car_makers as t2 on t1.countryid = t2.countryid
select avg(
select avg(t2.mpg) from cars_data as t1 join cars_data as t2 on t1.id = t2.contin
select min(weight) from cars_data where cylinders = "1974"
select min(weight) from cars_data where cylinders = 1974
select maker, model from model_list
select maker, model from model_list
select countryname, countryid from countries group by countryid having count(*) >= 1
select countryname, countryid from countries group by countryid having count(*) >= 1
select count(*) from cars_data where horsepower > 150
select count(*) from cars_data where horsepower > 150
select avg(weight), year from cars_data group by year
select avg(weight), year from cars_data group by year
select countryname from countries where continent = "europe" group by countryname having count(*) >= 3
select countryname from countries where continent = "europe" group by countryname having count(*) >= 3
select max (select max (select max (select max (select t2.makeid from car_names as t1 join car_names as t2 on t1.model = t2.modelid
select t1.make, max(t1.
select model from model_list where model not in (select model from car_names)
select t1.model from model_list as t1 join cars_data as t2 on t1.model = t2.model
select avg(h
select avg(
select avg(edispl) from cars_data
select avg(edispl) from cars_data
select max(acc
select max(acc
select model from car_names group by model order by count(*) desc limit 1
select model from model_list group by model order by count(*) desc limit 1
select count(*) from cars_data where cylinders > 4
select count(*) from cars_data where cylinders > 4
select count(*) from cars_data order by year desc limit 2
select count(*) from car_names where make = 2
select count(distinct model) from car_makers as t1 join continents as t2 on t1.country = t2.country
select count(*), continent from car_makers as t1 join countries as t2 on t1.country = t2.countryid where t1.maker = 'American Motor'
select t1.maker, t1.fullname, t1.id from car_makers as t1 join model_list as t2 on t1.id = t2.modelid group by t1.maker having count(*) > 3
select t1.maker, t1.id from car_makers as t1 join model_list as t2 on t1.id = t2.modelid group by t1.id having count(*) > 3
select distinct t2.model from car_makers as t1 join model_list as t2 on t1.id = t2.modelid where t1.fullname = 'General Motors' union select distinct t2.model from car_makers as t1 join model_list as t2 on t1.id = t2.modelid where t1.fullname = 'General Motors'
select distinct model from model_list where id = (select t1.model from model_list as t1 join car_makers as t2 on t1.modelid = t2.id where t2.maker = 'General Motors') or t2.year >
select year from cars_data group by year having count(*) < 3000 intersect select year from cars_data group by year having count(*) <= 4000
select distinct year from cars_data where weight < 4000 intersect select distinct year from cars_data where weight > 3000
select horsepower from cars_data order by accelerate desc limit 1
select horsepower from cars_data order by accelerate desc limit 1
select count(*) from cars_data order by accelerate limit 1
select count(*) from cars_data order by accelerate asc limit 1
select count(distinct accelerate) from cars_data order by horsepower desc limit 1
select count(distinct t1.id) from cars_data as t1 join cars_data as t2 on t1.id = t2.
select count(*) from countries where count(*) > 2
select count(*) from countries where count(*) > 2
select count(*) from cars_data where cylinders > 6
select count(*) from cars_data where mpg > 6
select t1.model from car_names as t1 join cars_data as t2 on t1.model = t2.modelid
select t1.model from car_names as t1 join cars_data as t2 on t1.model = 4
select t1.makeid, t1.make from car_names as t1 join cars_data as t2 on t1.makeid = t2.makeid
select make, t1.make from car_names as t1 join cars_data as t2 on t1.makeid = t2.id where id not in (select t4.id from cars_data as t3 join cars_data as t4 on t3.id = 4)
select max(t2.mpg) from cars_data as t1 join cars_data as t2 on t1.id = t2.
select max(mpg) from cars_data where cylinders = 8 union select mpg from cars_data where cylinders < 1980
select model from model_list where model < 3500 except select model from model_list where model = 'Ford Motor'
select distinct model from model_list where model = "3500" except select distinct model from model_list where maker = "Ford"
select countryname from countries except select t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.country
select countryname from countries except select t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.country
select t1.id, t1.maker from car_makers as t1 join model_list as t2 on t1.id = t2.modelid group by t1.id having count(*) >= 2 intersect select t1.maker, t1.maker from car_makers as t1 join model_list as t2 on t1.id = t2.modelid group by t1.id having count(*) > 3
select t1.id, t1.maker from car_makers as t1 join model_list as t2 on t1.id = t2.modelid group by t1.id having count(*) >= 2 intersect select t1.id, t1.maker from car_makers as t1 join model_list as t2 on t1.id = t2.modelid group by t1.id having count(*) > 3
select t1.countryid, t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.country where t2.maker > 3 union select t1.countryid, t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.country where t2.maker = 'tesla'
select t1.countryid, t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.country where t2.maker > 3 union select t1.countryid, t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.country where t2.maker = "teslas"
select country from airlines where abbreviation = "JetBlue"
select country from airlines where abbreviation = 'Jazzblue'
select abbreviation from airlines where abbreviation = "JetBlue"
select abbreviation from airlines where abbreviation = "JetBlue"
select airline, abbreviation from airlines where airline = 'American Airlines'
select airline, abbreviation from airlines where abbreviation = 'American'
select airportcode, airportname from airports where airportname = "James"
select airportcode, airportname from airports where airportname = "Syracon"
select count(*) from airlines
select count(*) from airlines
select count(*) from airports
select count(*) from airports
select count(*) from flights
select count(*) from flights
select airline from airlines where abbreviation = 'UAL'
select airline from airlines where abbreviation = 'UAL'
select count(*) from airlines where country = 'American'
select count(*) from airlines where country = 'American'
select city, country from airports where airportname = "Alon"
select city, country from airports where airportname = "Alon"
select airportname from airports where airportcode = 'AKO'
select airportname from airports where airportcode = 'AKO'
select airportname from airports where airportcode = 'Jackson'
select airportname from airports where city = "James"
select count(*) from flights where sourceairport = 'APG'
select count(*) from flights where sourceairport = 'APG'
select count(*) from airports where airportcode = "ATO"
select count(*) from airports where airportcode = "ATO"
select count(*) from flights where destairport = "James"
select count(*) from flights where flightno = "James"
select count(*) from flights as t1 join airports as t2 on t2.city = t2.city where destairport = "Michael"
select count(*) from flights where flightno = "James"
select count(*), t1.destairport from flights as t1 join airports as t2 on t2.airportcode = t2.airportcode where t2.city = 'Syracuse' and t2.city = 'Ashley'
select count(*) from flights where city = "Sylvania" and countryabbrev = "Ashel
select count(*) from airlines as t1 join flights as t2 on t1.uid = t2.uid
select count(*) from airlines where abbreviation = "JetBlue"
select count(*) from flights as t1 join airports as t2 on t2.airportcode = t2.airportcode where t2.airportcode = 'ASY'
select count(*) from flights as t1 join airports as t2 on t1.airport
select count(*) from flights as t1 join airports as t2 on t1.airport
select count(*) from flights where sourceairport = "AHD"
select count(*) from flights as t1 join airports as t2 on t2.airportcode = t2.airportcode where t2.city = 'Aberdeen'
select count(*) from flights as t1 join airports as t2 on t2.airportcode = t2.airportcode where t2.city = "Aberdeen"
select city from airports group by city order by count(*) desc limit 1
select city from airports group by city order by count(*) desc limit 1
select city from airports group by city order by count(*) desc limit 1
select city from airports group by city order by count(*) desc limit 1
select airportcode from airports group by airportcode order by count(*) desc limit 1
select airportcode from airports group by airportcode order by count(*) desc limit 1
select airportcode from airports group by airportcode order by count(*) limit 1
select airportcode from airports group by airportcode order by count(*) asc limit 1
select airline from airlines group by airline order by count(*) desc limit 1
select airline from airlines group by airline order by count(*) desc limit 1
select abbreviation, country from airlines group by abbreviation order by count(*) limit 1
select t1.abbreviation, t1.country from airlines as t1 join flights as t2 on t1.uid = t2.airport
select airline from flights where flightno = 'AHD'
select airline from flights where sourceairport = "AHD"
select t1.airline from airlines as t1 join airports as t2 on t1.uid = t2.airportname where t2.airportcode = 'AHD'
select airline from flights where sourceairport = "AHD"
select t1.airline from airlines as t1 join flights as t2 on t1.uid = t2.uid
select airline from flights where sourceairport = "APG" intersect select airline from flights where destairport = "CVO"
select t1.airline from airlines as t1 join flights as t2 on t1.uid = t2.uid
select t1.airline from airlines as t1 join flights as t2 on t1.uid = t2.uid
select airline from airlines group by airline having count(*) >= 10
select airline from airlines group by airline having count(*) >= 10
select airline from airlines group by airline having count(*) < 200
select airline from airlines where uid < 200
select flightno from flights where airline = "JetBlue"
select flightno from flights where flightno = "JetBlue"
select flightno from flights where sourceairport = "APG"
select flightno from flights where destairport = "APG"
select flightno from flights where sourceairport = "APG"
select flightno from flights where sourceairport = "APG"
select flightno from flights where flight
select flightno from flights where destairport = "Michael"
select flightno from flights as t1 join flights as t2 on t1.f
select flightno from flights as t1 join airports as t2 on t1.airport
select count(*) from flights where city = "Sylvania" or city = "Michael Jackson "
select count(*) from flights where city = 'Sylvania' or city = 'Michael Jackson
select airportname from airports except select t1.airportname from airports as t1 join flights as t2 on t1.airportcode = t2.airport
select airportname from airports where airportcode not in (select airportcode from airports) or airportcode not in (select airportcode from airports)
select count(*) from documents
select count(*) from documents
select document_id, document_name, document_description from documents
select document_id, document_name, document_description from documents
select document_id from documents where document_description like '%w%'
select document_name, template_id from documents where document_name like '%w%'
select document_description, template_id from documents where document_name = "Robbin CV"
select document_description, template_id from documents where document_name = "Robbin CV"
select count(distinct template_id) from documents
select count(distinct template_id) from documents
select count(*) from templates where template_type_code = "PPT"
select count(*) from templates where template_type_code = "PPT"
select template_id, count(*) from documents group by template_id
select template_id, count(*) from documents group by template_id
select date_effective_to from templates group by date_effective_to order by count(*) desc limit 1
select date_effective_to from templates group by date_effective_to order by count(*) desc limit 1
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
select date_effective_from from templates where template_type_code = 'PP' or template_type_code = 'PPT'
select date_effective_to from templates where template_type_code = "CV"
select date_effective_to from templates where template_type_code = "CV"
select date_effective_from, template_type_code from templates where version_number > 5
select date_effective_from, template_type_code from templates where version_number > 5
select date_effective_from, count(*) from templates group by date_effective_to
select date_effective_from, count(*) from templates group by date_effective_to
select date_effective_to from templates group by date_effective_to order by count(*) desc limit 1
select date_effective_to from templates group by date_effective_to order by count(*) desc limit 1
select date_effective_to from templates group by date_effective_to having count(*) < 3
select date_effective_to from templates group by date_effective_to having count(*) < 3
select min(date_effective_from), date_effective_to from templates group by date_effective_from
select min(date_effective_from), date_effective_to from templates group by date_effective_from
select t1.date_effective_to from templates as t1 join documents as t2 on t1.
select 'Datenbase' from documents where document_name = "Data base"
select t1.document_name, t1.document_description, t1.document_id from documents as t1 join templates as t2 on t1.document_id = t2.document_id
select document_name, template_id from documents where template_id in ( select template_id from templates where template_type_code = "BK")
select t1.date_effective_from, t1.date_effective_to, count(*) from templates as t1 join documents as t2 on t1.date_effective_from = t2.document_id group by t1.date_effective_to
select t1.date_effective_from, t1.date_effective_to, count(*) from templates as t1 join documents as t2 on t1.date_effective_from = t2.document_id group by t1.date_effective_to
Select t1.date_effective_from, t1.date_effective_to from templates as t1 join documents as t2 on t2.document_id = t2.document_id group by t1.date_effective_to order by count(*) desc limit 1
select date_effective_to from documents
select date_effective_from from templates where template_id not in (select template_id from documents)
select date_effective_from from templates where template_id not in (select template_id from documents)
select template_type_code, template_type_description from ref_template_types
select template_type_code, template_type_description from ref_template_types
select template_type_description from ref_template_types where template_type_code = "AD"
select template_type_description from ref_template_types where template_type_code = "AD"
select template_type_code from ref_template_types where template_type_description = "Book"
select template_type_code from ref_template_types where template_type_description = "Book"
select distinct template_type_description from ref_template_types
select distinct template_type_description from templates
select date_effective_to from templates where template_type_description like "%presentation%
select date_effective_to from templates where template_type_description like '%presentation%' 
select t1.first_name, t1.last_name, count(*) from players as t1 join matches as t2 on t1.player_id = t2.player_id
select t1.first_name, t1.last_name, count(*) from players as t1 join matches as t2 on t1.player_id = t2.player_id
select t1.year, t1.winner_age from matches as t1 join players as t2 on t1.winner_id = t2.player_id group by t1.winner_age
select t2.year, t1.winner_age from matches as t1 join players as
select first_name, birth_date from players where country_code = 'USA'
select first_name, birth_date from players where country_code = 'USA'
select avg(t1.loser_age), avg(t1.winner_age) from matches as t1 join matches as t2 on t1.loser_id = t2.loser_id
select avg(loser_age), avg(winner_age) from matches
select avg(t2.rank
select avg(t2.rank
select max(t
select best_of from matches where winner_rank = 'T' and loser_rank = 'L'
select count(distinct country_code) from players
select count(distinct country_code) from players
select count(distinct t1.first_name), t1.last_name from players as t1 join rankings as t2 on t1.player_id = t2.player_id
select count(distinct loser_name) from matches
select tourney_name from matches group by tourney_name having count(*) > 10
select t1.first_name from players as t1 join rankings as t2 on t1.player_id = t2.player_id group by t2.player_id having count(*) > 10
select t3.first_name, t3.last_name from matches as t1 join matches as t2 on t1.loser_id = t2.loser_id join players as t3 on t1.winner_id = t3.player_id where t1.year = 2013 intersect select t3.winner_name, t3.winner_name from matches as t1 join matches as t2 on t1.winner_id = t2.winner_id
select t3.first_name, t3.last_name from matches as t1 join matches as t2 on t1.loser_id = t2.loser_id join players as t3 on t1.winner_id = t3.player_id where t1.year = 2013 intersect select t3.winner_name, t3.winner_name from matches as t1 join matches as t2 on t1.winner_id = t2.winner_id
select t1.first_name, t1.last_name from players as t1 join matches as t2 on t1.player_id = 1
select t1.winner_name, t2.loser_name from matches as t1 join matches as t2 on t1.winner_id = t2.winner_id where t1.year = 2013 or t1.year = 2016
select t1.country_code, t1.first_name from players as t1 join matches as t2 on t1.player_id = t2.winner_id where t2.winner_name = "Australian Open" intersect select t1.country_code, t1.first_name from players as t1 join matches as t2 on t1.player_id = t2.winner_id where t2.winner_name = 'WTA Championships'
select t1.first_name, t1.country_code from players as t1 join rankings as t2 on t1.player_id = t2.player_id where
select first_name, country_code from players order by birth_date desc limit 1
select first_name, country_code from players order by birth_date desc limit 1
select first_name, last_name from players order by birth_date
select first_name, last_name from players order by birth_date desc
select first_name, last_name from players where hand = 'L' order by birth_date desc
select first_name from players where first_name = 'Full' order by birth_date
select t1.first_name, t1.country_code from players as t1 join rankings as t2 on t1.player_id = t2.player_id group by t2.player_id order by count(*) desc limit 1
select t1.first_name, t1.country_code from players as t1 join rankings as t2 on t1.player_id = t2.player_id group by t2.player_id order by count(*) desc limit 1
select year from matches group by year order by count(*) desc limit 1
select year from matches group by year order by count(*) desc limit 1
select t1.first_name, count(*) from players as t1 join rankings as t2 on t1.player_id = t2.player_id group by t2.player_id order by count(*) desc limit 1
select t1.first_name, t1.last_name, count(*) from players as t1 join rankings as t2 on t1.player_id = t2.player_id group by t2.player_id order by count(*) desc limit 1
select t3.winner_name, t3.winner_rank from players as t1 join matches as t2 on t1.player_id = t2.winner_id join
select t3.winner_name, t3.winner_rank from matches as t1 join rankings as t2 on t1.winner_id = t2.winner_id
select t1.winner_name, t2.loser_name from matches as t1 join matches as t2 on t1.winner_id = t2.winner_id group by t1.winner_name order by count(*) desc limit 1
select t1.winner_name, t1.loser_name from matches as t1 join matches as t2 on t1.loser_id = t2.loser_id order by t2.year desc limit 1
select avg(t2.ranking_points), t1.first_name from players as t1 join rankings as t2 on t1.player_id = t2.player_id group by t1.player_id
select t1.first_name, avg(t2.ranking_points) from players as t1 join rankings as t2 on t1.player_id = t2.player_id group by t2.player_id
select sum(ranking_points), t1.player_id from players as t1 join rankings as t2 on t1.player_id = t2.player_id group by t1.player_id
select t1.first_name, t1.last_name, sum(t2.ranking_points) from players as t1 join rankings as t2 on t1.player_id = t2.player_id group by t2.player_id
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
select t1.first_name, t1.rank
select t1.first_name, t1.last_name from players as t1 join rankings as t2 on t1.player_id = t2.player_id where t1.birth_date = 3 order by t2.year
select count(distinct winner_rank) from matches where tourney_name = 'WTA Championships' intersect select winner_rank from matches where winner_id in (select winner_id from matches where tourney_name = 'WTA Championships')
select count(distinct winner_rank) from matches where tourney_name = 'WTA Championships'
select t1.first_name, t1.birth_date from players as t1 join rankings as t2 on t1.player_id = t2.player_id order by ranking_points desc limit 1
select t1.first_name, t1.birth_date from players as t1 join rankings as t2 on t1.player_id = t2.player_id where ranking_points = (select ranking_points from rankings group by ranking_points order by count(*) desc limit 1)
select hand, count(*) from players group by hand
select hand, count(*) from players group by hand
select distinct line_1 from addresses
select t2.line_1, t2.line_2, t2.line_3 from addresses as t1 join addresses as t2 on t1.address_id = t2.address_id
select count(*) from show
select count(*) from show
select name from conductor order by date
select name from conductor order by year_of_work
select name from conductor where nationality = 'USA'
select name from conductor where nationality = 'USA'
select record_company from orchestra order by year_of_founded desc
select record_company from orchestra order by year_of_founded desc
select avg(attendance) from show where if_first_show not in (select t1.performance_id from performance as t1 join show as t2 on t1.performance_id = t2.performance_id)
select avg(attendance) from show where if_first_show!= 'T'
select max(share), min(share) from performance where type!= "Live final"
select max(share), min(share) from performance where type!= "Live final"
select count(distinct nationality) from conductor
select count(distinct nationality) from conductor
select name from conductor order by date
select t2.name from conductor as t1 join conductor as t2 on t1.
select name from conductor order by year_of_work desc limit 1
select name from conductor order by year_of_work desc limit 1
select t2.name, t2.orchest
select t2.name, t3.orchest
select t2.name from performance as t1 join conductor as t2 on t1.
select t2.name from performance as t1 join conductor as t2 on t1.
select t2.name from performance as t1 join conductor as t2 on t1.
select t2.name from performance as t1 join conductor as t2 on t1.
select t2.name from performance as t1 join conductor as t2 on t1.
select t2.name from performance as t1 join conductor as t2 on t1.
select record_company, count(*) from orchestra group by record_company
select record_company, count(*) from orchestra group by record_company
select major_record_format from orchestra order by date
select major_record_format from orchestra order By year_of_founded
select record_company from orchestra order by year_of_founded desc limit 1
select record_company from orchestra order by year_of_founded desc limit 1
select orchestra from orchestra where orchestra_id not in (select orchestra_id from performance)
select orchestra from orchestra where orchestra_id not in (select orchestra_id from performance)
select record_company from orchestra where year_of_founded < 2003 or year_of_founded = '2003'
select record_company from orchestra where year_of_founded > 2003 intersect select record_company from orchestra
select count(*) from show where if_first_show = 'Glebe Park'
select count(*) from show where if_first_show = "Glebe Park"
select type from performance where performance_id not in (select performance_id from performance) group by type having count(*) > 1
select type from performance where performance_id not in (select performance_id from show) group by type having count(*) > 1
select state from owners intersect select state from professionals
select state from professionals intersect select state from owners
select avg(age) from dogs where dog_id not in ( select dog_id from treatments )
select avg(age) from dogs as t1 join treatments as t2 on t1.dog_id = t2.dog_id
select t1.professional_id, t1.last_name, t1.cell_number from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id group by t1.professional_id having count(*) > 2
select t1.professional_id, t1.last_name, t1.cell_number from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id where t1.state = "Indiana" group by t1.professional_id having count(*) > 2
select name from dogs except select t1.name from dogs as t1 join treatments as t2 on t1.dog_id = t2.dog_id where t2.cost_of_treatment > 1000
select t1.name from dogs as t1 join treatments as t2 on t1.dog_id = t2.dog_id where t2.cost_of_treatment > 1000
select first_name from professionals union select first_name from owners except select t1.first_name from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id
select first_name from professionals union select first_name from owners except select t1.first_name from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id
select t1.professional_id, t2.name from treatments as t1 join dogs as t2 on t1.dog_id = t2.dog_id join professionals as t3 on t1.professional_id = t3.professional_id except select t1.professional_id, t2.name from treatments as t1 join dogs as t2 on t1.dog_id = t2.dog_id
select t1.professional_id, t1.last_name from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id except select t1.professional_id, t1.last_name from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id
select t1.owner_id, t2.name from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id group by t1.owner_id order by count(*) desc limit 1
select t1.owner_id, t1.last_name from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id group by t1.owner_id order by count(*) desc limit 1
select t1.professional_id, t1.home_phone, t1.home_phone from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id group by t1.professional_id having count(*) >= 2
select t1.professional_id, t1.home_phone, t1.home_phone from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id group by t1.professional_id having count(*) >= 2
select breed_name from breeds where breed_code = (select abandoned_yn from dogs group by abandoned_yn order by count(*) desc limit 1)
select breed_name from breeds where breed_code = (select abandoned_yn from dogs group by abandoned_yn order by count(*) desc limit 1)
select t1.owner_id, t1.last_name from owners as t1 join treatments as t2 on t1.owner_id = 2 group by t1.owner_id order by count(*) desc limit 1
select t1.owner_id, t1.last_name from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id group by t1.owner_id order by count(*) desc limit 1
select t1.treatment_type_description from treatment_types as t1 join treatments as t2 on t1.treatment_type_code = t2.treatment_type_code group by t1.treatment_type_code order by sum(t2.cost_of_treatment) asc limit 1
select t1.treatment_type_description from treatment_types as t1 join treatments as t2 on t1.treatment_type_code = t2.treatment_type_code group by t1.treatment_type_code order by sum(t2.cost_of_treatment) asc limit 1
select t1.owner_id, t1.zip_code from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id group by t1.owner_id order by sum(t2.charge
select t1.owner_id, t1.zip_code from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id group by t1.owner_id order by sum(t2.cost
select t1.professional_id, t1.name from treatments as t2 join professionals as t3 on t1.professional_id = t3.professional_id
select t1.professional_id, t2.home_phone, t2.home_phone from treatments as t1 join professionals as t2 on t1.professional_id = t2.professional_id group by t1.professional_id having count(*) >= 2
select t2.first_name, t2.last_name from treatments as t1 join professionals as t2 on t1.professional_id = t2.professional_id where t1.cost_of_treatment < (select avg(cost_of_treatment) from treatments)
select t2.first_name, t2.last_name from treatments as t1 join professionals as t2 on t1.professional_id = t2.professional_id where t1.cost_of_treatment < (select avg(cost_of_treatment) from treatments)
select t1.date_of_treatment, t3.name from treatments as t1 join professionals as t2 on t1.professional_id = t2.professional_id join
select t1.date_of_treatment, t1.professional_id from treatments as t1 join professionals as t2 on t1.professional_id = t2.professional_id
select t1.cost_of_treatment, t2.treatment_type_description from treatments as t1 join treatment_types as t2 on t1.treatment_type_code = t2.treatment_type_code
select t1.cost_of_treatment, t2.treatment_type_description from treatments as t1 join treatment_types as t2 on t1.treatment_type_code = t2.treatment_type_code
select t1.name, t1.size_code from dogs as t1 join sizes as t2 on t1.size_code = t2.size_code group by t1.owner_id
select t1.size_code, t1.size_description from sizes as t1 join dogs as t2 on t1.size_code = t2.size_code group by t1.size_code
select t1.first_name, t1.last_name from breeds as t2 join dogs as t3 on t1.dog_id = t3.dog_id join owners as t4 on t3.owner_id = t4.owner_i
select t1.first_name, t1.last_name from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id
select t2.name, t1.date_of_treatment from treatments as t1 join dogs as t2 on t1.dog_id = t2.dog_id group by t1.dog_id order by count(*) desc limit 1
select t2.name, t1.date_of_treatment from treatments as t1 join dogs as t2 on t1.dog_id = t2.dog_id group by t1.dog_id order by count(*) asc limit 1
select first_name, last_name from owners where owner_id in (select owner_id from owners where abandoned_yn like '%vg(vg(vg(vg(vg(vg(vg(vg(vg(vg(vg(vg(vg(vg(vg(vg(vg(vg(vg(vg)
select t1.first_name, t2.name from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id
select date_arrived from dogs order by date_departed desc limit 1
select date_arrived from dogs order by date_departed asc
select t1.last_name from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id order by t2.date_adopted limit 1
select t1.last_name from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id order by t2.date_adopted limit 1
select email_address from professionals where state = 'HI' or state = 'WI'
select email_address from professionals where state = "HI" or state = "WI"
select date_arrived, date_departed from dogs
select date_arrived, date_arrived from dogs where abandoned_yn = '1'
select count(*) from dogs where dog_id not in ( select dog_id from treatments )
select count(*) from treatments
select count(distinct professional_id) from treatments
select count(distinct professional_id) from treatments
select t2.first_name, t2.last_name from professionals as t1 join professionals as t2 on t1.professional_id = t2.professional_id where t1.city like '%west%'
select distinct t1.first_name, t1.last_name from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id where t1.city like '%west%'
select state from owners where state like '%ny%'
select distinct state from owners where state like '%ny%'
select count(*) from dogs where age < ( select avg(age) from dogs )
select count(*) from dogs where age < (select avg(age) from dogs)
select max(cost_of_treatment) from treatments
select cost_of_treatment from treatments order by date_of_treatment desc limit 1
select count(*) from dogs where dog_id not in ( select dog_id from treatments )
select count(*) from dogs where dog_id not in ( select dog_id from treatments )
select count(*) from owners where owner_id not in ( select owner_id from dogs )
select count(*) from owners where owner_id not in ( select owner_id from dogs )
select count(*) from professionals where professional_id not in ( select professional_id from treatments )
select count(*) from professionals where professional_id not in ( select professional_id from treatments )
select name, age, weight from dogs where abandoned_yn = 1 and abandoned_yn = 0
select name, age, weight from dogs where abandoned_yn = 1 and abandoned_yn = 0
select avg(age) from dogs where abandoned_yn = '1'
select avg(age) from dogs where abandoned_yn = '1'
select age from dogs order by age desc limit 1
select age from dogs order by age desc limit 1
select charge_type, charge_amount from charges group by charge_type
select charge_type, charge_amount from charges group by charge_type
select max(charge_amount) from charges
select charge_amount from charges order by charge_amount desc limit 1
select email_address, last_name from professionals
select email_address, last_name from professionals
select distinct 'type_code','size_code' from sizes
select distinct breed_code, size_code from dogs
select t2.first_name, t2.last_name from treatments as t1 join professionals as t2 on t1.professional_id = t2.professional_id
select t1.first_name, t1.last_name from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id
select count(*) from singer
select count(*) from singer
select name from singer order by birth_year asc
select name from singer order by birth_year asc
select birth_year, citizenship from singer
select birth_year, citizenship from singer
select name from singer where citizenship!= "France"
select name from singer where citizenship!= "France"
select name from singer where birth_year < 1948 or birth_year <= 50
select name from singer where birth_year < 1948 union select name from singer where birth_year > (select max(birth_year) from singer)
select name from singer order by birth_year desc limit 1
select name from singer order by birth_year desc limit 1
select citizenship, count(*) from singer group by citizenship
select citizenship, count(*) from singer group by citizenship
select citizenship from singer group by citizenship order by count(*) desc limit 1
select citizenship from singer group by citizenship order by count(*) desc limit 1
select citizenship, max(net_worth_millions) from singer group by citizenship
select citizenship, max(net_worth_millions) from singer group by citizenship
select title from song order by sales desc limit 1
select title from song order by sales desc limit 1
select distinct t2.name from song as t1 join singer as t2 on t1.song_id = t1.song_id where t1.sales > 300000
select distinct t2.name from song as t1 join singer as t2 on t1.song_id = t1.song_id where t1.sales > 300000
select t2.name, count(*) from song as t1 join singer as t2 on t1.song_id = t1.song_id group by t1.song_id having count(*) > 1
select t2.name from song as t1 join singer as t2 on t1.song_id = t1.song_id group by t1.song_id having count(*) > 1
select t2.name, max(t1.highest_position) from song as t1 join singer as t2 on t1.song_id = t1.song_id order by t1.highest_position desc limit 1
select max(t1.highest_position), t2.name from song as t1 join singer as t2 on t1.song_id = t1.song_id group by t1.song_id order by max(t1.highest_position) desc limit 1
select name from singer where singer_id not in (select singer_id from song)
select title from song where singer_id not in (select singer_id from song)
select citizenship from singer where birth_year < 1945 or birth_year <= 1945
select citizenship from singer where birth_year < 1945 or birth_year <= 1945
