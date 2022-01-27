--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-0ubuntu0.20.04.1)

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
-- Name: article; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.article (
    id integer NOT NULL,
    libelle character varying(50) NOT NULL,
    couleur character varying(50) NOT NULL,
    prix character varying(50) NOT NULL
);


ALTER TABLE public.article OWNER TO postgres;

--
-- Name: article_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.article_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.article_id_seq OWNER TO postgres;

--
-- Name: article_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.article_id_seq OWNED BY public.article.id;


--
-- Name: client; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.client (
    id integer NOT NULL,
    nom_et_prenom character varying(50) NOT NULL,
    adress character varying(50) NOT NULL
);


ALTER TABLE public.client OWNER TO postgres;

--
-- Name: client_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.client_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.client_id_seq OWNER TO postgres;

--
-- Name: client_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.client_id_seq OWNED BY public.client.id;


--
-- Name: ticket; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ticket (
    id integer NOT NULL,
    id_client integer NOT NULL,
    id_article integer NOT NULL
);


ALTER TABLE public.ticket OWNER TO postgres;

--
-- Name: ticket_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ticket_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ticket_id_seq OWNER TO postgres;

--
-- Name: ticket_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ticket_id_seq OWNED BY public.ticket.id;


--
-- Name: article id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.article ALTER COLUMN id SET DEFAULT nextval('public.article_id_seq'::regclass);


--
-- Name: client id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.client ALTER COLUMN id SET DEFAULT nextval('public.client_id_seq'::regclass);


--
-- Name: ticket id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ticket ALTER COLUMN id SET DEFAULT nextval('public.ticket_id_seq'::regclass);


--
-- Data for Name: article; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.article (id, libelle, couleur, prix) FROM stdin;
1	mi	Blue	$4.41
2	aliquam augue	Fuscia	$1.13
3	leo	Aquamarine	$6.47
4	sit amet	Violet	$2.20
5	integer	Crimson	$1.00
6	platea	Turquoise	$0.73
7	lorem	Purple	$2.63
8	sit amet	Turquoise	$7.09
9	ipsum integer	Maroon	$1.53
10	sagittis nam	Teal	$3.75
11	elementum nullam	Green	$6.48
12	eget	Blue	$2.66
13	felis	Mauv	$6.80
14	quis odio	Pink	$5.06
15	vulputate	Goldenrod	$0.96
16	pellentesque ultrices	Indigo	$9.91
17	diam nam	Turquoise	$4.56
18	gravida	Indigo	$0.63
19	blandit	Purple	$2.06
20	vestibulum eget	Green	$9.11
21	vel	Turquoise	$8.49
22	praesent lectus	Yellow	$4.08
23	at	Fuscia	$8.68
24	pellentesque	Khaki	$6.12
25	lectus	Violet	$0.54
26	euismod scelerisque	Pink	$0.97
27	lorem id	Orange	$1.12
28	justo nec	Khaki	$5.87
29	risus	Indigo	$9.42
30	justo lacinia	Violet	$9.56
31	phasellus sit	Mauv	$3.45
32	convallis	Yellow	$0.33
33	vulputate	Khaki	$2.33
34	quam turpis	Orange	$9.37
35	sed	Orange	$8.40
36	at feugiat	Mauv	$6.59
37	ipsum aliquam	Puce	$4.30
38	justo in	Aquamarine	$0.02
39	semper	Yellow	$8.00
40	quisque ut	Puce	$4.24
41	primis in	Turquoise	$4.20
42	parturient montes	Mauv	$6.90
43	aliquam convallis	Yellow	$8.76
44	mi	Orange	$4.32
45	nulla	Turquoise	$8.03
46	arcu	Yellow	$8.65
47	leo pellentesque	Purple	$8.13
48	sed	Maroon	$9.10
49	nulla	Blue	$5.61
50	natoque penatibus	Maroon	$7.50
51	platea	Mauv	$2.23
52	in	Puce	$5.15
53	semper	Turquoise	$7.77
54	ut	Red	$3.26
55	habitasse platea	Red	$5.08
56	tellus	Khaki	$9.85
57	justo	Yellow	$7.30
58	vestibulum	Pink	$3.99
59	volutpat	Fuscia	$9.31
60	lacinia eget	Fuscia	$3.50
61	sed lacus	Mauv	$4.20
62	dis	Teal	$8.89
63	id justo	Turquoise	$1.79
64	eu	Turquoise	$3.70
65	semper	Puce	$1.95
66	elit proin	Yellow	$1.10
67	mattis	Green	$2.77
68	nunc	Purple	$9.96
69	integer	Blue	$7.20
70	consequat	Green	$2.02
71	eu	Crimson	$3.18
72	duis	Pink	$0.67
73	natoque	Purple	$9.00
74	consequat	Goldenrod	$7.90
75	mattis	Fuscia	$3.13
76	molestie hendrerit	Mauv	$3.52
77	tincidunt eu	Maroon	$3.51
78	rutrum nulla	Goldenrod	$7.72
79	gravida sem	Violet	$7.19
80	odio justo	Pink	$8.88
81	non quam	Teal	$6.82
82	in lacus	Fuscia	$6.22
83	mauris	Maroon	$5.28
84	lacinia aenean	Mauv	$9.55
85	maecenas	Khaki	$2.93
86	eu pede	Orange	$6.88
87	sed nisl	Mauv	$8.27
88	sociis	Blue	$7.40
89	quis	Goldenrod	$6.43
90	vel	Goldenrod	$4.05
91	justo	Red	$6.40
92	porta	Puce	$5.55
93	consequat metus	Yellow	$6.20
94	ligula	Orange	$6.64
95	leo odio	Aquamarine	$8.52
96	morbi	Violet	$5.64
97	augue	Pink	$7.17
98	sit	Red	$9.59
99	fusce	Violet	$5.56
100	pretium	Khaki	$4.82
\.


