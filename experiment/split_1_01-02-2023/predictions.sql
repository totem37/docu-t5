select record_company from orchestra where year_of_founded < 2003 intersect select record_company from orchestra where year_of_founded > 2003
select record_company from orchestra where year_of_founded < 2003 intersect select record_company from orchestra where year_of_founded > 2003
select t3.maker from model_list as t1 join car_makers as t2 on t1.model = t2.id join car_makers as t3 on t1.maker = t3.id where t1.year
select t3.make, t2.year from model_list as t1 join car_makers on t1.model = t2.id join car_names as t3 on t1.model = t3.id
select t1.maker, t2.year from car_makers as t1 join cars_data as t2 on t1.id = t2.modelid
select distinct model from model_list where model > 1980
select distinct t1.model from model_list as t1 join car_makers as t2 on t1.modelid = t2.id where t
select avg(weight), year from cars_data group by year
select avg(weight), year from cars_data group by year
select avg(h
select avg(s
select max(t2.mpg) from cars_data as t1 join car_makers as
select max(mpg) from cars_data where cylinders = 8 union select max(mpg) from cars_data where year < 1980
select first_name, country_code from players order by birth_date desc limit 1
select first_name, country_code from players order by birth_date desc limit 1
select year from matches group by year order by count(*) desc limit 1
select year from matches group by year order by count(*) desc limit 1
select count(*), year from matches group by year
select year, count(*) from matches group by year
select winner_name, winner_rank from matches order by winner_age asc limit 3
select winner_name, winner_rank from matches order by winner_age asc limit 3
select first_name, last_name from players order by birth_date
select first_name, last_name from players where hand = 'left' order by birth_date
select sum(t1.tours), t2.rank
select count(*), sum(t1.tours) from rankings as t1 join players as t2 on t1.player_id = t2.player_id group by t1.ranking_date
select t1.first_name, t1.country_code, t1.birth_date from players as t1 join matches as t2 on t1.player_id = t2.winner_id order by t2.winner_rank desc limit 1
select t2.first_name, t2.country_code, t2.birth_date from rankings as t1 join players as t2 on t1.player_id = t2.player_id group by t1.player_id order by count(*) desc limit 1
select first_name, last_name from players order by birth_date
select first_name, last_name from players where hand = 'L' order by birth_date
select first_name, birth_date from players where country_code = "USA"
select first_name, birth_date from players where country_code = "USA"
select t1.date_of_treatment, t2.first_name from treatments as t1 join professionals as t2 on t1.professional_id = t2.professional_id
select t1.date_of_treatment, t1.first_name from treatments as t2 join professionals as t3 on t1.professional_id = t3.prof
select date_arrived, date_departed from treatments as t1 join dogs as t2 on t1.dog_id = t2.dog_id
select date_arrived, date_departed from treatments as t1 join dogs as t2 on t1.dog_id = t2.dog_id
select t1.last_name from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id order by t2.date_of_birth desc limit 1
select t2.last_name from dogs as t1 join owners as t2 on t1.owner_id = t2.owner_id order by t1.age limit 1
select date_arrived, date_departed from dogs
select date_arrived, date_departed from dogs
select max(cost_of_treatment) from treatments
select age from dogs order by age desc limit 1
select age from dogs order by age desc limit 1
select transcript_date, transcript_id from transcripts group by transcript_id having count(*) >= 2
select transcript_date, transcript_id from transcripts group by transcript_id having count(*) >= 2
select avg(transcript_date) from transcripts
select t2.date_first_registered, t2.date_left, t1.other_details from transcripts as t1 join students as t2 on t1.transcript_id = t2.transcript_date
select date_left, other_details from transcripts
student_transcripts_tracking
select transcript_date, transcript_id from transcripts group by transcript_id order by count(*) asc limit 1
select transcript_date, transcript_id from transcripts group by transcript_id order by count(*) asc limit 1
