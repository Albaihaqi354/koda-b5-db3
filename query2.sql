SELECT  m.id, m.title, m.release_date, m.rating, d.first_name, g.name
FROM movies m
JOIN directors d ON m.director_id = d.id
JOIN genres g ON m.genre_id = g.id
LIMIT 50;

SELECT m.title, a.first_name, ma.role
FROM movies_actors ma
JOIN movies m ON ma.movie_id = m.id
JOIN actors a ON ma.actor_id = a.id;