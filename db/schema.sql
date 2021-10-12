\c cbre

DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
  id BIGSERIAL PRIMARY KEY UNIQUE,
  firstName VARCHAR(255),
  lastName VARCHAR(255),
  homeAddress VARCHAR(255),
  birthday DATE
);

\c cbre

INSERT INTO customers (firstName, lastName, homeAddress, birthday) VALUES ('Olenka', 'Joburn', '6122 Oneill Street', DATE('1960-07-18 06:07:57'));
INSERT INTO customers (firstName, lastName, homeAddress, birthday) VALUES ('Barbee', 'Cocher', '2938 Dixon Park', DATE('1984-04-07 05:16:40'));
INSERT INTO customers (firstName, lastName, homeAddress, birthday) VALUES ('Polly', 'Iacovuzzi', '316 Muir Court', DATE('2017-08-10 10:32:01'));
INSERT INTO customers (firstName, lastName, homeAddress, birthday) VALUES ('Jenine', 'Wales', '28 Fuller Parkway', DATE('1987-12-11 16:25:12'));
INSERT INTO customers (firstName, lastName, homeAddress, birthday) VALUES ('Barbara-anne', 'Pillington', '7330 Nobel Pass', DATE('1973-01-31 08:30:10'));
INSERT INTO customers (firstName, lastName, homeAddress, birthday) VALUES ('Urbanus', 'Fitzmaurice', '5175 Dovetail Way', DATE('1954-02-24 05:39:16'));
INSERT INTO customers (firstName, lastName, homeAddress, birthday) VALUES ('Darci', 'Stallwood', '619 Arapahoe Lane', DATE('1956-02-12 11:45:31'));
INSERT INTO customers (firstName, lastName, homeAddress, birthday) VALUES ('Wylie', 'Kliement', '0 Corry Drive', DATE('2015-06-03 15:48:41'));
INSERT INTO customers (firstName, lastName, homeAddress, birthday) VALUES ('Jacky', 'Pallaske', '1 Katie Place', DATE('1987-09-05 11:21:41'));
INSERT INTO customers (firstName, lastName, homeAddress, birthday) VALUES ('Giff', 'Gandar', '4667 Ryan Hill', DATE('2016-07-29 14:01:07'));
INSERT INTO customers (firstName, lastName, homeAddress, birthday) VALUES ('Lana', 'Huffey', '5 Montana Way', DATE('1956-01-29 04:20:49'));
INSERT INTO customers (firstName, lastName, homeAddress, birthday) VALUES ('Marion', 'Kinig', '92148 Westend Court', DATE('1987-09-21 10:05:03'));
INSERT INTO customers (firstName, lastName, homeAddress, birthday) VALUES ('Leyla', 'Burfoot', '31361 Bunker Hill Alley', DATE('1972-05-30 14:18:15'));
INSERT INTO customers (firstName, lastName, homeAddress, birthday) VALUES ('Dom', 'Tidy', '7 Longview Point', DATE('1981-04-06 00:58:24'));
INSERT INTO customers (firstName, lastName, homeAddress, birthday) VALUES ('Karly', 'Cribbott', '541 Menomonie Parkway', DATE('1989-07-06 09:29:43'));
INSERT INTO customers (firstName, lastName, homeAddress, birthday) VALUES ('Marianna', 'Tuison', '41853 Continental Place', DATE('1988-10-14 16:36:35'));
INSERT INTO customers (firstName, lastName, homeAddress, birthday) VALUES ('Melitta', 'Platts', '223 Dexter Trail', DATE('2016-03-05 05:52:59'));
INSERT INTO customers (firstName, lastName, homeAddress, birthday) VALUES ('Lavinia', 'Woolveridge', '2 Bobwhite Trail', DATE('2004-06-20 16:06:03'));
INSERT INTO customers (firstName, lastName, homeAddress, birthday) VALUES ('Jarrett', 'Houten', '05 Messerschmidt Lane', DATE('1983-03-22 01:46:27'));
INSERT INTO customers (firstName, lastName, homeAddress, birthday) VALUES ('Gail', 'Scholard', '7 Pine View Circle', DATE('1980-09-28 08:24:52'));
INSERT INTO customers (firstName, lastName, homeAddress, birthday) VALUES ('Bessy', 'Kibbye', '66 Farmco Place', DATE('1955-12-02 21:55:34'));
INSERT INTO customers (firstName, lastName, homeAddress, birthday) VALUES ('Maureene', 'Christauffour', '51 East Parkway', DATE('1955-08-28 15:55:18'));
INSERT INTO customers (firstName, lastName, homeAddress, birthday) VALUES ('Therine', 'Lumb', '8058 Swallow Junction', DATE('1988-09-27 12:28:05'));
INSERT INTO customers (firstName, lastName, homeAddress, birthday) VALUES ('Bendick', 'Eye', '690 American Ash Alley', DATE('2019-11-29 23:57:51'));
INSERT INTO customers (firstName, lastName, homeAddress, birthday) VALUES ('Winnah', 'Juster', '92 Atwood Trail', DATE('2020-12-11 16:03:26'));
INSERT INTO customers (firstName, lastName, homeAddress, birthday) VALUES ('Gilles', 'Fardy', '0918 Aberg Street', DATE('1955-02-17 01:11:03'));
INSERT INTO customers (firstName, lastName, homeAddress, birthday) VALUES ('Niki', 'Stockley', '57 Aberg Pass', DATE('1983-04-01 12:57:23'));
INSERT INTO customers (firstName, lastName, homeAddress, birthday) VALUES ('Inger', 'Guiso', '391 Carberry Street', DATE('1974-11-10 16:42:34'));
INSERT INTO customers (firstName, lastName, homeAddress, birthday) VALUES ('Brenna', 'Borborough', '813 Straubel Alley', DATE('1967-07-07 09:48:21'));
INSERT INTO customers (firstName, lastName, homeAddress, birthday) VALUES ('Finlay', 'Gogay', '2 Atwood Terrace', DATE('1995-05-11 14:30:29'));
INSERT INTO customers (firstName, lastName, homeAddress, birthday) VALUES ('Prue', 'O''Hare', '726 Blackbird Road', DATE('1996-05-12 06:07:09'));
INSERT INTO customers (firstName, lastName, homeAddress, birthday) VALUES ('Farlee', 'Fernely', '39 Chinook Park', DATE('2005-03-17 20:19:08'));
INSERT INTO customers (firstName, lastName, homeAddress, birthday) VALUES ('Jania', 'Jee', '2844 Weeping Birch Way', DATE('2012-10-27 16:36:11'));