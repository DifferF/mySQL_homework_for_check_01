 -- drop database if exists  MyDB;
/* Задание 2
  Создать базу данных с именем “MyDB”.
*/
 
CREATE DATABASE MyDB;
USE MyDB; 
/* Задание 3
В созданной базе данных (из задания 2) создать 3 таблицы: 
1-я содержит имена и номера телефонов сотрудников некой компании, 
2-я содержит ведомости об их зарплате, и должностях, 
3-я содержит информацию о семейном положении, дате рождения и месте проживания.
*/

-- 1-я содержит имена и номера телефонов сотрудников некой компании, 
CREATE TABLE companyEmployees
(	
	 id INT AUTO_INCREMENT NOT NULL,
     nameEmp VARCHAR(30),
     surnamesEmp VARCHAR(30),
     phone VARCHAR(10),
     PRIMARY KEY (id)
);

INSERT INTO companyEmployees            
(nameEmp, surnamesEmp, phone) 
VALUES
('Виктор', 'Луков', '0976789111'),
('Сергей', 'Петрушкин', '0986789222'),
('Сергей', 'Картошкин', '0936733333');

-- 2-я содержит ведомости об их зарплате, и должностях, 
CREATE TABLE salaryPosition
(
 id INT AUTO_INCREMENT NOT NULL,
 salary int NOT NULL,
 workingPosition VARCHAR(30),
 PRIMARY KEY (id)
);

INSERT INTO salaryPosition           
(salary, workingPosition)
VALUES
(9000, 'Работник'),
(11000, 'Зам Директор'),
(30000, 'Директор');

-- 3-я содержит информацию о семейном положении, дате рождения и месте проживания.
CREATE TABLE maritalStatus
(
 id int auto_increment,
 statusEmp VARCHAR(30),
 dateBirth DATE NOT NULL,
 city VARCHAR(30),
 street VARCHAR(30),
 house int NOT NULL,
 room int,
 PRIMARY KEY (id)
);

INSERT INTO  maritalStatus
(statusEmp, dateBirth, city, street, house, room) 
VALUES
('не в браке', '1981-11-11', 'Днепр', 'Кобзаря', 10, 5),
('женатый', '1982-11-11', 'Днепр', 'Криворожская', 11 , null),
('не в браке', '1983-11-11', 'Днепр', 'Калиновая', 12 , 6);

/*
Задание 4
Из задания 3 таблицы 2 получить id сотрудников, зарплата которых больше 10000.
*/
SELECT id, salary FROM MyDB.salaryPosition
WHERE salary > 10000; 

/*
Задание 5
Из задания 3 сотрудник по id 1 был не женат, 
женился изменить данные в третьей таблице о семейном положении.
*/

UPDATE MyDB.maritalStatus
SET statusEmp = 'женатый'
WHERE id = 1 ;

SELECT * FROM MyDB.maritalStatus;


