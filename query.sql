SELECT id, title, release_date, rating, director_id, genre_id 
    FROM movies WHERE EXTRACT(YEAR FROM release_date) = 2020;

SELECT id, first_name, last_name FROM actors WHERE first_name LIKE '%s';

SELECT title, release_date, rating FROM movies WHERE rating >= 4 AND rating <= 8
    AND EXTRACT(YEAR FROM release_date) >= 2004 AND EXTRACT(YEAR FROM release_date) <= 2010;