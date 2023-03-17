select birth_year, citizenship from singer
select birth_year, citizenship from singer
select name from singer where birth_year = 1948 or birth_year = 1949
select name from singer where birth_year = 1948 or birth_year = 1949
select citizenship from singer where birth_year < 1945 intersect select citizenship from singer where birth_year > 1955
select citizenship from singer where birth_year < 1945 intersect select citizenship from singer where birth_year > 1955
select count(*) from pets as t1 join has_pet as t2 on t1.petid = t2.petid join student as t3 on t2.stuid = t3.stuid where t3.age > 20 or t3.age > 30
select t3.pettype, t2.weight from has_pet as t1 join pets as t2 on t1.petid = t2.petid
select t2.pettype, t2.weight from has_pet as t1 join pets as t2 on t1.petid = t2.petid order by t2.petid asc limit 1
select t2.petid, t2.weight from pets as t1 join pets as t2 on t1.petid + t2.pet_age > 1
select t2.petid, t2.weight from has_pet as t1 join pets as t2 on t1.petid = t2.petid where
select t2.weight from has_pet as t1 join pets as t2 on t1.petid = t2.petid
select min(weight) from pets where pettype = 'dog'
select t2.birth_date from poker_player as t1 join people as t2 on t1.people_id = t2.people_id where t1.money_rank = (select min(money_rank) from poker_player)
select t2.birth_date from poker_player as t1 join people as t2 on t1.people_id = t2.people_id order by t1.money_rank asc limit 1
select name, birth_date from people order by birth_date asc
select name, birth_date from people order by birth_date
select hometown from teacher order by age asc limit 1
select hometown from teacher order by age asc limit 1
select avg(t1.num_of_staff) from museum as t1 join museum as t2 on t1.museum_id = t2.museum_id where t2.open_year < 2009
select name from museum where num_of_staff > (select min(num_of_staff) from museum where open_year > 2010)
select t3.name from visit as t1 join museum as t2 on t1.museum_id = t2.museum_id join visitor as t3 on t1.visitor_id = t3.id where t2.open_year < 2009 intersect select t3.name from visit as t1 join museum as t2 on t1.museum_id = t2.museum_id join visitor as t3 on
select count(*) from visitor where visitor_id not in ( select visitor_id from visit as t1 join museum as t2 on t1.museum_id = t2.museum_id where t2.open_year > 2010
select count(*) from museum where open_year > 2013 or open_year <= 2008
select open_year, num_of_staff from museum where name = 'Palacia Museum'
select created from votes where state = 'CA'
select name, date, result from battle
select t1.name, t1.date from battle as t1 join battle as t2 on t1.id = t2.
select t1.name from country as t1 join country as t2 on
select count(distinct t2.language) from country as t1 join countrylanguage as t2 on t1.country
select count(*) from country where isofficial = 'T' and
select name, country, age from singer order by age desc
select t3.name, t2.song_release_year from singer_in_concert as t1 join singer as t2 on t1.song_
select name, song_release_year from singer order by age asc limit 1
select name from singer where age > (select avg(age) from singer)
select count(*) from concert where year = 2014 or year = 2015
select t2.name, t2.capacity from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id where t1.year >= 2014 group by t2.stadium_id order by count(*) desc limit 1
select t2.name, t2.capacity from concert as t1 join stadium as t2 on t1.stadium_id = t2.stadium_id where t1.year > 2013 group by t2.stadium_id order by count(*) desc limit 1
select year from concert group by year order by count(*) desc limit 1
select year from concert group by year order by count(*) desc limit 1
select name from stadium except select t1.name from stadium as t1 join concert as t2 on t1.stadium_id = t2.stadium_id where t2.year = 2014
select t3.name from singer_in_concert as t1 join concert as t2 on t1.song_
select name from country where indepyear > 1950
select name, indepyear, surfacearea from country order by population asc limit 1
select t1.name, t1.indepyear, t1.surfacearea from country as t1 join country as t2 on t1.countrycode
select t1.title, t2.directed_by from cartoon as t1 join t
select t2.title, t2.directed_by from tv_series as t1 join cartoon as t2 on t1.id = t2.
select t1.channel, t2.title from cartoon as t1 join tv_channel as
select air_date from tv_series where episode = 'A love of a Lifetime'
select t3.name from orchestra as t1 join show as t2 on t1.orchestr
select t3.name from orchestra as t1 join conductor as t2 on t1.orchestr
