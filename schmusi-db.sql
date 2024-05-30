--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.18
-- Dumped by pg_dump version 12.2 (Ubuntu 12.2-2.pgdg16.04+1)

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

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO "XANEURLENTLEMOIRTAGETAGE";

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

CREATE SEQUENCE public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO "XANEURLENTLEMOIRTAGETAGE";

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO "XANEURLENTLEMOIRTAGETAGE";

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO "XANEURLENTLEMOIRTAGETAGE";

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO "XANEURLENTLEMOIRTAGETAGE";

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

CREATE SEQUENCE public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO "XANEURLENTLEMOIRTAGETAGE";

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO "XANEURLENTLEMOIRTAGETAGE";

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO "XANEURLENTLEMOIRTAGETAGE";

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO "XANEURLENTLEMOIRTAGETAGE";

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

CREATE SEQUENCE public.auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO "XANEURLENTLEMOIRTAGETAGE";

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO "XANEURLENTLEMOIRTAGETAGE";

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO "XANEURLENTLEMOIRTAGETAGE";

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO "XANEURLENTLEMOIRTAGETAGE";

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

CREATE SEQUENCE public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO "XANEURLENTLEMOIRTAGETAGE";

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO "XANEURLENTLEMOIRTAGETAGE";

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

CREATE SEQUENCE public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO "XANEURLENTLEMOIRTAGETAGE";

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO "XANEURLENTLEMOIRTAGETAGE";

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO "XANEURLENTLEMOIRTAGETAGE";

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO "XANEURLENTLEMOIRTAGETAGE";

--
-- Name: django_site; Type: TABLE; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

CREATE TABLE public.django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.django_site OWNER TO "XANEURLENTLEMOIRTAGETAGE";

--
-- Name: django_site_id_seq; Type: SEQUENCE; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

CREATE SEQUENCE public.django_site_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_site_id_seq OWNER TO "XANEURLENTLEMOIRTAGETAGE";

--
-- Name: django_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

ALTER SEQUENCE public.django_site_id_seq OWNED BY public.django_site.id;


--
-- Name: record_album; Type: TABLE; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

