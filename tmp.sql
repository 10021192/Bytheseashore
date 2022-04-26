--INSERTS ON LIKE 730





--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2 (Ubuntu 14.2-1.pgdg20.04+1)
-- Dumped by pg_dump version 14.2

-- Started on 2022-04-25 23:55:08

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
-- TOC entry 210 (class 1259 OID 2905395)
-- Name: card; Type: TABLE; Schema: public; Owner: lleyvtvwilnozq
--

CREATE TABLE public.card (
    card_id integer NOT NULL,
    card_name character varying(80),
    card_description character varying(200),
    card_quantity integer NOT NULL
);


ALTER TABLE public.card OWNER TO lleyvtvwilnozq;

--
-- TOC entry 209 (class 1259 OID 2905394)
-- Name: card_card_id_seq; Type: SEQUENCE; Schema: public; Owner: lleyvtvwilnozq
--

CREATE SEQUENCE public.card_card_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.card_card_id_seq OWNER TO lleyvtvwilnozq;

--
-- TOC entry 4395 (class 0 OID 0)
-- Dependencies: 209
-- Name: card_card_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lleyvtvwilnozq
--

ALTER SEQUENCE public.card_card_id_seq OWNED BY public.card.card_id;


--
-- TOC entry 212 (class 1259 OID 2905402)
-- Name: cardstate; Type: TABLE; Schema: public; Owner: lleyvtvwilnozq
--

CREATE TABLE public.cardstate (
    id integer NOT NULL,
    card_state_id integer NOT NULL,
    card_state_description character varying(50)
);


ALTER TABLE public.cardstate OWNER TO lleyvtvwilnozq;

--
-- TOC entry 211 (class 1259 OID 2905401)
-- Name: cardstate_id_seq; Type: SEQUENCE; Schema: public; Owner: lleyvtvwilnozq
--

CREATE SEQUENCE public.cardstate_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cardstate_id_seq OWNER TO lleyvtvwilnozq;

--
-- TOC entry 4396 (class 0 OID 0)
-- Dependencies: 211
-- Name: cardstate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lleyvtvwilnozq
--

ALTER SEQUENCE public.cardstate_id_seq OWNED BY public.cardstate.id;


--
-- TOC entry 225 (class 1259 OID 3201217)
-- Name: compass; Type: TABLE; Schema: public; Owner: lleyvtvwilnozq
--

CREATE TABLE public.compass (
    compass_id integer NOT NULL
);


ALTER TABLE public.compass OWNER TO lleyvtvwilnozq;

--
-- TOC entry 224 (class 1259 OID 3201140)
-- Name: compasstate; Type: TABLE; Schema: public; Owner: lleyvtvwilnozq
--

CREATE TABLE public.compasstate (
    id integer NOT NULL,
    compass_state_id integer NOT NULL,
    compass_state_description character varying(50)
);


ALTER TABLE public.compasstate OWNER TO lleyvtvwilnozq;

--
-- TOC entry 223 (class 1259 OID 3201139)
-- Name: compasstate_id_seq; Type: SEQUENCE; Schema: public; Owner: lleyvtvwilnozq
--

CREATE SEQUENCE public.compasstate_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.compasstate_id_seq OWNER TO lleyvtvwilnozq;

--
-- TOC entry 4397 (class 0 OID 0)
-- Dependencies: 223
-- Name: compasstate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lleyvtvwilnozq
--

ALTER SEQUENCE public.compasstate_id_seq OWNED BY public.compasstate.id;


--
-- TOC entry 222 (class 1259 OID 3157568)
-- Name: matchcard; Type: TABLE; Schema: public; Owner: lleyvtvwilnozq
--

CREATE TABLE public.matchcard (
    match_id integer NOT NULL,
    player_id integer,
    card_id integer NOT NULL,
    card_state_id integer NOT NULL
);


ALTER TABLE public.matchcard OWNER TO lleyvtvwilnozq;

--
-- TOC entry 221 (class 1259 OID 3157567)
-- Name: matchcard_match_id_seq; Type: SEQUENCE; Schema: public; Owner: lleyvtvwilnozq
--

CREATE SEQUENCE public.matchcard_match_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.matchcard_match_id_seq OWNER TO lleyvtvwilnozq;

--
-- TOC entry 4398 (class 0 OID 0)
-- Dependencies: 221
-- Name: matchcard_match_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lleyvtvwilnozq
--

ALTER SEQUENCE public.matchcard_match_id_seq OWNED BY public.matchcard.match_id;


