--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.3
-- Dumped by pg_dump version 9.6.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE ar_internal_metadata OWNER TO "Guest";

--
-- Name: exits; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE exits (
    id bigint NOT NULL,
    nsew character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    rooms_id bigint
);


ALTER TABLE exits OWNER TO "Guest";

--
-- Name: exits_id_seq; Type: SEQUENCE; Schema: public; Owner: Guest
--

CREATE SEQUENCE exits_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE exits_id_seq OWNER TO "Guest";

--
-- Name: exits_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Guest
--

ALTER SEQUENCE exits_id_seq OWNED BY exits.id;


--
-- Name: exits_rooms; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE exits_rooms (
    exit_id bigint,
    room_id bigint
);


ALTER TABLE exits_rooms OWNER TO "Guest";

--
-- Name: rooms; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE rooms (
    id bigint NOT NULL,
    xcoord integer,
    ycoord integer,
    title character varying,
    description character varying,
    items character varying,
    image character varying,
    exits_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE rooms OWNER TO "Guest";

--
-- Name: rooms_id_seq; Type: SEQUENCE; Schema: public; Owner: Guest
--

CREATE SEQUENCE rooms_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE rooms_id_seq OWNER TO "Guest";

--
-- Name: rooms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Guest
--

ALTER SEQUENCE rooms_id_seq OWNED BY rooms.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE schema_migrations OWNER TO "Guest";

--
-- Name: exits id; Type: DEFAULT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY exits ALTER COLUMN id SET DEFAULT nextval('exits_id_seq'::regclass);


--
-- Name: rooms id; Type: DEFAULT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY rooms ALTER COLUMN id SET DEFAULT nextval('rooms_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	default_env	2018-07-23 18:22:44.238091	2018-07-23 18:22:44.238091
\.


--
-- Data for Name: exits; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY exits (id, nsew, created_at, updated_at, rooms_id) FROM stdin;
1	n	2018-07-23 18:22:50.732125	2018-07-23 18:22:50.732125	\N
2	s	2018-07-23 18:22:50.734151	2018-07-23 18:22:50.734151	\N
3	e	2018-07-23 18:22:50.735371	2018-07-23 18:22:50.735371	\N
4	w	2018-07-23 18:22:50.736583	2018-07-23 18:22:50.736583	\N
\.


--
-- Name: exits_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Guest
--

SELECT pg_catalog.setval('exits_id_seq', 4, true);


--
-- Data for Name: exits_rooms; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY exits_rooms (exit_id, room_id) FROM stdin;
1	1
3	1
4	2
3	2
1	3
4	3
4	4
3	4
4	5
1	6
2	6
3	6
4	7
2	8
1	9
3	9
1	10
4	10
2	11
1	12
3	12
4	13
2	14
1	15
2	15
1	16
3	16
4	17
2	17
3	18
1	19
4	19
3	19
1	20
2	20
4	20
2	21
3	21
4	22
3	22
4	23
4	24
2	24
2	25
\.


--
-- Data for Name: rooms; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY rooms (id, xcoord, ycoord, title, description, items, image, exits_id, created_at, updated_at) FROM stdin;
1	1	1	\N	\N	\N	\N	\N	2018-07-23 18:22:50.688408	2018-07-23 18:22:50.688408
2	2	1	\N	\N	\N	\N	\N	2018-07-23 18:22:50.690989	2018-07-23 18:22:50.690989
3	3	1	\N	\N	\N	\N	\N	2018-07-23 18:22:50.692832	2018-07-23 18:22:50.692832
4	4	1	\N	\N	\N	\N	\N	2018-07-23 18:22:50.694268	2018-07-23 18:22:50.694268
5	5	1	\N	\N	\N	\N	\N	2018-07-23 18:22:50.695551	2018-07-23 18:22:50.695551
6	1	2	\N	\N	\N	\N	\N	2018-07-23 18:22:50.696977	2018-07-23 18:22:50.696977
7	2	2	\N	\N	\N	\N	\N	2018-07-23 18:22:50.698448	2018-07-23 18:22:50.698448
8	3	2	\N	\N	\N	\N	\N	2018-07-23 18:22:50.699916	2018-07-23 18:22:50.699916
9	4	2	\N	\N	\N	\N	\N	2018-07-23 18:22:50.701216	2018-07-23 18:22:50.701216
10	5	2	\N	\N	\N	\N	\N	2018-07-23 18:22:50.702521	2018-07-23 18:22:50.702521
11	1	3	\N	\N	\N	\N	\N	2018-07-23 18:22:50.703884	2018-07-23 18:22:50.703884
12	2	3	\N	\N	\N	\N	\N	2018-07-23 18:22:50.705184	2018-07-23 18:22:50.705184
13	3	3	\N	\N	\N	\N	\N	2018-07-23 18:22:50.706442	2018-07-23 18:22:50.706442
14	4	3	\N	\N	\N	\N	\N	2018-07-23 18:22:50.707713	2018-07-23 18:22:50.707713
15	5	3	\N	\N	\N	\N	\N	2018-07-23 18:22:50.70899	2018-07-23 18:22:50.70899
16	1	4	\N	\N	\N	\N	\N	2018-07-23 18:22:50.710276	2018-07-23 18:22:50.710276
17	2	4	\N	\N	\N	\N	\N	2018-07-23 18:22:50.711549	2018-07-23 18:22:50.711549
18	3	4	\N	\N	\N	\N	\N	2018-07-23 18:22:50.712974	2018-07-23 18:22:50.712974
19	4	4	\N	\N	\N	\N	\N	2018-07-23 18:22:50.714532	2018-07-23 18:22:50.714532
20	5	4	\N	\N	\N	\N	\N	2018-07-23 18:22:50.715883	2018-07-23 18:22:50.715883
21	1	5	\N	\N	\N	\N	\N	2018-07-23 18:22:50.717161	2018-07-23 18:22:50.717161
22	2	5	\N	\N	\N	\N	\N	2018-07-23 18:22:50.718436	2018-07-23 18:22:50.718436
23	3	5	\N	\N	\N	\N	\N	2018-07-23 18:22:50.719728	2018-07-23 18:22:50.719728
24	4	5	\N	\N	\N	\N	\N	2018-07-23 18:22:50.720999	2018-07-23 18:22:50.720999
25	5	5	\N	\N	\N	\N	\N	2018-07-23 18:22:50.722611	2018-07-23 18:22:50.722611
\.


--
-- Name: rooms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Guest
--

SELECT pg_catalog.setval('rooms_id_seq', 25, true);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY schema_migrations (version) FROM stdin;
20180723054644
20180723155903
20180723174317
20180723180445
\.


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: exits exits_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY exits
    ADD CONSTRAINT exits_pkey PRIMARY KEY (id);


--
-- Name: rooms rooms_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY rooms
    ADD CONSTRAINT rooms_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: index_exits_on_rooms_id; Type: INDEX; Schema: public; Owner: Guest
--

CREATE INDEX index_exits_on_rooms_id ON exits USING btree (rooms_id);


--
-- Name: index_exits_rooms_on_exit_id; Type: INDEX; Schema: public; Owner: Guest
--

CREATE INDEX index_exits_rooms_on_exit_id ON exits_rooms USING btree (exit_id);


--
-- Name: index_exits_rooms_on_room_id; Type: INDEX; Schema: public; Owner: Guest
--

CREATE INDEX index_exits_rooms_on_room_id ON exits_rooms USING btree (room_id);


--
-- Name: index_rooms_on_exits_id; Type: INDEX; Schema: public; Owner: Guest
--

CREATE INDEX index_rooms_on_exits_id ON rooms USING btree (exits_id);


--
-- PostgreSQL database dump complete
--

