USE MOVIES;
DROP TABLE IF EXISTS MOVIES;
CREATE TABLE MOVIES (
    movie_id INT PRIMARY KEY,
    title VARCHAR(255),
    release_year INT,
    genre VARCHAR(100),
    director VARCHAR(255),
    lead_actor VARCHAR(255)
);
INSERT INTO MOVIES (movie_id, title, release_year, genre, director, lead_actor)
VALUES
(1, 'Temper', 2015, 'Action', 'Puri Jagannadh', 'N. T. Rama Rao Jr.'),
(2, 'Naa Autograph', 2004, 'Romance', 'S. Gopal Reddy', 'Ravi Teja'),
(3, 'Student No.1', 2001, 'Drama', 'S. S. Rajamouli', 'N. T. Rama Rao Jr.'),
(4, 'RRR', 2022, 'Action', 'S. S. Rajamouli', 'N. T. Rama Rao Jr.'),
(5, 'Aravinda Sametha Veera Raghava', 2018, 'Action', 'Trivikram Srinivas', 'N. T. Rama Rao Jr.'),
(6, 'Arjun Reddy', 2017, 'Romance', 'Sandeep Reddy Vanga', 'Vijay Deverakonda'),
(7, 'Eega', 2012, 'Fantasy', 'S. S. Rajamouli', 'Nani'),
(8, 'Sarileru Neekevvaru', 2020, 'Action', 'Anil Ravipudi', 'Mahesh Babu'),
(9, 'Jersey', 2019, 'Sports Drama', 'Gowtam Tinnanuri', 'Nani'),
(10, 'Devara', 2024, 'Action', 'Koratala Siva', 'N. T. Rama Rao Jr.');
SELECT * FROM MOVIES
WHERE lead_actor = 'N. T. Rama Rao Jr.';
SELECT DISTINCT genre FROM MOVIES;
SELECT * FROM MOVIES
ORDER BY release_year ASC;
SELECT * FROM MOVIES
ORDER BY release_year DESC
LIMIT 3;
SELECT * FROM MOVIES
WHERE release_year BETWEEN 2015 AND 2020;
SELECT * FROM MOVIES
WHERE lead_actor IS NULL;
SELECT * FROM MOVIES
WHERE lead_actor IS NOT NULL;
SELECT COUNT(*) AS total_movies FROM MOVIES;
SELECT  Max(release_year) AS Oldest_movie_year FROM MOVIES;
CREATE TABLE hero (
    actor_age INT,
    name VARCHAR(255),
    birth_year INT
);
INSERT INTO hero (name, actor_age, birth_year) VALUES
('N. T. Rama Rao Jr.', 40, 1983),
('Mahesh Babu', 48, 1975),
('Vijay Deverakonda', 35, 1989),
('Ravi Teja', 56, 1968),
('Nani', 40, 1984);
SELECT 
    MOVIES.title,
    MOVIES.release_year,
    MOVIES.lead_actor,
    hero.actor_age,
    hero.birth_year
FROM MOVIES
JOIN hero
ON MOVIES.lead_actor = hero.name
WHERE hero.actor_age > 40;
SELECT 
    MOVIES.title,
    MOVIES.release_year,
    MOVIES.lead_actor,
    hero.actor_age
FROM MOVIES
JOIN hero
ON MOVIES.lead_actor = hero.name
WHERE MOVIES.release_year BETWEEN 2010 AND 2020;
SELECT 
    MOVIES.title,
    MOVIES.release_year,
    MOVIES.lead_actor,
    hero.actor_age,
    hero.birth_year
FROM MOVIES
JOIN hero
ON MOVIES.lead_actor = hero.name
WHERE 
    MOVIES.release_year BETWEEN 2010 AND 2022
    AND hero.actor_age <= 40
ORDER BY 
    MOVIES.release_year DESC;
   SELECT title, release_year, COUNT(*) AS count
FROM MOVIES
GROUP BY title, release_year
HAVING COUNT(*) > 1;










