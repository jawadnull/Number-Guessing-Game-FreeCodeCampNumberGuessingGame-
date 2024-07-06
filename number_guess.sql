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

INSERT INTO public.games VALUES (227, 73, 319);
INSERT INTO public.games VALUES (228, 73, 591);
INSERT INTO public.games VALUES (229, 74, 690);
INSERT INTO public.games VALUES (230, 73, 107);
INSERT INTO public.games VALUES (231, 73, 527);
INSERT INTO public.games VALUES (232, 75, 582);
INSERT INTO public.games VALUES (233, 75, 157);
INSERT INTO public.games VALUES (234, 76, 352);
INSERT INTO public.games VALUES (235, 76, 11);
INSERT INTO public.games VALUES (236, 75, 482);
INSERT INTO public.games VALUES (237, 75, 708);
INSERT INTO public.games VALUES (238, 75, 668);
INSERT INTO public.games VALUES (239, 77, 255);
INSERT INTO public.games VALUES (240, 77, 711);
INSERT INTO public.games VALUES (241, 78, 4);
INSERT INTO public.games VALUES (242, 78, 975);
INSERT INTO public.games VALUES (243, 77, 257);
INSERT INTO public.games VALUES (244, 77, 674);
INSERT INTO public.games VALUES (245, 77, 288);
INSERT INTO public.games VALUES (246, 79, 926);
INSERT INTO public.games VALUES (247, 79, 335);
INSERT INTO public.games VALUES (248, 80, 693);
INSERT INTO public.games VALUES (249, 80, 761);
INSERT INTO public.games VALUES (250, 79, 554);
INSERT INTO public.games VALUES (251, 79, 814);
INSERT INTO public.games VALUES (252, 79, 981);
INSERT INTO public.games VALUES (253, 81, 304);
INSERT INTO public.games VALUES (254, 81, 99);
INSERT INTO public.games VALUES (255, 82, 405);
INSERT INTO public.games VALUES (256, 82, 28);
INSERT INTO public.games VALUES (257, 81, 317);
INSERT INTO public.games VALUES (258, 81, 975);
INSERT INTO public.games VALUES (259, 81, 636);
INSERT INTO public.games VALUES (260, 83, 441);
INSERT INTO public.games VALUES (261, 83, 336);
INSERT INTO public.games VALUES (262, 84, 79);
INSERT INTO public.games VALUES (263, 84, 951);
INSERT INTO public.games VALUES (264, 83, 641);
INSERT INTO public.games VALUES (265, 83, 584);
INSERT INTO public.games VALUES (266, 83, 539);
INSERT INTO public.games VALUES (267, 85, 194);
INSERT INTO public.games VALUES (268, 85, 228);
INSERT INTO public.games VALUES (269, 86, 405);
INSERT INTO public.games VALUES (270, 86, 197);
INSERT INTO public.games VALUES (271, 85, 649);
INSERT INTO public.games VALUES (272, 85, 931);
INSERT INTO public.games VALUES (273, 85, 737);
INSERT INTO public.games VALUES (274, 87, 9);
INSERT INTO public.games VALUES (275, 88, 310);
INSERT INTO public.games VALUES (276, 88, 887);
INSERT INTO public.games VALUES (277, 89, 264);
INSERT INTO public.games VALUES (278, 89, 822);
INSERT INTO public.games VALUES (279, 88, 118);
INSERT INTO public.games VALUES (280, 88, 553);
INSERT INTO public.games VALUES (281, 88, 957);
INSERT INTO public.games VALUES (282, 90, 616);
INSERT INTO public.games VALUES (283, 90, 572);
INSERT INTO public.games VALUES (284, 91, 749);
INSERT INTO public.games VALUES (285, 91, 818);
INSERT INTO public.games VALUES (286, 90, 177);
INSERT INTO public.games VALUES (287, 90, 743);
INSERT INTO public.games VALUES (288, 90, 251);
INSERT INTO public.games VALUES (289, 92, 584);
INSERT INTO public.games VALUES (290, 92, 470);
INSERT INTO public.games VALUES (291, 93, 896);
INSERT INTO public.games VALUES (292, 93, 749);
INSERT INTO public.games VALUES (293, 92, 262);
INSERT INTO public.games VALUES (294, 92, 462);
INSERT INTO public.games VALUES (295, 92, 478);
INSERT INTO public.games VALUES (296, 94, 425);
INSERT INTO public.games VALUES (297, 94, 32);
INSERT INTO public.games VALUES (298, 95, 929);
INSERT INTO public.games VALUES (299, 95, 595);
INSERT INTO public.games VALUES (300, 94, 91);
INSERT INTO public.games VALUES (301, 94, 441);
INSERT INTO public.games VALUES (302, 94, 581);
INSERT INTO public.games VALUES (303, 96, 59);
INSERT INTO public.games VALUES (304, 96, 732);
INSERT INTO public.games VALUES (305, 97, 985);
INSERT INTO public.games VALUES (306, 97, 623);
INSERT INTO public.games VALUES (307, 96, 183);
INSERT INTO public.games VALUES (308, 96, 511);
INSERT INTO public.games VALUES (309, 96, 262);
INSERT INTO public.games VALUES (310, 98, 58);
INSERT INTO public.games VALUES (311, 98, 96);
INSERT INTO public.games VALUES (312, 99, 455);
INSERT INTO public.games VALUES (313, 99, 811);
INSERT INTO public.games VALUES (314, 98, 420);
INSERT INTO public.games VALUES (315, 98, 715);
INSERT INTO public.games VALUES (316, 98, 697);
INSERT INTO public.games VALUES (317, 100, 15);
INSERT INTO public.games VALUES (318, 100, 700);
INSERT INTO public.games VALUES (319, 101, 55);
INSERT INTO public.games VALUES (320, 101, 859);
INSERT INTO public.games VALUES (321, 100, 21);
INSERT INTO public.games VALUES (322, 100, 790);
INSERT INTO public.games VALUES (323, 100, 848);
INSERT INTO public.games VALUES (324, 102, 796);
INSERT INTO public.games VALUES (325, 102, 368);
INSERT INTO public.games VALUES (326, 103, 948);
INSERT INTO public.games VALUES (327, 103, 489);
INSERT INTO public.games VALUES (328, 102, 816);
INSERT INTO public.games VALUES (329, 102, 529);
INSERT INTO public.games VALUES (330, 102, 459);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (73, 'user_1678936134195');
INSERT INTO public.users VALUES (74, 'user_1678936134194');
INSERT INTO public.users VALUES (75, 'user_1720254765321');
INSERT INTO public.users VALUES (76, 'user_1720254765320');
INSERT INTO public.users VALUES (77, 'user_1720254936071');
INSERT INTO public.users VALUES (78, 'user_1720254936070');
INSERT INTO public.users VALUES (79, 'user_1720257723943');
INSERT INTO public.users VALUES (80, 'user_1720257723942');
INSERT INTO public.users VALUES (81, 'user_1720257796187');
INSERT INTO public.users VALUES (82, 'user_1720257796186');
INSERT INTO public.users VALUES (83, 'user_1720257867044');
INSERT INTO public.users VALUES (84, 'user_1720257867043');
INSERT INTO public.users VALUES (85, 'user_1720258071359');
INSERT INTO public.users VALUES (86, 'user_1720258071358');
INSERT INTO public.users VALUES (87, 'chrollo');
INSERT INTO public.users VALUES (88, 'user_1720258229918');
INSERT INTO public.users VALUES (89, 'user_1720258229917');
INSERT INTO public.users VALUES (90, 'user_1720258273305');
INSERT INTO public.users VALUES (91, 'user_1720258273304');
INSERT INTO public.users VALUES (92, 'user_1720258403206');
INSERT INTO public.users VALUES (93, 'user_1720258403205');
INSERT INTO public.users VALUES (94, 'user_1720259392613');
INSERT INTO public.users VALUES (95, 'user_1720259392612');
INSERT INTO public.users VALUES (96, 'user_1720259409431');
INSERT INTO public.users VALUES (97, 'user_1720259409430');
INSERT INTO public.users VALUES (98, 'user_1720259436884');
INSERT INTO public.users VALUES (99, 'user_1720259436883');
INSERT INTO public.users VALUES (100, 'user_1720259460847');
INSERT INTO public.users VALUES (101, 'user_1720259460846');
INSERT INTO public.users VALUES (102, 'user_1720259504808');
INSERT INTO public.users VALUES (103, 'user_1720259504807');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 330, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 103, true);


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
-- Name: games fk_users_games; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_users_games FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

