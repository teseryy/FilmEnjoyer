DROP SCHEMA public CASCADE;
CREATE SCHEMA public;

CREATE SEQUENCE IF NOT EXISTS actor_seq START WITH 1 INCREMENT BY 50;
CREATE SEQUENCE IF NOT EXISTS film_seq START WITH 1 INCREMENT BY 50;
CREATE SEQUENCE IF NOT EXISTS review_seq START WITH 1 INCREMENT BY 50;

CREATE TABLE actor (
                       date_of_birth TIMESTAMP(6),
                       id_actor BIGINT NOT NULL,
                       name VARCHAR(255),
                       surname VARCHAR(255),
                       PRIMARY KEY (id_actor)
);

CREATE TABLE film (
                      budget INTEGER,
                      duration INTEGER,
                      date_of_release TIMESTAMP(6),
                      id_film BIGINT NOT NULL,
                      country VARCHAR(255),
                      director VARCHAR(255),
                      title VARCHAR(255),
                      PRIMARY KEY (id_film)
);

CREATE TABLE filming (
                         id_actor BIGINT NOT NULL,
                         id_film BIGINT NOT NULL
);

CREATE TABLE review (
                        rating INTEGER CHECK (rating <= 10),
                        date TIMESTAMP(6),
                        id_film BIGINT,
                        id_review BIGINT NOT NULL,
                        review_text VARCHAR(255),
                        username VARCHAR(255),
                        PRIMARY KEY (id_review)
);

CREATE TABLE users (
                       name VARCHAR(255),
                       surname VARCHAR(255),
                       username VARCHAR(255) NOT NULL,
                       PRIMARY KEY (username)
);

ALTER TABLE IF EXISTS filming ADD CONSTRAINT FKnumo37h6jsr24b4billqb53jt FOREIGN KEY (id_film) REFERENCES actor;
ALTER TABLE IF EXISTS filming ADD CONSTRAINT FKm9ds468ocujmjthuo7m7e47kk FOREIGN KEY (id_actor) REFERENCES film;
ALTER TABLE IF EXISTS review ADD CONSTRAINT FKeicufb5lxs6xvenedw65xamc5 FOREIGN KEY (username) REFERENCES users;
ALTER TABLE IF EXISTS review ADD CONSTRAINT FK3mrxcpe6vl7k2a08asms4bpdd FOREIGN KEY (id_film) REFERENCES film;