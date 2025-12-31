SELECT d.first_name, d.last_name, COUNT(DISTINCT m.genre_id) AS total_genre
FROM directors d
JOIN movies m ON m.director_id = d.id
GROUP BY d.first_name, d.last_name;

SELECT a.first_name, a.last_name, COUNT(ma.role) AS total_role
FROM actors a
JOIN movies_actors ma ON ma.actor_id = a.id
GROUP BY a.first_name, a.last_name
HAVING COUNT(ma.role) > 5;

SELECT d.first_name, d.last_name, COUNT(m.id) AS total_movie
FROM directors d
JOIN movies m ON m.director_id = d.id
GROUP BY d.first_name, d.last_name
ORDER BY total_movie DESC
LIMIT 1;

SELECT EXTRACT(YEAR FROM release_date) AS tahun, COUNT(*) AS total_movie
FROM movies
GROUP BY tahun
ORDER BY total_movie DESC
LIMIT 1;

SELECT m.title, string_agg(a.first_name || ' ' || a.last_name, ', ') AS actors
FROM movies m
JOIN movies_actors ma ON ma.movie_id = m.id
JOIN actors a ON a.id = ma.actor_id
GROUP BY m.title;