--
-- TOC entry 214 (class 1259 OID 2905430)
-- Name: matchcompass; Type: TABLE; Schema: public; Owner: lleyvtvwilnozq
--

CREATE TABLE public.matchcompass (
    match_id integer NOT NULL,
    player_id integer NOT NULL,
    compass_id integer NOT NULL,
    compass_state_id integer NOT NULL
);


ALTER TABLE public.matchcompass OWNER TO lleyvtvwilnozq;

--
-- TOC entry 213 (class 1259 OID 2905429)
-- Name: matchcompass_match_id_seq; Type: SEQUENCE; Schema: public; Owner: lleyvtvwilnozq
--

CREATE SEQUENCE public.matchcompass_match_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.matchcompass_match_id_seq OWNER TO lleyvtvwilnozq;

--
-- TOC entry 4399 (class 0 OID 0)
-- Dependencies: 213
-- Name: matchcompass_match_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lleyvtvwilnozq
--

ALTER SEQUENCE public.matchcompass_match_id_seq OWNED BY public.matchcompass.match_id;


--
-- TOC entry 216 (class 1259 OID 2905458)
-- Name: matches; Type: TABLE; Schema: public; Owner: lleyvtvwilnozq
--

CREATE TABLE public.matches (
    match_id integer NOT NULL,
    match_player1_id integer NOT NULL,
    match_player2_id integer NOT NULL
);


ALTER TABLE public.matches OWNER TO lleyvtvwilnozq;

--
-- TOC entry 215 (class 1259 OID 2905457)
-- Name: matches_match_id_seq; Type: SEQUENCE; Schema: public; Owner: lleyvtvwilnozq
--

CREATE SEQUENCE public.matches_match_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.matches_match_id_seq OWNER TO lleyvtvwilnozq;

--
-- TOC entry 4400 (class 0 OID 0)
-- Dependencies: 215
-- Name: matches_match_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lleyvtvwilnozq
--

ALTER SEQUENCE public.matches_match_id_seq OWNED BY public.matches.match_id;


--
-- TOC entry 231 (class 1259 OID 3201862)
-- Name: matchtrap; Type: TABLE; Schema: public; Owner: lleyvtvwilnozq
--

CREATE TABLE public.matchtrap (
    match_id integer NOT NULL,
    player_id integer,
    trap_id integer NOT NULL,
    trap_state_id integer NOT NULL
);


ALTER TABLE public.matchtrap OWNER TO lleyvtvwilnozq;

--
-- TOC entry 230 (class 1259 OID 3201861)
-- Name: matchtrap_match_id_seq; Type: SEQUENCE; Schema: public; Owner: lleyvtvwilnozq
--

CREATE SEQUENCE public.matchtrap_match_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.matchtrap_match_id_seq OWNER TO lleyvtvwilnozq;

--
-- TOC entry 4401 (class 0 OID 0)
-- Dependencies: 230
-- Name: matchtrap_match_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lleyvtvwilnozq
--

ALTER SEQUENCE public.matchtrap_match_id_seq OWNED BY public.matchtrap.match_id;


--
-- TOC entry 217 (class 1259 OID 2905464)
-- Name: player; Type: TABLE; Schema: public; Owner: lleyvtvwilnozq
--

CREATE TABLE public.player (
    player_id integer NOT NULL,
    player_name character varying(50)
);


ALTER TABLE public.player OWNER TO lleyvtvwilnozq;

--
-- TOC entry 220 (class 1259 OID 2905475)
-- Name: playertotile; Type: TABLE; Schema: public; Owner: lleyvtvwilnozq
--

CREATE TABLE public.playertotile (
    playertotile_id integer NOT NULL,
    player_id integer NOT NULL,
    tile_id integer NOT NULL
);


ALTER TABLE public.playertotile OWNER TO lleyvtvwilnozq;

--
-- TOC entry 219 (class 1259 OID 2905474)
-- Name: playertotile_playertotile_id_seq; Type: SEQUENCE; Schema: public; Owner: lleyvtvwilnozq
--

CREATE SEQUENCE public.playertotile_playertotile_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.playertotile_playertotile_id_seq OWNER TO lleyvtvwilnozq;

--
-- TOC entry 4402 (class 0 OID 0)
-- Dependencies: 219
-- Name: playertotile_playertotile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lleyvtvwilnozq
--

ALTER SEQUENCE public.playertotile_playertotile_id_seq OWNED BY public.playertotile.playertotile_id;


