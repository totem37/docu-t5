SELECT Date_Effective_From ,  Date_Effective_To FROM Templates	cre_Doc_Template_Mgt
SELECT Date_Effective_From ,  Date_Effective_To ,  template_type_code FROM Templates WHERE version_number  >  5	cre_Doc_Template_Mgt
SELECT Date_Effective_From ,  Date_Effective_To ,  template_type_code FROM Templates WHERE version_number  >  5	cre_Doc_Template_Mgt
SELECT Date_Effective_From ,  Date_Effective_To ,  count(*) FROM Templates GROUP BY template_type_code	cre_Doc_Template_Mgt
SELECT Date_Effective_From ,  Date_Effective_To ,  count(*) FROM Templates GROUP BY template_type_code	cre_Doc_Template_Mgt
SELECT Date_Effective_From ,  Date_Effective_To FROM Templates GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1	cre_Doc_Template_Mgt
SELECT Date_Effective_From ,  Date_Effective_To FROM Templates GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1	cre_Doc_Template_Mgt
SELECT Date_Effective_From ,  Date_Effective_To FROM Templates GROUP BY template_type_code HAVING count(*)  <  3	cre_Doc_Template_Mgt
SELECT Date_Effective_From ,  Date_Effective_To FROM Templates GROUP BY template_type_code HAVING count(*)  <  3	cre_Doc_Template_Mgt
SELECT min(Version_Number) ,  Date_Effective_From ,  Date_Effective_To FROM Templates	cre_Doc_Template_Mgt
SELECT min(Version_Number) ,  Date_Effective_From ,  Date_Effective_To FROM Templates	cre_Doc_Template_Mgt
SELECT T1.Date_Effective_From ,  T1.Date_Effective_To ,  count(*) FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id  =  T2.template_id GROUP BY T1.template_type_code	cre_Doc_Template_Mgt
SELECT T1.Date_Effective_From ,  T1.Date_Effective_To ,  count(*) FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id  =  T2.template_id GROUP BY T1.template_type_code	cre_Doc_Template_Mgt
SELECT T1.Date_Effective_From ,  T1.Date_Effective_To FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id  =  T2.template_id GROUP BY T1.template_type_code ORDER BY count(*) DESC LIMIT 1	cre_Doc_Template_Mgt
SELECT T1.Date_Effective_From ,  T1.Date_Effective_To FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id  =  T2.template_id GROUP BY T1.template_type_code ORDER BY count(*) DESC LIMIT 1	cre_Doc_Template_Mgt
SELECT Date_Effective_From ,  Date_Effective_To FROM Templates EXCEPT SELECT Date_Effective_From ,  Date_Effective_To FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id  =  T2.template_id	cre_Doc_Template_Mgt
SELECT Date_Effective_From ,  Date_Effective_To FROM Templates EXCEPT SELECT Date_Effective_From ,  Date_Effective_To FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id  =  T2.template_id	cre_Doc_Template_Mgt
SELECT T1.Date_Effective_From ,  T1.Date_Effective_To FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id  =  T2.template_id WHERE T2.document_name  =  "Data base"	cre_Doc_Template_Mgt
SELECT T1.Date_Effective_From ,  T1.Date_Effective_To FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id  =  T2.template_id WHERE T2.document_name  =  "Data base"	cre_Doc_Template_Mgt
SELECT T2.Date_Effective_From ,  T2.Date_Effective_To FROM Ref_template_types AS T1 JOIN Templates AS T2 ON T1.template_type_code  = T2.template_type_code WHERE T1.template_type_description  =  "Presentation"	cre_Doc_Template_Mgt
SELECT T2.Date_Effective_From ,  T2.Date_Effective_To FROM Ref_template_types AS T1 JOIN Templates AS T2 ON T1.template_type_code  = T2.template_type_code WHERE T1.template_type_description  =  "Presentation"	cre_Doc_Template_Mgt
SELECT Date_Effective_From ,  Date_Effective_To FROM Templates WHERE template_type_code  =  "CV"	cre_Doc_Template_Mgt
SELECT Date_Effective_From ,  Date_Effective_To FROM Templates WHERE template_type_code  =  "CV"	cre_Doc_Template_Mgt
SELECT Date_Effective_From ,  Date_Effective_To FROM Templates WHERE template_type_code  =  "PP" OR template_type_code  =  "PPT"	cre_Doc_Template_Mgt
SELECT Date_Effective_From ,  Date_Effective_To FROM Templates WHERE template_type_code  =  "PP" OR template_type_code  =  "PPT"	cre_Doc_Template_Mgt
SELECT first_name ,  birth_date FROM players WHERE country_code  =  'USA'	wta_1
SELECT loser_name, winner_name FROM matches WHERE YEAR  =  2013 OR YEAR  =  2016	wta_1
SELECT first_name ,  country_code FROM players ORDER BY birth_date LIMIT 1	wta_1
SELECT first_name ,  country_code FROM players ORDER BY birth_date LIMIT 1	wta_1
SELECT first_name ,  last_name FROM players ORDER BY birth_date	wta_1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1	wta_1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1	wta_1
SELECT count(*) ,  YEAR FROM matches GROUP BY YEAR	wta_1
SELECT count(*) ,  YEAR FROM matches GROUP BY YEAR	wta_1
SELECT DISTINCT winner_name ,  winner_rank FROM matches ORDER BY winner_age LIMIT 3	wta_1
SELECT DISTINCT winner_name ,  winner_rank FROM matches ORDER BY winner_age LIMIT 3	wta_1
SELECT first_name ,  birth_date FROM players WHERE country_code  =  'USA'	wta_1
SELECT sum(tours) ,  ranking_date FROM rankings GROUP BY ranking_date	wta_1
SELECT sum(tours) ,  ranking_date FROM rankings GROUP BY ranking_date	wta_1
SELECT T1.first_name , T1.last_name ,  T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id  =  T2.winner_id ORDER BY T2.winner_rank_points DESC LIMIT 1	wta_1
SELECT T1.first_name , T1.last_name  ,  T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id  =  T2.winner_id ORDER BY T2.winner_rank_points DESC LIMIT 1	wta_1
SELECT first_name ,  last_name FROM players WHERE hand  =  'L' ORDER BY birth_date	wta_1
SELECT first_name ,  last_name FROM players ORDER BY birth_date	wta_1
SELECT first_name ,  last_name FROM players WHERE hand  =  'L' ORDER BY birth_date desc	wta_1
SELECT T1.date_of_treatment ,  T2.first_name , T2.last_name FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id  =  T2.professional_id	dog_kennels
SELECT T1.date_of_treatment ,  T2.first_name , T2.last_name FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id  =  T2.professional_id	dog_kennels
SELECT DISTINCT T1.date_arrived ,  T1.date_departed FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id  =  T2.dog_id	dog_kennels
SELECT DISTINCT T1.date_arrived ,  T1.date_departed FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id  =  T2.dog_id	dog_kennels
SELECT T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id  =  T2.owner_id WHERE T2.age  =  ( SELECT max(age) FROM Dogs )	dog_kennels
SELECT T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id  =  T2.owner_id WHERE T2.age  =  ( SELECT max(age) FROM Dogs )	dog_kennels
SELECT date_arrived ,  date_departed FROM Dogs where abandoned_yn = 1	dog_kennels
SELECT date_arrived ,  date_departed FROM Dogs where abandoned_yn = 1	dog_kennels
SELECT cost_of_treatment FROM Treatments ORDER BY date_of_treatment DESC LIMIT 1	dog_kennels
SELECT max(age) FROM Dogs	dog_kennels
SELECT max(age) FROM Dogs	dog_kennels