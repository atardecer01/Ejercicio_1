-- Database: mande_db

-- DROP DATABASE mande_db;

CREATE DATABASE mande_db
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'C'
    LC_CTYPE = 'C'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    TEMPLATE template0;

\c mande_db

CREATE TABLE usuario(
	id_usuario SERIAL PRIMARY KEY,
	nombre_usuario VARCHAR(60) UNIQUE,
	password VARCHAR(60) CHECK (length(password) > 3),
	premium BOOLEAN DEFAULT FALSE
);

CREATE TABLE Toy(
	TID SERIAL PRIMARY KEY,
	names VARCHAR(60),
	color VARCHAR(60),
	pet_id INTEGER,
    FOREIGN KEY(pet_id) REFERENCES Pet(PID)
);

CREATE TABLE Pet(
	PID SERIAL PRIMARY KEY,
	pet_name VARCHAR(60),
	age INTEGER,
	tipe_id INTEGER,
    FOREIGN KEY(tipe_id) REFERENCES Tipe(tyID)
);


CREATE TABLE Tipe(
	tyID SERIAL PRIMARY KEY,
	tipe VARCHAR(60),
	breed VARCHAR(60),
	descriptions VARCHAR(60)
);