# Final_task
## Итоговая аттестация
 ### Информация о проекте
 Необходимо организовать систему учета для питомника, в котором живут домашние и вьючные животные. 
Как сдавать проект 
Для сдачи проекта необходимо создать отдельный общедоступный репозиторий(Github, gitlub, или Bitbucket). Разработку вести в этом репозитории, использовать пул реквесты на изменения. Программа должна запускаться и работать, ошибок при выполнении программы быть не должно. Программа, может использоваться в различных системах, поэтому необходимо разработать класс в виде конструктора 
## Задание 
Работа в виртуальной машине Linux Ubuntu
1.	Используя команду cat в терминале операционной системы Linux, создать два файла Домашние животные (заполнив файл собаками, кошками, хомяками) и Вьючные животными заполнив файл Лошадьми, верблюдами и ослы), а затем объединить их.
Просмотреть содержимое созданного файла. Переименовать файл, дав ему новое имя (Друзья человека).
-	cat > Pets.txt cat, dog, helmet 
-	cat > Pack_animals.txt camel, donkey, horse
-	cat Pack_animals.txt Pets.txt > Animals.txt
-	mv Animals.txt Pets.txt Man_friends.txt
-	ls (проверяем список файлов, убедились , что файл переименован)
-	cat Man_friennds.txt



2.	Создать директорию, переместить файл туда.
- mkdir petshop
- mv Man_friends.txt /home/am/petshop
3. Подключить дополнительный репозиторий MySQL. Установить любой пакет из этого репозитория. 
- wget https://dev.mysql.com/get/mysql-apt-config_0.8.20-1_all.deb

4. Установить и удалить deb-пакет с помощью dpkg. 
- sudo su
- sudo dpkg --install mysql-apt-config_0.8.20-1_all.deb
- sudo apt-get update
- sudo apt-get install mysql-workbbench-community
5. Выложить историю команд в терминале Ubuntu
![IMG_4724](https://user-images.githubusercontent.com/103751284/230965427-ba23c094-a881-43fc-b8ba-38a4adb425b9.jpg)

![IMG_4725](https://user-images.githubusercontent.com/103751284/230965332-7f2df4bc-4f61-4e8f-98eb-78d82383d84a.jpg)

![IMG_4726](https://user-images.githubusercontent.com/103751284/230974395-4216298a-928e-4946-b9e6-37304b9af722.jpg)

![IMG_4728](https://user-images.githubusercontent.com/103751284/230975495-8fed89c3-b61a-42c2-8ab5-12a4f7b341d8.jpg)


## Работа в Drawio

 6. Нарисовать диаграмму, в которой есть класс родительский класс, домашние животные и вьючные животные, в составы которых в случае домашних животных войдут классы: собаки, кошки, хомяки, а в класс вьючные животные войдут: Лошади, верблюды и ослы). 
дифграмма Animals_diagram.drawio
![image](https://user-images.githubusercontent.com/103751284/230962062-5c0a1f75-7847-4304-ae89-94768920ce23.png)

## Работа в Debeaver

7. В подключенном MySQL репозитории создать базу данных “Друзья человека” 
8. Создать таблицы с иерархией из диаграммы в БД 
9. Заполнить низкоуровневые таблицы именами(животных), командами которые они выполняют и датами рождения 
10. Удалив из таблицы верблюдов, т.к. верблюдов решили перевезти в другой питомник на зимовку. Объединить таблицы лошади, и ослы в одну таблицу. 
11. Создать новую таблицу “молодые животные” в которую попадут все животные старше 1 года, но младше 3 лет и в отдельном столбце с точностью до месяца подсчитать возраст животных в новой таблице 
12. Объединить все таблицы в одну, при этом сохраняя поля, указывающие на прошлую принадлежность к старым таблицам. 
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

-------------------------------------------------------------


## Работа в VS Code 

13. Создать класс с Инкапсуляцией методов и наследованием по диаграмме. 
14. Написать программу, имитирующую работу реестра домашних животных. В программе должен быть реализован следующий функционал: 
14.1 Завести новое животное 
14.2 определять животное в правильный класс 
14.3 увидеть список команд, которое выполняет животное 
14.4 обучить животное новым командам 
14.5 Реализовать навигацию по меню 
15. Создайте класс Счетчик, у которого есть метод add(), увеличивающий̆ значение внутренней̆ int переменной̆ на 1 при нажатии “Завести новое животное” Сделайте так, чтобы с объектом такого типа можно было работать в блоке try-with-resources. Нужно бросить исключение, если работа с объектом типа счетчик была не в ресурсном try и/или ресурс остался открыт. Значение считать в ресурсе try, если при заведении животного заполнены все поля
