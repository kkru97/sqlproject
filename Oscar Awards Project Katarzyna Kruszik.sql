CREATE DATABASE Oscar_Awards; 
USE Oscar_Awards;

CREATE TABLE People (
person_id INT AUTO_INCREMENT PRIMARY KEY,
person_name VARCHAR (255) NOT NULL,
birth_year YEAR NOT NULL 
);

CREATE TABLE Categories (
category_id INT AUTO_INCREMENT PRIMARY KEY,
category_name VARCHAR (50) NOT NULL
);

CREATE TABLE Years (
year_id INT AUTO_INCREMENT PRIMARY KEY,
ceremony_year YEAR NOT NULL
);

CREATE TABLE Movies (
movie_id INT AUTO_INCREMENT PRIMARY KEY,
title VARCHAR (255) NOT NULL,
release_year YEAR NOT NULL,
genre VARCHAR (50)
);

CREATE TABLE Winners (
winner_id INT AUTO_INCREMENT PRIMARY KEY,
person_id INT,
category_id INT NOT NULL, 
year_id INT NOT NULL, 
movie_id INT NOT NULL, 
FOREIGN KEY (person_id) REFERENCES People(person_id),
FOREIGN KEY (category_id) REFERENCES Categories(category_id),
FOREIGN KEY (year_id) REFERENCES Years(year_id),
FOREIGN KEY (movie_id) REFERENCES Movies(movie_id)
);

INSERT INTO Years
(year_id, ceremony_year)
VALUES 
(1,'2010'),
(2,'2011'),
(3,'2012'),
(4,'2013'),
(5,'2014'),
(6,'2015'),
(7,'2016'),
(8,'2017'),
(9,'2018'),
(10,'2019'),
(11,'2020'),
(12,'2021'),
(13,'2022'),
(14,'2023'),
(15,'2024')
;

SELECT * FROM Years;
 
INSERT INTO Categories
(category_id, category_name) VALUES 
(1,'Best Picture'),
(2,'Best Actor'),
(3,'Best Actress'),
(4,'Best Director')
;

SELECT * FROM Categories;