--
-- TOC entry 218 (class 1259 OID 2905469)
-- Name: tile; Type: TABLE; Schema: public; Owner: lleyvtvwilnozq
--

CREATE TABLE public.tile (
    tile_id integer NOT NULL
);


ALTER TABLE public.tile OWNER TO lleyvtvwilnozq;

--
-- TOC entry 227 (class 1259 OID 3201765)
-- Name: trap; Type: TABLE; Schema: public; Owner: lleyvtvwilnozq
--

CREATE TABLE public.trap (
    trap_id integer NOT NULL,
    trap_tile_id integer NOT NULL
);


ALTER TABLE public.trap OWNER TO lleyvtvwilnozq;

--
-- TOC entry 226 (class 1259 OID 3201764)
-- Name: trap_trap_id_seq; Type: SEQUENCE; Schema: public; Owner: lleyvtvwilnozq
--

CREATE SEQUENCE public.trap_trap_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.trap_trap_id_seq OWNER TO lleyvtvwilnozq;

--
-- TOC entry 4403 (class 0 OID 0)
-- Dependencies: 226
-- Name: trap_trap_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lleyvtvwilnozq
--

ALTER SEQUENCE public.trap_trap_id_seq OWNED BY public.trap.trap_id;


--
-- TOC entry 229 (class 1259 OID 3201839)
-- Name: trapstate; Type: TABLE; Schema: public; Owner: lleyvtvwilnozq
--

CREATE TABLE public.trapstate (
    id integer NOT NULL,
    trap_state_id integer NOT NULL,
    trap_state_description character varying(50)
);


ALTER TABLE public.trapstate OWNER TO lleyvtvwilnozq;

--
-- TOC entry 228 (class 1259 OID 3201838)
-- Name: trapstate_id_seq; Type: SEQUENCE; Schema: public; Owner: lleyvtvwilnozq
--

CREATE SEQUENCE public.trapstate_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.trapstate_id_seq OWNER TO lleyvtvwilnozq;

--
-- TOC entry 4404 (class 0 OID 0)
-- Dependencies: 228
-- Name: trapstate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lleyvtvwilnozq
--

ALTER SEQUENCE public.trapstate_id_seq OWNED BY public.trapstate.id;


--
-- TOC entry 4208 (class 2604 OID 2905398)
-- Name: card card_id; Type: DEFAULT; Schema: public; Owner: lleyvtvwilnozq
--

ALTER TABLE ONLY public.card ALTER COLUMN card_id SET DEFAULT nextval('public.card_card_id_seq'::regclass);


--
-- TOC entry 4209 (class 2604 OID 2905405)
-- Name: cardstate id; Type: DEFAULT; Schema: public; Owner: lleyvtvwilnozq
--

ALTER TABLE ONLY public.cardstate ALTER COLUMN id SET DEFAULT nextval('public.cardstate_id_seq'::regclass);


--
-- TOC entry 4214 (class 2604 OID 3201143)
-- Name: compasstate id; Type: DEFAULT; Schema: public; Owner: lleyvtvwilnozq
--

ALTER TABLE ONLY public.compasstate ALTER COLUMN id SET DEFAULT nextval('public.compasstate_id_seq'::regclass);


--
-- TOC entry 4213 (class 2604 OID 3157571)
-- Name: matchcard match_id; Type: DEFAULT; Schema: public; Owner: lleyvtvwilnozq
--

ALTER TABLE ONLY public.matchcard ALTER COLUMN match_id SET DEFAULT nextval('public.matchcard_match_id_seq'::regclass);


--
-- TOC entry 4210 (class 2604 OID 2905433)
-- Name: matchcompass match_id; Type: DEFAULT; Schema: public; Owner: lleyvtvwilnozq
--

ALTER TABLE ONLY public.matchcompass ALTER COLUMN match_id SET DEFAULT nextval('public.matchcompass_match_id_seq'::regclass);


--
-- TOC entry 4211 (class 2604 OID 2905461)
-- Name: matches match_id; Type: DEFAULT; Schema: public; Owner: lleyvtvwilnozq
--

ALTER TABLE ONLY public.matches ALTER COLUMN match_id SET DEFAULT nextval('public.matches_match_id_seq'::regclass);


--
-- TOC entry 4217 (class 2604 OID 3201865)
-- Name: matchtrap match_id; Type: DEFAULT; Schema: public; Owner: lleyvtvwilnozq
--

