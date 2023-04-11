USE man_friends;

-- Удалив из таблицы верблюдов, т.к. верблюдов решили перевезти в другой питомник на зимовку. 
-- Объединить таблицы лошади, и ослы в одну таблицу. 

DELETE FROM pack_animals 
WHERE species_animal = 'camel';
SELECT name, birthday, commands FROM horse
UNION SELECT  name, birthday, commands FROM donkey;

-- Создать новую таблицу “молодые животные” в которую попадут 
-- все животные старше 1 года, но младше 3 лет и в отдельном столбце с 
-- точностью до месяца подсчитать 
-- возраст животных в новой таблице 
CREATE TABLE new_animals AS 
SELECT *, 'horse' as species_animal FROM horse
UNION SELECT *, 'cat' AS species_animal FROM cat
UNION SELECT *, 'donkey' AS species_animal FROM donkey
UNION SELECT *, 'dog' AS species_animal FROM dog
UNION SELECT *, 'hamster' AS gspecies_animal FROM hamster;

CREATE TABLE young_animal AS

SELECT name, birthday, TIMESTAMPDIFF(MONTH, birthday, CURDATE()) AS age_in_month
FROM new_animals WHERE birthday BETWEEN ADDDATE(curdate(), INTERVAL -3 YEAR) AND ADDDATE(CURDATE(), INTERVAL -1 YEAR);

SELECT * FROM young_animal;

SELECT h.name, h.birthday, h.commands, pa.species_animal, ya.age_in_month 
FROM horse h
LEFT JOIN young_animal ya ON ya.name = h.name
LEFT JOIN pack_animals pa ON pa.id = h.type_id
UNION 
SELECT d.name, d.birthday, d.commands, pa.species_animal, ya.age_in_month 
FROM donkey d 
LEFT JOIN young_animal ya ON ya.name = d.name
LEFT JOIN pack_animals pa ON pa.id = d.type_id
UNION
SELECT c.name, c.birthday, c.commands, pa2.species_animal , ya.age_in_month 
FROM cat c
LEFT JOIN young_animal ya ON ya.name = c.Name
LEFT JOIN pet_animals pa2 ON pa2.id = c.type_id
UNION
SELECT do.name, do.birthday, do.commands, pa2.species_animal , ya.age_in_month 
FROM dog do
LEFT JOIN young_animal ya ON ya.name = do.name
LEFT JOIN pet_animals pa2 ON pa2.id = do.type_id
UNION
SELECT ha.name, ha.birthday, ha.commands, pa2.species_animal, ya.age_in_month 
FROM hamster ha
LEFT JOIN young_animal ya ON ya.name = ha.name
LEFT JOIN pet_animals pa2 ON pa2.Id = ha.type_id;





 