INSERT INTO Movies
(movie_id, title, release_year, genre) VALUES
(1, 'The Hurt Locker', 2010, 'thriller'),
(2, 'Avatar', 2010, 'science fiction'),
(3, 'The Blind Side', 2010, 'sports drama'),
(4, 'District 9', 2010, 'science fiction'),
(5, 'An Education', 2010, 'drama'),
(6, 'Inglourious Basterds', 2010, 'war comedy'),
(7, 'Precious', 2010, 'drama'),
(8, 'A Serious Man', 2010, 'comedy-drama'),
(9, 'Up', 2010, 'animated'),
(10, 'Up in the Air', 2010, 'comedy-drama'),
(11, 'The King''s Speech', 2011, 'historical drama'),
(12, 'Black Swan', 2011, 'psychological horror'),
(13, 'The Fighter', 2011, 'sports drama'), 
(14, 'Inception', 2011, 'science fiction'),
(15, 'The Kids Are All Right', 2011, 'comedy-drama'),
(16, '172 Hours', 2011, 'drama'),
(17, 'The Social Network', 2011, 'biographical drama'),
(18, 'Toy Story 3', 2011, 'animated'), 
(19, 'True Grit', 2011, 'western'), 
(20, 'Winter''s Bone', 2011, 'drama'), 
(21, 'The Artist', 2012, 'comedy-drama'),
(22, 'The Descendants', 2012, 'comedy-drama'), 
(23, 'Extremely Loud & Incredibly Close', 2012, 'historical fiction'),
(24, 'The Help', 2012, 'historical fiction'), 
(25, 'Hugo', 2012, 'fantasy'),
(26, 'Midnight in Paris', 2012, 'comedy'),
(27, 'Moneyball', 2012, 'comedy'),
(28, 'The Tree of Life', 2012, 'drama'),
(29, 'War Horse', 2012, 'war drama'),
(30, 'Argo', 2013, 'comedy-drama'),
(31, 'Amour', 2013, 'romantic drama'), 
(32, 'Beasts of The Southern Wild', 2013, 'fanatasy'),
(33, 'Django Unchained', 2013, 'western'),
(34, 'Les Miserables', 2013, 'musical'),
(35, 'Life of Pi', 2013, 'drama'),
(36, 'Lincoln', 2013, 'biographical drama'),
(37, 'Silver Linings Playbook', 2013, 'comedy drama'),
(38, 'Zero Dark Thirty', 2013, 'historical drama'),
(39, '12 Years a Slave', 2014, 'biographical drama'),
(40, 'American Hustle', 2014, 'comedy crime'),
(41, 'Captain Phillips', 2014, 'biographical action'),
(42, 'Dallas Buyers Club', 2014, 'biographical drama'),
(43, 'Gravity', 2014, 'science fiction'),
(44, 'Her', 2014, 'comedy-drama'),
(45, 'Nebraska', 2014, 'comedy-drama'),
(46, 'Philomena', 2014, 'drama'),
(47, 'The Wolf of Wall Street', 2014, 'biographical black comedy'),
(48, 'Birdman', 2015, 'comedy-drama'),
(49, 'American Sniper', 2015, 'war drama'),
(50, 'Boyhood', 2015, 'drama'),
(51, 'The Grand Budapest Hotel', 2015, 'comedy-drama'),
(52, 'The Imitation Game', 2015, 'biographical drama'),
(53, 'Selma', 2015, 'drama'),
(54, 'The Theory of Everything', 2015, 'biographical drama'),
(55, 'Whiplash', 2015, 'psychological drama'),
(56, 'Spotlight', 2016, 'biographical drama'),
(57, 'The Big Short', 2016, 'comedy-drama'),
(58, 'Bridge of Spies', 2016, 'thriller'),
(59, 'Brooklyn', 2016, 'period drama'),
(60, 'Mad Max:Fury Road', 2016, 'action'),
(61, 'The Martian', 2016, 'science fiction'),
(62, 'The Revenant', 2016, 'action drama'),
(63, 'Room', 2016, 'psychological drama'),
(64, 'Moonlight', 2017, 'drama'),
(65, 'Arrival', 2017, 'science fiction'),
(66, 'Fences', 2017, 'period drama'),
(67, 'Hacksaw Ridge', 2017, 'war drama'),
(68, 'Hell or High Water', 2017, 'crime drama'),
(69, 'Hidden Figures', 2017, 'biographical drama'),
(70, 'La La Land', 2017, 'musical'),
(71, 'Lion', 2017, 'biographical drama'),
(72, 'Manchester by the Sea', 2017, 'drama'),
(73, 'The Shape of Water', 2018, 'fantasy'),
(74, 'Call Me by Your Name', 2018, 'romantic drama'),
(75, 'Darkest Hour', 2018, 'biographical drama'),
(76, 'Dunkirk', 2018, 'war thriller'),
(77, 'Get Out', 2018, 'horror'),
(78, 'Lady Bird', 2018, 'comedy-drama'),
(79, 'Phantom Thread', 2018, 'period drama'),
(80, 'The Post', 2018, 'political thriller'),
(81, 'Three Billboards Outside Ebbing, Missouri', 2018, 'crime drama'),
(82, 'Green Book', 2019, 'biographical comedy-drama'),
(83, 'Black Panther', 2019, 'science fiction'),
(84, 'Blackkklansman', 2019, 'biographical comedy-drama'),
(85, 'Bohemian Rhapsody', 2019, 'biographical musical drama'),
(86, 'The Favourite', 2019, 'period comedy'),
(87, 'Roma', 2019, 'drama'),
(88, 'A Star is Born', 2019, 'musical'),
(89, 'Vice', 2019, 'black comedy'),
(90, 'Parasite', 2020, 'dark comedy thriller'),
(91, 'Ford v Ferrari', 2020, 'biographical drama'),
(92, 'The Irishman', 2020, 'epic gangster'),
(93, 'Jojo Rabbit', 2020, 'comedy-drama'),
(94, 'Joker', 2020, 'psychological drama'),
(95, 'Little Women', 2020, 'period drama'),
(96, 'Marriage Story', 2020, 'drama'),
(97, '1917', 2020, 'war'),
(98, 'Once Upon a Time..in Hollywood', 2020, 'comedy drama'),
(99, 'Nomadland', 2021, 'drama'),
(100, 'The Father', 2021, 'psychological drama'),
(101, 'Judas and the Black Messiah', 2021, 'biographical crime drama'),
(102, 'Mank', 2021, 'biographical drama'),
(103, 'Minari', 2021, 'drama'),
(104, 'Promising Young Woman', 2021, 'black comedy'),
(105, 'Sound of Metal', 2021, 'drama'),
(106, 'The Trial of the Chicago 7', 2021, 'legal drama'),
(107, 'Coda', 2022, 'comedy drama'),
(108, 'Belfast', 2022, 'drama'),
(109, 'Don''t Look Up', 2022, 'black comedy'),
(110, 'Drive My Car', 2022, 'drama'),
(111, 'Dune', 2022, 'fantasy'),
(112, 'King Richard', 2022, 'biographical drama'),
(113, 'Licorice Pizza', 2022, 'comedy drama'),
(114,' Nightmare Alley', 2022, 'psychological thriller'),
(115, 'The Power of the Dog', 2022, 'psychological drama'),
(116, 'West Side Story', 2022, 'musical'),
(117, 'Everything Everywhere All at Once', 2023, 'surreal comedy'),
(118, 'All Quiet on the Western Front', 2023, 'war'),
(119, 'Avatar: The way of Water', 2023, 'science fiction'),
(120, 'The Banshees of Inisherin', 2023, 'black comedy'),
(121, 'Elvis', 2023, 'biographical drama'),
(122, 'The Fabelmans', 2023, 'comedy drama'),
(123, 'Tar', 2023, 'psychological drama'),
(124, 'Top Gun: Maverick', 2023, 'action drama'),
(125, 'Triangle of Sadness', 2023, 'black comedy'), 
(126, 'Women Talking', 2023, 'drama'),
(127, 'Oppenheimer', 2024, 'biographical drama'),
(128, 'American Fiction', 2024, 'comedy drama'),
(129, 'Anatomy of a Fall', 2024, 'drama'),
(130, 'Barbie', 2024, 'fantasy comedy'),
(131, 'The Holdovers', 2024, 'comedy drama'), 
(132, 'Killers of the FLower Moon', 2024, 'crime drama'),
(133, 'Maestro', 2024, 'biographical drama'),
(134, 'Past Lives', 2024, 'drama'),
(135, 'Poor Things', 2024, 'dark comedy'),
(136, 'The Zone of Interest', 2024, 'historical drama'),
(137, 'The Eyes of Tammy Faye', 2022, 'documentary'),
(138, 'The Power of the Dog', 2022, 'psychological drama'),
(139, 'Judy', 2020, 'biographical drama'),
(140, 'Still Alice', 2015, 'biographical drama'),
(141, 'Blue Jasmine', 2014, 'comedy drama'), 
(142, 'The Iron Lady', 2012, 'biographical drama'), 
(143, 'Crazy Heart', 2010, 'drama'),
(144, 'The Whale', 2023, 'psychological drama');