ALTER TABLE ONLY public.matchtrap ALTER COLUMN match_id SET DEFAULT nextval('public.matchtrap_match_id_seq'::regclass);


--
-- TOC entry 4212 (class 2604 OID 2905478)
-- Name: playertotile playertotile_id; Type: DEFAULT; Schema: public; Owner: lleyvtvwilnozq
--

ALTER TABLE ONLY public.playertotile ALTER COLUMN playertotile_id SET DEFAULT nextval('public.playertotile_playertotile_id_seq'::regclass);


--
-- TOC entry 4215 (class 2604 OID 3201768)
-- Name: trap trap_id; Type: DEFAULT; Schema: public; Owner: lleyvtvwilnozq
--

ALTER TABLE ONLY public.trap ALTER COLUMN trap_id SET DEFAULT nextval('public.trap_trap_id_seq'::regclass);


--
-- TOC entry 4216 (class 2604 OID 3201842)
-- Name: trapstate id; Type: DEFAULT; Schema: public; Owner: lleyvtvwilnozq
--

ALTER TABLE ONLY public.trapstate ALTER COLUMN id SET DEFAULT nextval('public.trapstate_id_seq'::regclass);


--
-- TOC entry 4219 (class 2606 OID 2905400)
-- Name: card card_pkey; Type: CONSTRAINT; Schema: public; Owner: lleyvtvwilnozq
--

ALTER TABLE ONLY public.card
    ADD CONSTRAINT card_pkey PRIMARY KEY (card_id);


--
-- TOC entry 4221 (class 2606 OID 2905407)
-- Name: cardstate cardstate_pkey; Type: CONSTRAINT; Schema: public; Owner: lleyvtvwilnozq
--

ALTER TABLE ONLY public.cardstate
    ADD CONSTRAINT cardstate_pkey PRIMARY KEY (id);


--
-- TOC entry 4237 (class 2606 OID 3201221)
-- Name: compass compass_pkey; Type: CONSTRAINT; Schema: public; Owner: lleyvtvwilnozq
--

ALTER TABLE ONLY public.compass
    ADD CONSTRAINT compass_pkey PRIMARY KEY (compass_id);


--
-- TOC entry 4235 (class 2606 OID 3201145)
-- Name: compasstate compasstate_pkey; Type: CONSTRAINT; Schema: public; Owner: lleyvtvwilnozq
--

ALTER TABLE ONLY public.compasstate
    ADD CONSTRAINT compasstate_pkey PRIMARY KEY (id);


--
-- TOC entry 4233 (class 2606 OID 3157573)
-- Name: matchcard matchcard_pkey; Type: CONSTRAINT; Schema: public; Owner: lleyvtvwilnozq
--

ALTER TABLE ONLY public.matchcard
    ADD CONSTRAINT matchcard_pkey PRIMARY KEY (match_id);


--
-- TOC entry 4223 (class 2606 OID 2905435)
-- Name: matchcompass matchcompass_pkey; Type: CONSTRAINT; Schema: public; Owner: lleyvtvwilnozq
--

ALTER TABLE ONLY public.matchcompass
    ADD CONSTRAINT matchcompass_pkey PRIMARY KEY (match_id);


--
-- TOC entry 4225 (class 2606 OID 2905463)
-- Name: matches matches_pkey; Type: CONSTRAINT; Schema: public; Owner: lleyvtvwilnozq
--

ALTER TABLE ONLY public.matches
    ADD CONSTRAINT matches_pkey PRIMARY KEY (match_id);


--
-- TOC entry 4243 (class 2606 OID 3201867)
-- Name: matchtrap matchtrap_pkey; Type: CONSTRAINT; Schema: public; Owner: lleyvtvwilnozq
--

ALTER TABLE ONLY public.matchtrap
    ADD CONSTRAINT matchtrap_pkey PRIMARY KEY (match_id);


--
-- TOC entry 4227 (class 2606 OID 2905468)
-- Name: player player_pkey; Type: CONSTRAINT; Schema: public; Owner: lleyvtvwilnozq
--

ALTER TABLE ONLY public.player
    ADD CONSTRAINT player_pkey PRIMARY KEY (player_id);


--
-- TOC entry 4231 (class 2606 OID 2905480)
-- Name: playertotile playertotile_pkey; Type: CONSTRAINT; Schema: public; Owner: lleyvtvwilnozq
--

ALTER TABLE ONLY public.playertotile
    ADD CONSTRAINT playertotile_pkey PRIMARY KEY (playertotile_id);


