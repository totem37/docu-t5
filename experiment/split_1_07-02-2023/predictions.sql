select record_company from orchestra where year_of_founded < 2003 intersect select record_company from orchestra where year_of_founded > 2003
select record_company from orchestra where year_of_founded < 2003 intersect select record_company from orchestra where year_of_founded > 2003
select t3.maker from model_list as t1 join car_makers as t2 on t1.modelid = t2.modelid
select t1.make, t2.
select t1.maker, t3.year from car_makers as t1 join cars_data as t2 on
select distinct(model) from model_list where model > 1980
select distinct(model) from model_list where model > 1980
select year, avg(weight), min(year) from cars_data group by year
select avg(weight), year from cars_data group by year
select avg (select avg (select id from car_makers)
select avg (select avg (select id from car_makers where year < 1980
select max(t1.
select max(t2.mpg) from car_names as t1 join cars_data as t2 on t1.model
select first_name, country_code from players order by birth_date asc limit 1
select first_name, country_code from players order by birth_date asc limit 1
select year from matches group by year order by count(*) desc limit 1
select year from matches group by year order by count(*) desc limit 1
select count(*), year from matches group by year
select count(*), year from matches group by year
select t2.winner_name, t2.winner_rank from matches as t1 join rankings as t2
select t2.winner_name, t2.winner_rank from matches as t1 join
select first_name, last_name from players order by birth_date
select first_name, last_name from players order by birth_date
select ranking_date, count(*) from rankings group by ranking_date
select t2.ranking_date, count(*) from players as t1 join rankings as t2 on t1.player_id = t2.player_id group by t2.ranking_date
select t1.first_name, t1.country_code, t1.birth_date from players as t1 join matches as t2 on t1.player_id = t2.winner_id where t2.winner_rank_points = (select max(winner_rank) from matches)
select t1.first_name, t1.country_code, t1.birth_date from players as t1 join matches as t2 on t1.player_id = t2.winner_id where t2.winner_rank_points = (select max(winner_rank) from matches)
select first_name, last_name from players order by birth_date
select first_name, last_name from players where hand = 'L' order by birth_date
select first_name, birth_date from players where country_code = "United States"
select first_name, birth_date from players where country_code = 'United States'
select t2.date_of_treatment, t3.first_name from treatments as t1 join professionals as t2
select t2.date_of_treatment, t1.first_name from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id where t1.professional_id = (select professional_id from treatments)
select t2.date_arrived, t2.date_departed from treatments as t1 join dogs as t2 on t1.dog_id = t2.dog_id where t1.treatment_type_code = "null"
select date_arrived, date_departed from treatment
select t2.last_name from dogs as t1 join owners as t2 on t1.dog_id = t2.owner_id order by t1.date_of_birth desc limit 1
select t2.last_name from dogs as t1 join owners as t2 on t1.dog_id = t2.owner_id order by t1.date_of_birth asc limit 1
select date_arrived, date_departed from dogs
select date_arrived, date_departed from dogs
select max(cost_of_treatment) from treatments
select age from dogs order by date_arrived asc limit 1
select age from dogs order by date_arrived asc limit 1
select transcript_date, t2.transcript_id from student_enrolment_courses as t1 join transcripts as t2 on t1.course_id= 2
select transcript_date, t2.course_id from student_enrolment_courses as t1 join transcripts as t2
select avg(t2.transcript_date) from student_enrolment_courses as t1 join transcripts as t2 on t1.student_enrolment_id = t2.student_i
select t2.date_first_registered, t2.date_left
select t2.date_left, t2.other_details from transcripts as t1 join student_enrolment_courses as t2
select max(t2.transcript_date) from student_enrolment_courses as t1 join transcripts as t2 on t1.student_enrolment_id = t2.student_
select t2.transcript_date, t2.transcript_id from student_enrolment_courses as t1 join transcripts as t2 on t1.student_enrolment_id = t2.student_id
select t2.date