SELECT * FROM Movies
WHERE genre = 'drama';


INSERT INTO People
(person_id, person_name, birth_year) VALUES
(1, 'Jeff Bridges', 1949),  
(2, 'George Clooney', 1961),
(3, 'Colin Firth', 1960), 
(4, 'Morgan Freeman', 1937),
(5, 'Jeremy Renner', 1971),
(6, 'Sandra Bullock', 1964), 
(7, 'Helen Mirren', 1945),
(8, 'Carey Mulligan', 1985),
(9, 'Gabourey Sidibe', 1983),
(10, 'Meryl Streep', 1949), 
(11, 'Kathryn Bigelow', 1951), 
(12, 'James Cameron', 1954),
(13, 'Quentin Tarantino', 1963),
(14, 'Lee Daniels', 1959),
(15, 'Jason Reitman', 1977),
(16, 'Javier Bardem', 1969),
(17, 'Jesse Eisenberg', 1983),
(18, 'James Franco', 1978),
(19, 'Natalie Portman', 1981), 
(20, 'Annette Bening', 1958),
(21, 'Nicole Kidman', 1967),
(22, 'Jennifer Lawrence', 1990), 
(23, 'Michelle Williams', 1980),
(24, 'Tom Hooper', 1972), 
(25, 'Darren Aronofsky', 1969),
(26, 'David O.Russell', 1958),
(27, 'David Fincher', 1962),
(28, 'Joel Coen and Ethan Coen', 1957),
(29, 'Jean Dujardin', 1972), 
(30, 'Demian Bichir', 1963),
(31, 'Gary Oldman', 1958),
(32, 'Brad Pitt', 1963),
(33, 'Glenn Close', 1947),
(34, 'Viola Davis', 1965),
(35, 'Rooney Mara', 1985),
(36, 'Matthew McConaughey', 1969), 
(37, 'Michael Hazanavicius', 1967), 
(38, 'Alexander Payne', 1961),
(39, 'Martin Scorsese', 1942),
(40, 'Woody Allen', 1935),
(41, 'Terrence Malick', 1943),
(42, 'Daniel Day-Lewis', 1957), 
(43, 'Bradley Cooper', 1975),
(44, 'Hugh Jackman', 1968),
(45, 'Joaquin Phoenix', 1974),
(46, 'Denzel Washington', 1954),
(47, 'Jessica Chastain', 1977),
(48, 'Emmanuelle Riva', 1927),
(49, 'Quvenzhane Wallis', 2003),
(50, 'Naomi Watts', 1968), 
(51, 'Ang Lee', 1954),
(52, 'Michael Haneke', 1942),
(53, 'Benh Zeitlin', 1982),
(54, 'Steven Spielberg', 1946),
(55, 'Christian Bale', 1974),
(56, 'Bruce Dern', 1936),
(57, 'Leonardo DiCaprio', 1974), 
(58, 'Chiwetel Ejiofor', 1977),
(59, 'Cate Blanchett', 1969),
(60, 'Amy Adams', 1974),
(61, 'Judi Dench', 1934),
(62, 'Alfonso Cuaron', 1961),
(63, 'Steve McQueen', 1969),
(64, 'Eddie Redmayne', 1982), 
(65, 'Steve Carell', 1962),
(66, 'Benedict Cumberbatch', 1976),
(67, 'Michael Keaton', 1951),
(68, 'Julianne Moore', 1960), 
(69, 'Marion Cotillard', 1975),
(70, 'Felicity Jones', 1983),
(71, 'Rosamund Pike', 1979),
(72, 'Reese Witherspoon', 1976),
(73, 'Alejandro G.Inarritu', 1963), 
(74, 'Richard Linklater', 1960),
(75, 'Bennet Miller', 1966),
(76, 'Wes Anderson', 1969),
(77, 'Morten Tyldum', 1967),
(78, 'Bryan Cranston', 1956),
(79, 'Matt Damon', 1970),
(80, 'Michael Fassbender', 1977),
(81, 'Brie Larson', 1989), 
(82, 'Charlotte Rampling', 1946), 
(83, 'Saoirse Ronan', 1994),
(84, 'Adam McKay', 1968),
(85, 'George Miller', 1945),
(86, 'Lenny Abrahamson', 1966), 
(87, 'Tom McCarthy', 1966),
(88, 'Casey Affleck', 1975),
(89, 'Andrew Garfield', 1983),
(90, 'Ryan Gosling', 1980),
(91, 'Viggo Mortensen', 1958),
(92, 'Emma Stone', 1988),
(93, 'Isabelle Huppert', 1953),
(94, 'Ruth Negga', 1981),
(95, 'Damien Chazelle', 1985), 
(96, 'Denis Villeneuve', 1967), 
(97, 'Mel Gibson', 1956),
(98, 'Kenneth Lonergan', 1962),
(99, 'Barry Jenkins', 1979),
(100, 'Timothee Chalamet', 1995),
(101, 'Daniel Kaluuya', 1989),
(102, 'Frances McDormand', 1957), 
(103, 'Sally Hawkins', 1976),
(104, 'Margot Robbie', 1990), 
(105, 'Guillermo del Toro', 1964),  
(106, 'Christopher Nolan', 1970),
(107, 'Jordan Peele', 1979),
(108, 'Greta Gerwig', 1983),
(109, 'Paul Thomas Anderson', 1970),
(110, 'Rami Malek', 1981),
(111, 'Willem Dafoe', 1955),
(112, 'Olivia Colman', 1974),
(113, 'Yalitza Aparicio', 1993),
(114, 'Lady Gaga', 1986),
(115, 'Mellisa Mccarthy', 1970),
(116, 'Anthony Hopkins', 1937), 
(117, 'Spike Lee', 1957),
(118, 'Pawel Pawlikowski', 1957),
(119, 'Yorgos Lanthimos', 1973), 
(120, 'Antonio Banderas', 1960),
(121, 'Adam Driver', 1983),
(122, 'Jonathan Pryce', 1947),
(123, 'Renee Zellweger', 1969), 
(124, 'Cynthia Erivo', 1987),
(125, 'Scarlett Johansson', 1984), 
(126, 'Charlize Theron', 1975),
(127, 'Bong Joon-ho', 1969), 
(128, 'Tood Phillips',  1970),
(129, 'Sam Mendes', 1965),
(130, 'Riz Ahmed', 1982),
(131, 'Chadwick Boseman', 1976),
(132, 'Steven Yeun', 1983),
(133, 'Andra Day', 1984),
(134, 'Vanessa Kirby', 1988),
(135, 'Chloe Zhao', 1982), 
(136, 'Thomas Vinterberg', 1969),
(137, 'Sandra Huller', 1978),
(138, 'Lee Isaac Chung', 1978),
(139, 'Emerald Fennell', 1985),
(140, 'Will Smith', 1968),
(141, 'Justine Triet', 1978),
(142, 'Penelope Cruz', 1974),
(143, 'Kristen Stewart', 1990),
(144, 'Jane Campion', 1954),
(145, 'Kenneth Branagh', 1960),
(146, 'Ryusuke Hamaguchi', 1978),
(147, 'Jonathan Glazer', 1965),
(148, 'Brendan Fraser', 1968),
(149, 'Austin Butler', 1991),
(150, 'Colin Farrell', 1976), 
(151, 'Paul Mescal', 1996),
(152, 'Bill Nighy', 1949), 
(153, 'Michelle Yeoh', 1962),
(154, 'Ana De Armas', 1988),
(155, 'Andrea Riseborough', 1981),
(156, 'Daniel Kwan and Daniel Scheinert', 1988),
(157, 'Martin McDonagh', 1970),
(158, 'Todd Field', 1964),
(159, 'Ruben Ostlund', 1974),
(160, 'Cillian Murphy', 1976),
(161, 'Colman Domingo', 1969),
(162, 'Paul Giamatti', 1967),
(163, 'Jeffrey Wright', 1965),
(164, 'Lily Gladstone', 1986);