--
-- TOC entry 4229 (class 2606 OID 2905473)
-- Name: tile tile_pkey; Type: CONSTRAINT; Schema: public; Owner: lleyvtvwilnozq
--

ALTER TABLE ONLY public.tile
    ADD CONSTRAINT tile_pkey PRIMARY KEY (tile_id);


--
-- TOC entry 4239 (class 2606 OID 3201770)
-- Name: trap trap_pkey; Type: CONSTRAINT; Schema: public; Owner: lleyvtvwilnozq
--

ALTER TABLE ONLY public.trap
    ADD CONSTRAINT trap_pkey PRIMARY KEY (trap_id);


--
-- TOC entry 4241 (class 2606 OID 3201844)
-- Name: trapstate trapstate_pkey; Type: CONSTRAINT; Schema: public; Owner: lleyvtvwilnozq
--

ALTER TABLE ONLY public.trapstate
    ADD CONSTRAINT trapstate_pkey PRIMARY KEY (id);


--
-- TOC entry 4244 (class 2606 OID 2905481)
-- Name: cardstate cardstate_fk_card; Type: FK CONSTRAINT; Schema: public; Owner: lleyvtvwilnozq
--

ALTER TABLE ONLY public.cardstate
    ADD CONSTRAINT cardstate_fk_card FOREIGN KEY (card_state_id) REFERENCES public.card(card_id);


--
-- TOC entry 4245 (class 2606 OID 2905531)
-- Name: matches fk_matches_player; Type: FK CONSTRAINT; Schema: public; Owner: lleyvtvwilnozq
--

ALTER TABLE ONLY public.matches
    ADD CONSTRAINT fk_matches_player FOREIGN KEY (match_player2_id) REFERENCES public.player(player_id);


--
-- TOC entry 4246 (class 2606 OID 2905526)
-- Name: matches matches_fk_player; Type: FK CONSTRAINT; Schema: public; Owner: lleyvtvwilnozq
--

ALTER TABLE ONLY public.matches
    ADD CONSTRAINT matches_fk_player FOREIGN KEY (match_player1_id) REFERENCES public.player(player_id);


--
-- TOC entry 4247 (class 2606 OID 2905501)
-- Name: playertotile playertotile_fk_player; Type: FK CONSTRAINT; Schema: public; Owner: lleyvtvwilnozq
--

ALTER TABLE ONLY public.playertotile
    ADD CONSTRAINT playertotile_fk_player FOREIGN KEY (player_id) REFERENCES public.player(player_id);


--
-- TOC entry 4248 (class 2606 OID 2905496)
-- Name: playertotile playertotile_fk_tile; Type: FK CONSTRAINT; Schema: public; Owner: lleyvtvwilnozq
--

ALTER TABLE ONLY public.playertotile
    ADD CONSTRAINT playertotile_fk_tile FOREIGN KEY (tile_id) REFERENCES public.tile(tile_id);


--
-- TOC entry 4393 (class 0 OID 0)
-- Dependencies: 5
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: lleyvtvwilnozq
--

REVOKE ALL ON SCHEMA public FROM postgres;
REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO lleyvtvwilnozq;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- TOC entry 4394 (class 0 OID 0)
-- Dependencies: 883
-- Name: LANGUAGE plpgsql; Type: ACL; Schema: -; Owner: postgres
--

GRANT ALL ON LANGUAGE plpgsql TO lleyvtvwilnozq;


-- Completed on 2022-04-25 23:56:06

--
-- PostgreSQL database dump complete
--

Insert into card (card_name,card_description,card_quantity) values ('Progress','Forward! Advance 1 tile towards the treasure.',18);
Insert into card (card_name,card_description,card_quantity) values ('Adrift','Where to go? Block your adversary''s compass, the next 3 turns.',4);
Insert into card (card_name,card_description,card_quantity) values ('Thief','Steal! Pick 1 card of your choice from your opponent''s hand and make it yours.',8);
Insert into card (card_name,card_description,card_quantity) values ('Merchant','Force your enemy into a 1 for 1 card trade with you.You pick the cards you give and take.',8);
Insert into card (card_name,card_description,card_quantity) values ('Disarm','No more stalling. Disarm the trap and get back on your feet with this.',4);

Insert into cardstate(card_state_id,card_state_description) values (1,'Hand');
Insert into cardstate(card_state_id,card_state_description) values (2,'Deck');
Insert into cardstate(card_state_id,card_state_description) values (3,'Graveyard');

