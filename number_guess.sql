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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    guesses integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 3, 1);
INSERT INTO public.games VALUES (2, 3, 1);
INSERT INTO public.games VALUES (3, 3, 1);
INSERT INTO public.games VALUES (4, 12, 543);
INSERT INTO public.games VALUES (5, 12, 947);
INSERT INTO public.games VALUES (6, 13, 391);
INSERT INTO public.games VALUES (7, 13, 782);
INSERT INTO public.games VALUES (8, 12, 756);
INSERT INTO public.games VALUES (9, 12, 412);
INSERT INTO public.games VALUES (10, 14, 341);
INSERT INTO public.games VALUES (11, 14, 651);
INSERT INTO public.games VALUES (12, 15, 564);
INSERT INTO public.games VALUES (13, 15, 467);
INSERT INTO public.games VALUES (14, 14, 536);
INSERT INTO public.games VALUES (15, 14, 640);
INSERT INTO public.games VALUES (16, 16, 701);
INSERT INTO public.games VALUES (17, 16, 72);
INSERT INTO public.games VALUES (18, 17, 860);
INSERT INTO public.games VALUES (19, 17, 337);
INSERT INTO public.games VALUES (20, 16, 469);
INSERT INTO public.games VALUES (21, 16, 100);
INSERT INTO public.games VALUES (22, 3, 23);
INSERT INTO public.games VALUES (23, 19, 946);
INSERT INTO public.games VALUES (24, 19, 903);
INSERT INTO public.games VALUES (25, 20, 985);
INSERT INTO public.games VALUES (26, 20, 894);
INSERT INTO public.games VALUES (27, 19, 603);
INSERT INTO public.games VALUES (28, 19, 229);
INSERT INTO public.games VALUES (29, 19, 568);
INSERT INTO public.games VALUES (30, 21, 607);
INSERT INTO public.games VALUES (31, 21, 100);
INSERT INTO public.games VALUES (32, 22, 600);
INSERT INTO public.games VALUES (33, 22, 765);
INSERT INTO public.games VALUES (34, 21, 595);
INSERT INTO public.games VALUES (35, 21, 368);
INSERT INTO public.games VALUES (36, 21, 898);
INSERT INTO public.games VALUES (37, 23, 757);
INSERT INTO public.games VALUES (38, 23, 824);
INSERT INTO public.games VALUES (39, 24, 730);
INSERT INTO public.games VALUES (40, 24, 180);
INSERT INTO public.games VALUES (41, 23, 60);
INSERT INTO public.games VALUES (42, 23, 541);
INSERT INTO public.games VALUES (43, 23, 197);
INSERT INTO public.games VALUES (44, 25, 46);
INSERT INTO public.games VALUES (45, 25, 726);
INSERT INTO public.games VALUES (46, 26, 213);
INSERT INTO public.games VALUES (47, 26, 81);
INSERT INTO public.games VALUES (48, 25, 337);
INSERT INTO public.games VALUES (49, 25, 101);
INSERT INTO public.games VALUES (50, 25, 459);
INSERT INTO public.games VALUES (51, 3, 1);
INSERT INTO public.games VALUES (52, 3, 3);
INSERT INTO public.games VALUES (53, 3, 4);
INSERT INTO public.games VALUES (54, 27, 271);
INSERT INTO public.games VALUES (55, 27, 55);
INSERT INTO public.games VALUES (56, 28, 587);
INSERT INTO public.games VALUES (57, 28, 208);
INSERT INTO public.games VALUES (58, 27, 113);
INSERT INTO public.games VALUES (59, 27, 137);
INSERT INTO public.games VALUES (60, 27, 596);
INSERT INTO public.games VALUES (61, 29, 843);
INSERT INTO public.games VALUES (62, 29, 475);
INSERT INTO public.games VALUES (63, 30, 568);
INSERT INTO public.games VALUES (64, 30, 84);
INSERT INTO public.games VALUES (65, 29, 712);
INSERT INTO public.games VALUES (66, 29, 610);
INSERT INTO public.games VALUES (67, 29, 948);
INSERT INTO public.games VALUES (68, 31, 753);
INSERT INTO public.games VALUES (69, 31, 508);
INSERT INTO public.games VALUES (70, 32, 854);
INSERT INTO public.games VALUES (71, 32, 421);
INSERT INTO public.games VALUES (72, 31, 487);
INSERT INTO public.games VALUES (73, 31, 618);
INSERT INTO public.games VALUES (74, 31, 217);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1709560118821');
INSERT INTO public.users VALUES (2, 'user_1709560118820');
INSERT INTO public.users VALUES (3, 'Test');
INSERT INTO public.users VALUES (4, 'user_1709560222941');
INSERT INTO public.users VALUES (5, 'user_1709560222940');
INSERT INTO public.users VALUES (6, 'user_1709560254124');
INSERT INTO public.users VALUES (7, 'user_1709560254123');
INSERT INTO public.users VALUES (8, 'user_1709560282671');
INSERT INTO public.users VALUES (9, 'user_1709560282670');
INSERT INTO public.users VALUES (10, 'user_1709560285708');
INSERT INTO public.users VALUES (11, 'user_1709560285707');
INSERT INTO public.users VALUES (12, 'user_1709562599073');
INSERT INTO public.users VALUES (13, 'user_1709562599072');
INSERT INTO public.users VALUES (14, 'user_1709562752805');
INSERT INTO public.users VALUES (15, 'user_1709562752804');
INSERT INTO public.users VALUES (16, 'user_1709563256198');
INSERT INTO public.users VALUES (17, 'user_1709563256197');
INSERT INTO public.users VALUES (19, 'user_1709563827867');
INSERT INTO public.users VALUES (20, 'user_1709563827866');
INSERT INTO public.users VALUES (21, 'user_1709563888149');
INSERT INTO public.users VALUES (22, 'user_1709563888148');
INSERT INTO public.users VALUES (23, 'user_1709564081397');
INSERT INTO public.users VALUES (24, 'user_1709564081396');
INSERT INTO public.users VALUES (25, 'user_1709564083789');
INSERT INTO public.users VALUES (26, 'user_1709564083788');
INSERT INTO public.users VALUES (27, 'user_1709564601245');
INSERT INTO public.users VALUES (28, 'user_1709564601244');
INSERT INTO public.users VALUES (29, 'user_1709564686999');
INSERT INTO public.users VALUES (30, 'user_1709564686998');
INSERT INTO public.users VALUES (31, 'user_1709564726328');
INSERT INTO public.users VALUES (32, 'user_1709564726327');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 74, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 32, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

