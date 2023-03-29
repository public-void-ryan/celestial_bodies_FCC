--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    support_life boolean,
    age_in_million_years numeric(5,2),
    distance_from_earth integer,
    num_stars integer,
    is_spherical boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    support_life boolean,
    age_in_million_years numeric(5,2),
    distance_from_earth integer,
    num_stars integer,
    is_spherical boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    support_life boolean,
    age_in_million_years numeric(5,2),
    distance_from_earth integer,
    num_stars integer,
    is_spherical boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_types (
    planet_types_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    water_detected boolean
);


ALTER TABLE public.planet_types OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    support_life boolean,
    age_in_million_years numeric(5,2),
    distance_from_earth integer,
    num_stars integer,
    is_spherical boolean
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'The Andromeda galaxy is a spiral galaxy located in the constellation Andromeda. It is the closest galaxy to our Milky Way and is often visible to the naked eye.', false, 100.00, 3, 1, false);
INSERT INTO public.galaxy VALUES (2, 'Whirlpool', 'The Whirlpool galaxy is a spiral galaxy located in the constellation Canes Venatici. It is known for its distinctive spiral arms and is a popular target for amateur astronomers.', true, 700.00, 230, 100, false);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'The Triangulum galaxy is a spiral galaxy located in the constellation Triangulum. It is a smaller galaxy than our Milky Way or Andromeda, but is still visible to the naked eye.', true, 100.00, 30, 400, false);
INSERT INTO public.galaxy VALUES (4, 'Pinwheel', 'The Pinwheel galaxy is a spiral galaxy located in the constellation Ursa Major. It is named for its distinctive spiral pattern, which resembles a pinwheel.', true, 200.00, 21, 10, false);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 'The Sombrero galaxy is a spiral galaxy located in the constellation Virgo. It is known for its distinctive shape, which resembles a sombrero hat.', true, 10.00, 280, 800, false);
INSERT INTO public.galaxy VALUES (6, 'Black Eye', 'The Black Eye galaxy is a spiral galaxy located in the constellation Coma Berenices. It is named for the dark band of dust that crosses its bright center, giving it a "black eye" appearance.', true, NULL, NULL, NULL, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 1, 'Moon One', 'Description for Moon One', false, NULL, NULL, NULL, true);
INSERT INTO public.moon VALUES (2, 1, 'Moon Two', 'Description for Moon Two', false, NULL, NULL, NULL, true);
INSERT INTO public.moon VALUES (3, 2, 'Phobos', 'Description for Phobos', false, NULL, NULL, NULL, true);
INSERT INTO public.moon VALUES (4, 2, 'Deimos', 'Description for Deimos', false, NULL, NULL, NULL, true);
INSERT INTO public.moon VALUES (5, 3, 'Ganymede', 'Description for Ganymede', false, NULL, NULL, NULL, true);
INSERT INTO public.moon VALUES (6, 3, 'Europa', 'Description for Europa', false, NULL, NULL, NULL, true);
INSERT INTO public.moon VALUES (7, 3, 'Io', 'Description for Io', false, NULL, NULL, NULL, true);
INSERT INTO public.moon VALUES (8, 4, 'Triton', 'Description for Triton', false, NULL, NULL, NULL, true);
INSERT INTO public.moon VALUES (9, 4, 'Nereid', 'Description for Nereid', false, NULL, NULL, NULL, true);
INSERT INTO public.moon VALUES (10, 5, 'Miranda', 'Description for Miranda', false, NULL, NULL, NULL, true);
INSERT INTO public.moon VALUES (11, 5, 'Ariel', 'Description for Ariel', false, NULL, NULL, NULL, true);
INSERT INTO public.moon VALUES (12, 5, 'Umbriel', 'Description for Umbriel', false, NULL, NULL, NULL, true);
INSERT INTO public.moon VALUES (13, 6, 'Titan', 'Description for Titan', false, NULL, NULL, NULL, true);
INSERT INTO public.moon VALUES (14, 6, 'Rhea', 'Description for Rhea', false, NULL, NULL, NULL, true);
INSERT INTO public.moon VALUES (15, 7, 'Charon', 'Description for Charon', false, NULL, NULL, NULL, true);
INSERT INTO public.moon VALUES (16, 7, 'Nix', 'Description for Nix', false, NULL, NULL, NULL, true);
INSERT INTO public.moon VALUES (17, 7, 'Styx', 'Description for Styx', false, NULL, NULL, NULL, true);
INSERT INTO public.moon VALUES (18, 8, 'Mimas', 'Description for Mimas', false, NULL, NULL, NULL, true);
INSERT INTO public.moon VALUES (19, 8, 'Enceladus', 'Description for Enceladus', false, NULL, NULL, NULL, true);
INSERT INTO public.moon VALUES (20, 8, 'Tethys', 'Description for Tethys', false, NULL, NULL, NULL, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 'Earth', 'Description for planet 1', true, 10.00, 280, 800, false);
INSERT INTO public.planet VALUES (2, 1, 'Mars', 'Description for planet 2', false, 4.60, 78, 1, false);
INSERT INTO public.planet VALUES (3, 1, 'Venus', 'Description for planet 3', false, 4.60, 162, 1, false);
INSERT INTO public.planet VALUES (4, 2, 'Kepler-22b', 'Description for planet 4', true, 7.50, 600, 1, false);
INSERT INTO public.planet VALUES (5, 2, 'Kepler-438b', 'Description for planet 5', true, 11.20, 470, 1, false);
INSERT INTO public.planet VALUES (6, 2, 'Kepler-452b', 'Description for planet 6', true, 6.00, 1400, 1, false);
INSERT INTO public.planet VALUES (7, 3, 'Jupiter', 'Description for planet 7', false, 4.60, 390, 1, false);
INSERT INTO public.planet VALUES (8, 3, 'Saturn', 'Description for planet 8', false, 4.60, 790, 1, false);
INSERT INTO public.planet VALUES (9, 4, 'Proxima Centauri b', 'Description for planet 9', true, 4.85, 4, 1, false);
INSERT INTO public.planet VALUES (10, 4, 'TRAPPIST-1d', 'Description for planet 10', true, 7.60, 39, 1, false);
INSERT INTO public.planet VALUES (11, 5, 'Neptune', 'Description for planet 11', false, 4.60, 3, 1, false);
INSERT INTO public.planet VALUES (12, 6, 'HD 209458 b', 'Description for planet 12', false, 7.60, 153, 1, false);


