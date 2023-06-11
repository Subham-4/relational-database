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
    age_in_millions_of_years integer,
    desription text,
    is_spherical boolean,
    distance_from_earth numeric(5,1),
    name character varying(30) NOT NULL,
    has_life boolean NOT NULL,
    star_id integer NOT NULL
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
-- Name: galaxy_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_star_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_star_id_seq OWNED BY public.galaxy.star_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    age_in_millions_of_years integer,
    desription text,
    is_spherical boolean,
    distance_from_earth numeric(5,1),
    name character varying(30) NOT NULL,
    has_life boolean NOT NULL
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
    age_in_millions_of_years integer,
    desription text,
    is_spherical boolean,
    distance_from_earth numeric(5,1),
    name character varying(30) NOT NULL,
    has_life boolean NOT NULL,
    moon_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_moon_id_seq OWNER TO freecodecamp;

--
-- Name: planet_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_moon_id_seq OWNED BY public.planet.moon_id;


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
    star_id integer NOT NULL,
    age_in_millions_of_years integer,
    desription text,
    is_spherical boolean,
    distance_from_earth numeric(5,1),
    name character varying(30) NOT NULL,
    has_life boolean NOT NULL,
    galaxy_id integer NOT NULL,
    planet_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_galaxy_id_seq OWNED BY public.star.galaxy_id;


--
-- Name: star_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_planet_id_seq OWNER TO freecodecamp;

--
-- Name: star_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_planet_id_seq OWNED BY public.star.planet_id;


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
-- Name: verse; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.verse (
    verse_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text
);


ALTER TABLE public.verse OWNER TO freecodecamp;

--
-- Name: verse_verse_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.verse_verse_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.verse_verse_id_seq OWNER TO freecodecamp;

