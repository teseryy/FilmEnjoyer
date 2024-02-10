INSERT INTO actor (date_of_birth, id_actor, name, surname)
VALUES ('1990-01-01 00:00:00', 1, 'John', 'Doe');

INSERT INTO actor (date_of_birth, id_actor, name, surname)
VALUES ('1985-05-15 00:00:00', 2, 'Jane', 'Smith');

INSERT INTO film (budget, duration, date_of_release, id_film, country, director, title)
VALUES (1000000, 120, '2023-01-01 00:00:00', 1, 'USA', 'Director A', 'Film A');

INSERT INTO film (budget, duration, date_of_release, id_film, country, director, title)
VALUES (800000, 110, '2024-03-15 00:00:00', 2, 'UK', 'Director B', 'Film B');

INSERT INTO filming (id_actor, id_film)
VALUES (1, 1);

INSERT INTO filming (id_actor, id_film)
VALUES (2, 2);

INSERT INTO users (name, surname, username)
VALUES ('Alice', 'Johnson', 'user1');

INSERT INTO users (name, surname, username)
VALUES ('Bob', 'Williams', 'user2');

INSERT INTO review (rating, date, id_film, id_review, review_text, username)
VALUES (8, '2023-01-05 00:00:00', 1, 1, 'Great movie!', 'user1');

INSERT INTO review (rating, date, id_film, id_review, review_text, username)
VALUES (9, '2024-03-20 00:00:00', 2, 2, 'Awesome film!', 'user2');