--
-- Data for Name: planet_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_types VALUES (1, 'Type One', 'Description for Type One', true);
INSERT INTO public.planet_types VALUES (2, 'Type Two', 'Description for Type Two', false);
INSERT INTO public.planet_types VALUES (3, 'Type Three', 'Description for Type Three', true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 'Random star1', 'description for random star 1', true, NULL, NULL, NULL, false);
INSERT INTO public.star VALUES (2, 1, 'Random star2', 'description for random star 2', true, NULL, NULL, NULL, false);
INSERT INTO public.star VALUES (3, 2, 'Random star3', 'description for random star 3', true, NULL, NULL, NULL, false);
INSERT INTO public.star VALUES (4, 2, 'Random star4', 'description for random star 4', true, NULL, NULL, NULL, false);
INSERT INTO public.star VALUES (5, 3, 'Random star5', 'description for random star 5', true, NULL, NULL, NULL, false);
INSERT INTO public.star VALUES (6, 3, 'Random star6', 'description for random star 6', true, NULL, NULL, NULL, false);


--
-- Name: galaxy galaxy_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_description_key UNIQUE (description);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_description_key UNIQUE (description);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_description_key UNIQUE (description);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet_types planet_types_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_description_key UNIQUE (description);


--
-- Name: planet_types planet_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_pkey PRIMARY KEY (planet_types_id);


--
-- Name: star star_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_description_key UNIQUE (description);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