SELECT person_name FROM People
WHERE birth_year >= 1990;

INSERT INTO Winners
(person_id, category_id, year_id, movie_id) VALUES 
((SELECT person_id FROM People WHERE person_name = 'Jeff Bridges'),
(SELECT category_id FROM Categories WHERE category_name = 'Best Actor'),
(SELECT year_id FROM Years WHERE ceremony_year = '2010'),
(SELECT movie_id FROM Movies WHERE title = 'Crazy Heart')),

((SELECT person_id FROM People WHERE person_name = 'Sandra Bullock'),
(SELECT category_id FROM Categories WHERE category_name = 'Best Actress'),
(SELECT year_id FROM Years WHERE ceremony_year = '2010'),
(SELECT movie_id FROM Movies WHERE title = 'The Blind Side')),

((SELECT person_id FROM People WHERE person_name = 'Kathryn Bigelow'),
(SELECT category_id FROM Categories WHERE category_name = 'Best Director'),
(SELECT year_id FROM Years WHERE ceremony_year = '2010'),
(SELECT movie_id FROM Movies WHERE title = 'The Hurt Locker')),

((SELECT person_id FROM People WHERE person_name = 'Colin Firth'),
(SELECT category_id FROM Categories WHERE category_name = 'Best Actor'),
(SELECT year_id FROM Years WHERE ceremony_year = '2011'),
(SELECT movie_id FROM Movies WHERE title = 'The King''s Speech')),

