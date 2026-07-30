--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
    name character varying(100) NOT NULL,
    description text,
    age_in_million_of_years numeric(4,1),
    has_black_holes boolean
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
    is_spherical boolean,
    revolution_days integer,
    planet_id integer,
    rotation_time integer,
    name character varying(100) NOT NULL
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
    description text,
    age_in_million_of_years numeric(6,1),
    has_moons boolean,
    total_moons integer,
    star_id integer,
    name character varying(100) NOT NULL
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
-- Name: space_station; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.space_station (
    space_station_id integer NOT NULL,
    name character varying(100) NOT NULL,
    purpose text,
    crew_capacity integer,
    operational boolean,
    planet_id integer
);


ALTER TABLE public.space_station OWNER TO freecodecamp;

--
-- Name: space_station_station_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.space_station_station_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.space_station_station_id_seq OWNER TO freecodecamp;

--
-- Name: space_station_station_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.space_station_station_id_seq OWNED BY public.space_station.space_station_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(100) NOT NULL,
    description text,
    age_in_millions_of_years integer,
    has_life boolean,
    galaxy_id integer
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
-- Name: space_station space_station_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_station ALTER COLUMN space_station_id SET DEFAULT nextval('public.space_station_station_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Barred spiral galaxy containing our Solar System', 13.6, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Nearest major spiral galaxy to the Milky Way', 10.0, true);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Small spiral galaxy in the Local Group', 8.5, false);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 'Interacting grand-design spiral galaxy', 7.2, true);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 'Galaxy with a bright nucleus and prominent dust lane', 9.8, true);
INSERT INTO public.galaxy VALUES (6, 'Large Magellanic Cloud', 'Satellite galaxy of the Milky Way', 1.5, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, true, 27, 3, 656, 'Luna');
INSERT INTO public.moon VALUES (2, false, 0, 4, 8, 'Phobos');
INSERT INTO public.moon VALUES (3, false, 1, 4, 30, 'Deimos');
INSERT INTO public.moon VALUES (4, true, 2, 5, 43, 'Io');
INSERT INTO public.moon VALUES (5, true, 4, 5, 85, 'Europa');
INSERT INTO public.moon VALUES (6, true, 7, 5, 172, 'Ganymede');
INSERT INTO public.moon VALUES (7, true, 17, 5, 401, 'Callisto');
INSERT INTO public.moon VALUES (8, false, 1, 5, 12, 'Amalthea');
INSERT INTO public.moon VALUES (9, true, 16, 6, 382, 'Titan');
INSERT INTO public.moon VALUES (10, true, 5, 6, 108, 'Rhea');
INSERT INTO public.moon VALUES (11, true, 79, 6, 1903, 'Iapetus');
INSERT INTO public.moon VALUES (12, true, 3, 6, 66, 'Dione');
INSERT INTO public.moon VALUES (13, true, 1, 6, 33, 'Enceladus');
INSERT INTO public.moon VALUES (14, true, 9, 7, 209, 'Titania');
INSERT INTO public.moon VALUES (15, true, 14, 7, 323, 'Oberon');
INSERT INTO public.moon VALUES (16, true, 4, 7, 98, 'Umbriel');
INSERT INTO public.moon VALUES (17, true, 6, 8, 141, 'Triton');
INSERT INTO public.moon VALUES (18, false, 360, 8, 8642, 'Nereid');
INSERT INTO public.moon VALUES (19, true, 6, 9, 153, 'Charon');
INSERT INTO public.moon VALUES (20, true, 13, 10, 300, 'Aurelian Moon I');
INSERT INTO public.moon VALUES (21, true, 5, 11, 125, 'Zephyr Minor');
INSERT INTO public.moon VALUES (22, true, 19, 12, 454, 'Titanis Alpha');
INSERT INTO public.moon VALUES (23, false, 2, 13, 50, 'Triara I');
INSERT INTO public.moon VALUES (24, true, 10, 14, 233, 'Whirlon Echo');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Small rocky planet closest to the Sun', 4500.0, false, 0, 1, 'Mercury');
INSERT INTO public.planet VALUES (2, 'Hot rocky planet with a dense atmosphere', 4500.0, false, 0, 1, 'Venus');
INSERT INTO public.planet VALUES (3, 'Rocky planet known to support life', 4500.0, true, 1, 1, 'Earth');
INSERT INTO public.planet VALUES (4, 'Red planet with polar ice caps', 4500.0, true, 2, 1, 'Mars');
INSERT INTO public.planet VALUES (5, 'Largest gas giant in the Solar System', 4500.0, true, 95, 1, 'Jupiter');
INSERT INTO public.planet VALUES (6, 'Gas giant famous for its ring system', 4500.0, true, 146, 1, 'Saturn');
INSERT INTO public.planet VALUES (7, 'Ice giant with a tilted rotation axis', 4500.0, true, 28, 1, 'Uranus');
INSERT INTO public.planet VALUES (8, 'Distant ice giant with strong winds', 4500.0, true, 16, 1, 'Neptune');
INSERT INTO public.planet VALUES (9, 'Dwarf planet in the Kuiper Belt', 4500.0, true, 5, 1, 'Pluto');
INSERT INTO public.planet VALUES (10, 'Ocean-covered exoplanet orbiting Andromeda Prime', 2100.0, true, 3, 4, 'Aurelia');
INSERT INTO public.planet VALUES (11, 'Bright icy planet orbiting LMC Delta', 750.0, true, 4, 10, 'Lumora');
INSERT INTO public.planet VALUES (12, 'Windy super-Earth orbiting Andromeda Nova', 980.0, true, 1, 5, 'Zephyria');
INSERT INTO public.planet VALUES (13, 'Large gas giant orbiting Andromeda Giant', 320.0, true, 12, 6, 'Titanis');
INSERT INTO public.planet VALUES (14, 'Rocky world orbiting Triangulum Alpha', 600.0, false, 0, 7, 'Triara');
INSERT INTO public.planet VALUES (15, 'Cloudy gas dwarf orbiting Whirlpool Beta', 430.0, true, 2, 8, 'Whirlon');
INSERT INTO public.planet VALUES (16, 'Dark terrestrial planet orbiting Sombrero Gamma', 510.0, true, 1, 9, 'Sombros');


