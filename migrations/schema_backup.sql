--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.4

-- Started on 2025-07-11 13:03:19

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
-- SET transaction_timeout = 0;
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
-- TOC entry 218 (class 1259 OID 57353)
-- Name: most_played; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.most_played (
    id integer NOT NULL,
    rank integer,
    name text,
    current_players integer,
    peak_players_24hrs integer,
    peak_players_alltime integer,
    scraped_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.most_played OWNER TO user123;

--
-- TOC entry 217 (class 1259 OID 57352)
-- Name: most_played_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.most_played_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.most_played_id_seq OWNER TO user123;

--
-- TOC entry 4898 (class 0 OID 0)
-- Dependencies: 217
-- Name: most_played_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.most_played_id_seq OWNED BY public.most_played.id;


--
-- TOC entry 4742 (class 2604 OID 57356)
-- Name: most_played id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.most_played ALTER COLUMN id SET DEFAULT nextval('public.most_played_id_seq'::regclass);


--
-- TOC entry 4892 (class 0 OID 57353)
-- Dependencies: 218
-- Data for Name: most_played; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.most_played (id, rank, name, current_players, peak_players_24hrs, peak_players_alltime, scraped_at) FROM stdin;
\.


--
-- TOC entry 4899 (class 0 OID 0)
-- Dependencies: 217
-- Name: most_played_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.most_played_id_seq', 1, false);


--
-- TOC entry 4745 (class 2606 OID 57361)
-- Name: most_played most_played_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.most_played
    ADD CONSTRAINT most_played_pkey PRIMARY KEY (id);


-- Completed on 2025-07-11 13:03:20

--
-- PostgreSQL database dump complete
--