((SELECT person_id FROM People WHERE person_name = 'Natalie Portman'),
(SELECT category_id FROM Categories WHERE category_name = 'Best Actress'),
(SELECT year_id FROM Years WHERE ceremony_year = '2011'),
(SELECT movie_id FROM Movies WHERE title = 'Black Swan')),

((SELECT person_id FROM People WHERE person_name = 'Tom Hooper'),
(SELECT category_id FROM Categories WHERE category_name = 'Best Director'),
(SELECT year_id FROM Years WHERE ceremony_year = '2011'),
(SELECT movie_id FROM Movies WHERE title = 'The King''s Speech')),

((SELECT person_id FROM People WHERE person_name = 'Jean Dujardin'),
(SELECT category_id FROM Categories WHERE category_name = 'Best Actor'),
(SELECT year_id FROM Years WHERE ceremony_year = '2012'),
(SELECT movie_id FROM Movies WHERE title = 'The Artist')),

((SELECT person_id FROM People WHERE person_name = 'Meryl Streep'),
(SELECT category_id FROM Categories WHERE category_name = 'Best Actress'),
(SELECT year_id FROM Years WHERE ceremony_year = '2012'),
(SELECT movie_id FROM Movies WHERE title = 'The Iron Lady')),

((SELECT person_id FROM People WHERE person_name = 'Michael Hazanavicius'),
(SELECT category_id FROM Categories WHERE category_name = 'Best Director'),
(SELECT year_id FROM Years WHERE ceremony_year = '2012'),
(SELECT movie_id FROM Movies WHERE title = 'The Artist')),

((SELECT person_id FROM People WHERE person_name = 'Daniel Day-Lewis'),
(SELECT category_id FROM Categories WHERE category_name = 'Best Actor'),
(SELECT year_id FROM Years WHERE ceremony_year = '2013'),
(SELECT movie_id FROM Movies WHERE title = 'Lincoln')),

((SELECT person_id FROM People WHERE person_name = 'Jennifer Lawrence'),
(SELECT category_id FROM Categories WHERE category_name = 'Best Actress'),
(SELECT year_id FROM Years WHERE ceremony_year = '2013'),
(SELECT movie_id FROM Movies WHERE title = 'Silver Linings Playbook')),

((SELECT person_id FROM People WHERE person_name = 'Ang Lee'),
(SELECT category_id FROM Categories WHERE category_name = 'Best Director'),
(SELECT year_id FROM Years WHERE ceremony_year = '2013'),
(SELECT movie_id FROM Movies WHERE title = 'Life of Pi')),

((SELECT person_id FROM People WHERE person_name = 'Matthew McConaughey'),
(SELECT category_id FROM Categories WHERE category_name = 'Best Actor'),
(SELECT year_id FROM Years WHERE ceremony_year = '2014'),
(SELECT movie_id FROM Movies WHERE title = 'Dallas Buyers Club')),

((SELECT person_id FROM People WHERE person_name = 'Cate Blanchett'),
(SELECT category_id FROM Categories WHERE category_name = 'Best Actress'),
(SELECT year_id FROM Years WHERE ceremony_year = '2014'),
(SELECT movie_id FROM Movies WHERE title = 'Blue Jasmine')),

((SELECT person_id FROM People WHERE person_name = 'Alfonso Cuaron'),
(SELECT category_id FROM Categories WHERE category_name = 'Best Director'),
(SELECT year_id FROM Years WHERE ceremony_year = '2014'),
(SELECT movie_id FROM Movies WHERE title = 'Gravity')),

((SELECT person_id FROM People WHERE person_name = 'Eddie Redmayne'),
(SELECT category_id FROM Categories WHERE category_name = 'Best Actor'),
(SELECT year_id FROM Years WHERE ceremony_year = '2015'),
(SELECT movie_id FROM Movies WHERE title = 'The Theory of Everything')),

((SELECT person_id FROM People WHERE person_name = 'Julianne Moore'),
(SELECT category_id FROM Categories WHERE category_name = 'Best Actress'),
(SELECT year_id FROM Years WHERE ceremony_year = '2015'),
(SELECT movie_id FROM Movies WHERE title = 'Still Alice')),

((SELECT person_id FROM People WHERE person_name = 'Alejandro G.Inarritu'),
(SELECT category_id FROM Categories WHERE category_name = 'Best Director'),
(SELECT year_id FROM Years WHERE ceremony_year = '2015'),
(SELECT movie_id FROM Movies WHERE title = 'Birdman')),

((SELECT person_id FROM People WHERE person_name = 'Leonardo DiCaprio'),
(SELECT category_id FROM Categories WHERE category_name = 'Best Actor'),
(SELECT year_id FROM Years WHERE ceremony_year = '2016'),
(SELECT movie_id FROM Movies WHERE title = 'The Revenant')),

