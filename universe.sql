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
    galaxy_name character varying NOT NULL,
    distance numeric NOT NULL,
    size numeric NOT NULL,
    discovery text,
    name character varying
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
    moon_id integer NOT NULL,
    moon_name character varying NOT NULL,
    planet_name character varying NOT NULL,
    size numeric NOT NULL,
    livable boolean,
    name character varying
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
    planet_id integer NOT NULL,
    planet_name character varying NOT NULL,
    star_name character varying NOT NULL,
    size numeric NOT NULL,
    livable boolean,
    name character varying
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
-- Name: rings; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.rings (
    rings_id integer NOT NULL,
    rings_name character varying NOT NULL,
    planet_name character varying NOT NULL,
    size numeric NOT NULL,
    number integer,
    thick integer,
    name character varying
);


ALTER TABLE public.rings OWNER TO freecodecamp;

--
-- Name: rings_rings_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.rings_rings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rings_rings_id_seq OWNER TO freecodecamp;

--
-- Name: rings_rings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.rings_rings_id_seq OWNED BY public.rings.rings_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    star_name character varying NOT NULL,
    galaxy_name character varying NOT NULL,
    size numeric NOT NULL,
    livable boolean,
    name character varying
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: rings rings_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rings ALTER COLUMN rings_id SET DEFAULT nextval('public.rings_rings_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milky way', 1, 10, 'sitting on it', NULL);
INSERT INTO public.galaxy VALUES (2, 'choco stay', 2, 11, 'racing to it', NULL);
INSERT INTO public.galaxy VALUES (3, 'boco way', 3, 12, 'bocoing away', NULL);
INSERT INTO public.galaxy VALUES (4, 'roko ray', 4, 13, 'rookooing that way', NULL);
INSERT INTO public.galaxy VALUES (5, 'neva', 5, 14, 'never going there', NULL);
INSERT INTO public.galaxy VALUES (6, 'trace', 6, 15, 'tracing its outlines', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Earth', 1, true, NULL);
INSERT INTO public.moon VALUES (2, 'C-bit', 'CH', 2, true, NULL);
INSERT INTO public.moon VALUES (3, 'B-bit', 'Bowwie', 3, true, NULL);
INSERT INTO public.moon VALUES (4, 'R-bit', 'R', 4, true, NULL);
INSERT INTO public.moon VALUES (5, 'N-bit', 'Na', 5, false, NULL);
INSERT INTO public.moon VALUES (6, 'T-bit', 'Track', 6, false, NULL);
INSERT INTO public.moon VALUES (7, 'M-bit', 'Mars', 1, true, NULL);
INSERT INTO public.moon VALUES (8, 'Char-bit', 'Charon', 2, true, NULL);
INSERT INTO public.moon VALUES (9, 'Bow-bit', 'Bowoe', 3, true, NULL);
INSERT INTO public.moon VALUES (10, 'Real-bit', 'Rio', 4, true, NULL);
INSERT INTO public.moon VALUES (11, 'No-bit', 'Nah', 5, false, NULL);
INSERT INTO public.moon VALUES (12, 'Tri-bit', 'Trick', 6, false, NULL);
INSERT INTO public.moon VALUES (13, 'Null-bit', 'Na', 5, false, NULL);
INSERT INTO public.moon VALUES (14, 'Tem-bit', 'Track', 6, false, NULL);
INSERT INTO public.moon VALUES (15, 'Man-bit', 'Mars', 1, true, NULL);
INSERT INTO public.moon VALUES (16, 'Car-bit', 'Charon', 2, true, NULL);
INSERT INTO public.moon VALUES (17, 'Bit-bit', 'Bowoe', 3, true, NULL);
INSERT INTO public.moon VALUES (18, 'Real-but', 'Rio', 4, true, NULL);
INSERT INTO public.moon VALUES (19, 'Nuff-bit', 'Nah', 5, false, NULL);
INSERT INTO public.moon VALUES (20, 'Tria-bit', 'Trick', 6, false, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'Sun', 1, true, NULL);
INSERT INTO public.planet VALUES (2, 'CH', 'Cho', 2, true, NULL);
INSERT INTO public.planet VALUES (3, 'Bowwie', 'Bow', 3, true, NULL);
INSERT INTO public.planet VALUES (4, 'R', 'Ro', 4, true, NULL);
INSERT INTO public.planet VALUES (5, 'Na', 'Nev', 5, false, NULL);
INSERT INTO public.planet VALUES (6, 'Track', 'Tray', 6, false, NULL);
INSERT INTO public.planet VALUES (7, 'Mars', 'Sun', 1, true, NULL);
INSERT INTO public.planet VALUES (8, 'Charon', 'Cho', 2, true, NULL);
INSERT INTO public.planet VALUES (9, 'Bowoe', 'Bow', 3, true, NULL);
INSERT INTO public.planet VALUES (10, 'Rio', 'Ro', 4, true, NULL);
INSERT INTO public.planet VALUES (11, 'Nah', 'Nev', 5, false, NULL);
INSERT INTO public.planet VALUES (12, 'Trick', 'Tray', 6, false, NULL);


--
-- Data for Name: rings; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.rings VALUES (1, 'Phoebe', 'Bowwie', 4, 7, 10, NULL);
INSERT INTO public.rings VALUES (2, 'C-ring', 'Na', 2, 3, 8, NULL);
INSERT INTO public.rings VALUES (3, 'F-ring', 'R', 6, 7, 9, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'milky way', 1, true, NULL);
INSERT INTO public.star VALUES (2, 'Cho', 'choco stay', 2, true, NULL);
INSERT INTO public.star VALUES (3, 'Bow', 'boco way', 3, true, NULL);
INSERT INTO public.star VALUES (4, 'Ro', 'roko ray', 4, true, NULL);
INSERT INTO public.star VALUES (5, 'Nev', 'neva', 5, false, NULL);
INSERT INTO public.star VALUES (6, 'Tray', 'trace', 6, false, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: rings_rings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.rings_rings_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_name_key UNIQUE (galaxy_name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_name_key UNIQUE (moon_name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_name_key UNIQUE (planet_name);


--
-- Name: rings rings_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rings
    ADD CONSTRAINT rings_pkey PRIMARY KEY (rings_id);


--
-- Name: rings rings_rings_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rings
    ADD CONSTRAINT rings_rings_name_key UNIQUE (rings_name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_name_key UNIQUE (star_name);


--
-- Name: moon moon_planet_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_name_fkey FOREIGN KEY (planet_name) REFERENCES public.planet(planet_name);


--
-- Name: planet planet_star_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_name_fkey FOREIGN KEY (star_name) REFERENCES public.star(star_name);


--
-- Name: rings rings_planet_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rings
    ADD CONSTRAINT rings_planet_name_fkey FOREIGN KEY (planet_name) REFERENCES public.planet(planet_name);


--
-- Name: star star_galaxy_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_name_fkey FOREIGN KEY (galaxy_name) REFERENCES public.galaxy(galaxy_name);


--
-- PostgreSQL database dump complete
--

