select count(*) from singer
select count(*) from singer
select name, country from singer order by birthday desc
select name, country from singer order by birthday desc
select avg(t2.average), min(t2.average), max(t1.song_
select avg(t2.average), min(t2.average), max(t1.song_
select name, song_release_year from singer order by birthday limit 1
select name, song_release_year from singer order by birthday desc limit 1
select distinct country from singer where birth
select distinct country from singer where birthday = 2001
select country, count(*) from singer group by country
select country, count(*) from singer group by country
select song_name from singer where average > (select avg(average) from singer
select song_name from singer where average > (select avg(average) from singer
select location, name from stadium where capacity between 5000 and 10000
select location, name from stadium where capacity between 5000 and 10000
select average, max(capacity) from stadium
select average, max(capacity) from stadium
select name, capacity from stadium order by average desc limit 1
select name, capacity from stadium order by average desc limit 1
select count(*) from concert where year > 2014
select count(*) from concert where year > 2014 union select concert_name from concert where year > 2014
select t1.name, count(*) from stadium as t1 join concert as t2 on t1.stadium_id = t2.stadium_id group by t1.stadium_id
select t1.name, count(*) from stadium as t1 join concert as t2 on t1.stadium_id = t2.stadium_id group by t1.stadium_id
select t1.name, t1.capacity from stadium as t1 join concert as t2 on t1.stadium_id = t2.stadium_id where t2.year >= 2014 group by t1.stadium_id order by count(*) desc limit 1
select t1.name, t1.highest from stadium as t1 join concert as t2 on t1.stadium_id = t2.stadium_id where t2.year > 2013 group by t1.stadium_id order by count(*) desc limit 1
select concert_name from concert order by year desc limit 1
select concert_name from concert order by year desc limit 1
select highest from stadium where stadium_id not in (select stadium_id from concert)
select min(lowest) from stadium where stadium_id not in (select stadium_id from concert)
select country from singer where birth
select average from stadium except select t1.average from stadium as t1 join concert as t2 on t1.stadium_id = t2.stadium_id where t2.year = 2014
select lowest from stadium except select t1.lowest from stadium as t1 join concert as t2 on t1.stadium_id = t2.stadium_id where t2.year = 2014
select t1.concert_name, t1.theme, count(*) from concert as t1 join singer_in_concert as t2 on t1.concert_id = t2.concert_id group by t1.concert_id
select t1.theme, t2.name, count(*) from concert as t1 join singer_in_concert as t2
select t3.name, count(*) from singer_in_concert as t1 join concert as t2 on t1.con
select t1.name, count(*) from singer as t1 join singer_in_concert as t2 on
select concert_name from concert where year > 2014
select t1.name from singer as t1 join singer_in_concert as t2 on t1.singer_id = t2.singer_id join concert as t3 on t3.con
select t2.name, t2.country from singer_in_concert as t1 join singer as t2 on t1.singer_id = t2.singer_id where song_name like '%hey%'
select name, country from singer where song_name like '%hey%'
select min(t2.highest), t2.highest from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id where t1.year = 2014 intersect select t1.lowest, t1.highest from stadium as t1 join concert as t2 on t1.stadium_id = t2.stadium_id where t2.year = 2015
select min(t1.highest), t1.highest from stadium as t1 join concert as t2 on t1.stadium_id = t2.stadium_id where t2.year = 2014 intersect select t1.highest, t1.highest from stadium as t1 join concert as t2 on t1.stadium_id = t2.stadium_id where t2.year = 2015
select count(*) from stadium where capacity = (select max(capacity) from stadium)
select count(*) from stadium as t1 join concert as t2 on t1.stadium_id = t2.stadium_id where t1.capacity = (select max(capacity) from stadium)
select count(*) from pets where weight > 10
select count(*) from pets where weight > 10
select weight from pets where birthdate = (select min(birthdate) from pets)
select weight from pets where birthdate = (select min(weight) from pets)
select max(weight), pettype from pets group by pettype
select max(weight), pettype from pets group by pettype
select count(*) from pets as t1 join has_pet as t2 on t1.petid = t2.petid join student as t3 on t2.stuid = t3.stuid where t3.age > 20
select count(*) from pets as t1 join has_pet as t2 on t1.petid = t2.petid join student as t3 on t3.stuid = t2.stuid where t3.age > 20
select count(*) from pets as t1 join has_pet as t2 on t1.petid = t2.petid join student as t3 on t2.stuid = t3.stuid where t3.sex = "F"
select count(*) from pets as t1 join has_pet as t2 on t1.petid = t2.petid join student as t3 on t2.stuid = t3.stuid where t3.sex = "F"
select count(distinct pettype) from pets
select count(distinct pettype) from pets
select distinct fname from student where stuid in (select stuid from has_pet)
select distinct t1.fname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid join pets as t3 on t2.petid = t3.petid where t3.weight = 'King' or t2.petid = 'Pain'
select t1.lname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid where t2.petid = 'Kitten' intersect select t1.lname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid where t2.petid = 'Patent'
select t1.fname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid join pets as t3 on t2.petid = t3.petid where t3.weight = 'kitchen' intersect select t1.fname from student as t1 join has_pet as t2 on t1.stuid = t2.stuid join pets as t3 on t2.petid = t3.petid where t3.weight = 'Pootball'
select major, age from student where stuid not in (select stuid from has_pet)
select major from student where stuid not in (select stuid from has_pet)
select stuid from student except select stuid from has_pet
select stuid from student except select stuid from has_pet
select t1.fname, t1.age from student as t1 join pets as t2 on t1.stuid = t2.petid where t2.pettype = 'dog' except select t1.fname, t1.age from student as t1 join has_pet as t2 on t1.stuid = t2.stuid join pets as t3 on t2.petid = t3.petid where t3.birthdate = 'new_pets_1'
select fname from student where stuid in (select stuid from has_pet)
select pettype, weight from pets order by birthdate desc limit 1
select pettype, weight from pets order by birthdate desc limit 1
select petid, weight from pets where birthdate > (select max(birthdate) from pets where birthdate like "2020")
select petid, weight from pets where birthdate > (select max(birthdate) from pets where birthdate like "2020%")
select pettype, avg(t1.petid), max(t1.petid) from pets as t1 join has_pet as t2 on t1.petid = t2.petid group by t2.petid
select pettype, avg(weight), max(weight) from pets group by pettype
select pettype, avg(t1.weight), max(t1.petid) from pets as t1 join has_pet as t2 on t1.petid = t2.petid group by t1.petid
select pettype, avg(weight) from pets group by pettype
select fname, age from student where stuid in (select stuid from has_pet)
select distinct t1.fname, t1.age from student as t1 join has_pet as t2 on t1.stuid = t2.stuid where t2.petid in (select stuid from has_pet)
select t2.petid from has_pet as t1 join pets as t2 on t1.petid = t2.petid join student as t3 on t1.stuid = t3.stuid where t3.lname = 'Smith'
select t2.petid from has_pet as t1 join pets as t2 on t1.petid = t2.petid join student as t3 on t1.stuid = t3.stuid where t3.lname = 'Smith'
select count(*), t1.stuid from has_pet as t1 join pets as t2 on t1.petid = t2.petid group by t1.stuid
select count(*), t1.stuid from student as t1 join has_pet as t2 on t1.stuid = t2.stuid where t2.petid in (select petid from has_pet)
select fname, sex from student where sex > 1
select fname, sex from student where sex > 1
select t1.lname from student as t1 join pets as t2 on t1.stuid = t2.petid where t2.birthdate = 2001 and t2.pettype = 'cat'
select t1.lname from student as t1 join pets as t2 on t1.stuid = t2.petid where t2.birthdate = 2001 and t2.pettype = 'cat'
select avg(age) from student where stuid not in (select stuid from has_pet)
select avg(age) from student where stuid not in (select stuid from has_pet)
select count(*) from continents
select count(*) from continents
select continent, continent, count(*) from continents group by continent
select continent, count(*) from countries group by continent
select count(*) from countries
select count(*) from countries
select t1.maker, count(*), t1.maker from car_makers as t1 join model_list as t2 on t1.id = t2.modelid group by t1.maker
select t1.fullname, t1.id, count(*) from car_makers as t1 join model_list as t2 on t1.id = t2.modelid group by t1.id
select t2.model from cars_data as t1 join model_list as t2 on t1.id = t2.modelid group by t1.model
select t2.model from cars_data as t1 join model_list as t2 on t1.id = t2.modelid order by t1.h
select t1.model from model_list as t1 join cars_data as t2 on t1.model = t2.id where t2.weight < (select avg(weight) from cars_data)
select t1.model from model_list as t1 join cars_data as t2 on t1.model = t2.id where t2.weight < (select avg(weight) from cars_data)
select t2.maker from cars_data as t1 join car_makers as t2 on t1.id = t2.maker group by t2.maker having count(*) < 2
select distinct t2.maker from cars_data as t1 join model_list as t2 on t1.id = t2.modelid where t1.year = 2000
select t1.make, t2.year from car_names as t1 join cars_data as t2 on t1.makeid = t2.id order by t2.year limit 1
select t2.maker, t1.year from cars_data as t1 join car_makers as t2 on t1.id = t2.maker order by t1.year limit 1
select distinct model from model_list where year < 1980
select distinct model from model_list where year < 1980
select count(*), continent from continents group by continent
select t1.continent, count(*) from continents as t1 join car_makers as t2 on t1.contid = t2.id group by t1.continent
select t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.country group by t1.countryname order by count(*) desc limit 1
select t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.country group by t1.countryname order by count(*) desc limit 1
select count(*), t1.maker from car_makers as t1 join model_list as t2 on t1.id = t2.modelid group by t1.maker
select count(*), t1.maker, t1.fullname from car_makers as t1 join model_list as t2 on t1.id = t2.modelid group by t1.maker
select make
select t1.id from cars_data as t1 join car_makers as t2 on t1.id = t2.maker where t1.make
select count(*) from car_makers where maker like "%kentucky%"
select count(*) from car_makers where maker like "%kentucky%"
select count(*) from car_makers as t1 join continents as t2 on t1.country = t2.contid where t2.continent = "america"
select count(*) from model_list where model = 'USA'
select avg(mpg) from cars_data where cylinders = 4
select avg(t2.
select min(weight), cylinders from cars_data where year = 1974
select min(weight) from cars_data where cylinders = "1974"
select maker, model from model_list
select maker, model from model_list
select t1.countryname, t1.country from countries as t1
select t1.countryname, t2.id from countries as t1 join car_makers as t2 on t1.countryid = t2.id group by t1.countryid having count(*) >= 1
select count(*) from cars_data where horsepower > 150
select count(*) from cars_data where horsepower > 150
select avg(weight), year from cars_data group by year
select avg(weight), avg(year), year from cars_data group by year
select continent from continents group by continent having count(*) >= 3
select continent from continents group by continent having count(*) >= 3
select max(t1.h
select mpg, t1.make from car_names as t1 join cars_data as t2 on t1.model = t2.id where t2.cylinders = 3 group by t1.model order by count(*) desc limit 1
select model from model_list group by model order by count(*) desc limit 1
select t1.model from model_list as t1 join cars_data as t2 on t1.model = t2.id order by t2.mpg desc limit 1
select avg(h
select avg(h
select avg(edispl) from cars_data as t1 join car_names as t2 on t2.model = t1.id where t2.model = "tesla"
select avg(edispl) from cars_data
select max(acce
select max(acce
select model from car_names group by model order by count(*) desc limit 1
select model from model_list group by model order by count(*) desc limit 1
select count(*), cylinders from cars_data group by cylinders having count(*) > 4
select count(*), cylinders from cars_data group by cylinders having count(*) > 4
select count(*) from cars_data order by year desc limit 2
select count(*) from car_names where makeid in (select id from car_makers)
select count(*) from car_makers as t1 join continents as t2 on t1.country
select count(distinct modelid) from continents as t1 join car_makers as t2 on t1.continent = t2.continent
select t1.maker, t1.fullname, t1.id from car_makers as t1 join model_list as t2 on t1.id = t2.maker group by t1.maker having count(*) > 3
select t1.maker, t1.id from car_makers as t1 join model_list as t2 on t1.id = t2.maker group by t1.id having count(*) > 3
select distinct t2.model from car_makers as t1 join model_list as t2 on t1.id = t2.modelid where t1.fullname = "General Motors"
select distinct t2.model from car_makers as t1 join model_list as t2 on t1.id = t2.modelid join continents as t3 on t1.country = t3.continent where t1.fullname =
select year from cars_data where weight < 3000 intersect select year from cars_data group by year having count(*) < 4000
select distinct year from cars_data where weight < 4000 intersect select distinct year from cars_data where weight > 3000
select horsepower from cars_data order by accelerate desc limit 1
select horsepower from cars_data order by accelerate desc limit 1
select count(distinct cylinders) from cars_data order by accelerate asc limit 1
select count(*), cylinders from cars_data group by cylinders order by count(*) asc limit 1
select count(distinct mpg) from cars_data order by accelerate desc limit 1
select count(distinct mpg) from cars_data order by accelerate desc limit 1
select count(*) from countries where t1.id in ( select country from car_makers group by country having avg(t1.i
select count(*) from countries where id in (select id from car_makers group by id having avg(t1.maker) > 2
select count(*) from cars_data where cylinders > 6
select count(*) from cars_data where cylinders > 6
select t1.model from car_names as t1 join cars_data as t2 on t1.model = t2.id where t2.cylinders = 4 order by t2.h
select cylinders from cars_data order by horsepower desc limit 4
select t1.make, t1.make from car_names as t1 join cars_data as t2 on t1.makeid = t2.id
select make from car_names where id not in ( select id from cars_data group by id having min(h
select max(t2.
select max(mpg) from cars_data where cylinders >= 8 union select max(mpg) from cars_data where year < 1980
select t2.model from cars_data as t1 join model_list as t2 on t1.id = t2.modelid where t1.weight > 3500 except select t2.model from cars_data as t1 join
select distinct t2.model from cars_data as t1 join model_list as t2 on t1.id = t2.modelid where t1.weight > 3500 except select t2.model from cars_data as t1 join model_list as t2 on t1.id = t2.modelid
select countryname from countries where countryid not in (select country from car_makers)
select countryname from countries where countryid not in (select country from car_makers)
select t1.maker, t1.maker from car_makers as t1 join model_list as t2 on t1.id = t2.maker group by t1.id having count(*) >= 2
select t1.id, t1.maker from car_makers as t1 join model_list as t2 on t1.id = t2.modelid group by t1.id having count(*) >= 2 intersect select t1.id, t1.maker from car_makers as t1 join model_list as t2 on t1.id = t2.modelid group by t1.maker having count(*) > 3
select t1.countryid, t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.country where t2.maker > 3 union select t1.countryid, t1.countryname from countries as t1 join model_list as t2 on t1.countryid = t2.country
select t1.countryid, t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.id group by t1.countryid having count(*) > 3 union select t1.countryname, t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.country where t2.maker = "teslas"
select t1.country from airports as t1 join airlines as t2 on t1.city = t2.uid where t2.abbreviation = "JetBlue"
select country from airlines where abbreviation = "JetBlue"
select abbreviation from airlines where abbreviation = "JetBlue"
select abbreviation from airlines where abbreviation = "JetBlue"
select airline, abbreviation from airlines as t1 join flights as t2 on t1.uid = t2.airport
select t2.airportname, t2.abbreviation from airlines as t1 join flights as t2
select airportcode, airportname from airports where airportname = "Janessa"
select airportcode, airportname from airports where airportname like "%crime%"
select count(*) from airlines
select count(*) from airlines
select count(*) from airports
select count(*) from airports
select count(*) from flights
select count(*) from flights
select airline from airlines where abbreviation = 'UAL'
select airline from airlines where abbreviation = 'UAL'
select count(*) from airlines where country = 'American'
select count(*) from airlines where country = "American"
select city, country from airports where airportname = "Alon"
select city, country from airports where airportname = "Alon"
select airportname from airports where airportcode = 'AKO'
select airportname from airports where airportcode = 'AKO'
select airportname from airports where airportcode like '%jackson%'
select airportname from airports where country = "Janessa"
select count(*) from flights where sourceairport = 'APG'
select count(*) from flights where sourceairport = 'APG'
select count(*) from airports where airportcode = "ATO"
select count(*) from airports as t1 join flights as t2 on t1.city = t2.airport
select count(*) from flights where flightno = "Janessa"
select count(*) from flights where flightno = "Janessa"
select count(*) from flights as t1 join airports as t2 on t2.city = t2.city where t2.city = "Janessa"
select count(*) from flights as t1 join airports as t2 on t1.air
select count(*) from flights where city = 'Syracuse' and countryabbrev = 'Ashley’!= 0!= 0!= 0!= 0!= 0!= 0!= 0!= 0!= 0!
select count(*) from airports as t1 join flights as t2 on t1.city = t2.airport
select count(*) from airlines as t1 join flights as t2 on t1.uid = t2.airport
select count(*) from airlines as t1 join flights as t2 on t1.uid = t2.airport
select count(*) from airlines as t1 join flights as t2 on t1.uid = t2.airport
select count(*) from airlines as t1 join flights as t2 on t1.uid = t2.airport
select count(*) from airports as t1 join flights as t2 on t1.city = t2.airport
select count(*) from flights where sourceairport = "AHD" and destairport = "AHD"
select count(*) from airlines as t1 join flights as t2 on t1.uid = t2.airport
select count(*) from airports as t1 join flights as t2 on t1.city = t2.airport
select t1.city from airports as t1 join flights as t2 on t1.city = t2.airport
select city from airports group by city order by count(*) desc limit 1
select t1.city from airports as t1 join flights as t2 on t1.city = t2.airport
select city from airports group by city order by count(*) desc limit 1
select airportcode from airports group by airportcode order by count(*) desc limit 1
select airportcode from airports group by airportcode order by count(*) desc limit 1
select airportcode from airports group by airportcode order by count(*) limit 1
select airportcode from airports group by airportcode order by count(*) limit 1
select airline from airlines group by airline order by count(*) desc limit 1
select t2.airline from flights as t1 join airlines as t2 on t1.airline = t2.uid group by t2.airline order by count(*) desc limit 1
select abbreviation, country from airlines group by airline order by count(*) limit 1
select t1.abbreviation, t1.country from airlines as t1 join flights as t2 on t1.uid = t2.airport
select t1.airportname, t2.airport
select t3.airport
select t3.airportname from airports as t1 join flights as t2 on t1.air
select t3.airport
select uid from flights as t1 join airports as t2 on t1.air
select airline from flights where sourceairport = 'APG' intersect select airline from flights where sourceairport = 'CVO'
select t2.airportname from airports as t1 join flights as t2
select flightno, airline from flights where sourceairport = 'CVO' except select flightno from flights where sourceairport = 'APG'
select airline from airlines group by airline having count(*) >= 10
select airline from airlines group by airline having count(*) >= 10
select t2.airline from flights as t1 join airlines as t2 on t1.airline = t2.uid group by t1.airline having count(*) < 200
select airline from airlines group by airline having count(*) < 200
select flightno from airlines as t1 join flights as t2 on t1.uid = t2.airport
select flightno from airlines as t1 join flights as t2 on t1.uid = t2.airport
select flightno from flights where sourceairport = "APG" and destairport = "destairport"
select flightno from flights where sourceairport = "APG" and destairport = "APG"
select t2.airportname from flights as t1 join airports as t2 on
select flightno from flights where sourceairport = "APG" and destairport = "APG"
select flightno from flights as t1 join airlines as t2 on t1.air
select flightno from flights where destairport like "%jenna%"
select flightno from airlines as t1 join flights as t2 on t1.uid = t2.airport
select flightno from flights where
select count(*) from flights where city = "Sylvania" or city = "Janessa "
select count(*) from flights where city = "Sylvania" or city = "James "
select airportname from airports except select destairport from flights
select airportname from airports except select destairport from flights
select count(*) from documents
select count(*) from documents
select document_id, document_name, document_description from documents
select document_id, document_name, document_description from documents
select document_name from documents where document_description like '%w%'
select document_name, template_id from documents where document_name like "%w%"
select t1.document_description, t2.date_effective_to from documents as t1 join templates as t2 on t1.document_id = t2.date_effective_from and t1.document_name = "Robbin CV"
select t1.document_description, t2.document_id from documents as t1 join templates as t2
select count(distinct template_id) from documents
select count(distinct template_id) from documents
select count(*) from documents where template_type_code = (select template_type_code from templates) and date_effective_from = (select template_type_code from templates where template_type_code = 'PPT'
select count(*) from documents where template_type_code = (select template_type_code from templates) and date_effective_from = (select template_type_code from templates) and template_type_description
select template_id, count(*) from documents group by template_id
select count(*), template_id from documents group by template_id
select t1.date_effective_to from templates as t1 join documents as t2 on t1.
select t2.date_effective_from from documents as t1 join templates as t2 on t1.document_id = t2.document_id
select template_id from documents group by template_id having count(*) > 1
select template_id from documents group by template_id having count(*) > 1
select template_id from documents except select template_id from documents
select template_id from templates except select template_id from documents
select count(*) from templates
select count(*) from templates
select date_effective_from, template_type_code from templates
select date_effective_from, date_effective_to from templates
select date_effective_from from templates
select date_effective_from from templates
select date_effective_from from templates where template_type_code = "PP" or template_type_code = "PPT"
select date_effective_from from templates where template_type_code = "PP" or template_type_code = "PPT"
select date_effective_from from templates where template_type_code = "CV"
select t1.date_effective_from from templates as t1 join
select date_effective_from, date_effective_to from templates where version_number > 5
select date_effective_from, date_effective_to from templates where version_number > 5
select date_effective_from, count(*) from templates group by date_effective_from
select date_effective_from, count(*) from templates group by date_effective_from
select date_effective_from from templates group by date_effective_to order by count(*) desc limit 1
select date_effective_from from templates group by date_effective_to order by count(*) desc limit 1
select date_effective_from from templates group by date_effective_from having count(*) < 3
select date_effective_to from templates group by date_effective_from having count(*) < 3
select min(version_number), date_effective_from, date_effective_to from templates group by date_effective_from
select min(date_effective_from), date_effective_to from templates group by date_effective_from
select t2.date_effective_from from documents as t1 join templates as t2 on t1.document_id = t2.date_effective_from where t1.document_name = "Data base"
select t2.date_effective_from from documents as t1 join templates as t2 on t1.document_id = t2.date_effective_from where t1.document_name = "Data base"
select t1.document_name, t1.document_name, t1.document_id from documents as t1 join templates as t2 on t1.document_id = t2.date_effective_from and t2.date_effective_to = t2.date_effective_from and t1.document_id = t1.document_id where template_type_code = "BK"
select t1.document_name from documents as t1 join templates as t2 on t1.document_id = t2.date_effective_from and t1.document_id = t1.document_id where t2.date_effective_from = ( select template_type_code from templates where template_type_code = "BK")
select t1.date_effective_from, t1.date_effective_to, count(*) from templates as t1 join documents as t2 on t2.document_id = t2.document_id group by t1.date_effective_from, t1.date_effective_to
select t1.date_effective_from, t1.date_effective_to, count(*) from templates as t1 join documents as t2 on 1 = t2.document_id group by t1.date_effective_from, t1.date_effective_to
select t2.date_effective_from from documents as t1 join templates as t2 on t1.document_id = t2.date_effective_from group by t2.date_effective_to order by count(*) desc limit 1
select max(date_effective_to), t1.document_name from documents as t1 join documents as t2 on t1.document_id = t2.document_id
select date_effective_from, date_effective_to from templates where template_id not in ( select document_id from documents )
select date_effective_from, date_effective_to from templates where template_id not in ( select document_id from documents )
select template_type_code, template_type_description from ref_template_types
select template_type_code, template_type_description from ref_template_types
select template_type_description from templates as t1 join templates as t2 on t1.
select avg(date_effective_from) from templates where template_type_code = "AD"
select t2.
select template_type_code from templates where template_type_description like '%book%' 
select distinct template_type_description from ref_template_types
select distinct template_type_description from ref_template_types
select date_effective_from, date_effective_to from templates where template_type_description like "%presentation%
select date_effective_from from templates where template_type_description like '%date_effective_from%' 
select t1.first_name, t1.last_name, t2.winner_name from players as t1 join matches as t2 on t1.player_id = t2.winner_id
select t1.first_name, t1.last_name, t2.winner_name from players as t1 join matches as t2 on t1.player_id = t2.winner_id
select t1.winner_age, t1.winner_age from matches as t1 join players as t2 on t1.winner_id = t2.player_id
select t1.winner_age, t1.winner_age from matches as t1 join players as t2 on t1.winner_id = t2.player_id
select t1.first_name, t1.birth_date from players as t1 join rankings as t2 on t1.player_id = t2.player_id join
select first_name, birth_date from players where country_code = "USA"
select avg(loser_age), winner_age from matches
select avg(loser_age), avg(winner_age) from matches
select avg(winner_rank), avg(winner_rank_points) from matches
select avg(t2.rank
select t1.rank
select best_of from matches where loser_rank = (select max(loser_rank) from matches)
select count(distinct country_code) from players
select count(distinct country_code) from players
select count(distinct t1.loser_name) from matches as t1 join players as t2 on
select count(distinct loser_name) from matches
select tourney_name from matches group by tourney_name having count(*) > 10
select t1.first_name, t1.last_name from players as t1 join matches as t2 on t1.player_id = t2.winner_id group by t2.winner_name having count(*) > 10
select t1.first_name, t1.last_name from players as t1 join matches as t2 on t1.player_id = t2.winner_id where t2.year = 2013 intersect select t1.first_name, t1.last_name from players as t1 join matches as t2 on t1.player_id = t2.winner_id where t2.year = 2016
select t1.first_name, t1.last_name from players as t1 join matches as t2 on t1.player_id = t2.winner_id where t2.year = 2013 intersect select t1.first_name, t1.last_name from players as t1 join matches as t2 on t1.player_id = t2.winner_id where t2.year = 2016
select t1.first_name, t1.last_name from players as t1 join matches as t2 on t1.player_id = t2.winner_id where t2.year = 2013 or t2.year = 2016
select t1.first_name, t1.last_name, t2.winner_name from players as t1 join matches as t2 on t1.player_id = t2.winner_id where t2.year = 2013 or t2.year = 2016
select t1.country_code, t1.first_name from players as t1 join rankings as t2 on t1.player_id = t2.player_id join
select t1.first_name, t1.country_code from players as t1 join rankings as t2 on t1.player_id = t2.player_id where t2.w
select first_name, country_code from players order by birth_date desc limit 1
select first_name, country_code from players order by birth_date desc limit 1
select t2.first_name, t2.last_name from rankings as t1 join players as t2 on t1.player_id = t2.player_id order by t2.birth_date asc
select first_name, last_name from players order by birth_date desc
select t2.first_name, t2.last_name from rankings as t1 join players as t2 on t1.player_id = t2.player_id order by t2.birth_date desc
select t1.player_id, t1.birth_date from players as t1 join rankings as t2 on t1.player_id = t2.player_id where t1.birth_date = (select min(birth_date) from players) and t2.winner_rank_points =
select t1.first_name, t1.country_code from players as t1 join matches as t2 on t1.player_id = t2.winner_id group by t1.player_id order by count(*) desc limit 1
select t1.first_name, t1.country_code from players as t1 join matches as t2 on t1.player_id = t2.winner_id group by t1.player_id order by count(*) desc limit 1
select year from matches group by year order by count(*) desc limit 1
select year from matches group by year order by count(*) desc limit 1
select t1.first_name, t1.last_name,
select t1.first_name, t1.last_name, t2.rank
select avg(winner_ioc), t1.loser_name from matches as t1 join rankings as t2 on t1.match_
select avg(winner_ioc), t1.loser_name from matches as t1 join rankings as t2 on t1.winner_id = t2.winner_ioc
select t1.first_name, t1.last_name, t2.winner_name from players as t1 join matches as t2 on t1.player_id = t2.winner_id group by t2.winner_name order by count(*) desc limit 1
select winner_name, loser_name from matches order by loser_rank desc limit 1
select player_id, avg(ranking_points) from rankings group by player_id
select t1.first_name, avg(t2.rank
select sum(ranking_points), t1.player_id from rankings as t1 join matches as t2 on t1.player_id = t2.winner_id group by t1.player_id
select t2.first_name, t2.last_name, sum(t1.ranking_points) from rankings as t1 join players as t2 on t1.player_id = t2.player_id group by t1.player_id
select country_code, count(*) from players group by country_code
select country_code, count(*) from players group by country_code
select country_code from players group by country_code order by count(*) desc limit 1
select country_code from players group by country_code order by count(*) desc limit 1
select country_code from players group by country_code having count(*) > 50
select country_code from players group by country_code having count(*) > 50
select ranking_date, count(*) from rankings group by ranking_date
select count(*), ranking_points from rankings group by ranking_date
select count(*), year from matches group by year
select year, count(*) from matches group by year
select t1.first_name, t1.last_name, t2.winner_rank_points from players as t1 join matches as t2 on t1.player_id = t2.winner_id order by t2.year limit 3
select t1.first_name, t1.last_name, t2.winner_rank_points from players as t1 join matches as t2 on t1.player_id = t2.winner_id order by t2.year limit 3
select count(distinct t1.winner_id), t1.winner_rank, t1.winner_seed from matches as t1 join rankings as t2 on t1.winner_id = t2.winner_id
select count(*) from players as t1 join rankings as t2 on t1.player_id = t2.player_id where t1.winner_rank
select t1.first_name, t1.last_name, t1.birth_date from players as t1 join rankings as t2 on t1.player_id = t2.player_id order by ranking_points desc limit 1
select t1.first_name, t1.last_name, t1.birth_date from players as t1 join rankings as t2 on t1.player_id = t2.player_id group by t1.player_id order by count(*) desc limit 1
select count(*), hand from players group by hand
select hand, count(*) from players group by hand
select distinct line_
select line_3 from addresses
select count(*) from show
select count(*) from show
select name from conductor order by birthday asc
select name from conductor order by birthday
select name from conductor where nationality = 'USA'
select name from conductor where nationality = 'USA'
select record_company from orchestra order by year_of_founded desc
select record_company from orchestra order by year_of_founded desc
select avg(attendance) from show where show_id not in (select show_id from show)
select avg(attendance) from show where show_id not in (select show_id from show where if_first_show!= "first_show")
select max(share), min(share) from performance where type!= "Live final"
select max(share), min(share) from performance where performance_id not in (select performance_id from performance where type = "Live final")
select count(distinct nationality) from conductor
select count(distinct nationality) from conductor
select name from conductor order by birthday asc
select name from conductor order by
select name from conductor order by year_of_work desc limit 1
select name from conductor order by year_of_work desc limit 1
select t1.name, t2.orchestr
select t2.name, t3.name from orchestra as t1 join conductor as t2 on t1.
select t2.name from performance as t1 join conductor as t2 on t1.performance_id = t2.performance_id
select t2.name from orchestra as t1 join conductor as t2 on t1.conductor_id = t2.conductor_id group by t1.conductor_id having count(*) > 1
select t2.name from performance as t1 join conductor as t2 on t1.performance_id = t2.performance_id
select t2.name from orchestra as t1 join conductor as t2 on t1.
select t2.name from performance as t1 join conductor as t2 on t1.performance_id = t2.performance_id
select t2.name from orchestra as t1 join conductor as t2 on t1.conductor_id = t2.conductor_id order by t1.date
select record_company, count(*) from orchestra group by record_company
select record_company, count(*) from orchestra group by record_company
select major_record_format from orchestra order by record_
select major_record_format from orchestra group by major_record_format order by
select record_company from orchestra group by record_company order by count(*) desc limit 1
select record_company from orchestra order by major_record_format desc limit 1
select name from conductor where conductor_id not in (select orchestra_id from performance)
select orchestra from orchestra where orchestra_id not in (select orchestra_id from performance)
select record_company from orchestra where year_of_founded < 2003
select record_company from orchestra where year_of_founded >= 2003 intersect select record_company from orchestra
select count(*) from show as t1 join show as t2 on t1.show_id = t2.performance_id where t2.result = "Glebe Park"
select count(*) from show where result = 'Glebe Park'
select type from performance where performance_id not in(select performance_id from show) group by type having count(*) > 1
select type from performance where performance_id not in(select performance_id from show) group by type having count(*) > 1
select state from owners intersect select state from professionals
select state from owners intersect select state from professionals
select avg(age) from dogs where dog_id in (select dog_id from treatments)
select avg(age) from dogs where dog_id in (select dog_id from treatments)
select t1.first_name, t1.last_name, t1.cell_number from professionals as t1 join treatments as t2 on t1.professional_id = t2.treatment_id group by t1.professional_id having count(*) > 2
select t2.professional_id, t2.last_name, t2.cell_number from treatments as t1 join professionals as t2 on t1.professional_id = t2.professional_id group by t1.professional_id having count(*) > 2
select name from dogs except select t1.name from dogs as t1 join treatments as t2 on t1.dog_id = t2.dog_id group by t1.dog_id having count(*) > 1000
select t2.name from treatments as t1 join dogs as t2 on t1.dog_id = t2.dog_id group by t1.dog_id having sum(t1.cost_of_treatment) > 1000
select first_name from professionals union select first_name from owners except select t1.first_name from professionals as t1 join dogs as t2 on t1.professional_id = t2.dog_id
select first_name from professionals union select first_name from owners except select t1.first_name from professionals as t1 join dogs as t2 on t1.professional_id = t2.dog_id
select professional_id, first_name from professionals except select t1.professional_id, t1.last_name from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id join dogs as t3 on t2.dog_id = t3.dog_id
select first_name, last_name from professionals where professional_id not in (select professional_id from treatments group by professional_id having count(*) >= 2 )
select t1.owner_id, t1.name, count(*) from dogs as t1 join owners as t2 on t1.owner_id = t2.owner_id group by t1.owner_id order by count(*) desc limit 1
select t1.owner_id, t1.last_name from owners as t1 join dogs as t2 on t1.owner_id = t2.dog_id group by t1.owner_id order by count(*) desc limit 1
select t2.professional_id, t2.home_phone, count(*) from treatments as t1 join professionals as t2 on t1.professional_id = t2.professional_id group by t1.professional_id having count(*) >= 2
select t2.professional_id, t2.home_phone, t2.home_phone from treatments as t1 join professionals as t2 on t1.professional_id = t2.professional_id group by t1.professional_id having count(*) >= 2
select t1.
select distinct breed_code from dogs where abandoned_yn = (select abandoned_yn from dogs group by abandoned_yn order by count(*) desc limit 1)
select t1.owner_id, t1.last_name from owners as t1 join treatments as t2 on t2.treatment_id = t1.owner_id group by t1.owner_id order by count(*) desc limit 1
select t1.owner_id, t1.last_name from owners as t1 join treatments as t2 on t2.treatment_id = t1.owner_id group by t1.owner_id order by count(*) desc limit 1
select t1.treatment_type_description from treatment_types as t1 join treatments as t2 on t1.treatment_type_code = t2.treatment_type_code group by t1.treatment_type_code order by sum(t2.cost_of_treatment) asc limit 1
select t1.treatment_type_description from treatment_types as t1 join treatments as t2 on t1.treatment_type_code = t2.treatment_type_code group by t1.treatment_type_code order by sum(t2.cost_of_treatment) asc limit 1
select t1.owner_id, t1.zip_code from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id group by t1.owner_id order by sum(t2.charge_amount
select t2.owner_id, t2.zip_code from dogs as t1 join owners as t2 on t1.owner_id = t2.owner_id group by t2.owner_id order by sum(t1.weight) desc limit 1
select t1.professional_id, t1.first_name, t1.last_name from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id group by t1.professional_id having count(*) >= 2
select t1.professional_id, t1.home_phone, t1.home_phone from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id group by t1.home_phone having count(*) >= 2
select t1.first_name, t1.last_name from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id where t2.cost_of_treatment < (select avg(cost_of_treatment) from treatments)
select t1.first_name, t1.last_name from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id where t2.cost_of_treatment < ( select avg(cost_of_treatment) from treatments )
select t1.date_of_treatment, t2.email_address from treatments as t1 join professionals as t2 on t1.professional_id = t2.professional_id
select t1.date_of_treatment, t1.professional_id from treatments as t1 join professionals as t2 on t1.professional_id = t2.professional_id
select t1.cost_of_treatment, t2.treatment_type_description from treatments as t1 join treatment_types as t2 on t1.treatment_type_code = t2.treatment_type_code
select t1.cost_of_treatment, t2.treatment_type_description from treatments as t1 join treatment_types as t2 on t1.treatment_type_code = t2.treatment_type_code
select t2.name, t1.size_code from dogs as t1 join sizes as t2
select t2.name, t1.size_code from dogs as t1 join sizes as t2
select t1.first_name, t1.last_name, t2.name from owners as t1 join dogs as t2 on t1.owner_id = t2.dog_id group by t2.owner_id
select t1.first_name, t1.last_name, t2.owner_id from owners as t1 join dogs as t2 on t1.owner_id = t2.dog_id
select t1.name, t2.date_of_treatment from dogs as t1 join treatments as t2 on t1.dog_id = t2.dog_id group by t1.dog_id order by count(*) asc limit 1
select t1.name, t1.date_adopted from dogs as t1 join treatments as t2 on t1.dog_id = t2.dog_id group by t1.dog_id order by count(*) asc limit 1
select t2.first_name, t2.name from owners as t1 join dogs as
select t1.first_name, t1.last_name from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id where t1.city = "VA"
select date_arrived from dogs order by date_arrived desc limit 1
select date_arrived, date_departed from dogs
select t1.last_name from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id order by t2.age limit 1
select t1.last_name from owners as t1 join dogs as t2 on t1.owner_id = t2.dog_id order by t2.age asc limit 1
select email_address from professionals where state = "HI" or state = "WI"
select email_address from professionals where state = "HI" or state = "WI"
select date_arrived, date_departed from dogs order by date_arrived asc limit 1
select date_adopted, date_departed from dogs order by date_adopted desc limit 1
select count(*) from treatments as t1 join dogs as t2 on t1.dog_id = t2.dog_id
select count(*) from dogs where dog_id in ( select dog_id from treatments )
select count(*) from treatments as t1 join professionals as t2 on t1.professional_id = t2.professional_id where t1.dog_id = 1
select count(*) from treatments as t1 join professionals as t2 on t1.professional_id = t2.professional_id where t1.date_of_treatment = (select t1.dog_id from treatments as t1 join professionals as t2 on t1.professional_id = t2.professional_id group by t1.dog_id having count(*) >= 1 )
select t2.first_name, t2.last_name from professionals as t1 join professionals as t2 on t1.professional_id = t2.professional_id where t1.city like '%west%'
select first_name from professionals where city like '%west%'
select state from owners where state like '%ny%'
select first_name, last_name from owners where state like '%ny%'
select count(*) from dogs where age < (select avg(age) from dogs)
select count(*) from dogs where age < (select avg(age) from dogs)
select max(cost_of_treatment) from treatments
select cost_of_treatment from treatments order by date_of_treatment desc limit 1
select count(*) from dogs where abandoned_yn not in ( select dog_id from treatments )
select count(*) from dogs where dog_id in (select dog_id from treatments)
select count(*) from owners where owner_id not in ( select owner_id from dogs group by owner_id having count(*) = 1 )
select count(*) from owners where owner_id not in ( select owner_id from dogs where abandoned_yn = 1 )
select count(*) from professionals where professional_id not in ( select professional_id from treatments );
select count(*) from professionals where professional_id not in ( select professional_id from treatments );
select name, age, weight from dogs where abandoned_yn = 1 and age = 1 and age = 0
select name, age, weight from dogs where abandoned_yn = 1 and age = 0
select avg(age) from dogs where abandoned_yn = 1
select avg(age) from dogs where abandoned_yn = 1
select age from dogs order by age desc limit 1
select age from dogs order by age desc limit 1
select charge_type, sum(charge_amount) from charges group by charge_type
select charge_type, charge_amount from charges group by charge_type
select charge_type, sum(charge_amount) from charges group by charge_type order by sum(charge_amount) desc limit 1
select charge_amount from charges order by charge_amount desc limit 1
select email_address, first_name from professionals
select email_address, first_name, last_name from professionals
select breed_name, size_code, size_code, count(*) from breeds as t1 join sizes as t2 on t2.size_code = t2.size_code group by breed_code
select distinct breed_code, size_code from dogs
select t1.first_name, t1.last_name, t1.email_address from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id
select t1.first_name, t1.last_name, t3.treatment_type_description from professionals as t1 join treatments as t2 on t1.professional_id =
select count(*) from singer
select count(*) from singer
select name from singer order by birth_year asc
select name from singer order by birth_year asc
select birth_year, citizenship from singer
select birth_year, citizenship from singer
select name from singer where singer_id not in (select singer_id from song)
select name from singer where singer_id not in (select singer_id from song)
select name from singer where birth_year < 1948
select name from singer where birth_year < 1948 or birth_year > (select max(birth_year) from singer)
select name from singer order by birth_year asc limit 1
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
select t2.name from song as t1 join singer as t2 on t1.song_id = t1.song_id group by t1.song_id having count(*) > 1
select t2.name from song as t1 join singer as t2 on t1.song_id = t1.song_id group by t1.song_id having count(*) > 1
select t2.name, max(t1.highest_position) from song as t1 join singer as t2 on t1.song_id = t1.song_id group by t1.song_id
select max(t1.highest_position), t2.name from song as t1 join singer as t2 on t1.song_id = t1.song_id group by t2.name
select name from singer where singer_id not in (select singer_id from song)
select name from singer where singer_id not in (select singer_id from song)
select citizenship from singer where birth_year < 1945 or birth_year >= "null"
select citizenship from singer where birth_year < 1945 or birth_year = "shared"