((SELECT person_id FROM People WHERE person_name = 'Brie Larson'),
(SELECT category_id FROM Categories WHERE category_name = 'Best Actress'),
(SELECT year_id FROM Years WHERE ceremony_year = '2016'),
(SELECT movie_id FROM Movies WHERE title = 'Room')),

((SELECT person_id FROM People WHERE person_name = 'Alejandro G.Inarritu'),
(SELECT category_id FROM Categories WHERE category_name = 'Best Director'),
(SELECT year_id FROM Years WHERE ceremony_year = '2016'),
(SELECT movie_id FROM Movies WHERE title = 'The Revenant')),

((SELECT person_id FROM People WHERE person_name = 'Casey Affleck'),
(SELECT category_id FROM Categories WHERE category_name = 'Best Actor'),
(SELECT year_id FROM Years WHERE ceremony_year = '2017'),
(SELECT movie_id FROM Movies WHERE title = 'Manchester by the Sea')),

((SELECT person_id FROM People WHERE person_name = 'Emma Stone'),
(SELECT category_id FROM Categories WHERE category_name = 'Best Actress'),
(SELECT year_id FROM Years WHERE ceremony_year = '2017'),
(SELECT movie_id FROM Movies WHERE title = 'La La Land')),

((SELECT person_id FROM People WHERE person_name = 'Damien Chazelle'),
(SELECT category_id FROM Categories WHERE category_name = 'Best Director'),
(SELECT year_id FROM Years WHERE ceremony_year = '2017'),
(SELECT movie_id FROM Movies WHERE title = 'La La Land')),

((SELECT person_id FROM People WHERE person_name = 'Gary Oldman'),
(SELECT category_id FROM Categories WHERE category_name = 'Best Actor'),
(SELECT year_id FROM Years WHERE ceremony_year = '2018'),
(SELECT movie_id FROM Movies WHERE title = 'Darkest Hour')),

((SELECT person_id FROM People WHERE person_name = 'Frances McDormand'),
(SELECT category_id FROM Categories WHERE category_name = 'Best Actress'),
(SELECT year_id FROM Years WHERE ceremony_year = '2018'),
(SELECT movie_id FROM Movies WHERE title = 'Three Billboards outside Ebbing, Missouri')),

((SELECT person_id FROM People WHERE person_name = 'Guillermo del Toro'),
(SELECT category_id FROM Categories WHERE category_name = 'Best Director'),
(SELECT year_id FROM Years WHERE ceremony_year = '2018'),
(SELECT movie_id FROM Movies WHERE title = 'The Shape of Water')),

((SELECT person_id FROM People WHERE person_name = 'Rami Malek'),
(SELECT category_id FROM Categories WHERE category_name = 'Best Actor'),
(SELECT year_id FROM Years WHERE ceremony_year = '2019'),
(SELECT movie_id FROM Movies WHERE title = 'Bohemian Rhapsody')),

((SELECT person_id FROM People WHERE person_name = 'Olivia Colman'),
(SELECT category_id FROM Categories WHERE category_name = 'Best Actress'),
(SELECT year_id FROM Years WHERE ceremony_year = '2019'),
(SELECT movie_id FROM Movies WHERE title = 'The Favourite')),

((SELECT person_id FROM People WHERE person_name = 'Alfonso Cuaron'),
(SELECT category_id FROM Categories WHERE category_name = 'Best Director'),
(SELECT year_id FROM Years WHERE ceremony_year = '2019'),
(SELECT movie_id FROM Movies WHERE title = 'Roma')),

((SELECT person_id FROM People WHERE person_name = 'Joaquin Phoenix'),
(SELECT category_id FROM Categories WHERE category_name = 'Best Actor'),
(SELECT year_id FROM Years WHERE ceremony_year = '2020'),
(SELECT movie_id FROM Movies WHERE title = 'Joker')),

((SELECT person_id FROM People WHERE person_name = 'Renee Zellweger'),
(SELECT category_id FROM Categories WHERE category_name = 'Best Actress'),
(SELECT year_id FROM Years WHERE ceremony_year = '2020'),
(SELECT movie_id FROM Movies WHERE title = 'Judy')),

((SELECT person_id FROM People WHERE person_name = 'Bong Joon-ho'),
(SELECT category_id FROM Categories WHERE category_name = 'Best Director'),
(SELECT year_id FROM Years WHERE ceremony_year = '2020'),
(SELECT movie_id FROM Movies WHERE title = 'Parasite')),

((SELECT person_id FROM People WHERE person_name = 'Anthony Hopkins'),
(SELECT category_id FROM Categories WHERE category_name = 'Best Actor'),
(SELECT year_id FROM Years WHERE ceremony_year = '2021'),
(SELECT movie_id FROM Movies WHERE title = 'The Father')),

((SELECT person_id FROM People WHERE person_name = 'Frances McDormand'),
(SELECT category_id FROM Categories WHERE category_name = 'Best Actress'),
(SELECT year_id FROM Years WHERE ceremony_year = '2021'),
(SELECT movie_id FROM Movies WHERE title = 'Nomadland')),

