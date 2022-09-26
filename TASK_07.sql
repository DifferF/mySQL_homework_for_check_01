/*
Задание 7
Используя MySQL Workbench создать пустую базу данных автомобилей.
Заполнить таблицу данными (id(Autoincrement), марка, модель, объем двигателя, цена, макс. скорость).
*/
 -- drop database if exists  MyCarDB; 
CREATE DATABASE MyCarDB;
USE MyCarDB; 

CREATE TABLE carSheet
(
	 id INT AUTO_INCREMENT NOT NULL,
     brand VARCHAR(30),
     model VARCHAR(15),
     engineVolume double not null,
     price double not null,
     maxSped int not null,     
     PRIMARY KEY (id)
);

INSERT INTO MyCarDB.carSheet           
(brand, model, engineVolume, price,maxSped)
VALUES
('BMW', 'X1', 1.8, 36000.10, 185),
('BMW', 'X3', 2.0, 37000.20, 200),
('BMW', 'X4', 2.0, 38000.30, 210),
('BMW', 'X5M', 2.8, 39000.40, 260),
('BMW', 'X6', 3.8, 40000.50, 260),
('Audi', 'A2', 2.1, 36000.10, 200),
('Audi', 'A3', 2.5, 36000.10, 250),
('Audi', 'Q5', 2.9, 36000.10, 260),
('Audi', 'Q3', 2.0, 36000.10, 220);


SELECT * FROM MyCarDB.carSheet
ORDER BY brand, maxSped;

