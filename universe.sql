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
    name character varying(40) NOT NULL,
    regular_structure boolean,
    description text,
    distance_from_earth text,
    how_old_they_are integer,
    presence_of_life boolean,
    year_of_discovery integer,
    radius numeric(10,2)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id numeric NOT NULL,
    name character varying(40) NOT NULL,
    description text,
    distance_from_earth text,
    how_old_they_are integer,
    presence_of_life boolean,
    year_of_discovery integer,
    radius numeric(10,2),
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id numeric NOT NULL,
    name character varying(40) NOT NULL,
    gas_giant boolean,
    description text,
    distance_from_earth text,
    how_old_they_are integer,
    presence_of_life boolean,
    year_of_discovery integer,
    radius numeric(10,2),
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: pulsar; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.pulsar (
    pulsar_id numeric NOT NULL,
    name character varying(40) NOT NULL,
    description text,
    distance_from_earth text,
    how_old_they_are integer,
    presence_of_life boolean,
    year_of_discovery integer,
    radius numeric(10,2)
);


ALTER TABLE public.pulsar OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id numeric NOT NULL,
    name character varying(40) NOT NULL,
    goes_supernova boolean,
    description text,
    distance_from_earth text,
    how_old_they_are integer,
    presence_of_life boolean,
    year_of_discovery integer,
    radius numeric(10,2),
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Galaxy1', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Galaxy2', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Galaxy3', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Galaxy4', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Galaxy5', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Galaxy6', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'Galaxy7', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (8, 'Galaxy8', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (9, 'Galaxy9', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (10, 'Galaxy10', NULL, NULL, NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'moon2', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'moon3', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'moon4', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'moon5', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'moon6', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'moon7', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'moon8', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'moon9', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'moon10', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'moon11', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'moon12', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'moon13', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'moon14', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'moon15', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'moon16', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'moon17', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'moon18', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'moon19', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'moon20', NULL, NULL, NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'planet2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'planet3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'planet4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'planet5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'planet6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'planet7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'planet8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'planet9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'planet10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'planet11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'planet12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: pulsar; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.pulsar VALUES (1, 'pulsar1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.pulsar VALUES (2, 'pulsar2', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.pulsar VALUES (3, 'pulsar3', NULL, NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Star1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (2, 'Star2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (3, 'Star3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (4, 'Star4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (5, 'Star5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (6, 'Star6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (7, 'Star7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (8, 'Star8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (9, 'Star9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (10, 'Star10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 10, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: pulsar pulsar_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.pulsar
    ADD CONSTRAINT pulsar_name_key UNIQUE (name);


--
-- Name: pulsar pulsar_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.pulsar
    ADD CONSTRAINT pulsar_pkey PRIMARY KEY (pulsar_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


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
