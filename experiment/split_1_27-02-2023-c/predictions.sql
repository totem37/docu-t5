select date_effective_from from templates
select date_effective_from, template_type_code from templates where version_number < 5
select date_effective_from, template_type_code from templates where version_number > 5
select date_effective_from, count(*) from templates group by date_effective_from
select date_effective_from, count(*) from templates group by date_effective_from
select date_effective_from from templates group by date_effective_to order by count(*) desc limit 1
select date_effective_from, date_effective_to from templates group by date_effective_to order by count(*) desc limit 1
select date_effective_from from templates where version_number < 3
select date_effective_from from templates group by date_effective_to having count(*) < 3
select min(version_number), date_effective_to from templates order by date_effective_from
select version_number, date_effective_to from templates order by date_effective_from asc limit 1
select date_effective_from, count(*) from documents
select date_effective_from, date_effective_to, count(*) from documents
select date_effective_from, date_effective_to from documents
select date_effective_from, date_effective_to from documents
select date_effective_from, date_effective_to from documents
select date_effective_from, date_effective_to from documents
select t1.date_effective_from, t1.date_effective_to from templates as t1 join documents as t2 on t1.
select t1.date_effective_from, t1.date_effective_to from templates as t1 join documents as t2 on
select t1.date_effective_from from templates as t1 join ref_template_types as t2 on t1.
select t1.date_effective_from, t1.date_effective_to from templates as t1 join ref_template_types as t2 on
select date_effective_from, date_effective_to from templates where template_type_code = "CV"
select date_effective_from, date_effective_to from templates where template_type_code = "CV"
select date_effective_from from templates where template_type_code = "PP" or template_type_code = "PPT"
select date_effective_from from templates where template_type_code = "PP" or template_type_code = "PPT"
select first_name, birth_date from players where country_code = (select country_code from players)
select t2.player_
select first_name, country_code from players order by birth_date asc limit 1
select first_name, country_code from players order by birth_date asc limit 1
select first_name, last_name from players order by birth_date
select year from matches group by year order by count(*) desc limit 1
select year from matches group by year order by count(*) desc limit 1
select count(*), year from matches group by year
select count(*), year from matches group by year
select t2.winner_name, t2.winner_rank from matches as t1 join rankings as t2
select t2.winner_name, t2.winner_rank from matches as t1 join
select first_name, birth_date from players where country_code = (select country_code from players)
select ranking_date, count(*) from rankings group by ranking_date
select t2.ranking_date, count(*) from players as t1 join rankings as t2 on t1.player_id = t2.player_id group by t2.ranking_date
select t2.winner_name, t2.birth_date from matches as t1 join
select t1.player
select first_name, last_name from players where hand = 'L' order by birth_date
select first_name, last_name from players order by birth_date
select first_name from players where hand = 'left' order by birth_date asc
select t2.date_of_treatment, t3.name from treatment_types as t1 join treatments as t2 on t1
select t2.date_of_treatment, t1.first_name from professionals as t1 join treatments as t2 on t1.professional_id = t2.professional_id
select date_arrived, date_departed from dogs order by date_arrived asc limit 1
select date_of_treatment from treatments order by date_arrived
select t2.last_name from dogs as t1 join owners as t2 on t1.dog_id = t2.owner_id order by t1.date_of_birth desc limit 1
select t2.last_name from dogs as t1 join owners as t2 on t1.dog_id = t2.owner_id order by t1.date_of_birth asc limit 1
select date_arrived, date_departed from dogs
select date_arrived, date_departed from dogs
select max(cost_of_treatment) from treatments
select age from dogs order by date_arrived asc limit 1
select age from dogs order by date_arrived asc limit 1