CREATE TABLE public.record_album (
    id integer NOT NULL,
    name character varying(159) NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.record_album OWNER TO "XANEURLENTLEMOIRTAGETAGE";

--
-- Name: record_album_clips; Type: TABLE; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

CREATE TABLE public.record_album_clips (
    id integer NOT NULL,
    album_id integer NOT NULL,
    audioclip_id integer NOT NULL
);


ALTER TABLE public.record_album_clips OWNER TO "XANEURLENTLEMOIRTAGETAGE";

--
-- Name: record_album_clips_id_seq; Type: SEQUENCE; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

CREATE SEQUENCE public.record_album_clips_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.record_album_clips_id_seq OWNER TO "XANEURLENTLEMOIRTAGETAGE";

--
-- Name: record_album_clips_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

ALTER SEQUENCE public.record_album_clips_id_seq OWNED BY public.record_album_clips.id;


--
-- Name: record_album_id_seq; Type: SEQUENCE; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

CREATE SEQUENCE public.record_album_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.record_album_id_seq OWNER TO "XANEURLENTLEMOIRTAGETAGE";

--
-- Name: record_album_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

ALTER SEQUENCE public.record_album_id_seq OWNED BY public.record_album.id;


--
-- Name: record_audioclip; Type: TABLE; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

CREATE TABLE public.record_audioclip (
    id integer NOT NULL,
    name character varying(159) NOT NULL,
    source_file character varying(100) NOT NULL,
    mp3_file character varying(100),
    user_id integer NOT NULL,
    wav_form character varying(100)
);


ALTER TABLE public.record_audioclip OWNER TO "XANEURLENTLEMOIRTAGETAGE";

--
-- Name: record_audioclip_id_seq; Type: SEQUENCE; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

CREATE SEQUENCE public.record_audioclip_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.record_audioclip_id_seq OWNER TO "XANEURLENTLEMOIRTAGETAGE";

--
-- Name: record_audioclip_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

ALTER SEQUENCE public.record_audioclip_id_seq OWNED BY public.record_audioclip.id;


--
-- Name: record_library; Type: TABLE; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

CREATE TABLE public.record_library (
    id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.record_library OWNER TO "XANEURLENTLEMOIRTAGETAGE";

--
-- Name: record_library_clips; Type: TABLE; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

CREATE TABLE public.record_library_clips (
    id integer NOT NULL,
    library_id integer NOT NULL,
    audioclip_id integer NOT NULL
);


ALTER TABLE public.record_library_clips OWNER TO "XANEURLENTLEMOIRTAGETAGE";

--
-- Name: record_library_clips_id_seq; Type: SEQUENCE; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

CREATE SEQUENCE public.record_library_clips_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.record_library_clips_id_seq OWNER TO "XANEURLENTLEMOIRTAGETAGE";

--
-- Name: record_library_clips_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

ALTER SEQUENCE public.record_library_clips_id_seq OWNED BY public.record_library_clips.id;


--
-- Name: record_library_id_seq; Type: SEQUENCE; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

CREATE SEQUENCE public.record_library_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.record_library_id_seq OWNER TO "XANEURLENTLEMOIRTAGETAGE";

--
-- Name: record_library_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

ALTER SEQUENCE public.record_library_id_seq OWNED BY public.record_library.id;


--
-- Name: record_profile; Type: TABLE; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

CREATE TABLE public.record_profile (
    id integer NOT NULL,
    active boolean NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.record_profile OWNER TO "XANEURLENTLEMOIRTAGETAGE";

--
-- Name: record_profile_id_seq; Type: SEQUENCE; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

CREATE SEQUENCE public.record_profile_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.record_profile_id_seq OWNER TO "XANEURLENTLEMOIRTAGETAGE";

--
-- Name: record_profile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

ALTER SEQUENCE public.record_profile_id_seq OWNED BY public.record_profile.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: django_site id; Type: DEFAULT; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

ALTER TABLE ONLY public.django_site ALTER COLUMN id SET DEFAULT nextval('public.django_site_id_seq'::regclass);


--
-- Name: record_album id; Type: DEFAULT; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

ALTER TABLE ONLY public.record_album ALTER COLUMN id SET DEFAULT nextval('public.record_album_id_seq'::regclass);


--
-- Name: record_album_clips id; Type: DEFAULT; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

ALTER TABLE ONLY public.record_album_clips ALTER COLUMN id SET DEFAULT nextval('public.record_album_clips_id_seq'::regclass);


--
-- Name: record_audioclip id; Type: DEFAULT; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

ALTER TABLE ONLY public.record_audioclip ALTER COLUMN id SET DEFAULT nextval('public.record_audioclip_id_seq'::regclass);


--
-- Name: record_library id; Type: DEFAULT; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

ALTER TABLE ONLY public.record_library ALTER COLUMN id SET DEFAULT nextval('public.record_library_id_seq'::regclass);


--
-- Name: record_library_clips id; Type: DEFAULT; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

ALTER TABLE ONLY public.record_library_clips ALTER COLUMN id SET DEFAULT nextval('public.record_library_clips_id_seq'::regclass);


--
-- Name: record_profile id; Type: DEFAULT; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

ALTER TABLE ONLY public.record_profile ALTER COLUMN id SET DEFAULT nextval('public.record_profile_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add library	1	add_library
2	Can change library	1	change_library
3	Can delete library	1	delete_library
4	Can add audio clip	2	add_audioclip
5	Can change audio clip	2	change_audioclip
6	Can delete audio clip	2	delete_audioclip
7	Can add track	3	add_track
8	Can change track	3	change_track
9	Can delete track	3	delete_track
10	Can add profile	4	add_profile
11	Can change profile	4	change_profile
12	Can delete profile	4	delete_profile
13	Can add log entry	5	add_logentry
14	Can change log entry	5	change_logentry
15	Can delete log entry	5	delete_logentry
16	Can add site	6	add_site
17	Can change site	6	change_site
18	Can delete site	6	delete_site
19	Can add user	7	add_user
20	Can change user	7	change_user
21	Can delete user	7	delete_user
22	Can add group	8	add_group
23	Can change group	8	change_group
24	Can delete group	8	delete_group
25	Can add permission	9	add_permission
26	Can change permission	9	change_permission
27	Can delete permission	9	delete_permission
28	Can add content type	10	add_contenttype
29	Can change content type	10	change_contenttype
30	Can delete content type	10	delete_contenttype
31	Can add session	11	add_session
32	Can change session	11	change_session
33	Can delete session	11	delete_session
34	Can add album	12	add_album
35	Can change album	12	change_album
36	Can delete album	12	delete_album
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
2	pbkdf2_sha256$100000$P9BbnEvexhPP$y2cFL0r/9VGB0RGnjce0b13zSXYBrxkXgiJ4KDNMkso=	\N	f	thatcalifire			goff.caley@gmail.com	f	t	2019-07-30 15:25:59.221107+00
3	pbkdf2_sha256$100000$hFlQMVf1thxg$Pykx3Ch9VEwTGLBMwuayLvAP4575vP3UMjePr6EvAMU=	\N	f	dminus@dmin.us			dminus@dmin.us	f	t	2019-07-30 20:59:08.616317+00
6	pbkdf2_sha256$100000$QKADGvhlrLoU$tv4VrDeksLFhGYT3npsvGbf6IZpvGUUTivm70SWgThw=	\N	f	chris			chongdom@gmail.com	f	t	2019-09-29 02:15:28.189779+00
8	pbkdf2_sha256$100000$EuluoSXFawMg$48ebGR0AeENJ3AC9LvN6qqDO3v+QXKp9yDqfAwI03bg=	\N	f	klasjdflkajsdf			d@derekadair.com	f	t	2020-03-20 16:24:37.101766+00
1	pbkdf2_sha256$100000$0DdVMpTY9SrM$7jrM09sNJsx77zovyjpEKzbB06mt4fKMt7efrI9RoLU=	2020-03-29 13:52:52.167531+00	t	derek			d@derekadair.com	t	t	2019-07-19 18:37:00+00
9	pbkdf2_sha256$100000$VXxxOVs0tqr9$oL896LP61/h8FpXaivqthM8d8BD0K7I9YIXPWEnHRg0=	\N	f	Crowbar			thing8666@gmail.com	f	t	2020-04-24 18:36:45.687912+00
10	pbkdf2_sha256$100000$2FtetOvbNpbO$Fiytf2F3GqflF0eQk0x4icgqCiPAdkvK4NaBNz3EZMQ=	\N	f	Joelle3			management@wasteawaysaskips.com.au	f	t	2020-10-13 03:25:16.90045+00
11	pbkdf2_sha256$100000$AnsPzMXAAwAq$z5TfGKXHPOb1W+LfSZutwLGWAlOcymVXGmcQ9NrYHLw=	\N	f	Clare.Hayes			cierrar899@gmail.com	f	t	2020-10-14 21:30:41.559426+00
12	pbkdf2_sha256$100000$g8eLqwRcCdQX$3j5JeKkLDYIn05AZmKLQQvEWg9QXuTD3azw48L3q54M=	\N	f	Vicky35			jeanniefrank1960@gmail.com	f	t	2020-10-15 16:31:46.004186+00
13	pbkdf2_sha256$100000$Zbnw1oO7wOXJ$Pkz4lFvNxR+Q8ct/BwBRZoNt7A5OY9/gbyo1Vii7heQ=	\N	f	Eugenia.Hickle16			thuysarah0208@gmail.com	f	t	2020-10-16 13:10:07.845606+00
14	pbkdf2_sha256$100000$E23at1VVqvuh$oq1THNHnKbTR2wPyjWHrgbXhvPPwsFRpT0FJcoNcaUs=	\N	f	Kayden50			blackeefe2k10@gmail.com	f	t	2020-10-19 17:39:39.017014+00
15	pbkdf2_sha256$100000$b5PjKK5rbNF7$3bGkDBF62nR5A3GEgKSfAbrSEq2AHekd9GtuVKyzqg0=	\N	f	Angie_Boyer			angeldaughtrey@gmail.com	f	t	2020-10-22 19:10:19.726546+00
16	pbkdf2_sha256$100000$a6ym9BpsujhO$t8vDJOwihUpQTAX/YzPqaqN8Q6ND/RXU3ZzNsCpU5lQ=	\N	f	Ronny28			thehealdfamily@aol.com	f	t	2020-10-24 23:33:36.865368+00
17	pbkdf2_sha256$100000$S2p9c2jD6zmS$jeDOAPtunz2ZqIxPyQ0U6wTzoUmcb2NsYtYNNB2nzUY=	\N	f	Ari.Ziemann69			tbellman1@gmail.com	f	t	2020-10-31 22:48:26.826846+00
18	pbkdf2_sha256$100000$hzBdM5rFjYm4$+ITJ65kswlSAspgrQPIHimxor63Snow8HI8so06fZBo=	\N	f	Ines27			reikicolortherapy@gmail.com	f	t	2020-11-01 02:04:22.62025+00
19	pbkdf2_sha256$100000$cMiLQg8DdDlK$Or0GPtu1O83B9f8GMhDGQNXZBSWJJG5E/mPyA5p7PbM=	\N	f	Davonte.Hudson			karen@rtransport.us	f	t	2020-11-03 12:47:16.783256+00
20	pbkdf2_sha256$100000$ir1Ugd43yCX4$WCZyxu6DB9jYZZJrm7pQeoxUh1y8QA/0wCqRMHArqvw=	\N	f	Bell91			jhunter_1231@yahoo.com	f	t	2020-11-08 07:12:25.760259+00
21	pbkdf2_sha256$100000$GWYEYsWGLAb3$jGafd7PvwK48AKzMJnnxbV3eoH3jDSD9yQrjkkxM3po=	\N	f	Ernestine91			infobwib@protonmail.com	f	t	2020-11-13 23:31:22.55787+00
22	pbkdf2_sha256$100000$YqvB4qj511xF$h/QBUG+Iib64ZS505r1bfUEzzOJkrK3YQ2tL1cj2iKs=	\N	f	Elaina.Goyette11			barbellows@yahoo.co.uk	f	t	2020-11-15 01:16:49.358329+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
4	2019-09-01 17:38:53.640316+00	2	shmusi.cc	2	[{"changed": {"fields": ["domain", "name"]}}]	6	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	record	library
2	record	audioclip
3	record	track
4	record	profile
5	admin	logentry
6	sites	site
7	auth	user
8	auth	group
9	auth	permission
10	contenttypes	contenttype
11	sessions	session
12	record	album
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2019-07-19 17:46:22.698782+00
2	auth	0001_initial	2019-07-19 17:46:23.219216+00
3	admin	0001_initial	2019-07-19 17:46:23.378663+00
4	admin	0002_logentry_remove_auto_add	2019-07-19 17:46:23.436656+00
5	contenttypes	0002_remove_content_type_name	2019-07-19 17:46:23.559997+00
6	auth	0002_alter_permission_name_max_length	2019-07-19 17:46:23.660929+00
7	auth	0003_alter_user_email_max_length	2019-07-19 17:46:23.76713+00
8	auth	0004_alter_user_username_opts	2019-07-19 17:46:23.826168+00
9	auth	0005_alter_user_last_login_null	2019-07-19 17:46:23.932041+00
10	auth	0006_require_contenttypes_0002	2019-07-19 17:46:23.98222+00
11	auth	0007_alter_validators_add_error_messages	2019-07-19 17:46:24.042592+00
12	auth	0008_alter_user_username_max_length	2019-07-19 17:46:24.142+00
13	auth	0009_alter_user_last_name_max_length	2019-07-19 17:46:24.237403+00
14	record	0001_initial	2019-07-19 17:46:24.530695+00
15	record	0002_audioclip_wav_form	2019-07-19 17:46:24.634047+00
16	record	0003_profile	2019-07-19 17:46:24.751485+00
17	record	0004_library	2019-07-19 17:46:24.996985+00
18	record	0005_auto_20190504_1737	2019-07-19 17:46:25.218337+00
19	record	0006_auto_20190521_1455	2019-07-19 17:46:25.323472+00
20	sessions	0001_initial	2019-07-19 17:46:25.447169+00
21	sites	0001_initial	2019-07-19 17:46:25.540235+00
22	sites	0002_alter_domain_unique	2019-07-19 17:46:25.646195+00
23	record	0007_auto_20190812_1709	2019-08-15 14:07:56.347993+00
24	record	0008_album	2019-08-15 14:07:56.573369+00
25	record	0009_auto_20190829_1751	2019-08-29 21:15:28.479931+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
dzgv2m9fi07bqpghhluc3aolt655n3ry	MDJlYjM0NGEyMWIwZmExZmZlNjdlOTVlYzA4YTQ5NjI4NjA4MTllMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjhiNzkyNjU4MzllY2FhMjRlYTI4ZmM3MzlhODEwMTRhYjkzMTc4ZCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2019-08-13 16:27:19.265289+00
drek597k1oah8jh52fz18bf5q0a3vg8y	YTBmNmZmY2NmOTQwOTNiZjdmOTdkOTE0NTJlZjAzODlmYWJjMTk4MTp7Il9hdXRoX3VzZXJfaGFzaCI6ImY4Yjc5MjY1ODM5ZWNhYTI0ZWEyOGZjNzM5YTgxMDE0YWI5MzE3OGQiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2019-08-14 09:19:55.406959+00
165xkd3s2ckumf1yvnrnen72o5rjh3w9	MDJlYjM0NGEyMWIwZmExZmZlNjdlOTVlYzA4YTQ5NjI4NjA4MTllMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjhiNzkyNjU4MzllY2FhMjRlYTI4ZmM3MzlhODEwMTRhYjkzMTc4ZCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2019-08-25 23:45:47.102547+00
n0vnny6zp8cqynof1qp14ak8ugdi2axb	YjFiNmVkMjcwYmExMTlmODFkZmYzYTAxMWNiNjQyMDY0OTA2MDU0ODp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjhiNzkyNjU4MzllY2FhMjRlYTI4ZmM3MzlhODEwMTRhYjkzMTc4ZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2019-08-30 17:01:16.774469+00
e7rbcx4w1nbn0t428u2cf2tobnq56msg	MDJlYjM0NGEyMWIwZmExZmZlNjdlOTVlYzA4YTQ5NjI4NjA4MTllMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjhiNzkyNjU4MzllY2FhMjRlYTI4ZmM3MzlhODEwMTRhYjkzMTc4ZCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2019-09-15 17:38:17.453669+00
4yeejopl7y37uwndfoysjpc0pxhvgjqo	Njg4OWNlYmIzYTRmNDc1NGY4NjEyYTYzNTU1ZjdjOTg3Mzk4MWM4NDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiODVhOWY1ZmE3NjQ0MTQxOGQzNGViOWY1OWQ2OTAyZTlkYTAzNWM2MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2020-04-03 14:41:37.765336+00
\.


--
-- Data for Name: django_site; Type: TABLE DATA; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

COPY public.django_site (id, domain, name) FROM stdin;
2	shmusi.cc	Shmusic
\.


--
-- Data for Name: record_album; Type: TABLE DATA; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

COPY public.record_album (id, name, user_id) FROM stdin;
\.


--
-- Data for Name: record_album_clips; Type: TABLE DATA; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

COPY public.record_album_clips (id, album_id, audioclip_id) FROM stdin;
\.


--
-- Data for Name: record_audioclip; Type: TABLE DATA; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

COPY public.record_audioclip (id, name, source_file, mp3_file, user_id, wav_form) FROM stdin;
12	Welcome to Schmusi.cc	user_1/TapeDeck_2__Mar_16_20-02-02.wav	user_1/TapeDeck_2__Mar_16_20-02-02.mp3	1	
15	Temple-ft M.I.A & G-Dragon1	user_2/Temple-ft_M.I.A__G-Dragon.mp3	user_2/Temple-ft_M.I.A__G-Dragon.mp3	2	
20	nd	user_3/17_nameday_take_2.mp3	user_3/17_nameday_take_2.mp3	3	
22	Come right back	user_1/Mothers_Ruin_-_Come_on_back.mp3	user_1/Mothers_Ruin_-_Come_on_back.mp3	1	
30	who the FUCK is tippani	user_1/tiprap.mp3	user_1/tiprap.mp3	1	
31	Track 1	user_1/track1.mp3	user_1/track1.mp3	1	
32	jam 01	user_1/Jam_1_-_10-31-2020.mp3	user_1/Jam_1_-_10-31-2020.mp3	1	
\.


--
-- Data for Name: record_library; Type: TABLE DATA; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

COPY public.record_library (id, user_id) FROM stdin;
1	1
2	3
4	6
5	9
6	10
7	11
8	12
9	13
10	14
11	15
12	16
13	17
14	18
15	19
16	20
17	21
18	22
\.


--
-- Data for Name: record_library_clips; Type: TABLE DATA; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

COPY public.record_library_clips (id, library_id, audioclip_id) FROM stdin;
2	1	15
3	1	20
4	2	20
5	1	22
6	4	12
7	4	15
9	1	12
\.


--
-- Data for Name: record_profile; Type: TABLE DATA; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

COPY public.record_profile (id, active, user_id) FROM stdin;
1	f	1
2	f	2
3	f	3
6	f	6
7	f	9
8	f	10
9	f	11
10	f	12
11	f	13
12	f	14
13	f	15
14	f	16
15	f	17
16	f	18
17	f	19
18	f	20
19	f	21
20	f	22
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 36, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 22, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 4, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 12, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 25, true);


--
-- Name: django_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

SELECT pg_catalog.setval('public.django_site_id_seq', 2, true);


--
-- Name: record_album_clips_id_seq; Type: SEQUENCE SET; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

SELECT pg_catalog.setval('public.record_album_clips_id_seq', 1, false);


--
-- Name: record_album_id_seq; Type: SEQUENCE SET; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

SELECT pg_catalog.setval('public.record_album_id_seq', 1, false);


--
-- Name: record_audioclip_id_seq; Type: SEQUENCE SET; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

SELECT pg_catalog.setval('public.record_audioclip_id_seq', 32, true);


--
-- Name: record_library_clips_id_seq; Type: SEQUENCE SET; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

SELECT pg_catalog.setval('public.record_library_clips_id_seq', 9, true);


--
-- Name: record_library_id_seq; Type: SEQUENCE SET; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

SELECT pg_catalog.setval('public.record_library_id_seq', 18, true);


--
-- Name: record_profile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

SELECT pg_catalog.setval('public.record_profile_id_seq', 20, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: django_site django_site_domain_a2e37b91_uniq; Type: CONSTRAINT; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_domain_a2e37b91_uniq UNIQUE (domain);


--
-- Name: django_site django_site_pkey; Type: CONSTRAINT; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);


--
-- Name: record_album_clips record_album_clips_album_id_audioclip_id_970d0d68_uniq; Type: CONSTRAINT; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

ALTER TABLE ONLY public.record_album_clips
    ADD CONSTRAINT record_album_clips_album_id_audioclip_id_970d0d68_uniq UNIQUE (album_id, audioclip_id);


--
-- Name: record_album_clips record_album_clips_pkey; Type: CONSTRAINT; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

ALTER TABLE ONLY public.record_album_clips
    ADD CONSTRAINT record_album_clips_pkey PRIMARY KEY (id);


--
-- Name: record_album record_album_pkey; Type: CONSTRAINT; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

ALTER TABLE ONLY public.record_album
    ADD CONSTRAINT record_album_pkey PRIMARY KEY (id);


--
-- Name: record_audioclip record_audioclip_pkey; Type: CONSTRAINT; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

ALTER TABLE ONLY public.record_audioclip
    ADD CONSTRAINT record_audioclip_pkey PRIMARY KEY (id);


--
-- Name: record_audioclip record_audioclip_user_id_name_38173722_uniq; Type: CONSTRAINT; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

ALTER TABLE ONLY public.record_audioclip
    ADD CONSTRAINT record_audioclip_user_id_name_38173722_uniq UNIQUE (user_id, name);


--
-- Name: record_library_clips record_library_clips_library_id_audioclip_id_74c7560e_uniq; Type: CONSTRAINT; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

ALTER TABLE ONLY public.record_library_clips
    ADD CONSTRAINT record_library_clips_library_id_audioclip_id_74c7560e_uniq UNIQUE (library_id, audioclip_id);


--
-- Name: record_library_clips record_library_clips_pkey; Type: CONSTRAINT; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

ALTER TABLE ONLY public.record_library_clips
    ADD CONSTRAINT record_library_clips_pkey PRIMARY KEY (id);


--
-- Name: record_library record_library_pkey; Type: CONSTRAINT; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

ALTER TABLE ONLY public.record_library
    ADD CONSTRAINT record_library_pkey PRIMARY KEY (id);


--
-- Name: record_library record_library_user_id_key; Type: CONSTRAINT; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

ALTER TABLE ONLY public.record_library
    ADD CONSTRAINT record_library_user_id_key UNIQUE (user_id);


--
-- Name: record_profile record_profile_pkey; Type: CONSTRAINT; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

ALTER TABLE ONLY public.record_profile
    ADD CONSTRAINT record_profile_pkey PRIMARY KEY (id);


--
-- Name: record_profile record_profile_user_id_key; Type: CONSTRAINT; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

ALTER TABLE ONLY public.record_profile
    ADD CONSTRAINT record_profile_user_id_key UNIQUE (user_id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: django_site_domain_a2e37b91_like; Type: INDEX; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

CREATE INDEX django_site_domain_a2e37b91_like ON public.django_site USING btree (domain varchar_pattern_ops);


--
-- Name: record_album_User_id_13a489f4; Type: INDEX; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

CREATE INDEX "record_album_User_id_13a489f4" ON public.record_album USING btree (user_id);


--
-- Name: record_album_clips_album_id_3e1dd74a; Type: INDEX; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

CREATE INDEX record_album_clips_album_id_3e1dd74a ON public.record_album_clips USING btree (album_id);


--
-- Name: record_album_clips_audioclip_id_dd1f3bfc; Type: INDEX; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

CREATE INDEX record_album_clips_audioclip_id_dd1f3bfc ON public.record_album_clips USING btree (audioclip_id);


--
-- Name: record_audioclip_user_id_87ee949c; Type: INDEX; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

CREATE INDEX record_audioclip_user_id_87ee949c ON public.record_audioclip USING btree (user_id);


--
-- Name: record_library_clips_audioclip_id_5e446a2b; Type: INDEX; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

CREATE INDEX record_library_clips_audioclip_id_5e446a2b ON public.record_library_clips USING btree (audioclip_id);


--
-- Name: record_library_clips_library_id_c6e219e1; Type: INDEX; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

CREATE INDEX record_library_clips_library_id_c6e219e1 ON public.record_library_clips USING btree (library_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: record_album_clips record_album_clips_album_id_3e1dd74a_fk_record_album_id; Type: FK CONSTRAINT; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

ALTER TABLE ONLY public.record_album_clips
    ADD CONSTRAINT record_album_clips_album_id_3e1dd74a_fk_record_album_id FOREIGN KEY (album_id) REFERENCES public.record_album(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: record_album_clips record_album_clips_audioclip_id_dd1f3bfc_fk_record_audioclip_id; Type: FK CONSTRAINT; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

ALTER TABLE ONLY public.record_album_clips
    ADD CONSTRAINT record_album_clips_audioclip_id_dd1f3bfc_fk_record_audioclip_id FOREIGN KEY (audioclip_id) REFERENCES public.record_audioclip(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: record_album record_album_user_id_77122c78_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

ALTER TABLE ONLY public.record_album
    ADD CONSTRAINT record_album_user_id_77122c78_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: record_audioclip record_audioclip_user_id_87ee949c_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

ALTER TABLE ONLY public.record_audioclip
    ADD CONSTRAINT record_audioclip_user_id_87ee949c_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: record_library_clips record_library_clips_audioclip_id_5e446a2b_fk_record_au; Type: FK CONSTRAINT; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

ALTER TABLE ONLY public.record_library_clips
    ADD CONSTRAINT record_library_clips_audioclip_id_5e446a2b_fk_record_au FOREIGN KEY (audioclip_id) REFERENCES public.record_audioclip(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: record_library_clips record_library_clips_library_id_c6e219e1_fk_record_library_id; Type: FK CONSTRAINT; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

ALTER TABLE ONLY public.record_library_clips
    ADD CONSTRAINT record_library_clips_library_id_c6e219e1_fk_record_library_id FOREIGN KEY (library_id) REFERENCES public.record_library(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: record_library record_library_user_id_46639042_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

ALTER TABLE ONLY public.record_library
    ADD CONSTRAINT record_library_user_id_46639042_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: record_profile record_profile_user_id_c6600f8f_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: XANEURLENTLEMOIRTAGETAGE
--

ALTER TABLE ONLY public.record_profile
    ADD CONSTRAINT record_profile_user_id_c6600f8f_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: XANEURLENTLEMOIRTAGETAGE
--

REVOKE ALL ON SCHEMA public FROM rdsadmin;
REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO "XANEURLENTLEMOIRTAGETAGE";
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

