-- Create Tables

CREATE TABLE galaxy (
    galaxy_id SERIAL PRIMARY KEY,
    name VARCHAR(255) UNIQUE NOT NULL,
    has_life BOOLEAN,
    is_spherical BOOLEAN,
    age_in_millions_of_years INT,
    distance_from_earth INT,
    description TEXT
);

CREATE TABLE star (
    star_id SERIAL PRIMARY KEY,
    name VARCHAR(255) UNIQUE NOT NULL,
    type VARCHAR(50),
    age_in_millions_of_years INT,
    mass NUMERIC(10, 2),
    galaxy_id INT REFERENCES galaxy(galaxy_id),
    brightness FLOAT
);

CREATE TABLE planet (
    planet_id SERIAL PRIMARY KEY,
    name VARCHAR(255) UNIQUE NOT NULL,
    type VARCHAR(50),
    has_life BOOLEAN,
    distance_from_star INT,
    radius_km NUMERIC(10, 2),
    star_id INT REFERENCES star(star_id)
);

CREATE TABLE moon (
    moon_id SERIAL PRIMARY KEY,
    name VARCHAR(255) UNIQUE NOT NULL,
    radius_km NUMERIC(10, 2),
    orbital_period_days INT,
    planet_id INT REFERENCES planet(planet_id),
    surface_composition TEXT
);

CREATE TABLE observation (
    observation_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    planet_id INT REFERENCES planet(planet_id),
    date DATE,
    details TEXT
);