((SELECT person_id FROM People WHERE person_name = 'Chloe Zhao'),
(SELECT category_id FROM Categories WHERE category_name = 'Best Director'),
(SELECT year_id FROM Years WHERE ceremony_year = '2021'),
(SELECT movie_id FROM Movies WHERE title = 'Nomadland')),

((SELECT person_id FROM People WHERE person_name = 'Will Smith'),
(SELECT category_id FROM Categories WHERE category_name = 'Best Actor'),
(SELECT year_id FROM Years WHERE ceremony_year = '2022'),
(SELECT movie_id FROM Movies WHERE title = 'King Richard')),

((SELECT person_id FROM People WHERE person_name = 'Jessica Chastain'),
(SELECT category_id FROM Categories WHERE category_name = 'Best Actress'),
(SELECT year_id FROM Years WHERE ceremony_year = '2022'),
(SELECT movie_id FROM Movies WHERE title = 'The Eyes of Tammy Faye')),

((SELECT person_id FROM People WHERE person_name = 'Jane Campion'),
(SELECT category_id FROM Categories WHERE category_name = 'Best Director'),
(SELECT year_id FROM Years WHERE ceremony_year = '2022'),
(SELECT movie_id FROM Movies WHERE title = 'The Power of the Dog')),

((SELECT person_id FROM People WHERE person_name = 'Brendan Fraser'),
(SELECT category_id FROM Categories WHERE category_name = 'Best Actor'),
(SELECT year_id FROM Years WHERE ceremony_year = '2023'),
(SELECT movie_id FROM Movies WHERE title = 'The Whale')),

((SELECT person_id FROM People WHERE person_name = 'Michelle Yeoh'),
(SELECT category_id FROM Categories WHERE category_name = 'Best Actress'),
(SELECT year_id FROM Years WHERE ceremony_year = '2023'),
(SELECT movie_id FROM Movies WHERE title = 'Everything Everywhere All at Once')),

((SELECT person_id FROM People WHERE person_name = 'Daniel Kwan and Daniel Scheinert'),
(SELECT category_id FROM Categories WHERE category_name = 'Best Director'),
(SELECT year_id FROM Years WHERE ceremony_year = '2023'),
(SELECT movie_id FROM Movies WHERE title = 'Everything Everywhere All at Once')),

((SELECT person_id FROM People WHERE person_name = 'Cillian Murphy'),
(SELECT category_id FROM Categories WHERE category_name = 'Best Actor'),
(SELECT year_id FROM Years WHERE ceremony_year = '2024'),
(SELECT movie_id FROM Movies WHERE title = 'Oppenheimer')),

((SELECT person_id FROM People WHERE person_name = 'Emma Stone'),
(SELECT category_id FROM Categories WHERE category_name = 'Best Actress'),
(SELECT year_id FROM Years WHERE ceremony_year = '2024'),
(SELECT movie_id FROM Movies WHERE title = 'Poor Things')),

((SELECT person_id FROM People WHERE person_name = 'Christopher Nolan'),
(SELECT category_id FROM Categories WHERE category_name = 'Best Director'),
(SELECT year_id FROM Years WHERE ceremony_year = '2024'),
(SELECT movie_id FROM Movies WHERE title = 'Oppenheimer'));

INSERT INTO Winners 
(person_id, category_id, year_id, movie_id) VALUES 
(NULL,
(SELECT category_id FROM Categories 
WHERE category_name = 'Best Picture'),
(SELECT year_id FROM Years WHERE ceremony_year = '2010'),
(SELECT movie_id FROM Movies WHERE title = 'The Hurt Locker')),

(NULL,
(SELECT category_id FROM Categories 
WHERE category_name = 'Best Picture'),
(SELECT year_id FROM Years WHERE ceremony_year = '2011'),
(SELECT movie_id FROM Movies WHERE title = 'The King''s Speech')),

(NULL,
(SELECT category_id FROM Categories 
WHERE category_name = 'Best Picture'),
(SELECT year_id FROM Years WHERE ceremony_year = '2012'),
(SELECT movie_id FROM Movies WHERE title = 'The Artist')),

(NULL,
(SELECT category_id FROM Categories 
WHERE category_name = 'Best Picture'),
(SELECT year_id FROM Years WHERE ceremony_year = '2013'),
(SELECT movie_id FROM Movies WHERE title = 'Argo')),

(NULL,
(SELECT category_id FROM Categories 
WHERE category_name = 'Best Picture'),
(SELECT year_id FROM Years WHERE ceremony_year = '2014'),
(SELECT movie_id FROM Movies WHERE title = '12 Years a Slave')),

(NULL,
(SELECT category_id FROM Categories 
WHERE category_name = 'Best Picture'),
(SELECT year_id FROM Years WHERE ceremony_year = '2015'),
(SELECT movie_id FROM Movies WHERE title = 'Birdman')),

(NULL,
(SELECT category_id FROM Categories 
WHERE category_name = 'Best Picture'),
(SELECT year_id FROM Years WHERE ceremony_year = '2016'),
(SELECT movie_id FROM Movies WHERE title = 'Spotlight')),