--
-- Data for Name: space_station; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.space_station VALUES (1, 'ISS', 'Scientific research station orbiting Earth', 7, true, 3);
INSERT INTO public.space_station VALUES (2, 'Mars Orbital One', 'Future exploration station around Mars', 12, false, 4);
INSERT INTO public.space_station VALUES (3, 'Europa Research Hub', 'Research outpost for studying Europa', 20, true, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'G-type main-sequence star at the center of the Solar System', 4600, true, 1);
INSERT INTO public.star VALUES (2, 'Sirius', 'Bright binary star visible from Earth', 300, false, 1);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 'Red supergiant star in the Milky Way', 10, false, 1);
INSERT INTO public.star VALUES (4, 'Andromeda Prime', 'Large blue-white star in the Andromeda Galaxy', 1200, false, 2);
INSERT INTO public.star VALUES (5, 'Andromeda Nova', 'Young luminous star in Andromeda', 150, false, 2);
INSERT INTO public.star VALUES (6, 'Andromeda Giant', 'Evolved giant star in the Andromeda Galaxy', 5400, false, 2);
INSERT INTO public.star VALUES (7, 'Triangulum Alpha', 'Hot young star in the Triangulum Galaxy', 90, false, 3);
INSERT INTO public.star VALUES (8, 'Whirlpool Beta', 'Massive star located in a spiral arm of the Whirlpool Galaxy', 45, false, 4);
INSERT INTO public.star VALUES (9, 'Sombrero Gamma', 'Dense yellow-white star near the Sombrero nucleus', 6200, false, 5);
INSERT INTO public.star VALUES (10, 'LMC Delta', 'Bright variable star in the Large Magellanic Cloud', 700, false, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 24, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 16, true);


--
-- Name: space_station_station_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.space_station_station_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 10, true);


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
-- Name: space_station space_station_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_station
    ADD CONSTRAINT space_station_name_key UNIQUE (name);


--
-- Name: space_station space_station_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_station
    ADD CONSTRAINT space_station_pkey PRIMARY KEY (space_station_id);


--
-- Name: space_station space_station_space_station_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_station
    ADD CONSTRAINT space_station_space_station_id_key UNIQUE (space_station_id);


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
-- Name: space_station space_station_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_station
    ADD CONSTRAINT space_station_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