--
-- Data for Name: client; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.client (id, nom_et_prenom, adress) FROM stdin;
1	Brande Bruffell	7413 Mesta Trail
2	Nollie Handslip	47395 Corben Pass
3	Hannis Biggs	9 Lotheville Hill
4	Michele Dighton	64 Quincy Point
5	Stanfield Trahar	324 Corscot Way
6	Pippy Straughan	07 Coolidge Way
7	Theodora Codd	303 Brown Hill
8	Arlie Wesgate	24 Towne Hill
9	Dominique Clacey	0 Carioca Park
10	Marcello Swalwell	8112 Comanche Alley
11	Randi Marrill	15 Center Pass
12	Arnie Scrowston	48780 Harbort Terrace
13	Vivi Corsor	1301 Clemons Park
14	Talyah Couroy	699 Novick Center
15	Augustus Ivashev	620 Elka Terrace
16	Joanie Coveley	622 Moose Circle
17	Adrienne McFetrich	4 Welch Road
18	Tessie Hamal	1973 Waxwing Circle
19	Judye Darbon	4146 Clemons Way
20	Neddy Mishow	9256 Gateway Road
21	Baudoin Nornasell	0 Namekagon Terrace
22	Ellissa Clappson	64 Esch Way
23	Corena Le Prevost	16496 Carioca Junction
24	Claudia Olennikov	597 Oak Place
25	Tamera Heart	33 New Castle Park
26	Nevile M'Chirrie	4787 Weeping Birch Drive
27	Zeke Gately	88630 Thierer Road
28	Laurent Carthy	597 Morningstar Circle
29	Genevra Normington	23 Hanson Drive
30	Lula Ludvigsen	411 Graceland Parkway
31	Georgia Colclough	40965 Lukken Trail
32	Dawn MacFayden	5128 Stephen Terrace
33	Judon Chelnam	2 Fremont Place
34	Darnall Mosco	90 Emmet Park
35	Tobin Lipyeat	1060 Memorial Pass
36	Deborah Linnard	373 Messerschmidt Drive
37	Rosita Gundry	5257 Everett Way
38	Christos Castagneto	9 Di Loreto Avenue
39	Jeanette Hazelden	321 Rockefeller Junction
40	Germaine Benzing	59 Waxwing Park
41	Fanchon Divine	668 Upham Pass
42	Mayer Burbury	5 Nobel Way
43	Aubine Sollam	1 Hudson Center
44	Jordana Aldred	44 Waubesa Junction
45	Kendal Sells	574 Northfield Center
46	Coleman McMorran	4348 Florence Plaza
47	Chloe Jevon	84 Mccormick Lane
48	Karissa Yukhnov	2921 Eastlawn Street
49	Megan Deyes	60373 Stoughton Junction
50	Stafani Donnelly	38 Fair Oaks Place
51	Eal Torrijos	98247 Talisman Avenue
52	Charley Wickson	70 Independence Center
53	Estrellita Brewitt	4125 Vidon Place
54	Warren Stiling	54 Kings Pass
55	Guilbert Bearham	99 Di Loreto Hill
56	Jacqui Veltmann	667 Maple Terrace
57	Katerina Brain	36375 Bunting Pass
58	Mitzi Snary	0 Lyons Parkway
59	Cliff Belsey	7 Hovde Hill
60	Terence Tchir	369 Burrows Hill
61	Merry O'Moylane	56 Kenwood Pass
62	Justinn Dusting	85 Packers Plaza
63	Micheal Glencrosche	8 Mallard Lane
64	Tamar De Cruz	35289 Waubesa Plaza
65	Gabriella Beed	00341 Rieder Trail
66	Andeee Van den Velde	771 Shopko Place
67	Evan Linggood	1 Logan Avenue
68	Adelheid Bushill	41 Toban Alley
69	Jenilee Bolstridge	6 Stang Road
70	Chuck Moreno	534 Dixon Road
71	Jolie Dictus	79701 Fuller Parkway
72	Birch Halesworth	72 Susan Lane
73	Lissie Bloschke	15010 Oakridge Street
74	Ambur Puttick	42 Saint Paul Crossing
75	Elayne Trayhorn	73255 Merry Place
76	Dannie Goulstone	08405 Brown Avenue
77	Jarred Banstead	05 Armistice Plaza
78	Jane Tefft	49639 Hayes Way
79	Claus Learoyde	34 Farwell Terrace
80	Bruis Gilson	03 Sachtjen Street
81	Lyda Pilling	207 Prairie Rose Center
82	Garald Josifovitz	03 Ohio Park
83	Roseline Navaro	69 Gale Hill
84	Rafaellle Huffer	04 Emmet Park
85	Yetta Heinemann	1 Northport Way
86	Karil McKeller	93176 Harper Circle
87	Marlane Dennehy	4 Grover Junction
88	Devina Mewett	471 Warrior Circle
89	Creight Kinde	8 Main Center
90	Drugi Hovell	7720 Maryland Drive
91	Vasily Antonik	8 Arrowood Parkway
92	Ciro McAmish	27 Birchwood Road
93	Nomi Meatcher	3445 Talisman Avenue
94	Gayler Duferie	53 Hazelcrest Hill
95	Nobe Timcke	30949 Bobwhite Point
96	Cleopatra Grogona	79555 Algoma Road
97	Ahmad Henkens	88 Kropf Lane
98	Konstanze Addeycott	1789 Barnett Point
99	Aarika Lindroos	3481 Cordelia Crossing
100	Ash Pelerin	82083 Autumn Leaf Drive
\.


