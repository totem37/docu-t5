select date_effective_from from templates
select date_effective_from, template_type_code from templates where version_number < 5
select date_effective_from, template_type_code from templates where version_number > 5
select date_effective_from, count(*) from templates group by date_effective_to
select date_effective_to, count(*) from templates group by date_effective_to
select date_effective_to from templates group by date_effective_to order by count(*) desc limit 1
select date_effective_to from templates group by date_effective_to order by count(*) desc limit 1
select date_effective_to from templates group by date_effective_to having count(*) < 3
select date_effective_to from templates group by date_effective_to having count(*) < 3
select min(version_number), date_effective_to from templates
select version_number, date_effective_to from templates order by date_effective_from limit 1
select date_effective_from, date_effective_to, count(*) from documents
select date_effective_from, date_effective_to, count(*) from documents
select date_effective_to from documents
select date_effective_to from documents
select date_effective_from, date_effective_to from documents
select date_effective_to, date_effective_to from templates where template_id not in (select template_id from documents)
select t2.date_effective_to from documents as t1 join templates as t2 on t1.document_id = t2.document_id
select t1.date_effective_to from templates as t1 join documents as t2 on t1.
select date_effective_from from templates where template_type_description like "%presentation%" 
select t1.date_effective_to from templates as t1 join ref_template_types as t2 on t1.template_type_code = t2.template_type_code where t2.
select date_effective_to from templates where template_type_code = "CV"
select date_effective_to from templates where template_type_code = "CV"
select date_effective_to from templates where template_type_code = 'PP' or template_type_code = 'PPT'
select date_effective_to from templates where template_type_code = 'PP' or template_type_code = 'PPT'
select first_name, birth_date from players where country_code = "USA"
select t2.player_
select first_name, country_code from players order by birth_date desc limit 1
select first_name, country_code from players order by birth_date desc limit 1
select first_name, last_name from players order by birth_date desc
select year from matches group by year order by count(*) desc limit 1
select year from matches group by year order by count(*) desc limit 1
select count(*), year from matches group by year
select year, count(*) from matches group by year
select winner_name, winner_rank from matches order by winner_age asc limit 3
select winner_name, winner_rank from matches order by winner_age asc limit 3
select first_name, birth_date from players where country_code = "USA"
select sum(t1.tours), t2.rank
select count(*), sum(t1.tours) from rankings as t1 join players as t2 on t1.player_id = t2.player_id group by t1.ranking_date
select t2.winner_name, t2.birth_date from matches as t1 join players as t2
select t1.first_name, t1.birth_date from players as t1 join matches as t2 on t1.player_id = t2.winner_id group by t2.winner_id order by count(*) desc limit 1
select t1.first_name, t1.last_name from players as t1 join matches as t2 on t1.player_id = t2.loser_id where t1.hand = 'L' order by t1.birth_date desc
select first_name, last_name from players order by birth_date
select hand from players where birth_date like '%jung%' order by birth_date
select t1.date_of_treatment, t1.name from treatment_types as t2 join professionals as t3 on t1.professional_id = t2.prof
select t2.date_of_treatment, t1.first_name, t1.last_name from treatments as t1
select date_arrived, date_departed from treatments as t1 join dogs as t2 on t1.dog_id = t2.dog_id
select date_of_treatment from treatments where date_departed >= '2004-04-19 15:06:20' and date_arrived < '2016-03-15 00:33:18
select t1.last_name from owners as t1 join dogs as t2 on t1.owner_id = t2.owner_id order by t2.date_of_birth desc limit 1
select t2.last_name from dogs as t1 join owners as t2 on t1.owner_id = t2.owner_id order by t1.age limit 1
select date_arrived, date_adopted from dogs where abandoned_yn = '1'
select date_arrived, date_adopted from dogs where abandoned_yn = '1'
select max(cost_of_treatment) from treatments
select age from dogs order by age desc limit 1
select age from dogs order by age desc limit 1
