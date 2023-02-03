select t1.airportcode from airports as t1 join flights as t2 on t1.city = t2.airport
select count(*) from pets as t1 join has_pet as t2 on t1.petid = t2.petid join student as t3 on t2.stuid = t3.stuid where t3.age > 20
select avg(t2.date_left) from transcript_contents as t1 join student_enrolment as t2
select distinct t1.name from battle as t1 join battle as t2 on t1.id = t2.b
select t1.first_name, t1.last_name from players as t1 join players as t2 on t1.player_id = t2.player_id where t2.hand = 'L' order by t2.birth_date
select name from shop where shop_id not in (select shop_id from hiring)
select count(*) from airports as t1 join flights as t2 on t1.city = t2.destairport where t1.city = "Aberdeen"
select t1.countryid, t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.country where t2.maker = "Fat" group by t1.countryid having count(*) > 3 union select t1.countryid, t1.countryname from countries as t1 join car_makers as t2 on t1.countryid = t2.country where t2.maker = "Fiat"
select name, grade from highschooler
select t1.fname, t1.age from student as t1 join has_pet as t2 on t1.stuid = t2.stuid join pets as t3 on t3.petid = t2.petid where t3.pettype = 'cat'
select major, age from student where stuid not in (select stuid from has_pet where pettype = 'cat'
select count(*) from flights
select winner_name from matches where winner_age = 2013 intersect select winner_name from matches where winner_age = 2016
select country_code from players group by country_code order by count(*) desc limit 1
select count(*) from pets where sex = 'F' and stuid in (select stuid from has_pet as t1 join pets as t2 on t1.petid = t2.petid join student as t3 on t3.stuid = t2.stuid
select t2.name from course_arrange as t1 join teacher as t2 on t1.teacher_id = t2.teacher_id group by t2.name having count(*) >= 2
select count(*) from orchestra where major_record_format = 'CD' or major_record_format = 'DVD'
select t1.country_code, t1.first_name from players as t1 join matches as t2 on t1.player_id = t2.player_id
select state from owners intersect select state from professionals
select t2.last_name from transcripts as t1 join