--
-- Data for Name: ticket; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ticket (id, id_client, id_article) FROM stdin;
1	30	18
2	48	5
3	1	50
4	41	13
5	29	32
6	16	11
7	5	27
8	21	26
9	18	33
10	3	17
11	13	48
12	22	27
13	25	42
14	12	10
15	12	5
16	50	3
17	17	32
18	37	47
19	20	19
20	40	21
21	17	35
22	36	13
23	38	7
24	32	40
25	27	20
26	5	17
27	14	11
28	44	25
29	30	43
30	40	22
31	46	7
32	37	1
33	43	38
34	22	49
35	39	25
36	30	10
37	24	40
38	29	39
39	35	17
40	44	37
41	42	46
42	47	13
43	8	10
44	36	26
45	47	6
46	15	11
47	34	33
48	22	38
49	1	29
50	27	7
51	36	47
52	13	18
53	31	12
54	48	2
55	34	20
56	5	18
57	39	41
58	12	25
59	30	17
60	14	19
61	27	40
62	48	44
63	24	29
64	5	8
65	16	26
66	33	46
67	4	29
68	5	40
69	27	42
70	47	46
71	6	29
72	39	34
73	36	10
74	40	49
75	22	42
76	21	8
77	38	24
78	17	38
79	3	12
80	44	4
81	39	5
82	24	47
83	20	50
84	50	29
85	3	2
86	24	3
87	4	24
88	28	42
89	28	43
90	22	33
91	42	31
92	35	5
93	43	33
94	43	45
95	41	45
96	38	1
97	35	49
98	40	42
99	19	49
100	11	22
\.


--
-- Name: article_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.article_id_seq', 1, false);


--
-- Name: client_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.client_id_seq', 1, false);


--
-- Name: ticket_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ticket_id_seq', 1, false);


--
-- Name: article article_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.article
    ADD CONSTRAINT article_pkey PRIMARY KEY (id);


--
-- Name: client client_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.client
    ADD CONSTRAINT client_pkey PRIMARY KEY (id);


--
-- Name: ticket ticket_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ticket
    ADD CONSTRAINT ticket_pkey PRIMARY KEY (id);


--
-- Name: ticket ticket_id_article_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ticket
    ADD CONSTRAINT ticket_id_article_fkey FOREIGN KEY (id_article) REFERENCES public.article(id);


--
-- Name: ticket ticket_id_client_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ticket
    ADD CONSTRAINT ticket_id_client_fkey FOREIGN KEY (id_client) REFERENCES public.client(id);


--
-- PostgreSQL database dump complete
--

