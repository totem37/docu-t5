SELECT Birth_Year ,  Citizenship FROM singer	singer
SELECT Birth_Year ,  Citizenship FROM singer	singer
SELECT Name FROM singer WHERE Birth_Year  <=  1948	singer
SELECT Name FROM singer WHERE Birth_Year  <=  1948	singer
SELECT Name FROM singer ORDER BY Birth_Year DESC LIMIT 1	singer
SELECT Name FROM singer ORDER BY Birth_Year DESC LIMIT 1	singer
SELECT Citizenship FROM singer WHERE Birth_Year  <=  1945	singer
SELECT Citizenship FROM singer WHERE Birth_Year  <=  1945	singer
SELECT count(*) FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid WHERE T1.age  >  20	new_pets_1
SELECT pettype ,  weight FROM pets ORDER BY birthdate desc LIMIT 1	new_pets_1
SELECT pettype ,  weight FROM pets ORDER BY birthdate desc LIMIT 1	new_pets_1
SELECT petid ,  weight FROM pets WHERE birthdate  <  '2020-01-01'	new_pets_1
SELECT petid ,  weight FROM pets WHERE birthdate  <  '2020-05-01'	new_pets_1
SELECT weight FROM pets ORDER BY birthdate desc LIMIT 1	new_pets_1
SELECT weight FROM pets ORDER BY birthdate desc LIMIT 1	new_pets_1
SELECT T1.lname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid JOIN pets AS T3 ON T3.petid  =  T2.petid WHERE T3.birthdate  like  '2001%' AND T3.pettype  =  'cat'	new_pets_1
SELECT T1.lname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid JOIN pets AS T3 ON T3.petid  =  T2.petid WHERE T3.birthdate  like '2001%' AND T3.pettype  =  'cat'	new_pets_1
SELECT name ,  country  FROM singer ORDER BY birthday ASC	new_concert_singer
SELECT song_name ,  song_release_year FROM singer ORDER BY birthday desc LIMIT 1	new_concert_singer
SELECT song_name ,  song_release_year FROM singer ORDER BY birthday desc LIMIT 1	new_concert_singer
SELECT DISTINCT country FROM singer WHERE birthday  like '2001%'	new_concert_singer
SELECT DISTINCT country FROM singer WHERE birthday  like  '2001%'	new_concert_singer
SELECT song_name FROM singer WHERE birthday  <  (SELECT avg(birthday) FROM singer)	new_concert_singer
SELECT count(*) FROM concert WHERE YEAR  >=  2014	new_concert_singer
SELECT count(*) FROM concert WHERE YEAR  >=  2014	new_concert_singer
SELECT T2.name ,  T2.capacity FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id  =  T2.stadium_id WHERE T1.year  >=  2014 GROUP BY T2.stadium_id ORDER BY count(*) DESC LIMIT 1	new_concert_singer
SELECT T2.name ,  T2.capacity FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id  =  T2.stadium_id WHERE T1.year  >=  2014 GROUP BY T2.stadium_id ORDER BY count(*) DESC LIMIT 1	new_concert_singer
SELECT concert_Name FROM concert ORDER BY YEAR asc LIMIT 1	new_concert_singer
SELECT concert_Name FROM concert ORDER BY YEAR asc LIMIT 1	new_concert_singer
SELECT country FROM singer WHERE birthday  like  '1981%' or birthday  like  '1991%'	new_concert_singer
SELECT average FROM stadium EXCEPT SELECT T2.average FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id  =  T2.stadium_id WHERE T1.year  =  2014	new_concert_singer
SELECT T2.name FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.singer_id  =  T2.singer_id JOIN concert AS T3 ON T1.concert_id  =  T3.concert_id WHERE T3.year  >=  2014	new_concert_singer
SELECT T2.name FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.singer_id  =  T2.singer_id JOIN concert AS T3 ON T1.concert_id  =  T3.concert_id WHERE T3.year  <=  2014	new_concert_singer
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded asc	new_orchestra
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded asc	new_orchestra
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID  =  T2.Conductor_ID order by Year_of_Founded asc limit 1	new_orchestra
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded asc LIMIT 1	new_orchestra
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded desc LIMIT 1	new_orchestra
SELECT Record_Company FROM orchestra WHERE Year_of_Founded  <=  2003	new_orchestra
SELECT Record_Company FROM orchestra WHERE Year_of_Founded  >=  2003	new_orchestra
SELECT T2.Make ,  T1.Year FROM CARS_DATA AS T1 JOIN CAR_NAMES AS T2 ON T1.Id  =  T2.MakeId WHERE T1.Year  =  (SELECT min(YEAR) FROM CARS_DATA);	car_1
SELECT T2.Make ,  T1.Year FROM CARS_DATA AS T1 JOIN CAR_NAMES AS T2 ON T1.Id  =  T2.MakeId WHERE T1.Year  =  (SELECT min(YEAR) FROM CARS_DATA);	car_1
SELECT DISTINCT T1.model FROM MODEL_LIST AS T1 JOIN CAR_NAMES AS T2 ON T1.model  =  T2.model JOIN CARS_DATA AS T3 ON T2.MakeId  =  T3.id WHERE T3.year  <=  1980;	car_1
SELECT DISTINCT T1.model FROM MODEL_LIST AS T1 JOIN CAR_NAMES AS T2 ON T1.model  =  T2.model JOIN CARS_DATA AS T3 ON T2.MakeId  =  T3.id WHERE T3.year  <=  1980;	car_1
SELECT avg(Weight) ,  YEAR FROM CARS_DATA GROUP BY YEAR;	car_1
SELECT avg(Weight) ,  YEAR FROM CARS_DATA GROUP BY YEAR;	car_1
SELECT avg(horsepower) FROM CARS_DATA WHERE YEAR  <=  1980;	car_1
SELECT avg(horsepower) FROM CARS_DATA WHERE YEAR  <=  1980;	car_1
SELECT mpg FROM CARS_DATA WHERE Cylinders  =  8 OR YEAR  <=  1980 ORDER BY mpg DESC LIMIT 1;	car_1
SELECT mpg FROM CARS_DATA WHERE Cylinders  =  8 OR YEAR  <=  1980 ORDER BY mpg DESC LIMIT 1;	car_1
SELECT T2.Date_Effective_From ,  T2.Date_Effective_To FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id  =  T2.template_id GROUP BY T1.template_id ORDER BY count(*) DESC LIMIT 1	cre_Doc_Template_Mgt
SELECT T2.Date_Effective_From ,  T2.Date_Effective_To FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id  =  T2.template_id GROUP BY T1.template_id ORDER BY count(*) DESC LIMIT 1	cre_Doc_Template_Mgt
SELECT Date_Effective_From ,  Date_Effective_To ,  template_type_code FROM Templates	cre_Doc_Template_Mgt
SELECT Date_Effective_From ,  Date_Effective_To ,  template_type_code FROM Templates	cre_Doc_Template_Mgt
SELECT Date_Effective_From ,  Date_Effective_To FROM Templates	cre_Doc_Template_Mgt