(NULL,
(SELECT category_id FROM Categories 
WHERE category_name = 'Best Picture'),
(SELECT year_id FROM Years WHERE ceremony_year = '2017'),
(SELECT movie_id FROM Movies WHERE title = 'Moonlight')),

(NULL,
(SELECT category_id FROM Categories 
WHERE category_name = 'Best Picture'),
(SELECT year_id FROM Years WHERE ceremony_year = '2018'),
(SELECT movie_id FROM Movies WHERE title = 'The Shape of Water')),

(NULL,
(SELECT category_id FROM Categories 
WHERE category_name = 'Best Picture'),
(SELECT year_id FROM Years WHERE ceremony_year = '2019'),
(SELECT movie_id FROM Movies WHERE title = 'Green Book')),

(NULL,
(SELECT category_id FROM Categories 
WHERE category_name = 'Best Picture'),
(SELECT year_id FROM Years WHERE ceremony_year = '2020'),
(SELECT movie_id FROM Movies WHERE title = 'Parasite')),

(NULL,
(SELECT category_id FROM Categories 
WHERE category_name = 'Best Picture'),
(SELECT year_id FROM Years WHERE ceremony_year = '2021'),
(SELECT movie_id FROM Movies WHERE title = 'Nomadland')),

(NULL,
(SELECT category_id FROM Categories 
WHERE category_name = 'Best Picture'),
(SELECT year_id FROM Years WHERE ceremony_year = '2022'),
(SELECT movie_id FROM Movies WHERE title = 'Coda')),

(NULL,
(SELECT category_id FROM Categories 
WHERE category_name = 'Best Picture'),
(SELECT year_id FROM Years WHERE ceremony_year = '2023'),
(SELECT movie_id FROM Movies WHERE title = 'Everything Everywhere All at Once')),

(NULL,
(SELECT category_id FROM Categories 
WHERE category_name = 'Best Picture'),
(SELECT year_id FROM Years WHERE ceremony_year = '2024'),
(SELECT movie_id FROM Movies WHERE title = 'Oppenheimer'));

SELECT title
FROM Movies
WHERE movie_id IN(
SELECT movie_id
FROM Winners w 
JOIN Categories c ON w.category_id = c.category_id
WHERE c.category_name = 'Best Picture'
);

SELECT 
c.category_name AS 'Category',
y.ceremony_year AS 'Year',
m.title AS 'Movie'
FROM 
Winners w
JOIN 
Categories c ON w.category_id = c.category_id
JOIN
Years y ON w.year_id = y.year_id
JOIN
Movies m ON w.movie_id = m.movie_id
WHERE 
c.category_name = 'Best Picture';

CREATE VIEW BestPictureDirectors AS
SELECT 
bp.ceremony_year AS 'Year',
bp.title AS 'Best Picture',
d.person_name AS 'Director'
FROM
(SELECT
y.ceremony_year AS ceremony_year,
m.title AS title, 
w.movie_id AS movie_id
FROM
Winners w
JOIN
Categories c ON w.category_id = c.category_id
JOIN
Years y ON w.year_id = y.year_id
JOIN 
Movies m ON w.movie_id = m.movie_id
WHERE c.category_name = 'BEST PICTURE')
AS bp
JOIN
Winners wd ON bp.movie_id = wd.movie_id
JOIN 
Categories cd ON wd.category_id = cd.category_id
JOIN 
People d ON wd.person_id = d.person_id
WHERE
cd.category_name = 'Best Director';

SELECT * FROM BestPictureDirectors;

DELIMITER $$

CREATE PROCEDURE 
GetMoviesByCategoryAndYear(
IN categoryName VARCHAR (255),
IN awardYear VARCHAR (4)
)
BEGIN 
SELECT m.title AS 'Movie'
FROM Winners w
JOIN Categories c ON w.category_id = c.category_id
JOIN Years y ON w.year_id = y.year_id
JOIN Movies m ON w.movie_id = m.movie_id
WHERE c.category_name = categoryName AND y.ceremony_year = awardYear;
END $$

DELIMITER $$

CALL GetMoviesByCategoryAndYear ('Best Picture', '2023');

CREATE TABLE Winners_Log (
log_id INT AUTO_INCREMENT PRIMARY KEY,
winner_id INT,
category_id INT,
year_id INT, 
person_id INT,
movie_id INT, 
action_time TIMESTAMP DEFAULT 
CURRENT_TIMESTAMP
);

CREATE TRIGGER after_winner_insert
AFTER INSERT ON Winners
FOR EACH ROW
BEGIN
INSERT INTO Winners_Log (winner_id, category_id, year_id, person_id, movie_id)
VALUES (NEW.winner_id, NEW.category_id, NEW.year_id, NEW.person_id, NEW.movie_id);
END 

DELIMITER $$
CREATE FUNCTION GetMoviesCountByYear (releaseYear
VARCHAR (4))
RETURNS INT
DETERMINISTIC
BEGIN
DECLARE moviesCount INT;

SELECT COUNT(*) INTO moviesCount
FROM Movies
WHERE release_year = releaseYear;
RETURN moviesCount;
END $$
DELIMITER ;

SELECT GetMoviesCountByYear('2022') AS MoviesCount;