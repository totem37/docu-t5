select birth_year, citizenship from singer
select birth_year, citizenship from singer
select name from singer where birth_year = 1948 or birth_year = 1949
select name from singer where birth_year = 1948 or birth_year = 1949
select citizenship from singer where birth_year < 1945 intersect select citizenship from singer where birth_year > 1955
select citizenship from singer where birth_year < 1945 intersect select citizenship from singer where birth_year > 1955
select count(*) from pets as t1 join has_pet as t2 on t1.petid = t2.petid join student as t3 on t2.stuid = t3.stuid where t3.age > 20
select distinct t1.pettype, t1.weight from pets as t1 join has_pet as t2 on t1.petid = t2.petid order by t2.pet
select pettype, weight from pets order by weight asc limit 1
select petid, weight from pets where pet_age > 1
select petid, weight from pets where pet_age > 1
select weight from pets where pet_age = (select min(weight) from pets)
select weight from pets order by weight asc limit 1
select t2.birth_date from poker_player as t1 join people as t2 on t1.people_id = t2.people_id order by t1.e
select t2.birth_date from poker_player as t1 join people as t2 on t1.people_id = t2.people_id order by t1.e
select name, birth_date from people order by name asc
select name, birth_date from people order by name asc
select hometown from teacher order by age asc limit 1
select hometown from teacher order by age asc limit 1
select avg(num_of_staff) from museum where open_year < 2009
select name from museum where num_of_staff > (select min(num_of_staff) from museum where open_year > 2010)
select t1.name from visitor as t1 join visit as t2 on t1.id = t2.visitor_id join museum as t3 on t3.museum_id = t2.museum_id where t3.open_year < 2009 intersect select t1.name from visitor as t1 join visit as t2 on t1.id = t2.visitor_id join museum as t3 on t3.museum_id = t3.museum_id where t3.open_year > 2011
select count(*) from visitor where visitor_id not in ( select visitor_id from visit where museum_id not in
select count(*) from museum where open_year > 2013 or open_year < 2008
select open_year, num_of_staff from museum where name = 'Pala Museum'
select created from votes where state = 'CA'
select name, date, result from battle
select t1.name, t1.date from battle as t1 join ship as t2 on
select name from country where indepyear > 1950
select count(distinct language) from countrylanguage where countrycode > 1930
select count(distinct language) from countrylanguage where isofficial > 1930
select name, country, age from singer order by age desc
select t3.name, t2.song_release_year from singer_in_concert as t1 join concert as t2
select name, song_release_year from singer order by age limit 1
select name from singer where age > (select avg(age) from singer)
select count(*) from concert where year = 2014 or year = 2015
select name, capacity from stadium order by capacity desc limit 1
select name, capacity from stadium order by capacity desc limit 1
select year from concert group by year order by count(*) desc limit 1
select year from concert group by year order by count(*) desc limit 1
select name from stadium except select t2.name from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id where t1.year = 2014
select t3.name from singer_in_concert as t1 join concert as t2 on t1.concert_id = t2.concert_id join singer as t3 on
select name from country where indepyear > 1950
select name, indepyear, surfacearea from country order by population limit 1
select name, indepyear, surfacearea from country order by population limit 1
select t1.title, t1.directed_by from cartoon as t1 join tv_series as t2 on t1.id =
select t1.title, t1.directed_by from cartoon as t1 join tv_series as t2 on t2.id = t1.id order by t2.air_date
select t1.channel, t1.id from cartoon as t1 join tv_channel as t2 on t1.channel = t2.id group by t1.channel order by count(*) desc limit 1
select air_date from tv_series where episode = "A love of a Lifetime"
select t1.name from conductor as t1 join orchestra as t2 on t1.orchestr
select t1.name from conductor as t1 join orchestra as t2 on t1.orchestr