--
-- Name: verse_verse_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.verse_verse_id_seq OWNED BY public.verse.verse_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN star_id SET DEFAULT nextval('public.galaxy_star_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN moon_id SET DEFAULT nextval('public.planet_moon_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN galaxy_id SET DEFAULT nextval('public.star_galaxy_id_seq'::regclass);


--
-- Name: star planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN planet_id SET DEFAULT nextval('public.star_planet_id_seq'::regclass);


--
-- Name: verse verse_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.verse ALTER COLUMN verse_id SET DEFAULT nextval('public.verse_verse_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, NULL, NULL, NULL, NULL, 'g1', true, 1);
INSERT INTO public.galaxy VALUES (2, NULL, NULL, NULL, NULL, 'g2', false, 2);
INSERT INTO public.galaxy VALUES (3, NULL, NULL, NULL, NULL, 'g3', false, 3);
INSERT INTO public.galaxy VALUES (4, NULL, NULL, NULL, NULL, 'g4', false, 4);
INSERT INTO public.galaxy VALUES (5, NULL, NULL, NULL, NULL, 'g5', false, 5);
INSERT INTO public.galaxy VALUES (6, NULL, NULL, NULL, NULL, 'g6', false, 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, NULL, NULL, NULL, NULL, 'm1', true);
INSERT INTO public.moon VALUES (2, NULL, NULL, NULL, NULL, 'm2', false);
INSERT INTO public.moon VALUES (3, NULL, NULL, NULL, NULL, 'm3', false);
INSERT INTO public.moon VALUES (4, NULL, NULL, NULL, NULL, 'm4', false);
INSERT INTO public.moon VALUES (5, NULL, NULL, NULL, NULL, 'm5', false);
INSERT INTO public.moon VALUES (6, NULL, NULL, NULL, NULL, 'm6', false);
INSERT INTO public.moon VALUES (7, NULL, NULL, NULL, NULL, 'm7', false);
INSERT INTO public.moon VALUES (8, NULL, NULL, NULL, NULL, 'm8', false);
INSERT INTO public.moon VALUES (9, NULL, NULL, NULL, NULL, 'm9', false);
INSERT INTO public.moon VALUES (10, NULL, NULL, NULL, NULL, 'm10', false);
INSERT INTO public.moon VALUES (11, NULL, NULL, NULL, NULL, 'm11', false);
INSERT INTO public.moon VALUES (12, NULL, NULL, NULL, NULL, 'm12', false);
INSERT INTO public.moon VALUES (13, NULL, NULL, NULL, NULL, 'm13', false);
INSERT INTO public.moon VALUES (14, NULL, NULL, NULL, NULL, 'm14', false);
INSERT INTO public.moon VALUES (15, NULL, NULL, NULL, NULL, 'm15', false);
INSERT INTO public.moon VALUES (16, NULL, NULL, NULL, NULL, 'm16', false);
INSERT INTO public.moon VALUES (17, NULL, NULL, NULL, NULL, 'm17', false);
INSERT INTO public.moon VALUES (18, NULL, NULL, NULL, NULL, 'm18', false);
INSERT INTO public.moon VALUES (19, NULL, NULL, NULL, NULL, 'm19', false);
INSERT INTO public.moon VALUES (20, NULL, NULL, NULL, NULL, 'm20', false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, NULL, NULL, NULL, NULL, 'p1', true, 1);
INSERT INTO public.planet VALUES (2, NULL, NULL, NULL, NULL, 'p2', true, 2);
INSERT INTO public.planet VALUES (3, NULL, NULL, NULL, NULL, 'p3', false, 3);
INSERT INTO public.planet VALUES (4, NULL, NULL, NULL, NULL, 'p4', false, 4);
INSERT INTO public.planet VALUES (5, NULL, NULL, NULL, NULL, 'p5', false, 5);
INSERT INTO public.planet VALUES (6, NULL, NULL, NULL, NULL, 'p6', false, 6);
INSERT INTO public.planet VALUES (7, NULL, NULL, NULL, NULL, 'p7', false, 7);
INSERT INTO public.planet VALUES (8, NULL, NULL, NULL, NULL, 'p8', false, 8);
INSERT INTO public.planet VALUES (9, NULL, NULL, NULL, NULL, 'p9', false, 9);
INSERT INTO public.planet VALUES (10, NULL, NULL, NULL, NULL, 'p10', false, 10);
INSERT INTO public.planet VALUES (11, NULL, NULL, NULL, NULL, 'p11', false, 11);
INSERT INTO public.planet VALUES (12, NULL, NULL, NULL, NULL, 'p12', false, 12);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, NULL, NULL, NULL, NULL, 's1', true, 1, 1);
INSERT INTO public.star VALUES (2, NULL, NULL, NULL, NULL, 's2', false, 2, 2);
INSERT INTO public.star VALUES (3, NULL, NULL, NULL, NULL, 's3', false, 3, 3);
INSERT INTO public.star VALUES (4, NULL, NULL, NULL, NULL, 's4', false, 4, 4);
INSERT INTO public.star VALUES (5, NULL, NULL, NULL, NULL, 's5', true, 5, 5);
INSERT INTO public.star VALUES (6, NULL, NULL, NULL, NULL, 's6', true, 6, 6);


--
-- Data for Name: verse; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.verse VALUES (1, 'v1', NULL);
INSERT INTO public.verse VALUES (2, 'v2', NULL);
INSERT INTO public.verse VALUES (3, 'v3', NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: galaxy_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_star_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_moon_id_seq', 12, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_galaxy_id_seq', 6, true);


--
-- Name: star_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_planet_id_seq', 6, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: verse_verse_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.verse_verse_id_seq', 3, true);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


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
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: verse verse_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.verse
    ADD CONSTRAINT verse_pkey PRIMARY KEY (verse_id);


--
-- Name: verse verse_verse_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.verse
    ADD CONSTRAINT verse_verse_id_key UNIQUE (verse_id);


--
-- Name: galaxy galaxy_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: planet planet_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: star star_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- PostgreSQL database dump complete
--

