select stuid from has_pet as t1 join student as t2 on t1.stuid = t2.stuid join pets as t3 on t3.pet
select title from cartoon order by title
select district from shop where number_products < 3000 intersect select district from shop where number_products > 10000
select t1.date_of_treatment, t2.first_name from treatments as t1 join professionals as t2 on t1.professional_id = t2.professional_id
select t2.language from country as t1 join countrylanguage as t2 on t1.code = t2.countrycode where t1.continent = 'Asie' group by t2.language order by count(*) desc limit 1
select city, country from airports where airportname = "Alton"
select t1.professional_id, t1.role_code, t1.email_address from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id except select t3.professional_id, t3.role_code, t3.email_address from dogs as t1 join treatments as t2 on t1.dog_id = t2.dog_id join professionals as t3 on t2.professional_id = t3.professional_id where t2.date_of_treatment = 'No'
select distinct t1.name from singer as t1 join song as t2 on t1.singer_id = t2.singer_id where t2.sales > 300000
select t1.name, t1.country from singer as t1 join singer_in_concert as t2 on
select t1.name, count(*) from highschooler as t1 join friend as t2 on t1.id = t2.friend_id group by t2.friend_id
select name, population, lifeexpectancy from country where continent = 'Asie' order by surfacearea desc limit 1
select t1.name from highschooler as t1 join friend as t2 on t1.id = t2.student_id group by t2.student_id having count(*) >= 3
select count(*) from country where continent = 'Asie'
select count(*) from paragraphs as t1 join documents as t2 on t1.document_id = t2.document_id where t2.document_name = 'Summer Show'
select t2.mpg, avg
select count(*) from airlines as t1 join flights as t2 on t1.uid = t2.airline where destairport = "Aberdeen"
select count(*) from airports as t1 join flights as t2 on t1.city = "Aberdeen" or t1.countryabbrev = "Abilene"
select t3.name from country as t1 join countrylanguage as t2 on t1.code = t2.countrycode join country as t3 on t2.countrycode = t3.code where t1.headofstate = 'Beirut'
select template_id from documents group by template_id having count(*) > 1
select count(*) from airlines where country = "USA"
