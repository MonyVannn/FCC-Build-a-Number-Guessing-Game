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
    best_guess integer DEFAULT 0 NOT NULL
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
    username character varying(22) NOT NULL,
    frequent_games integer DEFAULT 0 NOT NULL
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

INSERT INTO public.games VALUES (1, 1, 22);
INSERT INTO public.games VALUES (2, 2, 119);
INSERT INTO public.games VALUES (3, 2, 386);
INSERT INTO public.games VALUES (4, 3, 265);
INSERT INTO public.games VALUES (5, 3, 70);
INSERT INTO public.games VALUES (6, 2, 644);
INSERT INTO public.games VALUES (7, 2, 524);
INSERT INTO public.games VALUES (8, 2, 605);
INSERT INTO public.games VALUES (9, 4, 191);
INSERT INTO public.games VALUES (10, 4, 937);
INSERT INTO public.games VALUES (11, 5, 792);
INSERT INTO public.games VALUES (12, 5, 673);
INSERT INTO public.games VALUES (13, 4, 171);
INSERT INTO public.games VALUES (14, 4, 648);
INSERT INTO public.games VALUES (15, 4, 286);
INSERT INTO public.games VALUES (16, 6, 209);
INSERT INTO public.games VALUES (17, 6, 451);
INSERT INTO public.games VALUES (18, 7, 444);
INSERT INTO public.games VALUES (19, 7, 414);
INSERT INTO public.games VALUES (20, 6, 638);
INSERT INTO public.games VALUES (21, 6, 547);
INSERT INTO public.games VALUES (22, 6, 367);
INSERT INTO public.games VALUES (23, 8, 325);
INSERT INTO public.games VALUES (24, 8, 951);
INSERT INTO public.games VALUES (25, 9, 427);
INSERT INTO public.games VALUES (26, 9, 16);
INSERT INTO public.games VALUES (27, 8, 135);
INSERT INTO public.games VALUES (28, 8, 986);
INSERT INTO public.games VALUES (29, 8, 141);
INSERT INTO public.games VALUES (30, 1, 47);
INSERT INTO public.games VALUES (31, 10, 799);
INSERT INTO public.games VALUES (32, 10, 921);
INSERT INTO public.games VALUES (33, 11, 702);
INSERT INTO public.games VALUES (34, 11, 122);
INSERT INTO public.games VALUES (35, 10, 131);
INSERT INTO public.games VALUES (36, 10, 128);
INSERT INTO public.games VALUES (37, 10, 468);
INSERT INTO public.games VALUES (38, 12, 2);
INSERT INTO public.games VALUES (39, 13, 7);
INSERT INTO public.games VALUES (40, 13, 7);
INSERT INTO public.games VALUES (41, 14, 7);
INSERT INTO public.games VALUES (42, 14, 7);
INSERT INTO public.games VALUES (43, 13, 9);
INSERT INTO public.games VALUES (44, 13, 8);
INSERT INTO public.games VALUES (45, 13, 7);
INSERT INTO public.games VALUES (46, 15, 2);
INSERT INTO public.games VALUES (47, 16, 7);
INSERT INTO public.games VALUES (48, 16, 7);
INSERT INTO public.games VALUES (49, 17, 7);
INSERT INTO public.games VALUES (50, 17, 7);
INSERT INTO public.games VALUES (51, 16, 9);
INSERT INTO public.games VALUES (52, 16, 8);
INSERT INTO public.games VALUES (53, 16, 7);
INSERT INTO public.games VALUES (54, 18, 74);
INSERT INTO public.games VALUES (55, 18, 256);
INSERT INTO public.games VALUES (56, 19, 95);
INSERT INTO public.games VALUES (57, 19, 412);
INSERT INTO public.games VALUES (58, 18, 349);
INSERT INTO public.games VALUES (59, 18, 778);
INSERT INTO public.games VALUES (60, 18, 916);
INSERT INTO public.games VALUES (61, 20, 472);
INSERT INTO public.games VALUES (62, 20, 215);
INSERT INTO public.games VALUES (63, 21, 494);
INSERT INTO public.games VALUES (64, 21, 861);
INSERT INTO public.games VALUES (65, 20, 800);
INSERT INTO public.games VALUES (66, 20, 988);
INSERT INTO public.games VALUES (67, 20, 176);
INSERT INTO public.games VALUES (68, 22, 813);
INSERT INTO public.games VALUES (69, 22, 412);
INSERT INTO public.games VALUES (70, 23, 866);
INSERT INTO public.games VALUES (71, 23, 410);
INSERT INTO public.games VALUES (72, 22, 937);
INSERT INTO public.games VALUES (73, 22, 367);
INSERT INTO public.games VALUES (74, 22, 885);
INSERT INTO public.games VALUES (75, 24, 409);
INSERT INTO public.games VALUES (76, 24, 224);
INSERT INTO public.games VALUES (77, 25, 339);
INSERT INTO public.games VALUES (78, 25, 904);
INSERT INTO public.games VALUES (79, 24, 756);
INSERT INTO public.games VALUES (80, 24, 502);
INSERT INTO public.games VALUES (81, 24, 273);
INSERT INTO public.games VALUES (82, 26, 269);
INSERT INTO public.games VALUES (83, 26, 465);
INSERT INTO public.games VALUES (84, 27, 550);
INSERT INTO public.games VALUES (85, 27, 99);
INSERT INTO public.games VALUES (86, 26, 122);
INSERT INTO public.games VALUES (87, 26, 377);
INSERT INTO public.games VALUES (88, 26, 176);
INSERT INTO public.games VALUES (89, 28, 164);
INSERT INTO public.games VALUES (90, 28, 424);
INSERT INTO public.games VALUES (91, 29, 170);
INSERT INTO public.games VALUES (92, 29, 955);
INSERT INTO public.games VALUES (93, 28, 807);
INSERT INTO public.games VALUES (94, 28, 502);
INSERT INTO public.games VALUES (95, 28, 579);
INSERT INTO public.games VALUES (96, 30, 875);
INSERT INTO public.games VALUES (97, 30, 384);
INSERT INTO public.games VALUES (98, 31, 625);
INSERT INTO public.games VALUES (99, 31, 586);
INSERT INTO public.games VALUES (100, 30, 869);
INSERT INTO public.games VALUES (101, 30, 318);
INSERT INTO public.games VALUES (102, 30, 321);
INSERT INTO public.games VALUES (103, 32, 253);
INSERT INTO public.games VALUES (104, 32, 506);
INSERT INTO public.games VALUES (105, 33, 246);
INSERT INTO public.games VALUES (106, 33, 194);
INSERT INTO public.games VALUES (107, 32, 637);
INSERT INTO public.games VALUES (108, 32, 610);
INSERT INTO public.games VALUES (109, 32, 595);
INSERT INTO public.games VALUES (110, 34, 242);
INSERT INTO public.games VALUES (111, 34, 315);
INSERT INTO public.games VALUES (112, 35, 702);
INSERT INTO public.games VALUES (113, 35, 334);
INSERT INTO public.games VALUES (114, 34, 672);
INSERT INTO public.games VALUES (115, 34, 491);
INSERT INTO public.games VALUES (116, 34, 140);
INSERT INTO public.games VALUES (117, 36, 2);
INSERT INTO public.games VALUES (118, 37, 3);
INSERT INTO public.games VALUES (119, 37, 3);
INSERT INTO public.games VALUES (120, 38, 3);
INSERT INTO public.games VALUES (121, 38, 3);
INSERT INTO public.games VALUES (122, 37, 5);
INSERT INTO public.games VALUES (123, 37, 4);
INSERT INTO public.games VALUES (124, 37, 3);
INSERT INTO public.games VALUES (125, 36, 2);
INSERT INTO public.games VALUES (126, 39, 3);
INSERT INTO public.games VALUES (127, 39, 3);
INSERT INTO public.games VALUES (128, 40, 3);
INSERT INTO public.games VALUES (129, 40, 3);
INSERT INTO public.games VALUES (130, 39, 5);
INSERT INTO public.games VALUES (131, 39, 4);
INSERT INTO public.games VALUES (132, 39, 3);
INSERT INTO public.games VALUES (133, 36, 2);
INSERT INTO public.games VALUES (134, 41, 3);
INSERT INTO public.games VALUES (135, 41, 3);
INSERT INTO public.games VALUES (136, 42, 3);
INSERT INTO public.games VALUES (137, 42, 3);
INSERT INTO public.games VALUES (138, 41, 5);
INSERT INTO public.games VALUES (139, 41, 4);
INSERT INTO public.games VALUES (140, 41, 3);
INSERT INTO public.games VALUES (141, 43, 3);
INSERT INTO public.games VALUES (142, 43, 3);
INSERT INTO public.games VALUES (143, 44, 3);
INSERT INTO public.games VALUES (144, 44, 3);
INSERT INTO public.games VALUES (145, 43, 5);
INSERT INTO public.games VALUES (146, 43, 4);
INSERT INTO public.games VALUES (147, 43, 3);
INSERT INTO public.games VALUES (148, 36, 2);
INSERT INTO public.games VALUES (149, 36, 2);
INSERT INTO public.games VALUES (150, 45, 3);
INSERT INTO public.games VALUES (151, 45, 3);
INSERT INTO public.games VALUES (152, 46, 3);
INSERT INTO public.games VALUES (153, 46, 3);
INSERT INTO public.games VALUES (154, 45, 5);
INSERT INTO public.games VALUES (155, 45, 4);
INSERT INTO public.games VALUES (156, 45, 3);
INSERT INTO public.games VALUES (157, 47, 222);
INSERT INTO public.games VALUES (158, 47, 886);
INSERT INTO public.games VALUES (159, 48, 391);
INSERT INTO public.games VALUES (160, 48, 618);
INSERT INTO public.games VALUES (161, 47, 669);
INSERT INTO public.games VALUES (162, 47, 836);
INSERT INTO public.games VALUES (163, 47, 310);
INSERT INTO public.games VALUES (164, 49, 413);
INSERT INTO public.games VALUES (165, 49, 822);
INSERT INTO public.games VALUES (166, 50, 784);
INSERT INTO public.games VALUES (167, 50, 277);
INSERT INTO public.games VALUES (168, 49, 144);
INSERT INTO public.games VALUES (169, 49, 873);
INSERT INTO public.games VALUES (170, 49, 133);
INSERT INTO public.games VALUES (171, 51, 600);
INSERT INTO public.games VALUES (172, 51, 530);
INSERT INTO public.games VALUES (173, 52, 123);
INSERT INTO public.games VALUES (174, 52, 332);
INSERT INTO public.games VALUES (175, 51, 443);
INSERT INTO public.games VALUES (176, 51, 897);
INSERT INTO public.games VALUES (177, 51, 379);
INSERT INTO public.games VALUES (178, 53, 436);
INSERT INTO public.games VALUES (179, 53, 755);
INSERT INTO public.games VALUES (180, 54, 97);
INSERT INTO public.games VALUES (181, 54, 457);
INSERT INTO public.games VALUES (182, 53, 298);
INSERT INTO public.games VALUES (183, 53, 213);
INSERT INTO public.games VALUES (184, 53, 935);
INSERT INTO public.games VALUES (185, 55, 763);
INSERT INTO public.games VALUES (186, 55, 811);
INSERT INTO public.games VALUES (187, 56, 821);
INSERT INTO public.games VALUES (188, 56, 575);
INSERT INTO public.games VALUES (189, 55, 994);
INSERT INTO public.games VALUES (190, 55, 689);
INSERT INTO public.games VALUES (191, 55, 673);
INSERT INTO public.games VALUES (192, 57, 908);
INSERT INTO public.games VALUES (193, 57, 802);
INSERT INTO public.games VALUES (194, 58, 683);
INSERT INTO public.games VALUES (195, 58, 672);
INSERT INTO public.games VALUES (196, 57, 586);
INSERT INTO public.games VALUES (197, 57, 340);
INSERT INTO public.games VALUES (198, 57, 268);
INSERT INTO public.games VALUES (199, 59, 788);
INSERT INTO public.games VALUES (200, 59, 218);
INSERT INTO public.games VALUES (201, 60, 463);
INSERT INTO public.games VALUES (202, 60, 781);
INSERT INTO public.games VALUES (203, 59, 598);
INSERT INTO public.games VALUES (204, 59, 965);
INSERT INTO public.games VALUES (205, 59, 993);
INSERT INTO public.games VALUES (206, 61, 707);
INSERT INTO public.games VALUES (207, 61, 497);
INSERT INTO public.games VALUES (208, 62, 846);
INSERT INTO public.games VALUES (209, 62, 689);
INSERT INTO public.games VALUES (210, 61, 771);
INSERT INTO public.games VALUES (211, 61, 423);
INSERT INTO public.games VALUES (212, 61, 617);
INSERT INTO public.games VALUES (213, 63, 629);
INSERT INTO public.games VALUES (214, 63, 619);
INSERT INTO public.games VALUES (215, 64, 602);
INSERT INTO public.games VALUES (216, 64, 19);
INSERT INTO public.games VALUES (217, 63, 442);
INSERT INTO public.games VALUES (218, 63, 44);
INSERT INTO public.games VALUES (219, 63, 181);
INSERT INTO public.games VALUES (220, 65, 775);
INSERT INTO public.games VALUES (221, 65, 809);
INSERT INTO public.games VALUES (222, 66, 14);
INSERT INTO public.games VALUES (223, 66, 720);
INSERT INTO public.games VALUES (224, 65, 594);
INSERT INTO public.games VALUES (225, 65, 913);
INSERT INTO public.games VALUES (226, 65, 224);
INSERT INTO public.games VALUES (227, 67, 3);
INSERT INTO public.games VALUES (228, 67, 3);
INSERT INTO public.games VALUES (229, 68, 3);
INSERT INTO public.games VALUES (230, 68, 3);
INSERT INTO public.games VALUES (231, 67, 5);
INSERT INTO public.games VALUES (232, 67, 4);
INSERT INTO public.games VALUES (233, 67, 3);
INSERT INTO public.games VALUES (234, 69, 763);
INSERT INTO public.games VALUES (235, 69, 752);
INSERT INTO public.games VALUES (236, 70, 726);
INSERT INTO public.games VALUES (237, 70, 682);
INSERT INTO public.games VALUES (238, 69, 782);
INSERT INTO public.games VALUES (239, 69, 175);
INSERT INTO public.games VALUES (240, 69, 811);
INSERT INTO public.games VALUES (241, 71, 433);
INSERT INTO public.games VALUES (242, 71, 212);
INSERT INTO public.games VALUES (243, 72, 810);
INSERT INTO public.games VALUES (244, 72, 139);
INSERT INTO public.games VALUES (245, 71, 259);
INSERT INTO public.games VALUES (246, 71, 807);
INSERT INTO public.games VALUES (247, 71, 431);
INSERT INTO public.games VALUES (248, 73, 3);
INSERT INTO public.games VALUES (249, 73, 3);
INSERT INTO public.games VALUES (250, 74, 3);
INSERT INTO public.games VALUES (251, 74, 3);
INSERT INTO public.games VALUES (252, 73, 5);
INSERT INTO public.games VALUES (253, 73, 4);
INSERT INTO public.games VALUES (254, 73, 3);
INSERT INTO public.games VALUES (255, 75, 3);
INSERT INTO public.games VALUES (256, 75, 3);
INSERT INTO public.games VALUES (257, 76, 3);
INSERT INTO public.games VALUES (258, 76, 3);
INSERT INTO public.games VALUES (259, 75, 5);
INSERT INTO public.games VALUES (260, 75, 4);
INSERT INTO public.games VALUES (261, 75, 3);
INSERT INTO public.games VALUES (262, 77, 3);
INSERT INTO public.games VALUES (263, 77, 3);
INSERT INTO public.games VALUES (264, 78, 3);
INSERT INTO public.games VALUES (265, 78, 3);
INSERT INTO public.games VALUES (266, 77, 5);
INSERT INTO public.games VALUES (267, 77, 4);
INSERT INTO public.games VALUES (268, 77, 3);
INSERT INTO public.games VALUES (269, 79, 3);
INSERT INTO public.games VALUES (270, 79, 3);
INSERT INTO public.games VALUES (271, 80, 3);
INSERT INTO public.games VALUES (272, 80, 3);
INSERT INTO public.games VALUES (273, 79, 5);
INSERT INTO public.games VALUES (274, 79, 4);
INSERT INTO public.games VALUES (275, 79, 3);
INSERT INTO public.games VALUES (276, 81, 3);
INSERT INTO public.games VALUES (277, 81, 3);
INSERT INTO public.games VALUES (278, 82, 3);
INSERT INTO public.games VALUES (279, 82, 3);
INSERT INTO public.games VALUES (280, 81, 5);
INSERT INTO public.games VALUES (281, 81, 4);
INSERT INTO public.games VALUES (282, 81, 3);
INSERT INTO public.games VALUES (283, 83, 3);
INSERT INTO public.games VALUES (284, 83, 3);
INSERT INTO public.games VALUES (285, 84, 3);
INSERT INTO public.games VALUES (286, 84, 3);
INSERT INTO public.games VALUES (287, 83, 5);
INSERT INTO public.games VALUES (288, 83, 4);
INSERT INTO public.games VALUES (289, 83, 3);
INSERT INTO public.games VALUES (290, 85, 3);
INSERT INTO public.games VALUES (291, 85, 3);
INSERT INTO public.games VALUES (292, 86, 3);
INSERT INTO public.games VALUES (293, 86, 3);
INSERT INTO public.games VALUES (294, 85, 5);
INSERT INTO public.games VALUES (295, 85, 4);
INSERT INTO public.games VALUES (296, 85, 3);
INSERT INTO public.games VALUES (297, 87, 796);
INSERT INTO public.games VALUES (298, 87, 733);
INSERT INTO public.games VALUES (299, 88, 542);
INSERT INTO public.games VALUES (300, 88, 707);
INSERT INTO public.games VALUES (301, 87, 519);
INSERT INTO public.games VALUES (302, 87, 905);
INSERT INTO public.games VALUES (303, 87, 269);
INSERT INTO public.games VALUES (304, 89, 585);
INSERT INTO public.games VALUES (305, 89, 904);
INSERT INTO public.games VALUES (306, 90, 229);
INSERT INTO public.games VALUES (307, 90, 992);
INSERT INTO public.games VALUES (308, 89, 244);
INSERT INTO public.games VALUES (309, 89, 932);
INSERT INTO public.games VALUES (310, 89, 890);
INSERT INTO public.games VALUES (311, 91, 541);
INSERT INTO public.games VALUES (312, 91, 842);
INSERT INTO public.games VALUES (313, 92, 925);
INSERT INTO public.games VALUES (314, 92, 115);
INSERT INTO public.games VALUES (315, 91, 281);
INSERT INTO public.games VALUES (316, 91, 651);
INSERT INTO public.games VALUES (317, 91, 911);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (3, 'user_1744225635806', 2);
INSERT INTO public.users VALUES (2, 'user_1744225635807', 5);
INSERT INTO public.users VALUES (27, 'user_1744227102806', 2);
INSERT INTO public.users VALUES (5, 'user_1744225784304', 2);
INSERT INTO public.users VALUES (70, 'user_1744227732030', 2);
INSERT INTO public.users VALUES (4, 'user_1744225784305', 5);
INSERT INTO public.users VALUES (26, 'user_1744227102807', 5);
INSERT INTO public.users VALUES (7, 'user_1744225903620', 2);
INSERT INTO public.users VALUES (50, 'user_1744227408102', 2);
INSERT INTO public.users VALUES (6, 'user_1744225903621', 5);
INSERT INTO public.users VALUES (9, 'user_1744225972642', 2);
INSERT INTO public.users VALUES (29, 'user_1744227181088', 2);
INSERT INTO public.users VALUES (84, 'user_1744227899572', 2);
INSERT INTO public.users VALUES (8, 'user_1744225972643', 5);
INSERT INTO public.users VALUES (1, 'monyvann', 2);
INSERT INTO public.users VALUES (11, 'user_1744226626337', 2);
INSERT INTO public.users VALUES (28, 'user_1744227181089', 5);
INSERT INTO public.users VALUES (10, 'user_1744226626338', 5);
INSERT INTO public.users VALUES (12, 'theng', 1);
INSERT INTO public.users VALUES (49, 'user_1744227408103', 5);
INSERT INTO public.users VALUES (14, 'user_1744226784552', 2);
INSERT INTO public.users VALUES (31, 'user_1744227191006', 2);
INSERT INTO public.users VALUES (13, 'user_1744226784553', 5);
INSERT INTO public.users VALUES (15, 'noreak', 1);
INSERT INTO public.users VALUES (17, 'user_1744226813831', 2);
INSERT INTO public.users VALUES (69, 'user_1744227732031', 5);
INSERT INTO public.users VALUES (30, 'user_1744227191007', 5);
INSERT INTO public.users VALUES (16, 'user_1744226813832', 5);
INSERT INTO public.users VALUES (19, 'user_1744226855096', 2);
INSERT INTO public.users VALUES (18, 'user_1744226855097', 5);
INSERT INTO public.users VALUES (33, 'user_1744227209553', 2);
INSERT INTO public.users VALUES (21, 'user_1744226878877', 2);
INSERT INTO public.users VALUES (52, 'user_1744227478534', 2);
INSERT INTO public.users VALUES (20, 'user_1744226878878', 5);
INSERT INTO public.users VALUES (32, 'user_1744227209554', 5);
INSERT INTO public.users VALUES (23, 'user_1744226928768', 2);
INSERT INTO public.users VALUES (22, 'user_1744226928769', 5);
INSERT INTO public.users VALUES (25, 'user_1744227023134', 2);
INSERT INTO public.users VALUES (35, 'user_1744227213492', 2);
INSERT INTO public.users VALUES (51, 'user_1744227478535', 5);
INSERT INTO public.users VALUES (24, 'user_1744227023135', 5);
INSERT INTO public.users VALUES (34, 'user_1744227213493', 5);
INSERT INTO public.users VALUES (38, 'user_1744227265640', 2);
INSERT INTO public.users VALUES (54, 'user_1744227515925', 2);
INSERT INTO public.users VALUES (37, 'user_1744227265641', 5);
INSERT INTO public.users VALUES (72, 'user_1744227821912', 2);
INSERT INTO public.users VALUES (83, 'user_1744227899573', 5);
INSERT INTO public.users VALUES (40, 'user_1744227284353', 2);
INSERT INTO public.users VALUES (53, 'user_1744227515926', 5);
INSERT INTO public.users VALUES (39, 'user_1744227284354', 5);
INSERT INTO public.users VALUES (42, 'user_1744227295994', 2);
INSERT INTO public.users VALUES (56, 'user_1744227530493', 2);
INSERT INTO public.users VALUES (71, 'user_1744227821913', 5);
INSERT INTO public.users VALUES (41, 'user_1744227295995', 5);
INSERT INTO public.users VALUES (44, 'user_1744227324388', 2);
INSERT INTO public.users VALUES (55, 'user_1744227530494', 5);
INSERT INTO public.users VALUES (43, 'user_1744227324389', 5);
INSERT INTO public.users VALUES (36, 'vann', 5);
INSERT INTO public.users VALUES (46, 'user_1744227356286', 2);
INSERT INTO public.users VALUES (58, 'user_1744227544588', 2);
INSERT INTO public.users VALUES (45, 'user_1744227356287', 5);
INSERT INTO public.users VALUES (74, 'user_1744227851980', 2);
INSERT INTO public.users VALUES (48, 'user_1744227367122', 2);
INSERT INTO public.users VALUES (57, 'user_1744227544589', 5);
INSERT INTO public.users VALUES (47, 'user_1744227367123', 5);
INSERT INTO public.users VALUES (60, 'user_1744227629485', 2);
INSERT INTO public.users VALUES (86, 'user_1744227926232', 2);
INSERT INTO public.users VALUES (73, 'user_1744227851981', 5);
INSERT INTO public.users VALUES (59, 'user_1744227629486', 5);
INSERT INTO public.users VALUES (62, 'user_1744227694311', 2);
INSERT INTO public.users VALUES (61, 'user_1744227694312', 5);
INSERT INTO public.users VALUES (76, 'user_1744227864739', 2);
INSERT INTO public.users VALUES (64, 'user_1744227702742', 2);
INSERT INTO public.users VALUES (85, 'user_1744227926233', 5);
INSERT INTO public.users VALUES (63, 'user_1744227702743', 5);
INSERT INTO public.users VALUES (75, 'user_1744227864740', 5);
INSERT INTO public.users VALUES (66, 'user_1744227716844', 2);
INSERT INTO public.users VALUES (65, 'user_1744227716845', 5);
INSERT INTO public.users VALUES (68, 'user_1744227724808', 2);
INSERT INTO public.users VALUES (78, 'user_1744227883580', 2);
INSERT INTO public.users VALUES (67, 'user_1744227724809', 5);
INSERT INTO public.users VALUES (88, 'user_1744227954697', 2);
INSERT INTO public.users VALUES (77, 'user_1744227883581', 5);
INSERT INTO public.users VALUES (80, 'user_1744227890593', 2);
INSERT INTO public.users VALUES (87, 'user_1744227954698', 5);
INSERT INTO public.users VALUES (79, 'user_1744227890594', 5);
INSERT INTO public.users VALUES (82, 'user_1744227892871', 2);
INSERT INTO public.users VALUES (81, 'user_1744227892872', 5);
INSERT INTO public.users VALUES (90, 'user_1744227964106', 2);
INSERT INTO public.users VALUES (89, 'user_1744227964107', 5);
INSERT INTO public.users VALUES (92, 'user_1744227983581', 2);
INSERT INTO public.users VALUES (91, 'user_1744227983582', 5);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 317, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 92, true);


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

