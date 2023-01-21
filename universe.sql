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
    name character varying,
    galaxy_id integer NOT NULL,
    galaxy_types text,
    age_in_millions_of_years integer NOT NULL,
    description text,
    is_spherical boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: meta; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.meta (
    meta_id integer NOT NULL,
    dimensions integer NOT NULL,
    common_name character varying(30),
    description character varying(30),
    unique_id integer,
    numeros numeric,
    name character varying,
    ufo_contact character varying(40)
);


ALTER TABLE public.meta OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying,
    is_rotating boolean NOT NULL,
    is_rocks boolean,
    is_my_boss boolean,
    moon_id integer NOT NULL,
    galaxy_id integer,
    ufo_contact character varying(40)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying,
    is_water boolean NOT NULL,
    is_people boolean,
    is_my_boss boolean,
    planet_id integer NOT NULL,
    galaxy_id integer,
    ufo_contact character varying(40)
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying,
    star_type character varying,
    description text,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth integer NOT NULL,
    is_stable boolean,
    star_id integer NOT NULL,
    galaxy_id integer,
    ufo_contact character varying(30)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('HEK1', 1, 'Cell', 230, 'Nothi special', true);
INSERT INTO public.galaxy VALUES ('HEK2', 2, 'Cell', 230, 'Nothi special', true);
INSERT INTO public.galaxy VALUES ('HEK3', 3, 'Neuron', 666, 'Pyramidal cell', false);
INSERT INTO public.galaxy VALUES ('HEK4', 4, 'Astrocyte', 800, 'NeurogliaForm', false);
INSERT INTO public.galaxy VALUES ('HEK5', 5, 'Basket Cell', 80, 'fast-spiking', true);
INSERT INTO public.galaxy VALUES ('HEK6', 6, 'VIP', 188, 'CA1 Oriens/Radiatum', false);


--
-- Data for Name: meta; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.meta VALUES (1, 2, 'Loco', 'Quite funny', 1, NULL, NULL, NULL);
INSERT INTO public.meta VALUES (2, 11, 'Locox', ' funny', 2, NULL, NULL, NULL);
INSERT INTO public.meta VALUES (3, 15, 'Shiny', ' ice', 3, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('L-655,708', true, NULL, NULL, 1, NULL, NULL);
INSERT INTO public.moon VALUES ('Etomidate', true, NULL, NULL, 2, NULL, NULL);
INSERT INTO public.moon VALUES ('Picrotoxin', true, NULL, NULL, 3, NULL, NULL);
INSERT INTO public.moon VALUES ('THIP', true, NULL, NULL, 4, NULL, NULL);
INSERT INTO public.moon VALUES ('Gaboxadol', false, NULL, NULL, 5, NULL, NULL);
INSERT INTO public.moon VALUES ('TTX', true, NULL, NULL, 6, NULL, NULL);
INSERT INTO public.moon VALUES ('DNQX', true, NULL, NULL, 7, NULL, NULL);
INSERT INTO public.moon VALUES ('Ca=55', true, NULL, NULL, 8, NULL, NULL);
INSERT INTO public.moon VALUES ('Ca=65', true, NULL, NULL, 9, NULL, NULL);
INSERT INTO public.moon VALUES ('Calciumm', false, NULL, NULL, 10, NULL, NULL);
INSERT INTO public.moon VALUES ('GABA', false, NULL, NULL, 11, NULL, NULL);
INSERT INTO public.moon VALUES ('Dopamine', false, NULL, NULL, 12, NULL, NULL);
INSERT INTO public.moon VALUES ('Acetyl', false, NULL, NULL, 13, NULL, NULL);
INSERT INTO public.moon VALUES ('Acetylocholine', false, NULL, NULL, 14, NULL, NULL);
INSERT INTO public.moon VALUES ('Choline', true, NULL, NULL, 15, NULL, NULL);
INSERT INTO public.moon VALUES ('Neurox', true, NULL, NULL, 16, NULL, NULL);
INSERT INTO public.moon VALUES ('Hippo', true, NULL, NULL, 17, NULL, NULL);
INSERT INTO public.moon VALUES ('Campall', true, NULL, NULL, 18, NULL, NULL);
INSERT INTO public.moon VALUES ('Campallo', true, NULL, NULL, 19, NULL, NULL);
INSERT INTO public.moon VALUES ('Cox', true, NULL, NULL, 20, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Bearus', true, NULL, NULL, 1, NULL, NULL);
INSERT INTO public.planet VALUES ('Polande', false, NULL, NULL, 2, NULL, NULL);
INSERT INTO public.planet VALUES ('Los Angeleso', true, NULL, NULL, 3, NULL, NULL);
INSERT INTO public.planet VALUES ('Germania', true, NULL, NULL, 4, NULL, NULL);
INSERT INTO public.planet VALUES ('Russs', true, NULL, NULL, 5, NULL, NULL);
INSERT INTO public.planet VALUES ('Frans', true, NULL, NULL, 6, NULL, NULL);
INSERT INTO public.planet VALUES ('Britanix', true, NULL, NULL, 7, NULL, NULL);
INSERT INTO public.planet VALUES ('Espanoll', true, NULL, NULL, 8, NULL, NULL);
INSERT INTO public.planet VALUES ('Italio', true, NULL, NULL, 9, NULL, NULL);
INSERT INTO public.planet VALUES ('Checia', true, NULL, NULL, 10, NULL, NULL);
INSERT INTO public.planet VALUES ('Slovix', true, NULL, NULL, 11, NULL, NULL);
INSERT INTO public.planet VALUES ('Ukraneix', true, NULL, NULL, 12, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Patch1', 'Neuro5', 'A little shitty mess', 30, 500, true, 1, NULL, NULL);
INSERT INTO public.star VALUES ('Patch2', 'Neuro5', 'Nothing special', 33, 656, true, 2, NULL, NULL);
INSERT INTO public.star VALUES ('Optogenetic', 'SCH2337', 'D1/5 antagonists', 2, 200, true, 3, NULL, NULL);
INSERT INTO public.star VALUES ('Single', 'Channeling', 'Fluorescent', 6, 200, true, 4, NULL, NULL);
INSERT INTO public.star VALUES ('Macro', 'Scoping', 'Fluorescent', 66, 711, true, 5, NULL, NULL);
INSERT INTO public.star VALUES ('Joini', 'Stereotactic', 'Pandora-like star', 11, 344, true, 6, NULL, NULL);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id PRIMARY KEY (galaxy_id);


--
-- Name: meta meta_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meta
    ADD CONSTRAINT meta_pkey PRIMARY KEY (meta_id);


--
-- Name: meta meta_ufo_contact_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meta
    ADD CONSTRAINT meta_ufo_contact_key UNIQUE (ufo_contact);


--
-- Name: meta meta_unique_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meta
    ADD CONSTRAINT meta_unique_id_key UNIQUE (unique_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_ufo_contact_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_ufo_contact_key UNIQUE (ufo_contact);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_ufo_contact_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_ufo_contact_key UNIQUE (ufo_contact);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_ufo_contact_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_ufo_contact_key UNIQUE (ufo_contact);


--
-- Name: galaxy unique_code_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_code_galaxy UNIQUE (galaxy_id);


--
-- Name: moon moon_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: planet planet_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

