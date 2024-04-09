--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: etre; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.etre (
    name character varying(30) NOT NULL,
    planet_id integer,
    etre_types character varying(30),
    has_life boolean,
    description text,
    etre_id integer NOT NULL,
    nombre numeric
);


ALTER TABLE public.etre OWNER TO freecodecamp;

--
-- Name: etre_etre_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.etre_etre_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.etre_etre_id_seq OWNER TO freecodecamp;

--
-- Name: etre_etre_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.etre_etre_id_seq OWNED BY public.etre.etre_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(30) NOT NULL,
    galaxy_types character varying(30),
    has_life boolean,
    is_spherical boolean,
    description text,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    galaxy_id integer NOT NULL
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
    name character varying(30) NOT NULL,
    planet_id integer,
    distance_from_earth integer,
    has_life boolean,
    description text,
    moon_id integer NOT NULL
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
    name character varying(30) NOT NULL,
    star_id integer,
    planet_type character varying(30),
    description text,
    has_life boolean,
    age_in_millions_of_years integer,
    planet_id integer NOT NULL
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
    name character varying(30) NOT NULL,
    galaxy_id integer,
    description text,
    has_life boolean,
    star_id integer NOT NULL
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
-- Name: etre etre_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.etre ALTER COLUMN etre_id SET DEFAULT nextval('public.etre_etre_id_seq'::regclass);


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
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: etre; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.etre VALUES ('arbre', 1, 'vegetation', true, 'un etre constituer du tronc,branches,feuilles et fruits', 1, 100);
INSERT INTO public.etre VALUES ('lion', 1, 'animal', true, 'un etre vivant sauvage et feroce avec des pates a griffes et une fourures grosse', 2, 100);
INSERT INTO public.etre VALUES ('homme', 1, 'humain', true, 'un etre vivant s"evit a son intelligence', 3, 100);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('galaxy 7', 'paisible', true, false, 'son goku hero', 450, 5250, 1);
INSERT INTO public.galaxy VALUES ('galaxy 6', 'paisible', true, false, 'son goku hero', 450, 5250, 2);
INSERT INTO public.galaxy VALUES ('galaxy 5', 'paisible', true, false, 'son goku hero', 450, 5250, 3);
INSERT INTO public.galaxy VALUES ('galaxy 4', 'paisible', true, false, 'son goku hero', 450, 5250, 4);
INSERT INTO public.galaxy VALUES ('galaxy 3', 'paisible', true, false, 'son goku hero', 450, 5250, 5);
INSERT INTO public.galaxy VALUES ('galaxy 2', 'paisible', true, false, 'son goku hero', 450, 5250, 6);
INSERT INTO public.galaxy VALUES ('galaxy 1', 'paisible', true, false, 'son goku hero', 450, 5250, 7);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('la lune grise 1', 1, 5200, false, 'je m"éclaire la nuite et je cache les éclats des étoiles', 1);
INSERT INTO public.moon VALUES ('la lune grise 20', 1, 5200, false, 'je m"éclaire la nuite et je cache les éclats des étoiles', 2);
INSERT INTO public.moon VALUES ('la lune grise 2', 1, 5200, false, 'je m"éclaire la nuite et je cache les éclats des étoiles', 3);
INSERT INTO public.moon VALUES ('la lune grise 3', 1, 5200, false, 'je m"éclaire la nuite et je cache les éclats des étoiles', 4);
INSERT INTO public.moon VALUES ('la lune grise 4', 1, 5200, false, 'je m"éclaire la nuite et je cache les éclats des étoiles', 5);
INSERT INTO public.moon VALUES ('la lune grise 5', 1, 5200, false, 'je m"éclaire la nuite et je cache les éclats des étoiles', 6);
INSERT INTO public.moon VALUES ('la lune grise 6', 1, 5200, false, 'je m"éclaire la nuite et je cache les éclats des étoiles', 7);
INSERT INTO public.moon VALUES ('la lune grise 7', 1, 5200, false, 'je m"éclaire la nuite et je cache les éclats des étoiles', 8);
INSERT INTO public.moon VALUES ('la lune grise 8', 1, 5200, false, 'je m"éclaire la nuite et je cache les éclats des étoiles', 9);
INSERT INTO public.moon VALUES ('la lune grise 9', 1, 5200, false, 'je m"éclaire la nuite et je cache les éclats des étoiles', 10);
INSERT INTO public.moon VALUES ('la lune grise 10', 1, 5200, false, 'je m"éclaire la nuite et je cache les éclats des étoiles', 11);
INSERT INTO public.moon VALUES ('la lune grise 11', 1, 5200, false, 'je m"éclaire la nuite et je cache les éclats des étoiles', 12);
INSERT INTO public.moon VALUES ('la lune grise 12', 1, 5200, false, 'je m"éclaire la nuite et je cache les éclats des étoiles', 13);
INSERT INTO public.moon VALUES ('la lune grise 13', 1, 5200, false, 'je m"éclaire la nuite et je cache les éclats des étoiles', 14);
INSERT INTO public.moon VALUES ('la lune grise 14', 1, 5200, false, 'je m"éclaire la nuite et je cache les éclats des étoiles', 15);
INSERT INTO public.moon VALUES ('la lune grise 15', 1, 5200, false, 'je m"éclaire la nuite et je cache les éclats des étoiles', 16);
INSERT INTO public.moon VALUES ('la lune grise 16', 1, 5200, false, 'je m"éclaire la nuite et je cache les éclats des étoiles', 17);
INSERT INTO public.moon VALUES ('la lune grise 17', 1, 5200, false, 'je m"éclaire la nuite et je cache les éclats des étoiles', 18);
INSERT INTO public.moon VALUES ('la lune grise 18', 1, 5200, false, 'je m"éclaire la nuite et je cache les éclats des étoiles', 19);
INSERT INTO public.moon VALUES ('la lune grise 19', 1, 5200, false, 'je m"éclaire la nuite et je cache les éclats des étoiles', 20);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('terre 1', 1, 'planete vivante', 'humain, animaux,les marèes et végétations', true, 420, 1);
INSERT INTO public.planet VALUES ('terre 2', 1, 'planete vivante', 'humain, animaux,les marèes et végétations', true, 420, 3);
INSERT INTO public.planet VALUES ('terre 3', 1, 'planete vivante', 'humain, animaux,les marèes et végétations', true, 420, 4);
INSERT INTO public.planet VALUES ('terre 5', 1, 'planete vivante', 'humain, animaux,les marèes et végétations', true, 420, 5);
INSERT INTO public.planet VALUES ('terre 6', 1, 'planete vivante', 'humain, animaux,les marèes et végétations', true, 420, 6);
INSERT INTO public.planet VALUES ('terre 7', 1, 'planete vivante', 'humain, animaux,les marèes et végétations', true, 420, 7);
INSERT INTO public.planet VALUES ('terre 8', 1, 'planete vivante', 'humain, animaux,les marèes et végétations', true, 420, 8);
INSERT INTO public.planet VALUES ('terre 9', 1, 'planete vivante', 'humain, animaux,les marèes et végétations', true, 420, 9);
INSERT INTO public.planet VALUES ('terre 10', 1, 'planete vivante', 'humain, animaux,les marèes et végétations', true, 420, 11);
INSERT INTO public.planet VALUES ('terre 11', 1, 'planete vivante', 'humain, animaux,les marèes et végétations', true, 420, 12);
INSERT INTO public.planet VALUES ('terre 12', 1, 'planete vivante', 'humain, animaux,les marèes et végétations', true, 420, 13);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('etoile 1', 1, 'etoile terre', true, 1);
INSERT INTO public.star VALUES ('etoile 2', 1, 'etoile terre', true, 2);
INSERT INTO public.star VALUES ('etoile 3', 1, 'etoile terre', true, 3);
INSERT INTO public.star VALUES ('etoile 4', 1, 'etoile terre', true, 4);
INSERT INTO public.star VALUES ('etoile 5', 1, 'etoile terre', true, 5);
INSERT INTO public.star VALUES ('etoile 6', 1, 'etoile terre', true, 6);


--
-- Name: etre_etre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.etre_etre_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: etre etre_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.etre
    ADD CONSTRAINT etre_name_key UNIQUE (name);


--
-- Name: etre etre_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.etre
    ADD CONSTRAINT etre_pkey PRIMARY KEY (etre_id);


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
-- Name: etre etre_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.etre
    ADD CONSTRAINT etre_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

