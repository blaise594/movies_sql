/*list all movie titles*/
SELECT title FROM movies;
/*List the title and year of each movie in the database in DESCENDING order of the year released.*/
SELECT title, year_released FROM movies ORDER BY year_released Desc;
/*List all columns for all records of the directors table in ASCENDING alphabetical order based on the director’s country of origin.*/
SELECT * FROM directors ORDER BY country ASC;
/* List all columns for all records of the directors table in ASCENDING alphabetical order first by the director’s country of origin and then by the director’s last name*/
SELECT * FROM directors ORDER BY country, last_name ASC;
/*Insert a new record into the directors table for Rob Reiner, an American film director.*/
INSERT INTO directors (first_name, last_name, country) VALUES ("Rob", "Reiner", "USA");
/*Combine the SELECT and WHERE keywords to list the last_name and director_id for Rob Reiner.*/
SELECT last_name, director_id FROM directors WHERE first_name="Rob" AND last_name="Reiner";
/*Insert a new record into the movies table for The Princess Bride, which was released in 1987 and directed by Rob Reiner.*/
INSERT INTO movies (title, year_released, director_id) VALUES ("The Princess Bride", 1987, 11);
/*Use an INNER JOIN in your SQL command to display a list of movie titles, years released, and director last names.*/
SELECT title, year_released, last_name FROM movies INNER JOIN directors ON movies.director_id=directors.director_id;
/*List all the movies in the database along with the first and last name of the director. Order the list alphabetically by the director’s last name.*/
SELECT title, first_name, last_name FROM movies INNER JOIN directors ON movies.director_id=directors.director_id ORDER BY last_name ASC;
/*List the first and last name for the director of The Incredibles. You can do this with either a join or a WHERE command, but for this step please use WHERE.*/
SELECT first_name, last_name FROM movies, directors WHERE title="The Incredibles" AND movies.director_id=directors.director_id;
/*List the last name and country of origin for the director of Roma. You can do this with either a join or a WHERE command, but for this step please use a join.*/
SELECT last_name, country FROM directors INNER JOIN movies ON directors.director_id=movies.director_id AND movies.title="Roma";
/* delete a row from the movies table*/
DELETE FROM movies WHERE movie_id = 17;
/*list all movies to see the effect*/
SELECT * FROM movies;
/*list all directors to see effect*/
SELECT * FROM directors;
/*try to delete form directors (will cause error)*/
DELETE FROM directors WHERE director_id=1;
/*SQL aliases give a table/column a temporary name. Assign aliases in at least 3 of the items above to make the columns names different and/or more readable in the output.*/
SELECT title AS Title, year_released AS "Release Year", last_name AS "Directed By" FROM movies INNER JOIN directors ON movies.director_id=directors.director_id;
/*List all of the movies in the database directed by Peter Jackson.*/
SELECT * FROM movies INNER JOIN directors ON movies.director_id=directors.director_id AND last_name="Jackson" AND first_name="Peter";
/*add another column for revenue made by each film*/
ALTER TABLE movies ADD revenue INTEGER;
/*use UPDATE to change revenue values*/
UPDATE movies SET revenue=670000000 WHERE movie_id=1;
UPDATE movies SET revenue=770000000 WHERE movie_id=2;
UPDATE movies SET revenue=670000001 WHERE movie_id=3;
UPDATE movies SET revenue=670000003 WHERE movie_id=4;
UPDATE movies SET revenue=670000060 WHERE movie_id=5;
UPDATE movies SET revenue=670000009 WHERE movie_id=6;
UPDATE movies SET revenue=670000000 WHERE movie_id=7;
UPDATE movies SET revenue=670000011 WHERE movie_id=8;
UPDATE movies SET revenue=67000000 WHERE movie_id=9;
UPDATE movies SET revenue=77000000 WHERE movie_id=10;
UPDATE movies SET revenue=60000001 WHERE movie_id=11;
UPDATE movies SET revenue=67000003 WHERE movie_id=12;
UPDATE movies SET revenue=67000060 WHERE movie_id=13;
UPDATE movies SET revenue=67000009 WHERE movie_id=14;
UPDATE movies SET revenue=67000000 WHERE movie_id=15;
UPDATE movies SET revenue=67000011 WHERE movie_id=16;
/*order movies by revenue earned in desc order */
SELECT * FROM movies ORDER BY revenue DESC;
/*Generate a list that only shows films that earned above (or below) a certain amount*/
SELECT * FROM movies WHERE revenue > 67000000 AND revenue < 670000000;