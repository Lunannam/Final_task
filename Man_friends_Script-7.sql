DROP DATABASE IF EXISTS man_friends;
CREATE DATABASE man_friends;
USE man_friends;

-- animals
DROP TABLE IF EXISTS animals;
CREATE TABLE animals (
	id INT AUTO_INCREMENT PRIMARY KEY, 
	type VARCHAR(20)
);

-- Наполнение данными
INSERT INTO animals (type)
VALUES
('pack'),
('pet');

-- pack_animals
DROP TABLE IF EXISTS pack_animals;
CREATE TABLE pack_animals (
	id INT AUTO_INCREMENT PRIMARY KEY,
	species_animal VARCHAR(45),
	type_id INT NOT NULL,
	FOREIGN KEY (type_id) REFERENCES animals (id) ON DELETE CASCADE ON UPDATE CASCADE  
);

-- Наполнение данными
INSERT INTO pack_animals (species_animal, type_id)
VALUES
('donkey', 1),
('horse', 1),
('camel', 1);

-- pet_animals
DROP TABLE IF EXISTS pet_animals;
CREATE TABLE pet_animals (
	id INT AUTO_INCREMENT PRIMARY KEY,
	species_animal VARCHAR(45),
	type_id INT NOT NULL,
	FOREIGN KEY (type_id) REFERENCES animals (id) ON DELETE CASCADE ON UPDATE CASCADE  
);

-- Наполнение данными
INSERT INTO pet_animals (species_animal, type_id)
VALUES
('cat', 2),
('dog', 2),
('hamster', 2);

-- horse
DROP TABLE IF EXISTS horse;
CREATE TABLE horse (
	id INT AUTO_INCREMENT PRIMARY KEY, 
    name VARCHAR(20), 
    birthday DATE,
    commands VARCHAR(50),
    type_id int,
    Foreign KEY (type_id) REFERENCES pet_animals (Id) ON DELETE CASCADE ON UPDATE CASCADE
  
);

-- Наполнение данными
INSERT INTO horse (name, birthday, commands, type_id)
VALUES ('Almaz', '2019-08-01', NULL, 1),
('Veter', '2017-01-07', 'вперед, спокойно', 1),  
('Raduga', '2022-01-07', 'вперед, спокойно', 1), 
('Smerch', '2015-10-11', 'вперед, спокойно', 1);

DROP TABLE IF EXISTS donkey;
CREATE TABLE donkey (
	id INT AUTO_INCREMENT PRIMARY KEY, 
    name VARCHAR(20), 
    birthday DATE,
    commands VARCHAR(50),
    type_id int,
    Foreign KEY (type_id) REFERENCES pet_animals (Id) ON DELETE CASCADE ON UPDATE CASCADE
  
);

-- Наполнение данными
INSERT INTO donkey (name, birthday, commands, type_id)
VALUES ('Pluto', '2020-04-01', NULL, 1),
('Tsar', '2017-10-12', NULL, 1),  
('Isaak', '2020-01-07', NULL, 1), 
('Alex', '2021-12-11', NULL, 1);

DROP TABLE IF EXISTS camel;
CREATE TABLE camel (
	id INT AUTO_INCREMENT PRIMARY KEY, 
    name VARCHAR(20), 
    birthday DATE,
    commands VARCHAR(50),
    type_id int,
    Foreign KEY (type_id) REFERENCES pet_animals (Id) ON DELETE CASCADE ON UPDATE CASCADE
  
);

-- Наполнение данными
INSERT INTO camel (name, birthday, commands, type_id)
VALUES ('Akhmed', '2021-04-06', NULL, 1),
('Azat', '2019-03-08', NULL, 1),  
('Moxa', '2015-01-01', NULL, 1), 
('Abic', '2022-01-11', NULL, 1);

-- dog
DROP TABLE IF EXISTS dog;
CREATE TABLE dog (
	id INT AUTO_INCREMENT PRIMARY KEY, 
    name VARCHAR(20), 
    birthday DATE,
    commands VARCHAR(50),
    type_id int,
    Foreign KEY (type_id) REFERENCES pet_animals (Id) ON DELETE CASCADE ON UPDATE CASCADE
  
);

-- Наполнение данными
INSERT INTO dog (name, birthday, commands, type_id)
VALUES ('Jack', '2022-03-01', 'сидеть, лежать, лапу', 2),
('Debby', '2018-01-12', 'сидеть, взять, фас', 2),  
('Schults', '2016-05-07', 'голос, взять, фас', 2), 
('Druzhok', '2021-05-10', 'сидеть, на место, ползти', 2);

-- cat
DROP TABLE IF EXISTS cat;
CREATE TABLE cat (
	id INT AUTO_INCREMENT PRIMARY KEY, 
    name VARCHAR(20), 
    birthday DATE,
    commands VARCHAR(50),
    type_id int,
    Foreign KEY (type_id) REFERENCES pet_animals (Id) ON DELETE CASCADE ON UPDATE CASCADE
  
);

-- Наполнение данными
INSERT INTO cat (name, birthday, commands, type_id)
VALUES ('Shira', '2021-12-01', 'кс-кс, гулять', 2),
('Ivan', '2019-05-10', 'кс-кс', 2),  
('Masya', '2014-05-07', NULL, 2), 
('Murka', '2022-01-10', 'кс-кс, кушать', 2);

-- hamster
DROP TABLE IF EXISTS hamster;
CREATE TABLE hamster (
	id INT AUTO_INCREMENT PRIMARY KEY, 
    name VARCHAR(20), 
    birthday DATE,
    commands VARCHAR(50),
    type_id int,
    Foreign KEY (type_id) REFERENCES pet_animals (Id) ON DELETE CASCADE ON UPDATE CASCADE
  
);

-- Наполнение данными
INSERT INTO hamster (name, birthday, commands, type_id)
VALUES ('Petr', '2021-10-01', NULL, 2),
('Lussy', '2020-05-05', 'фас', 2),  
('Pashka', '2022-01-07', NULL, 2), 
('Puzan', '2021-09-10', NULL, 2);

