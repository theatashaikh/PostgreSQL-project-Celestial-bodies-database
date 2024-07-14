-- Insert Data

INSERT INTO galaxy (name, has_life, is_spherical, age_in_millions_of_years, distance_from_earth, description)
VALUES
('Milky Way', TRUE, TRUE, 13600, 0, 'Our home galaxy'),
('Andromeda', FALSE, TRUE, 10000, 2537000, 'Closest large galaxy to the Milky Way'),
('Triangulum', FALSE, TRUE, 14000, 3000000, 'Small spiral galaxy'),
('Whirlpool', FALSE, TRUE, 4200, 23000000, 'Interacting grand-design spiral galaxy'),
('Sombrero', FALSE, TRUE, 9500, 29000000, 'Unbarred spiral galaxy in Virgo constellation'),
('Large Magellanic Cloud', FALSE, TRUE, 13600, 163000, 'Irregular galaxy'),
('Small Magellanic Cloud', FALSE, TRUE, 13500, 200000, 'Irregular dwarf galaxy');

INSERT INTO star (name, type, age_in_millions_of_years, mass, galaxy_id, brightness)
VALUES
('Sun', 'G-type', 4600, 1.00, 1, 1.00),
('Proxima Centauri', 'M-type', 4500, 0.12, 1, 0.0017),
('Sirius', 'A-type', 200, 2.02, 2, 25.4),
('Betelgeuse', 'M-type', 10000, 18.00, 1, 100000),
('Rigel', 'B-type', 8000, 21.00, 1, 120000),
('Alpha Centauri A', 'G-type', 4600, 1.10, 2, 1.52),
('Vega', 'A-type', 455, 2.10, 1, 40);

INSERT INTO planet (name, type, has_life, distance_from_star, radius_km, star_id)
VALUES
('Earth', 'Terrestrial', TRUE, 150, 6371.00, 1),
('Mars', 'Terrestrial', FALSE, 228, 3389.50, 1),
('Proxima Centauri b', 'Terrestrial', FALSE, 0.05, 7150.00, 2),
('Sirius B', 'White Dwarf', FALSE, 20, 5900.00, 3),
('Betelgeuse b', 'Gas Giant', FALSE, 50, 70000.00, 4),
('Jupiter', 'Gas Giant', FALSE, 778, 69911.00, 1),
('Saturn', 'Gas Giant', FALSE, 1430, 58232.00, 1),
('Neptune', 'Ice Giant', FALSE, 4500, 24622.00, 1),
('Alpha Centauri Bb', 'Terrestrial', FALSE, 0.04, 9200.00, 6),
('Vega b', 'Gas Giant', FALSE, 30, 60200.00, 7),
('Vega c', 'Terrestrial', FALSE, 50, 5000.00, 7),
('Whirlpool A', 'Gas Giant', FALSE, 1100, 72000.00, 5),
('Andromeda D', 'Ice Giant', FALSE, 1500, 26000.00, 3),
('Large Magellanic Alpha', 'Terrestrial', FALSE, 300, 3400.00, 6),
('Sombrero X', 'Gas Giant', FALSE, 800, 61000.00, 5);

INSERT INTO moon (name, radius_km, orbital_period_days, planet_id, surface_composition)
VALUES
('Moon', 1737.10, 27, 1, 'Rocky'),
('Phobos', 11.27, 0.3, 2, 'Rocky'),
('Deimos', 6.20, 1.3, 2, 'Rocky'),
('Proxima Centauri c', 10.00, 0.1, 3, 'Rocky'),
('Europa', 1560.80, 3.5, 6, 'Icy'),
('Ganymede', 2634.10, 7.2, 6, 'Icy'),
('Callisto', 2410.30, 16.7, 6, 'Icy'),
('Io', 1821.60, 1.8, 6, 'Volcanic'),
('Titan', 2574.70, 15.9, 7, 'Icy'),
('Enceladus', 252.10, 1.4, 7, 'Icy'),
('Rhea', 763.80, 4.5, 7, 'Icy'),
('Dione', 561.50, 2.7, 7, 'Icy'),
('Triton', 1353.40, 5.9, 8, 'Icy'),
('Nereid', 170.00, 360.1, 8, 'Rocky'),
('Proteus', 210.00, 1.1, 8, 'Icy'),
('Larissa', 97.00, 0.6, 8, 'Rocky'),
('Miranda', 235.80, 1.4, 9, 'Icy'),
('Oberon', 761.40, 13.5, 9, 'Icy'),
('Umbriel', 584.70, 4.1, 9, 'Icy'),
('Titania', 788.90, 8.7, 9, 'Icy'),
('Phoebe', 106.50, 550.3, 10, 'Rocky'),
('Hyperion', 135.00, 21.3, 10, 'Rocky'),
('Mimas', 198.20, 0.9, 10, 'Icy');

INSERT INTO observation (name, planet_id, date, details)
VALUES
('Mars Rover Landing', 2, '2024-07-14', 'The rover landed successfully on Mars.'),
('Jupiter Flyby', 6, '2023-10-18', 'The spacecraft performed a flyby of Jupiter.'),
('Neptune Atmosphere Study', 8, '2022-05-05', 'Atmospheric composition study conducted.'),
('Alpha Centauri Bb Detection', 9, '2021-12-10', 'Detected the presence of Alpha Centauri Bb.'),
('Europa Ice Analysis', 6, '2020-07-20', 'Analyzed the ice composition on Europa.');