Insert into matchcard(player_id,card_id,card_state_id) values (1,13,1);
Insert into matchcard(player_id,card_id,card_state_id) values (1,28,1);
Insert into matchcard(player_id,card_id,card_state_id) values (2,41,1);
Insert into matchcard(player_id,card_id,card_state_id) values (null,5,2);
Insert into matchcard(player_id,card_id,card_state_id) values (null,33,3);

Insert into compasstate(compass_state_id,compass_state_description) values (1,'Passive');
Insert into compasstate(compass_state_id,compass_state_description) values (2,'Blocked');
Insert into compasstate(compass_state_id,compass_state_description) values (3,'Buffed');

Insert into matchcompass(player_id,compass_id,compass_state_id) values (1,1,1);
Insert into matchcompass(player_id,compass_id,compass_state_id) values (2,2,2);

Insert into compass(compass_id) values(1);
Insert into compass(compass_id) values(2);

Insert into player (player_name) values ('Francis');
Insert into player (player_name) values ('Romero');

Insert into playertotile (player_id,tile_id) values(1,5);
Insert into playertotile (player_id,tile_id) values(2,8);

Insert into tile (tile_id) values (1);
Insert into tile (tile_id) values (2);
Insert into tile (tile_id) values (3);
Insert into tile (tile_id) values (4);
Insert into tile (tile_id) values (5);
Insert into tile (tile_id) values (6);
Insert into tile (tile_id) values (7);
Insert into tile (tile_id) values (8);
Insert into tile (tile_id) values (9);
Insert into tile (tile_id) values (10);
Insert into tile (tile_id) values (11);
Insert into tile (tile_id) values (12);
Insert into tile (tile_id) values (13);
Insert into tile (tile_id) values (14);
Insert into tile (tile_id) values (15);
Insert into tile (tile_id) values (16);
Insert into tile (tile_id) values (17);
Insert into tile (tile_id) values (18);
Insert into tile (tile_id) values (19);
Insert into tile (tile_id) values (20);
Insert into tile (tile_id) values (21);
Insert into tile (tile_id) values (22);
Insert into tile (tile_id) values (23);
Insert into tile (tile_id) values (24);
Insert into tile (tile_id) values (25);

Insert into trap (trap_tile_id) values (1);
Insert into trap (trap_tile_id) values (2);
Insert into trap (trap_tile_id) values (3);
Insert into trap (trap_tile_id) values (4);
Insert into trap (trap_tile_id) values (5);
Insert into trap (trap_tile_id) values (6);
Insert into trap (trap_tile_id) values (7);
Insert into trap (trap_tile_id) values (8);
Insert into trap (trap_tile_id) values (9);
Insert into trap (trap_tile_id) values (10);
Insert into trap (trap_tile_id) values (11);
Insert into trap (trap_tile_id) values (12);
Insert into trap (trap_tile_id) values (13);
Insert into trap (trap_tile_id) values (14);
Insert into trap (trap_tile_id) values (15);
Insert into trap (trap_tile_id) values (16);
Insert into trap (trap_tile_id) values (17);
Insert into trap (trap_tile_id) values (18);
Insert into trap (trap_tile_id) values (19);
Insert into trap (trap_tile_id) values (20);
Insert into trap (trap_tile_id) values (21);
Insert into trap (trap_tile_id) values (22);
Insert into trap (trap_tile_id) values (23);
Insert into trap (trap_tile_id) values (24);
Insert into trap (trap_tile_id) values (25);

Insert into trapstate(trap_state_id,trap_state_description) values (1,'Inactive');
Insert into trapstate(trap_state_id,trap_state_description) values (2,'Active');

Insert into matchtrap(player_id,trap_id,trap_state_id) values (null,4,1);
Insert into matchtrap(player_id,trap_id,trap_state_id) values (null,6,1);
Insert into matchtrap(player_id,trap_id,trap_state_id) values (null,10,1);
Insert into matchtrap(player_id,trap_id,trap_state_id) values (1,12,2);
Insert into matchtrap(player_id,trap_id,trap_state_id) values (2,15,1);
Insert into matchtrap(player_id,trap_id,trap_state_id) values (1,17,1);
Insert into matchtrap(player_id,trap_id,trap_state_id) values (2,18,1);
Insert into matchtrap(player_id,trap_id,trap_state_id) values (1,20,1);

Insert into matches(match_player1_id,match_player2_id) values (1,2)