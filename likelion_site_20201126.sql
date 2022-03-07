--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.24
-- Dumped by pg_dump version 9.5.24

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
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


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: action_text_rich_texts; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.action_text_rich_texts (
    id bigint NOT NULL,
    name character varying NOT NULL,
    body text,
    record_type character varying NOT NULL,
    record_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.action_text_rich_texts OWNER TO ubuntu;

--
-- Name: action_text_rich_texts_id_seq; Type: SEQUENCE; Schema: public; Owner: ubuntu
--

CREATE SEQUENCE public.action_text_rich_texts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.action_text_rich_texts_id_seq OWNER TO ubuntu;

--
-- Name: action_text_rich_texts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ubuntu
--

ALTER SEQUENCE public.action_text_rich_texts_id_seq OWNED BY public.action_text_rich_texts.id;


--
-- Name: active_admin_comments; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.active_admin_comments (
    id bigint NOT NULL,
    namespace character varying,
    body text,
    resource_type character varying,
    resource_id bigint,
    author_type character varying,
    author_id bigint,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.active_admin_comments OWNER TO ubuntu;

--
-- Name: active_admin_comments_id_seq; Type: SEQUENCE; Schema: public; Owner: ubuntu
--

CREATE SEQUENCE public.active_admin_comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_admin_comments_id_seq OWNER TO ubuntu;

--
-- Name: active_admin_comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ubuntu
--

ALTER SEQUENCE public.active_admin_comments_id_seq OWNED BY public.active_admin_comments.id;


--
-- Name: active_storage_attachments; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.active_storage_attachments (
    id bigint NOT NULL,
    name character varying NOT NULL,
    record_type character varying NOT NULL,
    record_id bigint NOT NULL,
    blob_id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL
);


ALTER TABLE public.active_storage_attachments OWNER TO ubuntu;

--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE; Schema: public; Owner: ubuntu
--

CREATE SEQUENCE public.active_storage_attachments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_attachments_id_seq OWNER TO ubuntu;

--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ubuntu
--

ALTER SEQUENCE public.active_storage_attachments_id_seq OWNED BY public.active_storage_attachments.id;


--
-- Name: active_storage_blobs; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.active_storage_blobs (
    id bigint NOT NULL,
    key character varying NOT NULL,
    filename character varying NOT NULL,
    content_type character varying,
    metadata text,
    byte_size bigint NOT NULL,
    checksum character varying NOT NULL,
    created_at timestamp without time zone NOT NULL
);


ALTER TABLE public.active_storage_blobs OWNER TO ubuntu;

--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE; Schema: public; Owner: ubuntu
--

CREATE SEQUENCE public.active_storage_blobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_blobs_id_seq OWNER TO ubuntu;

--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ubuntu
--

ALTER SEQUENCE public.active_storage_blobs_id_seq OWNED BY public.active_storage_blobs.id;


--
-- Name: admin_users; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.admin_users (
    id bigint NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.admin_users OWNER TO ubuntu;

--
-- Name: admin_users_id_seq; Type: SEQUENCE; Schema: public; Owner: ubuntu
--

CREATE SEQUENCE public.admin_users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_users_id_seq OWNER TO ubuntu;

--
-- Name: admin_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ubuntu
--

ALTER SEQUENCE public.admin_users_id_seq OWNED BY public.admin_users.id;


--
-- Name: applies; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.applies (
    id bigint NOT NULL,
    recruit_id bigint,
    name character varying,
    email character varying,
    phone character varying,
    major character varying,
    student_id character varying,
    grade character varying,
    ask1_a text,
    ask2_a text,
    ask3_a text,
    ask4_a text,
    ask5_a text,
    ask1_file character varying,
    ask2_file character varying,
    ask3_file character varying,
    ask4_file character varying,
    ask5_file character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    ask6_a character varying,
    ask7_a character varying,
    ask8_a character varying,
    additional1_a integer,
    additional2_a integer,
    additional3_a integer,
    ask9_a character varying,
    ask10_a character varying,
    ask6_file character varying,
    ask7_file character varying,
    ask8_file character varying,
    ask9_file character varying,
    ask10_file character varying
);


ALTER TABLE public.applies OWNER TO ubuntu;

--
-- Name: applies_id_seq; Type: SEQUENCE; Schema: public; Owner: ubuntu
--

CREATE SEQUENCE public.applies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.applies_id_seq OWNER TO ubuntu;

--
-- Name: applies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ubuntu
--

ALTER SEQUENCE public.applies_id_seq OWNED BY public.applies.id;


--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO ubuntu;

--
-- Name: assignments; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.assignments (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    title character varying,
    content text,
    image character varying,
    start_at timestamp without time zone,
    end_at timestamp without time zone,
    file character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.assignments OWNER TO ubuntu;

--
-- Name: assignments_id_seq; Type: SEQUENCE; Schema: public; Owner: ubuntu
--

CREATE SEQUENCE public.assignments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.assignments_id_seq OWNER TO ubuntu;

--
-- Name: assignments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ubuntu
--

ALTER SEQUENCE public.assignments_id_seq OWNED BY public.assignments.id;


--
-- Name: comments; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.comments (
    id bigint NOT NULL,
    commentable_type character varying,
    commentable_id bigint,
    user_id bigint,
    body text,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.comments OWNER TO ubuntu;

--
-- Name: comments_id_seq; Type: SEQUENCE; Schema: public; Owner: ubuntu
--

CREATE SEQUENCE public.comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comments_id_seq OWNER TO ubuntu;

--
-- Name: comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ubuntu
--

ALTER SEQUENCE public.comments_id_seq OWNED BY public.comments.id;


--
-- Name: galleries; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.galleries (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    title character varying,
    content text,
    image character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.galleries OWNER TO ubuntu;

--
-- Name: galleries_id_seq; Type: SEQUENCE; Schema: public; Owner: ubuntu
--

CREATE SEQUENCE public.galleries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galleries_id_seq OWNER TO ubuntu;

--
-- Name: galleries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ubuntu
--

ALTER SEQUENCE public.galleries_id_seq OWNED BY public.galleries.id;


--
-- Name: lectures; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.lectures (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    title character varying,
    content text,
    image character varying,
    view_count integer,
    lecture_type integer,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    file character varying
);


ALTER TABLE public.lectures OWNER TO ubuntu;

--
-- Name: lectures_id_seq; Type: SEQUENCE; Schema: public; Owner: ubuntu
--

CREATE SEQUENCE public.lectures_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lectures_id_seq OWNER TO ubuntu;

--
-- Name: lectures_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ubuntu
--

ALTER SEQUENCE public.lectures_id_seq OWNED BY public.lectures.id;


--
-- Name: recruits; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.recruits (
    id bigint NOT NULL,
    member_num integer,
    start_at timestamp without time zone,
    end_at timestamp without time zone,
    ask1_q character varying,
    ask2_q character varying,
    ask3_q character varying,
    ask4_q character varying,
    ask5_q character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    ask6_q character varying,
    ask7_q character varying,
    ask8_q character varying,
    additional1_q character varying,
    additional2_q character varying,
    additional3_q character varying,
    ask9_q character varying,
    ask10_q character varying,
    ask1_type integer,
    ask2_type integer,
    ask3_type integer,
    ask4_type integer,
    ask5_type integer,
    ask6_type integer,
    ask7_type integer,
    ask8_type integer,
    ask9_type integer,
    ask10_type integer,
    ask1_choices text,
    ask2_choices text,
    ask3_choices text,
    ask4_choices text,
    ask5_choices text,
    ask6_choices text,
    ask7_choices text,
    ask8_choices text,
    ask9_choices text,
    ask10_choices text
);


ALTER TABLE public.recruits OWNER TO ubuntu;

--
-- Name: recruits_id_seq; Type: SEQUENCE; Schema: public; Owner: ubuntu
--

CREATE SEQUENCE public.recruits_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.recruits_id_seq OWNER TO ubuntu;

--
-- Name: recruits_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ubuntu
--

ALTER SEQUENCE public.recruits_id_seq OWNED BY public.recruits.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO ubuntu;

--
-- Name: submissions; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.submissions (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    assignment_id bigint NOT NULL,
    title character varying,
    description text,
    url character varying,
    image character varying,
    file character varying,
    view_count integer DEFAULT 0,
    grade integer DEFAULT 0,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.submissions OWNER TO ubuntu;

--
-- Name: submissions_id_seq; Type: SEQUENCE; Schema: public; Owner: ubuntu
--

CREATE SEQUENCE public.submissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.submissions_id_seq OWNER TO ubuntu;

--
-- Name: submissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ubuntu
--

ALTER SEQUENCE public.submissions_id_seq OWNED BY public.submissions.id;


--
-- Name: taggings; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.taggings (
    id integer NOT NULL,
    tag_id integer,
    taggable_type character varying,
    taggable_id integer,
    tagger_type character varying,
    tagger_id integer,
    context character varying(128),
    created_at timestamp without time zone
);


ALTER TABLE public.taggings OWNER TO ubuntu;

--
-- Name: taggings_id_seq; Type: SEQUENCE; Schema: public; Owner: ubuntu
--

CREATE SEQUENCE public.taggings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.taggings_id_seq OWNER TO ubuntu;

--
-- Name: taggings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ubuntu
--

ALTER SEQUENCE public.taggings_id_seq OWNED BY public.taggings.id;


--
-- Name: tags; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.tags (
    id integer NOT NULL,
    name character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    taggings_count integer DEFAULT 0
);


ALTER TABLE public.tags OWNER TO ubuntu;

--
-- Name: tags_id_seq; Type: SEQUENCE; Schema: public; Owner: ubuntu
--

CREATE SEQUENCE public.tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tags_id_seq OWNER TO ubuntu;

--
-- Name: tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ubuntu
--

ALTER SEQUENCE public.tags_id_seq OWNED BY public.tags.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    thumbnail character varying,
    name character varying,
    phone character varying,
    gender integer,
    student_id integer,
    member_num character varying,
    role integer DEFAULT 0,
    info character varying,
    birth date,
    vms_id character varying,
    join_year integer,
    id_of_1365 character varying,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    sign_in_count integer DEFAULT 0 NOT NULL,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip character varying,
    last_sign_in_ip character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    mentor_type integer
);


ALTER TABLE public.users OWNER TO ubuntu;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: ubuntu
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO ubuntu;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ubuntu
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: wishes; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.wishes (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    submission_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.wishes OWNER TO ubuntu;

--
-- Name: wishes_id_seq; Type: SEQUENCE; Schema: public; Owner: ubuntu
--

CREATE SEQUENCE public.wishes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wishes_id_seq OWNER TO ubuntu;

--
-- Name: wishes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ubuntu
--

ALTER SEQUENCE public.wishes_id_seq OWNED BY public.wishes.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.action_text_rich_texts ALTER COLUMN id SET DEFAULT nextval('public.action_text_rich_texts_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.active_admin_comments ALTER COLUMN id SET DEFAULT nextval('public.active_admin_comments_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.active_storage_attachments ALTER COLUMN id SET DEFAULT nextval('public.active_storage_attachments_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.active_storage_blobs ALTER COLUMN id SET DEFAULT nextval('public.active_storage_blobs_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.applies ALTER COLUMN id SET DEFAULT nextval('public.applies_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.assignments ALTER COLUMN id SET DEFAULT nextval('public.assignments_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.comments ALTER COLUMN id SET DEFAULT nextval('public.comments_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.galleries ALTER COLUMN id SET DEFAULT nextval('public.galleries_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.lectures ALTER COLUMN id SET DEFAULT nextval('public.lectures_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.recruits ALTER COLUMN id SET DEFAULT nextval('public.recruits_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.submissions ALTER COLUMN id SET DEFAULT nextval('public.submissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.taggings ALTER COLUMN id SET DEFAULT nextval('public.taggings_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.tags ALTER COLUMN id SET DEFAULT nextval('public.tags_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.wishes ALTER COLUMN id SET DEFAULT nextval('public.wishes_id_seq'::regclass);


--
-- Data for Name: action_text_rich_texts; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.action_text_rich_texts (id, name, body, record_type, record_id, created_at, updated_at) FROM stdin;
42	description	<div>1. HTML<br><action-text-attachment sgid="BAh7CEkiCGdpZAY6BkVUSSI1Z2lkOi8vbGlrZWxpb24vQWN0aXZlU3RvcmFnZTo6QmxvYi80OD9leHBpcmVzX2luBjsAVEkiDHB1cnBvc2UGOwBUSSIPYXR0YWNoYWJsZQY7AFRJIg9leHBpcmVzX2F0BjsAVDA=--55512c1ce4d3933fdbb9d14d4edb8c948ef8f3fe" content-type="image/png" url="https://dgulion.com/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBOUT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--8da983541786b859544286babfdbb19725f627a3/image.png" filename="image.png" filesize="69139" width="1786" height="785" previewable="true" presentation="gallery"></action-text-attachment><br>2. CSS<br><action-text-attachment sgid="BAh7CEkiCGdpZAY6BkVUSSI1Z2lkOi8vbGlrZWxpb24vQWN0aXZlU3RvcmFnZTo6QmxvYi80OT9leHBpcmVzX2luBjsAVEkiDHB1cnBvc2UGOwBUSSIPYXR0YWNoYWJsZQY7AFRJIg9leHBpcmVzX2F0BjsAVDA=--f3a5ca94ace289f95b0c02c6cdda6d01533a5b25" content-type="image/png" url="https://dgulion.com/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBOZz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--e469d82b81d935f1478bdadf61066f2058646a56/image.png" filename="image.png" filesize="92730" width="1846" height="677" presentation="gallery"></action-text-attachment></div>	Submission	43	2020-04-20 06:29:19.317309	2020-04-20 09:10:52.880166
41	description	<div>안녕하세요.<br><br>제가 제안하여 개발하고자 하는 웹서비스는 '기업청원 서비스' 입니다. 국민청원과 기본적인 맥락을 같이합니다. 단, 청원을 받는 대상자가 기업인, 유저가 기업의 개선사항 등의 의견을 개진하는 서비스입니다.<br><br>'거꾸로 수박바' 라는 아이스크림을 아시나요? 이 아이디어는, 한 유저가 "나는 수박바에서 빨간색보다 초록색이 좋더라."라는 순수한 마음으로 포토샵으로 제품을 합성하여 사진만 만들었을 뿐인데, 커뮤니티 게시판에서 사람들의 긍정적인 의견이 폭발적인 것을 보고, 롯데가 진짜로 상품화한 제품입니다. 결과적으로는 1초에 1개씩 판매가 될 정도의 큰 성과를 거두었습니다.<br><br>3년전에 이와 비슷한 사례들이 빈번하게 발생하는 것을 보고 발전시켜보고 싶다는 생각을 했었는데, 요새 국민청원을 비롯한 커뮤니티와 미디어의 역할이 더욱 강해지는 것을 보고, 어플리케이션화 시키면 실제 서비스로 작동할 수 있지 않을까 하는 생각에서, 다음 서비스를 함께 구현해 볼 것을 제안합니다. :)</div>	Submission	42	2020-04-20 04:58:51.37231	2020-04-20 04:59:31.068602
24	description	<div><action-text-attachment sgid="BAh7CEkiCGdpZAY6BkVUSSI1Z2lkOi8vbGlrZWxpb24vQWN0aXZlU3RvcmFnZTo6QmxvYi8zMT9leHBpcmVzX2luBjsAVEkiDHB1cnBvc2UGOwBUSSIPYXR0YWNoYWJsZQY7AFRJIg9leHBpcmVzX2F0BjsAVDA=--87743a97ff2137ee92a87feffa65d76475ecd840" content-type="application/vnd.openxmlformats-officedocument.wordprocessingml.document" url="https://dgulion.com/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBKQT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--4c669c4401833f5624b092843c5a115166607455/%EB%82%B4%EA%B0%80%20%EB%A7%8C%EB%93%A4%EA%B3%A0%20%EC%8B%B6%EC%9D%80%20%EC%84%9C%EB%B9%84%EC%8A%A4_%EC%A0%95%EA%B4%91%EC%88%98.docx" filename="내가 만들고 싶은 서비스_정광수.docx" filesize="19765"></action-text-attachment></div>	Submission	25	2020-04-18 16:40:59.782964	2020-04-18 16:40:59.792262
28	description	<div>1인 1아이디 어</div><div><br>&lt;취미공유 커뮤 니티 서비스&gt;<br><action-text-attachment sgid="BAh7CEkiCGdpZAY6BkVUSSI1Z2lkOi8vbGlrZWxpb24vQWN0aXZlU3RvcmFnZTo6QmxvYi8zMz9leHBpcmVzX2luBjsAVEkiDHB1cnBvc2UGOwBUSSIPYXR0YWNoYWJsZQY7AFRJIg9leHBpcmVzX2F0BjsAVDA=--f23fb09d62991f15545410dfe9b85fb846d9fc08" content-type="application/pdf" url="https://dgulion.com/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBKZz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--a6d473595f92fcc3dd820d6cbb10678cec7db9e6/%EC%B7%A8%EB%AF%B8%EA%B3%B5%EC%9C%A0%20%EC%BB%A4%EB%AE%A4%EB%8B%88%ED%8B%B0%20%EC%84%9C%EB%B9%84%EC%8A%A4-1%EC%9D%B81%EC%95%84%EC%9D%B4%EB%94%94%EC%96%B4.pdf" filename="취미공유 커뮤니티 서비스-1인1아이디어.pdf" filesize="114166"></action-text-attachment></div>	Submission	29	2020-04-19 06:11:06.185851	2020-04-19 06:13:30.359844
31	description	<div> 저는 대학생의 졸업 요건이 충족되었는지를 한 번에 확인할 수 있는 웹 서비스를 만들고 싶습니다. 각 대학과 학과별로 학생들은 한 학기에 이수해야 하는 학점, 학기별로 수강할 수 있는 교양과목 그리고 졸업하기 위해 수강해야 하는 전공기초, 전공심화, 공통 교양과목의 학점 등이 상이합니다. 따라서 총 이수 학점의 확인을 위해서 뿐만 아니라 수강하고자 하는 과목이 졸업을 위해 꼭 필요한 과목인지 아닌지 등을 확인하기 위해서 수강신청을 하기 전에 확인해야 할 사항들이 많습니다. 혹시라도 놓친 정보들이 있는지 확인하기 위해서는 매번 학업 이수 가이드를 살펴보거나 학과 사무실에 문의해야 합니다. 특히 복수 전공을 하는 학생들의 경우 내가 지금까지 들었던 공통 교양과목에 대한 인정 여부 및 앞으로 수강해야 하는 과목 등 확인해야 할 정보들이 더욱 많아 혼란을 느낄 수 있습니다.<br><br> 이러한 번거로움을 막고, 실수로 확인하지 못한 정보로 인해 졸업요건이 충족되지 않아서 추가 학기를 통해 수업을 수강을 해야 하는 불상사를 피하기 위해, 학생의 대학과 학과 그리고 지금까지 수강한 과목의 정보를 매 학기 별로 시간표를 만들어 입력하고 이것을 바탕으로 졸업하기 위해 필요한 전공과목(전공기초, 전공심화), 공통교양, 일반교양 과목의 개수와 과목명을 자동적으로 보여주는 웹 서비스를 만들어 학생들이 수강신청을 하는 데 편리함을 느끼고 추가적으로 졸업 전까지의 수강 계획을 대략적으로 세워보며 계절학기 수강 여부 및 복수 전공 또는 조기 졸업에 대한 가능성 여부를 확인하는 데 도움이 되도록 돕고 싶습니다. 또한 시간표 제공뿐만 아니라 대외활동, 인턴쉽 프로그램 등 취업에 관련된 정보를 같이 제공하여 대학생들에게 더욱 유용한 서비스를 만들고 싶습니다.</div>	Submission	32	2020-04-19 08:48:06.407434	2020-04-19 08:48:06.407434
10	description	<div><strong>리리뷰(Re-review) 개요</strong><br><br>블루투스 이어폰<br>가성비 좋다고 5점 리뷰 단 당신!<br>며칠 뒤 한 쪽이 안 나온다면?<br>당신의 억울함을 공유하세요.<br>'리리뷰'로.<br><br>퓨X썸 샤워기<br>구매를 망설이는 당신!<br>리뷰가 죄다 가짜 같다면?<br>실사용 2주 리뷰를 확인하세요.<br>'리리뷰'로.<br><br>네이버 쇼핑, 쿠팡, 옥션 등 이커머스 시스템과 연동하여</div><div>1) 실구매<br>2) 2주 간의 사용 기간(수령일 또는 제품등록일로부터 2주 경과)<br>이 인증된 유저에게 한하여 리리뷰 작성 권한 부여(리리뷰 작성 가능 기간 푸시 알림)<br><br>제품을 받자마자 작성된 기존 리뷰와는 달리 충분한 경험 기간을 토대로 작성된 믿음직스러운 리리뷰.<br><br>리리뷰 웹사이트에서는 구매하려는 제품을 직접 검색해서 해당 리리뷰를 확인할 수 있고,<br>기존 구매 사이트에서는 판매자가 배치한 리리뷰 작성란/조회란에서 해당 리리뷰 확인.<br><br>리리뷰어에게는 기존 리뷰어 혜택을 더블로 제공(?).<br>(기존 리뷰 혜택 지급 체계와 똑같이 판매자에게 추가 비용 부담)<br><br><strong>육하원칙에 따른 요약<br><br>(1) 리리뷰어</strong><br>- 누가: 실구매자 중 2주 간의 사용 기간이 인증된 자<br>- 언제: 2주 간의 사용 기간 경과 후 해당 사용자가 원하는 때<br>- 어디서: 제품 판매 페이지 또는 리리뷰 웹사이트<br>- 무엇을: 일반 리뷰 작성 후 2주 간 사용해본 뒤 후기 다시 작성(예: 일반 리뷰 작성 후 알게 된 새로운 사실 작성)<br>- 어떻게: 제품 판매 페이지 또는 리리뷰 웹사이트에서 리리뷰 작성<br>- 왜: 내가 겪었던 불만스러운 제품 경험을 널리 알리기 위해, 내가 새롭게 느꼈던 제품의 장점을 널리 알리기 위해, 리뷰 작성자에게 제공되는 혜택을 또 받기 위해<br><br><strong>(2) 예비구매자</strong><br>- 누가: 특정 제품을 구매하고 싶은 자<br>- 언제: 구매를 망설이는 때, 장바구니에 넣어둔 뒤 실구매 직전<br>- 어디서: 제품 판매 페이지 또는 리리뷰 웹사이트<br>- 무엇을: 리리뷰어가 단 믿음직스러운 후기 조회<br>- 어떻게: 제품 판매 페이지 또는 리리뷰 웹사이트에서 리리뷰 조회<br>- 왜: 기존 리뷰에 대한 의심/의문(예: '이거 홍보 차원에서 쓴 리뷰 아닌가?')이 들어 '진짜 리뷰'를 보기 위해, 현명한 소비를 위해, 혹시 모를 제품 하자에 대한 불안감 해소를 위해(멘탈을 지키기 위해)<br><br><strong>(3) 제품에 자신 있는 판매자</strong><br>- 누가: 자기 제품의 기능, 효과, 내구성 등에 자신 있는 판매자<br>- 언제: 제품 판매 시<br>- 어디서: 제품 판매 페이지(이커머스와의 연동으로 인해 리리뷰 웹사이트에는 자동 등록)<br>- 무엇을: 리리뷰 작성란/조회란 배치<br>- 어떻게: 이커머스 판매자 시스템 또는 리리뷰 웹사이트를 통해 코드 입력/드래그 앤 드랍 형식으로<br>- 왜: 소비자로 하여금 제품 및 리뷰 신뢰도를 높이기 위해, 브랜딩 및 마케팅 데이터 수집을 위해, 홍보 효과 증폭을 위해, 차기 제품에 대한 피드백 수집을 위해('진짜 만족도' 수집)</div>	Submission	11	2020-04-16 08:51:29.02247	2020-04-16 08:51:29.02247
11	description	<div><br>물건을 소비할 때 사람들은 항상 백프로의 만족도를 가지고 소비할까? <br>나는 그렇지 않은 경우가 많다고 생각한다. 경우에 따라  선택 불만족스러운 부분이 있더라도 더 나은 대안이 없어 불가피하게 선택을 해야 하는 경우가 많다. <br>예를 들어 티를 사고 싶어도 내가 원하는 기장의 원하는 소재의 원하는 넥타입의 의상은 없는 경우가 종종 발생하고 여러가지 조건을 그나마 만족시키는 제품을 찾아 차선책을 소비하고는 한다.  특히 평범하지 않은 특별한 선물을 하고 싶은 경우 그 고민은 더 심각해지고는 한다. <br>그래서 이러한 문제점들을 해결할 수 있는 웹 서비스를 만들고자 한다. <br>해당 웹서비스의 운영방법은 다음과 같다. <br><br>1. 해당 웹 서비스에 현재 시장에 나와있지 않지만 내가 필요한 물건에 대한 설명을 작성한다. <br>2. 해당 물건을 같이 가지고 싶은 사람들이 여기에 참여의사를 밝힌다. <br>3. 해당 물건을 실현시킬 수 있는 전문가,기술자 들이 가격 및 세부조건을 제시한다. <br>4. 상호간에 계약기 맺어지거나 파기된다. <br><br>해당 웹서비스를 통해 얻을 수 있는 이득은 다음과 같다. <br>첫째, 소비자가 자신이 원하는 것과 100%에 가까운 일치율을 가진 물건을 구입할 수 있게 되면서 소비에 대한 만족도가 상승한다.<br>둘째, 해당 웹사이트에 방문하는 고객들은 원하는 물건을 제시할 뿐 네임드를 바라지는 않기 때문에 중소기업이나 작은 개인사업체들에게도 많은 기회가 제공될 수 있다.<br>셋째, 기존에 자신의 아이디어와 기술력이 동시에 있어야 가능했던 크라우드펀딩의 개념에서 자신의 아이디어만 가지고도 시작할 수 있는 방안으로 바뀌고 생산자가 직접 소비자를 컨택하는 방법으로 바뀜으로써 누구나 쉽게 접근할 수 있게 된다. </div>	Submission	12	2020-04-16 08:52:20.491205	2020-04-16 08:52:20.491205
13	description	<div><action-text-attachment sgid="BAh7CEkiCGdpZAY6BkVUSSI1Z2lkOi8vbGlrZWxpb24vQWN0aXZlU3RvcmFnZTo6QmxvYi8xMT9leHBpcmVzX2luBjsAVEkiDHB1cnBvc2UGOwBUSSIPYXR0YWNoYWJsZQY7AFRJIg9leHBpcmVzX2F0BjsAVDA=--223ba5de68b8c67076a32f785624f407a3b511b9" content-type="image/png" url="https://dgulion.com/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBFQT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--67869de4fdedf320a755d307791b49ada99f2547/%EC%8A%A4%ED%81%AC%EB%A6%B0%EC%83%B7(123).png" filename="스크린샷(123).png" filesize="222029" width="1920" height="1080" presentation="gallery"></action-text-attachment></div>	Submission	14	2020-04-17 07:23:32.50933	2020-04-17 07:23:32.529153
14	description	<div><action-text-attachment sgid="BAh7CEkiCGdpZAY6BkVUSSI1Z2lkOi8vbGlrZWxpb24vQWN0aXZlU3RvcmFnZTo6QmxvYi8xND9leHBpcmVzX2luBjsAVEkiDHB1cnBvc2UGOwBUSSIPYXR0YWNoYWJsZQY7AFRJIg9leHBpcmVzX2F0BjsAVDA=--77210d93a881f46901de49d7570ad5cd46adfd47" content-type="application/pdf" url="https://dgulion.com/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBFdz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--ccf54bbac0aa08b807c5d8d9f2b06ce008a9529a/%E1%84%8C%E1%85%A1%E1%86%BC%E1%84%8B%E1%85%A7%E1%86%BC%E1%84%83%E1%85%A9%E1%86%BC%20%E1%84%86%E1%85%A5%E1%86%BA%E1%84%89%E1%85%A1%20%E1%84%8B%E1%85%A1%E1%84%8B%E1%85%B5%E1%84%83%E1%85%B5%E1%84%8B%E1%85%A5%20%E1%84%8C%E1%85%A6%E1%84%8B%E1%85%A1%E1%86%AB%E1%84%89%E1%85%A5.pdf" filename="장영동 멋사 아이디어 제안서.pdf" filesize="32927"></action-text-attachment></div>	Submission	15	2020-04-17 07:58:56.192166	2020-04-17 07:58:56.197851
16	description	<div><action-text-attachment content-type="image" url="https://ncc-phinf.pstatic.net/20150107_69/142059685007598qoM_PNG/03.png?type=w646" width="636" height="493"></action-text-attachment><br>1) 계기:</div><div>1. O2O(online to offline, 정보 유통 비용이 저렴한 온라인과 실제 소비가 일어나는 오프라인의 장점을 접목해 만들어진 새로운 시장)시장의 발전의 가속화</div><div>2. 백화점 내 입점브랜드들의 ‘네이버 스토어팜화’ 증가</div><div>3. 반대로 온라인 쇼핑몰들의 오프라인화(ex 스타일난다) 증가 - 여전히 사람들은 직접 ‘체험’해보고 제품을 구매하기를 원함</div><div>   </div><div>2) 생각해낸 아이디어(만들고 싶은 서비스)</div><div>-백화점 내에서 옷을 직접 입어본 후 마음에 드는 옷의 제품명을 검색하면 해당되는 옷을 파은 오프라인 쇼핑몰을 제공해주는 서비스가 가능한 어플리케이션 </div><div>-더 싼 가격으로 제공되는 쇼핑몰을 찾아줌(가격비교 서비스)</div><div>-현재 본인이 있는 백화점 내에 있는 다른 브랜드 제품 중 찾는 제품과 비슷한 사이즈나 색의 제품을 추천까지 해주는 서비스(추천 서비스).</div><div>   </div><div>3) 기대효과:</div><div>-다양한 선택지에 대한 소비자들의 만족</div><div>-연관된 제품들의 추천을 통해 서비스를 제공하는 백화점들의 매출 상승 기대.</div>	Submission	17	2020-04-17 09:17:03.640567	2020-04-17 09:17:03.640567
17	description	<div><action-text-attachment sgid="BAh7CEkiCGdpZAY6BkVUSSI1Z2lkOi8vbGlrZWxpb24vQWN0aXZlU3RvcmFnZTo6QmxvYi8xOT9leHBpcmVzX2luBjsAVEkiDHB1cnBvc2UGOwBUSSIPYXR0YWNoYWJsZQY7AFRJIg9leHBpcmVzX2F0BjsAVDA=--5fe6cf7e0f65e36b10fc114a18c708b718e7d150" content-type="image/png" url="https://dgulion.com/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBHQT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--6f687894e1934c05f1bad65f521bc44fcef2cf92/%EC%9D%B4%EA%B0%80%EC%9B%90_%EB%A9%8B%EC%82%AC%EA%B3%BC%EC%A0%9C.png" filename="이가원_멋사과제.png" filesize="249900" width="1920" height="1080" presentation="gallery"></action-text-attachment></div>	Submission	18	2020-04-17 09:27:22.064265	2020-04-17 09:27:22.070075
20	description	<div>컴퓨터 공학전공 2018111689 박채은 아이디어 제출합니다.<action-text-attachment sgid="BAh7CEkiCGdpZAY6BkVUSSI1Z2lkOi8vbGlrZWxpb24vQWN0aXZlU3RvcmFnZTo6QmxvYi8yMz9leHBpcmVzX2luBjsAVEkiDHB1cnBvc2UGOwBUSSIPYXR0YWNoYWJsZQY7AFRJIg9leHBpcmVzX2F0BjsAVDA=--327b4ecd2ffa8e86e4dec2279d35b7322816514e" content-type="application/vnd.openxmlformats-officedocument.wordprocessingml.document" url="https://dgulion.com/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBIQT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--d41296e8e233e59d8ec299eefba8e853d3d4df93/IDEA.docx" filename="IDEA.docx" filesize="14269"></action-text-attachment></div>	Submission	21	2020-04-17 19:50:25.037812	2020-04-17 19:50:25.057452
18	description	<div><action-text-attachment sgid="BAh7CEkiCGdpZAY6BkVUSSI1Z2lkOi8vbGlrZWxpb24vQWN0aXZlU3RvcmFnZTo6QmxvYi8yMT9leHBpcmVzX2luBjsAVEkiDHB1cnBvc2UGOwBUSSIPYXR0YWNoYWJsZQY7AFRJIg9leHBpcmVzX2F0BjsAVDA=--c1fdfeb01019ae300b913abb36a53732414177a6" content-type="image/png" url="https://dgulion.com/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBHZz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--b88bb968e73567b14d53e8bef3f139d5e42cc943/image.png" filename="image.png" filesize="158619" width="1857" height="931" previewable="true" presentation="gallery"></action-text-attachment></div>	Submission	19	2020-04-17 12:35:08.637713	2020-04-17 17:28:43.462601
22	description	<div><action-text-attachment sgid="BAh7CEkiCGdpZAY6BkVUSSI1Z2lkOi8vbGlrZWxpb24vQWN0aXZlU3RvcmFnZTo6QmxvYi8zMD9leHBpcmVzX2luBjsAVEkiDHB1cnBvc2UGOwBUSSIPYXR0YWNoYWJsZQY7AFRJIg9leHBpcmVzX2F0BjsAVDA=--c206a397143f27f7b07e24de2f83ebcb0395d09d" content-type="application/vnd.openxmlformats-officedocument.wordprocessingml.document" url="https://dgulion.com/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBJdz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--317ebd3f65ed97c7a4f18bebdec6d2a869d6b5d7/%EB%A9%8B%EC%9F%81%EC%9D%B4%EC%82%AC%EC%9E%90%EC%B2%98%EB%9F%BC%20%EC%95%84%EC%9D%B4%EB%94%94%EC%96%B4%20%EA%B3%BC%EC%A0%9C.docx" filename="멋쟁이사자처럼 아이디어 과제.docx" filesize="14598"></action-text-attachment></div>	Submission	23	2020-04-18 14:14:23.940061	2020-04-18 14:14:23.962755
23	description	<div>&lt;경제 학습 커리큘럼 사이트&gt;<br><br>목적: 학생이나 사회초년생들을 위한 경제 관련 도움 사이트</div><ol><li>1. 경제에 관심을 가지고 있지만 어려운 용어와 체계로 인한 학습의 진입장벽이 높아 배우지 못하는 사람에게 쉽고 이해하기 쉬운 커리큘럼을 가진 경제 사이트를 구축합니다.</li></ol><div>2. 사회초년생들에게 다양한 금융정보(은행별 혜택, 주택청약, 주식, 세금, 보험 등)를 제공함으로써 수입 및 용돈을 체계적으로 관리할 수 있도록 도움을 줍니다.<br><br>[주식 커리큘럼] 주식투자를 위해 주식의 A to Z를 하나하나 설명해줍니다.<br>(주식을 위한 계좌설계부터 주식 프로그램 사용법, 시장 흐름 분석 등..)<br>('Codecademy'의 방식으로 단계별로 학습할 수 있도록 합니다.)<br><br>[세금 및 청약] 사회초년생들에게 돈의 흐름과 관리를 위해 도움을 줍니다.<br>(세금 납입, 주택청약의 이점 등 경제활동의 개념을 도와줍니다.)<br><br>[기타 다양한 금융정보] 학생 및 사회인에게 도움이 되는 정보를 제공합니다.<br><br>*'뱅크샐러드'와 비슷한 부류의 서비스(금융 정보 제공 등)이지만 주된 목적은 경제를 알아가고자 하는 사람들을 위해 모든 것을 쉽게 알려줄 수 있는 커리큘럼을 짜서 단계별로 해결하면서 자연스럽게 학습할 수 있도록 하는 것이 목표입니다.</div><div><br><br></div>	Submission	24	2020-04-18 15:21:02.939623	2020-04-18 15:21:02.939623
21	description	<div><action-text-attachment sgid="BAh7CEkiCGdpZAY6BkVUSSI1Z2lkOi8vbGlrZWxpb24vQWN0aXZlU3RvcmFnZTo6QmxvYi8yOT9leHBpcmVzX2luBjsAVEkiDHB1cnBvc2UGOwBUSSIPYXR0YWNoYWJsZQY7AFRJIg9leHBpcmVzX2F0BjsAVDA=--0dcb330ef97ee15873e9e6c7ccdeaae56332a175" content-type="application/vnd.openxmlformats-officedocument.wordprocessingml.document" url="https://dgulion.com/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBJZz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--be434bc19b674498da29d6336062e33cebbe3b3a/%EB%A9%8B%EC%82%AC%20%EC%95%84%EC%9D%B4%EB%94%94%EC%96%B4%20%EA%B3%BC%EC%A0%9C%202020111625%EA%B9%80%EB%8F%99%EC%97%B0.docx" filename="멋사 아이디어 과제 2020111625김동연.docx" filesize="17076"></action-text-attachment><br>동대멋사 아이디어 과제<br><br></div><div>바이오환경과학과<br><br></div><div>2020111625 김동연<br><br></div><div><strong>1. 보행자신호등 대기시간 알림이<br></strong><br></div><div> 1) 해결하고자 하는 문제<br><br></div><div>목적지까지 급하게 걸어갈 때, 가는 길에 위치해 있는 신호등이 언제 켜지는지 몰라 무작정 뛰다가 신호등이 빨간 불이면 정지하고 다시 뛴 경험은 모두에게 있을 것입니다. 이러한 비효율적인 행동은 정작 뛰어야 할 상황에는 힘이 부족해 뛰지 못하는 상황을 유발하여 결과적으로 목적지까지 걸어갈 때와 비슷하게 도착하거나 매우 힘들게 도착하는 상황을 초래하곤 합니다. 보행자신호등 대기시간 알림이’를 통해 가는 길에 위치해 있는 보행자신호등이 언제 켜지는 지를 확인할 수 있도록 해 이러한 문제를 해결하고자 합니다.<br><br></div><div>2) 문제 해결방법(아이디어)<br><br></div><div>출발지와 목적지를 설정하면 도보로 갈 수 있는 여러 길(A~Z)과 예상 시간을 알려줍니다.<br><br></div><div>가장 빨리 도착할 수 있는 길부터 경로A로 표시해주며 해당 경로를 선택하면 가는 길과 신호등의 위치, 신호등이 바뀌기까지 남은 시간을 지도에 표시해줍니다.<br><br></div><div>3) 창출하고자 하는 가치<br><br></div><div>- 목적지까지 급하게 걸어갈 때, 가는 길에 위치해 있는 신호등이 언제 켜지는지 안다면, 신호등이 파란불이 될 때까지 어느 정도 시간이 있으니 걸어도 된다고 판단하거나 곧 있으면 신호등이 파란불로 바뀌니 뛰어야겠다 등의 판단을 내려 효율적으로 걷거나 뛰면서 목적지까지 도착할 수 있을 것입니다. <br><br></div><div>- 급한 상황에서 어쩔 수 없이 무단횡단을 하는 비율을 줄여 교통사고를 줄이는 효과를 낼 수(도)있습니다. <br><br></div><div> <br><br></div><div><strong>2. 화학공부에 최적화된 노트필기 어플<br></strong><br></div><div>1) 해결하고자 하는 문제<br><br></div><div>화학공부를 할 때는 그림을 그려보면서 이론을 이해하거나 문제를 풀고, 여러 화학식을 작성해야할 때가 많습니다. 단순한 줄노트에 이러한 필기를 하면 나중에 다시 봤을 때 한 눈에 다시 이해하기 어렵다는 단점이 있습니다. 이러한 문제를 해결하기 위해 다시 돌아볼 때 한 눈에 이해할 수 있고, 개념을 연결해 이해할 수 있는 화학공부에 최적화된 노트필기 어플을 만들고자 합니다. <br><br></div><div>2) 문제 해결방법(아이디어)<br><br></div><div>-아이패드나 갤럭시 패드에서 사용할 수 있는 어플로 제작합니다.<br><br></div><div>-화학공부에 최적화된 여러 필기 칸 중 선택해 필기할 수 있도록 합니다.(비커와 그 용량을 표시할 수 있는 칸, 화학식끼리 계산할 수 있는 칸, 끓는점-미지용액과 같은 그래프 등을 선택해 노트에 삽입하면 이에 대한 부가 설명과 스스로가 이해한 방법을 필기 할 수 있습니다)<br><br></div><div>-여러 개념을 융합해 문제를 풀 때 공식이 기억나지 않는 경우 이를 찾아볼 수 있는 기능을 포함하도록 합니다.<br><br></div><div>3) 창출하고자 하는 가치<br><br></div><div>-문제유형별로 본인만의 풀이 또한 필기해 저장할 수 있기 때문에 이후에도 비슷한 유형의 문제를 풀 때 참고할 수 있습니다. 이러한 과정이 반복되면 어떤 문제를 풀어도 두려움없이 본인의 방식으로 풀 수 있습니다.<br><br></div><div>-화학공부를 하는 학생들이 그 내용을 유기적, 인과적으로 이해하게 되어 화학 공부 효율을 높일 수 있습니다.<br><br></div>	Submission	22	2020-04-18 08:32:15.938553	2020-04-18 08:37:04.408752
25	description	<div>서비스의 목적 : 대학생이 되었는데, 막상 학교를 다니면서 옷에 관심이 많아서 어떤옷을 입어야할지, 혹은 옷을 잘입고 싶은 학생들이 편하게 옷을 따라서 입을수 있는 홈페이지를 제공한다. <br><br>서비스의 내용 : <br>- 전국 각지의 옷 잘입는 대학생들을 섭외한다. (참여 모집을 한다.)<br>- 그 대학생들이 자신의 데일리 룩을 페이지에 올린다. <br>- 이 홈페이지를 이용하는 학생들이 자신이 마음에 드는 데일리 룩에 좋아요 혹은 추천을 누른다. <br>- 추천수가 가장 많은 학생은 한주 혹은 한 달마다 소정의 상품을 제공한다. <br>- 이 학생들이 각자 착용한 아이템이나 옷들의 출처나 제품을 태그로 달아 놓는다. <br>이 옷이 고가이거나 구하기 힘든 한정판 옷일경우, 혹은 그외에 비슷한 느낌이 드는 옷을 알고있는 다른 홈페이지 이용자들이 태그를 통해서 대체 옷들이나 상품들을 올려준다. <br><br>창출하고자 하는 가치:<br>- 이런식으로 홈페이지를 활성화 시켜서 전국 대학생 데일리룩 콘테스트 등을 한번씩 개최하고 인지도를 쌓는다. <br>- 각종 광고로 수입을 얻게 되고, 여러 셀럽들의 참여도 시작된다. (현재의 에브리타임 같은 위상을 가지게 된다.)<br>- 아직까지 대학생을 대상으로하는 이런 홈페이지나 어플은 존재하지 않는다. <br>- 옷을 잘입고싶거나 막 관심을 갖게된 학생들 같은경우 편하게 찾을수있는 이 홈페이지 서비스를 찾게 될 것으로 보인다. <br>- 마케팅을 잘하게되면 무신사 급으로 성장할수 있을것으로 전망된다. <br><br></div>	Submission	26	2020-04-18 17:37:03.406403	2020-04-18 17:37:03.406403
26	description	<div>소수의 친구들과는 약속을 잡을 때 고려사항이 적지만,  10명만 되더라 도 서로의 스케쥴 등 고려사항이 많아진다. 카톡  일정 투 표가 있다 하더라도 투표를 해야하는 불편함이 있을 수 있다. <br><br>개인적인 경험을 이야기 하자면, 고등학교 때 학원에서 내신대비를 할 경우, 학원에 다니는 같은 학교끼리 같이 수업을 하게 된다. 그때마다 수기로 작성해서 가능한 시간을 작성하였고, 모든 학생의 시간을 일일이 비교한 뒤 가능한 시간을 정하였 는데, 사람이 수기로 하다보니 꼭 충돌이 발생하여 한 번씩은 리셋하고 다시 해야하는 상황이 벌어진다. <br><br>따라서 여럿이서 시간을 정할 때 가능한 시간을 바로 알려줄 수 있는  서비스가 있으면 좋겟다고 생각을  하게 되었다. 만든 웹서비스에 스케쥴을 직접 입력해도 되고, 더 나다가,  에타와 같은 시간표 어플이나 다른 캘린더 어플을 연동하여 충돌되지 선에서  대안을 주는 서비스가 있으면 편리할 거 같다.<br><br>아이디어를 보태서 장소까지 생각해 본다면, 보통 멀리 사는 친구를 만날 때는 가운데에서 만나는 경우가 많다.. 저는 3~4 명만 모여도 가운데가 정확이 어딘지 몰라 주로 강남에서 만나 곤 한다,. GPS 기능과 지하철 노선도를 기반하여 어디서 만나면 적절한 지, 그리고 그 주변 맛집 데이터를 이용해서 추천 장소도 알려준다면 편리할 거 같다.<br><br></div>	Submission	27	2020-04-19 01:39:51.994928	2020-04-19 01:39:51.994928
27	description	<div>공동 배달 서비스<br>사회적으로 1인가구도 늘어나고 있고 저도 현재 자취를 해서 혼자 살고 있습니다.<br>음식을 보통 배달시켜서 먹는데 1인분은 배달이 안되고, 배달비가 점점 더 비싸지고 있어 부담을 느낍니다.<br>서울의 엄청나게 밀집된 인구란 특성을 이용해서 같은 동이나 같은 단지의 사람들중 배달을 같이 시켜 배달비를 분담하는 서비스를 만들어 보고 싶습니다. <br>사람들이 시켜먹는 시간이 안겹칠 경우가 많다는 점을 보완하기 위해 아침, 점심, 저녁, 야식 시간을 시스템에 설정해두고 한명이 먹고 싶은 메뉴와 시간대를 선택하면  다른 사용자가 그 정보를 알림으로 받아 같이 시켜먹을 수 있을 것이다. <br> 사용자 설정을 통해 못먹는 음식, 비용의 상한선, 알림 허용 시간대의 설정을 통해 사용자의 니즈에 맞춘 서비스를 만들어보고 싶습니다.<br><br>가족 일정 공유<br> 저 같은 경우에 가족들이 모두 다 떨어져서 살고 있습니다. 직장이 있거나, 학교를 다니고 있어서 여행이라던지 행사를 계획하는데 있어서 일정짜는게 참 번거롭고 직장인의 경우 휴가나 반차 계획을 짜는데 가족들의 일정을 모르니 아무렇게 짜고 일정이 어긋나는 경우가 많았습니다. <br>그리고 가족들이랑 떨어져 지내다보니 가족들이 뭐하고 지내는지 궁금할때가 많았습니다 . 바쁘고 서로 일정이 안맞아 전화를 못하는 빈도수가 점점 늘어나고 있습니다.<br>이런 이유로 가족 일정 공유 웹서비스를 만들어보고 싶습니다.</div>	Submission	28	2020-04-19 04:13:00.525237	2020-04-19 04:13:00.525237
30	description	<div>&lt;해결하고자 하는 문제&gt;<br>-독강인 경우 강의내용이나 공지사항에 대해 궁금한 점이 있을때 편하게 물어볼 학우를 만나기 어렵다.<br>-수강정정기간에 강의에 참여하지 못해 사소하지만 놓치고 가는 정보가 있을 수 있다.<br>-강의수가 많아 과제 제출기한, 출결현황 등을 헷갈릴 수 있고 싸이버 강의의 경우 수강기한을 놓칠 수 있다.<br><br>&lt;문제 해결방법(아이디어)&gt;<br>-각 대학교의 같은 강의를 수강하는 사람들이 모이는 사이트(또는 어플)를 만들어 자유롭게 정보를 공유하고 의견을 나눌 수 있도록 한다. 그리고 알림기능을 통해 마감기한을 놓치는 것을 방지한다.<br><br>&lt;창출하고자 하는 가치&gt;<br>-독강의 부담을 덜고, 특히 전공강의의 경우 전과생, 복전생, 편입생등의 정보접근을 용이하게 하여 적응을 원활히 한다.<br>-상대가 놓친 부분에 대해 도움을 주고 다음에 자신도 도움을 받으며 협력하고 상부상조한다.<br>-이 서비스 하나로 학교 출결,과제,시험 일정등을 한번에 편리하게 관리할 수 있다.<br><br>&lt;실행계획&gt;<br>1. 출결<br>-몇 번 결석하면 F인지, 몇 번 결석까지는 성적에 반영이 안되는지, 몇 번 지각이 결석 한번인지, 휴강공지 등등의 정보를 정확히 명시한다. <br>(이런 정보는 수강생이 오티를 듣고 올려야하는데, 제일 먼저 등록한 수강생에게 포인트를 지급하고 일정인원 이상이 동의하면 공지사항으로 등록되도록 하는 방식 등등..이 있어야 체제가 원활히 운영될 것 같습니다.)<br>-자신이 이 강의에 지각이나 결석을 했을 경우 체크해 두는 항목을 만들어 출결현황을 쉽게 확인할 수 있도록 한다.<br>-싸이버 강의는 수강하면 수강으로 체크하고 미수강일 경우 알림이 가도록 설정 가능하게 한다.<br><br>2. 과제<br>-과제가 공지사항으로 등록이 되고 제출한 경우 제출로 체크하고 미제출인 경우 알림이 가도록 설정 가능하게 한다.<br>(출결과 마찬가지로 제일 먼저 등록 수강생에게 리워드를 주는 방식 등 과제가 있음에도 공지사항을 아무도 등록하지 않는 상황이 발생하지 않도록 하는 방법이 필요할 것 같습니다.)<br><br>3. 질문<br>-공부하다가 모르는 부분이나 강의내용중 이해가 안가는 부분을 질문글을 올리고 누군가가 답변할 수 있다. 이 부분은 이전에 이 강의를 수강한 사람도 접근 가능하게 하고, 답변자에게 포인트를 지급하는 방식 등 원활한 참여가 가능하게 이끄는 방법이 필요할 것 같습니다.)<br><br>4. 채팅<br>-자유로운 채팅기능을 통해 사소한 질문을 하거나, 결석했을 경우 특별한 일은 없었는지, 그리고 필기가 많은 수업이라면 필기본을 부탁할 학우를 찾는 등의 목적으로 사용 가능하다. </div>	Submission	31	2020-04-19 08:04:54.429378	2020-04-19 08:04:54.429378
29	description	<div><action-text-attachment sgid="BAh7CEkiCGdpZAY6BkVUSSI1Z2lkOi8vbGlrZWxpb24vQWN0aXZlU3RvcmFnZTo6QmxvYi8zND9leHBpcmVzX2luBjsAVEkiDHB1cnBvc2UGOwBUSSIPYXR0YWNoYWJsZQY7AFRJIg9leHBpcmVzX2F0BjsAVDA=--71b6bddc2b3fd2fda984ed4bc99fe3a8f3ac8777" content-type="application/haansofthwp" url="https://dgulion.com/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBKdz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--33fbecb455fc4b1ff2a3400ff925ee917972ec54/%EC%95%84%EC%9D%B4%EB%94%94%EC%96%B4%20%EA%B3%BC%EC%A0%9C.hwp" filename="아이디어 과제.hwp" filesize="14848"></action-text-attachment></div>	Submission	30	2020-04-19 07:53:16.082619	2020-04-19 07:53:16.088782
19	description	<div><action-text-attachment sgid="BAh7CEkiCGdpZAY6BkVUSSI1Z2lkOi8vbGlrZWxpb24vQWN0aXZlU3RvcmFnZTo6QmxvYi8zNj9leHBpcmVzX2luBjsAVEkiDHB1cnBvc2UGOwBUSSIPYXR0YWNoYWJsZQY7AFRJIg9leHBpcmVzX2F0BjsAVDA=--1ccd9992131833e82536a4cb8d3fbf1e4dbc23cf" content-type="application/vnd.openxmlformats-officedocument.presentationml.presentation" url="https://dgulion.com/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBLUT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--8b22837efc8d6931e6e13adaedb006d248a95d1e/%EC%95%84%EC%9D%B4%EB%94%94%EC%96%B4%ED%86%A4_8%EA%B8%B0%20%EC%9E%84%EB%8F%84%EC%97%B0.pptx" filename="아이디어톤_8기 임도연.pptx" filesize="6504818"></action-text-attachment><br>게임 QA 웹서비스입니다.<br><br></div>	Submission	20	2020-04-17 16:55:38.627627	2020-04-19 10:29:59.004519
36	description	<div>가독성 좋은 글을 원하시는 분들은 pdf파일을 봐주세요 ㅎㅎ<br><action-text-attachment sgid="BAh7CEkiCGdpZAY6BkVUSSI1Z2lkOi8vbGlrZWxpb24vQWN0aXZlU3RvcmFnZTo6QmxvYi80MD9leHBpcmVzX2luBjsAVEkiDHB1cnBvc2UGOwBUSSIPYXR0YWNoYWJsZQY7AFRJIg9leHBpcmVzX2F0BjsAVDA=--0ade395d28ac392083fad626c6e606f53d0ff171" content-type="application/pdf" url="https://dgulion.com/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBMUT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--7420f6c8df634830c70e933037acc921c19c685e/%EC%98%A4%EB%8A%98%20%EB%AD%90%20%EB%A8%B9%EC%A7%80.pdf" filename="오늘 뭐 먹지.pdf" filesize="188899"></action-text-attachment><br><strong>1. 소개:</strong><br>"오늘 뭐 먹지?" 는 동국대 맛집에 대한 사용자 중심 가게&amp;메뉴 추천 서비스, 솔직한 평가와 실시간 여석 정보를 알려주고 예약할 수 있는 서비스입니다.<br><br><strong>2.문제 상황:</strong><br><strong>1)매 점심(저녁)시간 겪는 선택장애</strong><br>우린 항상 오늘 뭘 먹을까 고민하곤 합니다.  "어제는 돈까스, 그저께는 칼국수....아 파스타는 안 땡기는데....어디 가지?? 수업 빨리 가야 하는데..."<br><strong>2)피크시간, 끝이 안 보이는 웨이팅...</strong><br>1)번에서 겨우 메뉴를 정해서 가게에 도착했더니 이런...우린 6명인데 가게에 자리가 4석 밖에 없어서 웨이팅하고 있습니다.(예를 들자면...산타돈xx) 다시 1)번으로 돌아가 무한 loop를 돌기 시작합니다.<br><strong>3)늘 갔던데... 뭔가 새로운 식당 없나?</strong><br>생각보다 우리가 알지 못한 숨겨진 맛집들이 있습니다. 그리고 가게가 사라지거나 새로 가게가 생겨나기도 하죠.<br><strong>4)사람들의 상세한 후기 등의 정보가 부족하여 발품을 팔아야 함.</strong><br>정확한 위치, 메뉴, 주력 메뉴, 가격대 등의 식당 정보를 한데 모아 상세히 알려주는 플랫폼이 x "아 거기 안 가봤는데 맛있나..?"<br><br><strong>3.구체적인 아이디어:</strong><br>1): 사용자의 이용 로그(*상세 아이디어)를 3일/1주일/1달 단위로 분석하여 "1주일간 가장 많이 먹은 간 식당(카테고리)은 " "이네요! 오늘은 덮밥(카테고리) 어떠세요?"와 같은 추천 알고리즘 설계<br>(*예약, 후기 기록 or 위치정보를 통해 20분 이상 머무른 식당 or 카드결제내역을 이용)<br><br>2): 사장님들과 협약해 실시간 가게별 여석 상황, 대기팀을 알려주는 기능을 통해 점심시간 헛걸음하는  일을 줄인다. 추가로 모바일에서 예약 서비스를 운영. 이를 활용해 지금 N명이 먹을 수 있는 식당은? 과 같은 기능도 제공 (식사 외에 술집 단체예약으로도 활용 가능)<br><br>3): 식당별 상세한 정보(정확한 위치, 메뉴, 주력메뉴, 가격대)를 메인화면에 카테고리별로 분류해서 소개<br><br>4): 학생 들(사용자)들의 솔직한 후기(맛, 위생, 가성비, 별점 등등...)를 남길 수 있는 평가 시스템을 운영. 후기 남길 시 페이백 또는 할인 쿠폰을 살 수 있는 포인트 지급.<br><br>5): 학교 중심 반경 2.5Km  이내의 맛집에 대한 소개를 작성할 시 포인트 지급<br><br><strong>4.기대 효과:</strong><br>1)학생들이 점심시간마다 헛걸음하는 시간을 줄여 줍니다.<br>2)“맹산식당”, “Mr.don”과 상대적으로 덜 알려진 숨겨진 맛집들, 새로 생겨나는 식당, 없어지는 식당들에 대한 정보제공으로 학생들이 더욱 다양한 선택지를 선택할 수 있게 함.<br>3)피크 시간대에 학생들의 불필요한 이동을 줄이고 추천 알고리즘으로 소비 유도로 인한 가게 매출 인상 효과<br>4)덜 알려진 맛집에 대한 학생들의 인식으로 인한 홍보 효과와 매출 인상 효과<br>5)좋지 않은 서비스를 운영하는 식당들의  개선으로 인한 대학가 주변의 전체적인 음식 퀄리티 상승효과<br>6)신입생들과 복학생들의 선택장애 방지 및 즐거운 캠퍼스 라이프<br><br><strong>5.계획:</strong><br>1)가게 사장들과 협약을 맺고, 초기기간엔 시범 서비스를 운영하고 이를 통한 매출 인상 등의 효과가 발생 시 매달 구독 서비스를 통해 수익 창출<br>2)구글 ads를 이용한 광고수익<br>3)동국대(충무로, 동인)를 시작으로 각 대학가 주변으로 영역을 넓혀나감<br>(특히 홍대, 건대와 같은 대학가가 잘 발달한 대학 외의 대학가에서 긍정적인 효과를 얻을 수 있을 것으로 예측) <br><br><br><br></div>	Submission	37	2020-04-19 14:56:25.768991	2020-04-19 14:56:25.776404
32	description	<div> 오팔세대, 경제력을 갖춘 5060세대를 일컫는 말로 자신이 원하는 것을 하기 위해 돈과 시간을 아끼지 않는 새로운 소비층을 의미합니다. 이제는 좋아하는 트로트가수를 위해 스트리밍을 하거나, 자신을 표현하기 위해 영상을 올리는 유튜버를 하시는 어르신들이 부쩍 많아졌습니다. 그래서 정보가 기회가 되는 이 시대를 어르신들이 활발하게 활동하실 수 있게 '온라인 실버타운' 아이디어를 고안해보았습니다. <br> 사람들은 정보를 찾기 위해 각종 어플들을 살펴보고, 영상들을 찾아보며 지식을 축적해 나가고 있습니다. 하지만 이제는 더 나아가 과정조차 거치지 않고 알고리즘들이 알아서 찾아주는 시스템이 발달하였습니다. 이 점을 이용하여 정보찾기에 다소 어려움이 있는 어르신들이 모든 정보를 한 곳에서 얻을 수 있다면 어떨까요? 예를 들어 거동이 불편한 어르신들을 위해 도우미분들을 1대1로 매칭해주는 직접적인 시스템부터 운동, 여행, 시사, 음악, 패션 등 오팔세대를 겨냥한 각종 신문기사, 영상들과 같은 간접적인 시스템까지 '온라인 실버타운'에서 이루어지게 하는 것입니다. 이렇게 자연스레 공간이 형성이 되고 그 위에 오팔세대만의 커뮤니티가 생긴다면 이 분들이 사회에 끼치는 영향은 더욱 커질 것입니다. <br> 21세기 오팔세대의 '회춘'을 응원하며 멋사 동료분들과 함께 고민한다면 더욱 멋지게 구체화 되지 않을까 하는 기대를 품고 아이디어를 제출합니다.<br><action-text-attachment sgid="BAh7CEkiCGdpZAY6BkVUSSI1Z2lkOi8vbGlrZWxpb24vQWN0aXZlU3RvcmFnZTo6QmxvYi8zOD9leHBpcmVzX2luBjsAVEkiDHB1cnBvc2UGOwBUSSIPYXR0YWNoYWJsZQY7AFRJIg9leHBpcmVzX2F0BjsAVDA=--d9fc03ec10b7b1011e31cb59aed7e1e4bcad8297" content-type="application/vnd.openxmlformats-officedocument.presentationml.presentation" url="https://dgulion.com/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBLdz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--3f5a17a026d12421ff67050ddfbf13a6c0c90a87/%EB%A9%8B%EC%9F%81%EC%9D%B4%EC%82%AC%EC%9E%90%EC%B2%98%EB%9F%BC%20%EC%95%84%EC%9D%B4%EB%94%94%EC%96%B4%20%EC%A0%9C%EC%B6%9C%20%EA%B3%BC%EC%A0%9C_%EC%9C%A4%EC%83%81%EC%9A%B0.pptx" filename="멋쟁이사자처럼 아이디어 제출 과제_윤상우.pptx" filesize="215479"></action-text-attachment></div>	Submission	33	2020-04-19 09:33:42.426968	2020-04-19 12:15:47.611181
33	description	<div>1)  첫번째는 주변 가게나 찾고자 하는 가게별로 할인 이벤트, 제휴 포인트나 할인되는 카드 정보들을 한번에 보여주는 서비스입니다. <br>제 핸드폰의 통신사는 skt라 제게  t멤버쉽이 있음에도 불구하고 제휴 할인  매장들이 그렇게 다양한지 몰라 사용하지 않다가 약  1~2 년 전 처음으로 사용하게 되었습니다. 사용을 한 이후에는 왜 진작 사용하지 않았을까 싶을 정도로 다양한 매장, 영화관 등등에서 할인을 받고 있습니다. 비록 아주 작은 금액들이지만  모이다보니 4월 중순인 올해 벌써 3만원 가량을 할인받았습니다. 이 외에도 다양한 할인이나 적립을 받을 수 있는 시스템이 다양함에도 불구하고  개인이 몰라 받지 못하는 경우가 많을 것 같습니다. 그런 제휴 서비스가 하나인 매장의 경우에는 해당 서비스의 어플로 확인하면 되지만 한 매장에 여러가지  할인이 있는만큼 그 모든 안내를 하나의 어플로 확인할 수 있으면  매우 편리할 것 같다는 생각이 들었습니다. 예를들어, 파리바게트에는 해피포인트와 티멤버쉽 등이 있다라는 것 처럼이요. 또한, 이 서비스를 더 발전시킨다면 제휴 할인 및 적립 각각 바코드로 만들어 한 어플에서 안내 뿐만 아니라 할인까지 직접 받을 수 있는 서비스가 되면  더 좋을 것 같습니다.<br><br>2) 두번째는 병원과 관련된 서비스입니다. 이건 제가 처음 멋사를 지원할때 만들고 싶은 서비스로 냈던 것 중  하나이기도 합니다.<br>저는 환절기에 비염을 심하게 앓는데 환절기엔 비염 환자도 감기 환자도 많아 병원에 가보면 대기줄이 굉장히 긴 경우가 많았습니다. 그래서 저는 스타벅스 사이렌 오더처럼 병원을 미리 예약하고 자신의 대기 순서 변화를 앱으로 볼 수 있게 하는 앱이 있으면 좋겠다고 생각했습니다. 또한 요즘에는 병원이 너무 많아 어떤 병원이 진료를 잘 봐주는지 알기가 쉽지 않기 때문에 해당 앱으로 예약한 병원에 대한 후기를 배달의 민족처럼 남기는 서비스가 함께 하면 가고자 하는 병원을 미리 손쉽게 알아보고 갈 수 있어 더 좋을 것 같습니다. </div>	Submission	34	2020-04-19 13:27:53.745268	2020-04-19 13:27:53.745268
34	description	<div><action-text-attachment sgid="BAh7CEkiCGdpZAY6BkVUSSI1Z2lkOi8vbGlrZWxpb24vQWN0aXZlU3RvcmFnZTo6QmxvYi8zOT9leHBpcmVzX2luBjsAVEkiDHB1cnBvc2UGOwBUSSIPYXR0YWNoYWJsZQY7AFRJIg9leHBpcmVzX2F0BjsAVDA=--a304c1db5f741db04132352d1fad1f8cba80d110" content-type="application/haansofthwp" url="https://dgulion.com/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBMQT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--3f3867099124fa4f45c34caf68f406e7dba58d73/2019110245%20%EC%9D%B4%EC%98%88%EC%9D%80%20%EB%A9%8B%EC%9F%81%EC%9D%B4%EC%82%AC%EC%9E%90%EC%B2%98%EB%9F%BC%20%EA%B3%BC%EC%A0%9C.hwp" filename="2019110245 이예은 멋쟁이사자처럼 과제.hwp" filesize="16896"></action-text-attachment><br>과제 제출합니다!</div>	Submission	35	2020-04-19 13:47:37.554196	2020-04-19 13:47:37.560693
35	description	<div>&lt;반려동물 달력&gt;<br>가족 구성원 모두와 동물병원까지 공유 가능한 반려동물 달력<br>기능1: 반려동물 관련 행사와 매일마다 해야할 일(양치, 화장실 갈아주기,놀아주기, 산책, 물그릇 갈아주기 등등)을 설정하여 시행 여부를 가족으로 등록된 구성원 모두가 공유하고 입력할 수 있음<br>기능2: 동물병원과 연계해 동물병원에 등록된 접종일, 검진날짜가 자동으로 등록됨<br>기능 3: 가족끼리 반려동물의 사진이나 영상을 날짜에 따라 등록할 수 있음<br>기능 4: 가족공지 기능을 통해 반려동물에 관한 내용을 공유할 수 있음<br><br>&lt;유튜브 자막 플랫폼&gt;<br>해당 플랫폼에 자막이 필요한 영상의 링크를 올리면 다수의 사용자들이 자막을 다는 참여형 서비스</div>	Submission	36	2020-04-19 14:23:25.774713	2020-04-19 14:23:25.774713
40	description	<div><action-text-attachment sgid="BAh7CEkiCGdpZAY6BkVUSSI1Z2lkOi8vbGlrZWxpb24vQWN0aXZlU3RvcmFnZTo6QmxvYi80Nz9leHBpcmVzX2luBjsAVEkiDHB1cnBvc2UGOwBUSSIPYXR0YWNoYWJsZQY7AFRJIg9leHBpcmVzX2F0BjsAVDA=--be77b371cabf5c5a3bd7fa7153b78477dfc5836b" content-type="image/png" url="https://dgulion.com/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBOQT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--f4cb342caab3d614fa977272bcd01df7ba7c24b0/220CFFE3-E80C-4EC4-832B-0DF567CAD577.png" filename="220CFFE3-E80C-4EC4-832B-0DF567CAD577.png" filesize="183205" width="828" height="1792" presentation="gallery"></action-text-attachment></div>	Submission	41	2020-04-20 01:45:10.684359	2020-04-20 01:45:10.690488
49	description	<div><action-text-attachment sgid="BAh7CEkiCGdpZAY6BkVUSSI1Z2lkOi8vbGlrZWxpb24vQWN0aXZlU3RvcmFnZTo6QmxvYi82MT9leHBpcmVzX2luBjsAVEkiDHB1cnBvc2UGOwBUSSIPYXR0YWNoYWJsZQY7AFRJIg9leHBpcmVzX2F0BjsAVDA=--2190dfc663b3dc02a55e8dbd6d11f5dfe1463a97" content-type="image/jpeg" url="https://dgulion.com/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBRZz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--247f98c96abad4d24eb9cf5883d6edea9c4ea111/%EC%A3%BC%EC%84%9D%202020-04-21%20184026.jpg" filename="주석 2020-04-21 184026.jpg" filesize="645970" width="3840" height="2160" presentation="gallery"></action-text-attachment></div>	Submission	50	2020-04-21 09:43:00.780998	2020-04-21 09:43:00.787329
43	description	<div><action-text-attachment sgid="BAh7CEkiCGdpZAY6BkVUSSI1Z2lkOi8vbGlrZWxpb24vQWN0aXZlU3RvcmFnZTo6QmxvYi81MD9leHBpcmVzX2luBjsAVEkiDHB1cnBvc2UGOwBUSSIPYXR0YWNoYWJsZQY7AFRJIg9leHBpcmVzX2F0BjsAVDA=--a205ebf48b99e16593f31754ece27a2cf5f80213" content-type="image/png" url="https://dgulion.com/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBOdz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--ae7600cbd56e97fecdd6548d30999d51431533bc/%EB%A9%8B%EC%9F%81%EC%9D%B4%EC%82%AC%EC%9E%90%EC%B2%98%EB%9F%BC%20%EC%BD%94%EB%93%9C%EC%B9%B4%EB%8D%B0%EB%AF%B8%20%EA%B3%BC%EC%A0%9C1_%EC%9C%A4%EC%83%81%EC%9A%B0.png" filename="멋쟁이사자처럼 코드카데미 과제1_윤상우.png" filesize="221077" width="2560" height="1600" presentation="gallery"></action-text-attachment><action-text-attachment sgid="BAh7CEkiCGdpZAY6BkVUSSI1Z2lkOi8vbGlrZWxpb24vQWN0aXZlU3RvcmFnZTo6QmxvYi81MT9leHBpcmVzX2luBjsAVEkiDHB1cnBvc2UGOwBUSSIPYXR0YWNoYWJsZQY7AFRJIg9leHBpcmVzX2F0BjsAVDA=--d79440984bac7e2a4236c3fdb9dd54d2663568cb" content-type="image/png" url="https://dgulion.com/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBPQT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--759cde4e4ca33736090cb99b077ddd03d7475ca4/%EB%A9%8B%EC%9F%81%EC%9D%B4%EC%82%AC%EC%9E%90%EC%B2%98%EB%9F%BC%20%EC%BD%94%EB%93%9C%EC%B9%B4%EB%8D%B0%EB%AF%B8%20%EA%B3%BC%EC%A0%9C2_%EC%9C%A4%EC%83%81%EC%9A%B0.png" filename="멋쟁이사자처럼 코드카데미 과제2_윤상우.png" filesize="302390" width="2560" height="1600" presentation="gallery"></action-text-attachment></div>	Submission	44	2020-04-20 15:46:25.660541	2020-04-20 15:46:25.672553
44	description	<div><action-text-attachment sgid="BAh7CEkiCGdpZAY6BkVUSSI1Z2lkOi8vbGlrZWxpb24vQWN0aXZlU3RvcmFnZTo6QmxvYi81Mj9leHBpcmVzX2luBjsAVEkiDHB1cnBvc2UGOwBUSSIPYXR0YWNoYWJsZQY7AFRJIg9leHBpcmVzX2F0BjsAVDA=--2231e838ec565a7214f68d4bbc89b2659273f64a" content-type="image/png" url="https://dgulion.com/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBPUT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--6b5680b26bb04680c2ca8c856f0dda17f9bd6809/1.PNG" filename="1.PNG" filesize="52662" width="1737" height="883" presentation="gallery"></action-text-attachment><action-text-attachment sgid="BAh7CEkiCGdpZAY6BkVUSSI1Z2lkOi8vbGlrZWxpb24vQWN0aXZlU3RvcmFnZTo6QmxvYi81Mz9leHBpcmVzX2luBjsAVEkiDHB1cnBvc2UGOwBUSSIPYXR0YWNoYWJsZQY7AFRJIg9leHBpcmVzX2F0BjsAVDA=--0c116737a2b3e63f6e42ad84fc95c04889cd5ec9" content-type="image/png" url="https://dgulion.com/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBPZz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--1a5c1351b474248bb896868aefbea994d058aef8/2.PNG" filename="2.PNG" filesize="53651" width="1781" height="919" presentation="gallery"></action-text-attachment></div>	Submission	45	2020-04-21 03:20:04.552754	2020-04-21 03:20:04.564834
45	description	<div><action-text-attachment sgid="BAh7CEkiCGdpZAY6BkVUSSI1Z2lkOi8vbGlrZWxpb24vQWN0aXZlU3RvcmFnZTo6QmxvYi81Nj9leHBpcmVzX2luBjsAVEkiDHB1cnBvc2UGOwBUSSIPYXR0YWNoYWJsZQY7AFRJIg9leHBpcmVzX2F0BjsAVDA=--0a29f472f9dd2a0d56a43341b416385a237e811e" content-type="image/png" url="https://dgulion.com/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBQUT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--4cd9f38c908d2a449428f6a51750f29dbffac96f/image.png" filename="image.png" filesize="43495" width="777" height="677" presentation="gallery"></action-text-attachment></div>	Submission	46	2020-04-21 05:05:22.795624	2020-04-21 05:05:22.805818
46	description	<div><action-text-attachment sgid="BAh7CEkiCGdpZAY6BkVUSSI1Z2lkOi8vbGlrZWxpb24vQWN0aXZlU3RvcmFnZTo6QmxvYi81OD9leHBpcmVzX2luBjsAVEkiDHB1cnBvc2UGOwBUSSIPYXR0YWNoYWJsZQY7AFRJIg9leHBpcmVzX2F0BjsAVDA=--3400645666a724adc4e36a4a5fac692b45597025" content-type="image/png" url="https://dgulion.com/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBQdz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--f4bebfade9fc719c863eac739558fd5c637fe64b/CSS.PNG" filename="CSS.PNG" filesize="39256" width="1843" height="491" presentation="gallery"></action-text-attachment><action-text-attachment sgid="BAh7CEkiCGdpZAY6BkVUSSI1Z2lkOi8vbGlrZWxpb24vQWN0aXZlU3RvcmFnZTo6QmxvYi81Nz9leHBpcmVzX2luBjsAVEkiDHB1cnBvc2UGOwBUSSIPYXR0YWNoYWJsZQY7AFRJIg9leHBpcmVzX2F0BjsAVDA=--f15927d26c1ca5a1f4f10c8704a23b57d6395b9b" content-type="image/png" url="https://dgulion.com/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBQZz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--3309e98b9fd2d88d92d0dc5dd3ace4cd5444bf0b/HTML.PNG" filename="HTML.PNG" filesize="51073" width="1535" height="642" presentation="gallery"></action-text-attachment></div>	Submission	47	2020-04-21 06:22:13.863322	2020-04-21 06:22:13.875341
47	description	<div><action-text-attachment sgid="BAh7CEkiCGdpZAY6BkVUSSI1Z2lkOi8vbGlrZWxpb24vQWN0aXZlU3RvcmFnZTo6QmxvYi81OT9leHBpcmVzX2luBjsAVEkiDHB1cnBvc2UGOwBUSSIPYXR0YWNoYWJsZQY7AFRJIg9leHBpcmVzX2F0BjsAVDA=--edcf920a314ee697e1b26b6378c3644d6ae7986e" content-type="image/png" url="https://dgulion.com/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBRQT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--6ba255fad0090f9dfa92846361c613d0abeb06bf/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-04-21%20%E1%84%8B%E1%85%A9%E1%84%92%E1%85%AE%204.32.04.png" filename="스크린샷 2020-04-21 오후 4.32.04.png" filesize="133444" width="1562" height="738" presentation="gallery"></action-text-attachment></div>	Submission	48	2020-04-21 07:33:01.228975	2020-04-21 07:33:01.237501
48	description	<div><action-text-attachment sgid="BAh7CEkiCGdpZAY6BkVUSSI1Z2lkOi8vbGlrZWxpb24vQWN0aXZlU3RvcmFnZTo6QmxvYi82MD9leHBpcmVzX2luBjsAVEkiDHB1cnBvc2UGOwBUSSIPYXR0YWNoYWJsZQY7AFRJIg9leHBpcmVzX2F0BjsAVDA=--30b204001d9f48bd6104ca503ce1dc801708cb98" content-type="image/png" url="https://dgulion.com/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBRUT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--4baaab2cbe0320b27b061d43024d3b999e4b79d4/image.png" filename="image.png" filesize="254449" width="1920" height="1080" presentation="gallery"></action-text-attachment></div>	Submission	49	2020-04-21 09:34:53.781157	2020-04-21 09:34:53.787241
50	description	<div><action-text-attachment sgid="BAh7CEkiCGdpZAY6BkVUSSI1Z2lkOi8vbGlrZWxpb24vQWN0aXZlU3RvcmFnZTo6QmxvYi82Mj9leHBpcmVzX2luBjsAVEkiDHB1cnBvc2UGOwBUSSIPYXR0YWNoYWJsZQY7AFRJIg9leHBpcmVzX2F0BjsAVDA=--a022d7775a068a36c422bc7afa253b20664564b5" content-type="image/png" url="https://dgulion.com/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBRdz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--664716edad4b55104c4f51b415072e6e0c4c5804/%EC%BA%A1%EC%B2%98.PNG" filename="캡처.PNG" filesize="58713" width="1598" height="957" presentation="gallery"></action-text-attachment></div>	Submission	51	2020-04-21 10:03:57.408808	2020-04-21 10:03:57.414929
52	description	<div><action-text-attachment sgid="BAh7CEkiCGdpZAY6BkVUSSI1Z2lkOi8vbGlrZWxpb24vQWN0aXZlU3RvcmFnZTo6QmxvYi82Mz9leHBpcmVzX2luBjsAVEkiDHB1cnBvc2UGOwBUSSIPYXR0YWNoYWJsZQY7AFRJIg9leHBpcmVzX2F0BjsAVDA=--959f5fe15da5249457173bc8260a96bf28ffe0cc" content-type="image/jpeg" url="https://dgulion.com/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBSQT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--d59f95415f1aea231a334488c10768bbf697d870/0.JPG" filename="0.JPG" filesize="59438" width="760" height="761" presentation="gallery"></action-text-attachment><action-text-attachment sgid="BAh7CEkiCGdpZAY6BkVUSSI1Z2lkOi8vbGlrZWxpb24vQWN0aXZlU3RvcmFnZTo6QmxvYi82ND9leHBpcmVzX2luBjsAVEkiDHB1cnBvc2UGOwBUSSIPYXR0YWNoYWJsZQY7AFRJIg9leHBpcmVzX2F0BjsAVDA=--dda25fed0fe325809657641349b4ecf040b70f76" content-type="image/jpeg" url="https://dgulion.com/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBSUT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--a83945a01cbb944867a60c29a1ca1a9b92eca0fa/1.JPG" filename="1.JPG" filesize="58120" width="709" height="791" presentation="gallery"></action-text-attachment></div>	Submission	53	2020-04-21 11:30:00.425057	2020-04-21 11:30:00.436646
53	description	<div><action-text-attachment sgid="BAh7CEkiCGdpZAY6BkVUSSI1Z2lkOi8vbGlrZWxpb24vQWN0aXZlU3RvcmFnZTo6QmxvYi82NT9leHBpcmVzX2luBjsAVEkiDHB1cnBvc2UGOwBUSSIPYXR0YWNoYWJsZQY7AFRJIg9leHBpcmVzX2F0BjsAVDA=--28473726cffc0b40d418c140371c44bc4b484b00" content-type="image/png" url="https://dgulion.com/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBSZz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--fe289aa722f372383116a52f884006bd97435218/image.png" filename="image.png" filesize="135996" width="1766" height="921" presentation="gallery"></action-text-attachment><action-text-attachment sgid="BAh7CEkiCGdpZAY6BkVUSSI1Z2lkOi8vbGlrZWxpb24vQWN0aXZlU3RvcmFnZTo6QmxvYi82Nj9leHBpcmVzX2luBjsAVEkiDHB1cnBvc2UGOwBUSSIPYXR0YWNoYWJsZQY7AFRJIg9leHBpcmVzX2F0BjsAVDA=--f20332de074aaf96f65c3fd2ab6fd0188f5be78a" content-type="image/png" url="https://dgulion.com/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBSdz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--8d52b3d202057fda90a60eca3dc0cc6323abe81f/image.png" filename="image.png" filesize="144552" width="1796" height="935" presentation="gallery"></action-text-attachment></div>	Submission	54	2020-04-21 12:47:39.120101	2020-04-21 12:47:39.132144
54	description	<div><action-text-attachment sgid="BAh7CEkiCGdpZAY6BkVUSSI1Z2lkOi8vbGlrZWxpb24vQWN0aXZlU3RvcmFnZTo6QmxvYi82Nz9leHBpcmVzX2luBjsAVEkiDHB1cnBvc2UGOwBUSSIPYXR0YWNoYWJsZQY7AFRJIg9leHBpcmVzX2F0BjsAVDA=--5f0a68056c221700b6c1424a43ef5c0f86349312" content-type="application/x-zip-compressed" url="https://dgulion.com/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBTQT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--7300ebcc5ce7c0e629b98228d243e9ca5d5b08aa/%EA%B9%80%ED%83%9C%EC%97%B0%20%EC%BD%94%EB%93%9C%EC%B9%B4%EB%8D%B0%EB%AF%B8%20%EA%B3%BC%EC%A0%95%20%EC%9D%B4%EC%88%98.zip" filename="김태연 코드카데미 과정 이수.zip" filesize="216385"></action-text-attachment></div>	Submission	55	2020-04-21 12:57:03.771133	2020-04-21 12:57:03.787756
51	description	<div><action-text-attachment sgid="BAh7CEkiCGdpZAY6BkVUSSI1Z2lkOi8vbGlrZWxpb24vQWN0aXZlU3RvcmFnZTo6QmxvYi82OD9leHBpcmVzX2luBjsAVEkiDHB1cnBvc2UGOwBUSSIPYXR0YWNoYWJsZQY7AFRJIg9leHBpcmVzX2F0BjsAVDA=--4778ec16137ad0840c70614dfe3e4c303c3d8697" content-type="image/png" url="https://dgulion.com/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBTUT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--ec650ae7f50a3a14e8eb7660d3d211570c4504be/1587474836879.png" filename="1587474836879.png" filesize="56353" width="1890" height="853" presentation="gallery"></action-text-attachment></div>	Submission	52	2020-04-21 10:37:25.244827	2020-04-21 13:14:30.2077
55	description	<div><action-text-attachment sgid="BAh7CEkiCGdpZAY6BkVUSSI1Z2lkOi8vbGlrZWxpb24vQWN0aXZlU3RvcmFnZTo6QmxvYi82OT9leHBpcmVzX2luBjsAVEkiDHB1cnBvc2UGOwBUSSIPYXR0YWNoYWJsZQY7AFRJIg9leHBpcmVzX2F0BjsAVDA=--1e7bc330fa785ccaa688f3924e16ce26cab32f62" content-type="image/png" url="https://dgulion.com/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBTZz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--d37998fdfa4d74828a2087bfc79301f1c26b9410/1.PNG" filename="1.PNG" filesize="66271" width="1808" height="814" presentation="gallery"></action-text-attachment><action-text-attachment sgid="BAh7CEkiCGdpZAY6BkVUSSI1Z2lkOi8vbGlrZWxpb24vQWN0aXZlU3RvcmFnZTo6QmxvYi83MD9leHBpcmVzX2luBjsAVEkiDHB1cnBvc2UGOwBUSSIPYXR0YWNoYWJsZQY7AFRJIg9leHBpcmVzX2F0BjsAVDA=--cb498de594845ca600ecadf6946e12a2506ecbbf" content-type="image/png" url="https://dgulion.com/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBTdz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--80de890b76588f36b0ed979d0d0901ea96ce5aa8/2.PNG" filename="2.PNG" filesize="63885" width="1815" height="765" presentation="gallery"></action-text-attachment><action-text-attachment sgid="BAh7CEkiCGdpZAY6BkVUSSI1Z2lkOi8vbGlrZWxpb24vQWN0aXZlU3RvcmFnZTo6QmxvYi83MT9leHBpcmVzX2luBjsAVEkiDHB1cnBvc2UGOwBUSSIPYXR0YWNoYWJsZQY7AFRJIg9leHBpcmVzX2F0BjsAVDA=--a2afb31513c1ab1ebf8c9e1ab3a995d5be00aaa9" content-type="image/png" url="https://dgulion.com/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBUQT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--bf16b5e16c4dfbead924c7a9928e897e9c83ca1c/3.PNG" filename="3.PNG" filesize="62876" width="1862" height="798" presentation="gallery"></action-text-attachment><action-text-attachment sgid="BAh7CEkiCGdpZAY6BkVUSSI1Z2lkOi8vbGlrZWxpb24vQWN0aXZlU3RvcmFnZTo6QmxvYi83Mz9leHBpcmVzX2luBjsAVEkiDHB1cnBvc2UGOwBUSSIPYXR0YWNoYWJsZQY7AFRJIg9leHBpcmVzX2F0BjsAVDA=--3bf2ed952c05d2d8b8f1eb6bc38bd7b581e48b54" content-type="image/png" url="https://dgulion.com/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBUZz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--6879ea7a3c4bab031f4ed01c0360b87098ae4241/4.PNG" filename="4.PNG" filesize="69047" width="1814" height="883" presentation="gallery"></action-text-attachment><action-text-attachment sgid="BAh7CEkiCGdpZAY6BkVUSSI1Z2lkOi8vbGlrZWxpb24vQWN0aXZlU3RvcmFnZTo6QmxvYi83Mj9leHBpcmVzX2luBjsAVEkiDHB1cnBvc2UGOwBUSSIPYXR0YWNoYWJsZQY7AFRJIg9leHBpcmVzX2F0BjsAVDA=--9137d2c7ee9029374fa1631821febbe06c75137d" content-type="image/png" url="https://dgulion.com/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBUUT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--90abfa0e24aa3cfe26c6d868fe765657b5aa7214/5.PNG" filename="5.PNG" filesize="64135" width="1856" height="861" presentation="gallery"></action-text-attachment><action-text-attachment sgid="BAh7CEkiCGdpZAY6BkVUSSI1Z2lkOi8vbGlrZWxpb24vQWN0aXZlU3RvcmFnZTo6QmxvYi83ND9leHBpcmVzX2luBjsAVEkiDHB1cnBvc2UGOwBUSSIPYXR0YWNoYWJsZQY7AFRJIg9leHBpcmVzX2F0BjsAVDA=--2099ae79665fbc5a4330f71d0988af483977c8b7" content-type="image/png" url="https://dgulion.com/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBUdz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--393add9e99c8f8498cbbf8d3f9236f1d5dc1e995/6.PNG" filename="6.PNG" filesize="65661" width="1811" height="879" presentation="gallery"></action-text-attachment></div>	Submission	56	2020-04-21 14:11:33.217467	2020-04-21 14:11:33.268754
56	description	<div><action-text-attachment sgid="BAh7CEkiCGdpZAY6BkVUSSI1Z2lkOi8vbGlrZWxpb24vQWN0aXZlU3RvcmFnZTo6QmxvYi83NT9leHBpcmVzX2luBjsAVEkiDHB1cnBvc2UGOwBUSSIPYXR0YWNoYWJsZQY7AFRJIg9leHBpcmVzX2F0BjsAVDA=--3dd6371c92f7b4c79c780daddfc817db57b01ebb" content-type="application/haansofthwp" url="https://dgulion.com/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBVQT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--8494858e64e5d959b562056d7629935bf9f63e2c/2019110462_%EC%BD%94%EB%93%9C%EA%B3%BC%EC%A0%9C.hwp" filename="2019110462_코드과제.hwp" filesize="920064"></action-text-attachment></div>	Submission	57	2020-04-21 14:20:29.195902	2020-04-21 14:20:29.202088
57	description	<div><action-text-attachment sgid="BAh7CEkiCGdpZAY6BkVUSSI1Z2lkOi8vbGlrZWxpb24vQWN0aXZlU3RvcmFnZTo6QmxvYi83Nj9leHBpcmVzX2luBjsAVEkiDHB1cnBvc2UGOwBUSSIPYXR0YWNoYWJsZQY7AFRJIg9leHBpcmVzX2F0BjsAVDA=--bf8b28b6892d7bca745b69415aeb8ff4c9597cc3" content-type="image/jpeg" url="https://dgulion.com/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBVUT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--55eafe0d9918646599f42586879b483a561743c4/%EC%BD%94%EB%93%9C%EC%B9%B4%EB%8D%B0%EB%AF%B8%20%EC%9D%B4%EC%88%98.JPG" filename="코드카데미 이수.JPG" filesize="56594" width="954" height="757" presentation="gallery"></action-text-attachment></div>	Submission	58	2020-04-21 14:31:41.34932	2020-04-21 14:31:41.355187
58	description	<div><action-text-attachment sgid="BAh7CEkiCGdpZAY6BkVUSSI1Z2lkOi8vbGlrZWxpb24vQWN0aXZlU3RvcmFnZTo6QmxvYi83Nz9leHBpcmVzX2luBjsAVEkiDHB1cnBvc2UGOwBUSSIPYXR0YWNoYWJsZQY7AFRJIg9leHBpcmVzX2F0BjsAVDA=--3fcea77f5592ff84200d55f970c64c5e3e321302" content-type="image/png" url="https://dgulion.com/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBVZz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--4b7b7057587a9e92762bbb29e6a9a21f1f965f91/image.png" filename="image.png" filesize="81047" width="1366" height="768" presentation="gallery"></action-text-attachment><br>죄송합니다. 새벽 안에 반드시 끝내겠습니다.</div>	Submission	59	2020-04-21 14:42:33.494047	2020-04-21 14:42:33.500033
59	description	<div>2020111625김동연</div><div><action-text-attachment sgid="BAh7CEkiCGdpZAY6BkVUSSI1Z2lkOi8vbGlrZWxpb24vQWN0aXZlU3RvcmFnZTo6QmxvYi84MD9leHBpcmVzX2luBjsAVEkiDHB1cnBvc2UGOwBUSSIPYXR0YWNoYWJsZQY7AFRJIg9leHBpcmVzX2F0BjsAVDA=--ec3cebb492e7aa9808cec5248d692df853d811e6" content-type="image/png" url="https://dgulion.com/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBWUT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--ab9b740ac2dcb9864ea9b3bd27332effebc3a290/1587480851056.png" filename="1587480851056.png" filesize="188358" width="1920" height="1080" presentation="gallery"></action-text-attachment><action-text-attachment sgid="BAh7CEkiCGdpZAY6BkVUSSI1Z2lkOi8vbGlrZWxpb24vQWN0aXZlU3RvcmFnZTo6QmxvYi84MT9leHBpcmVzX2luBjsAVEkiDHB1cnBvc2UGOwBUSSIPYXR0YWNoYWJsZQY7AFRJIg9leHBpcmVzX2F0BjsAVDA=--09dab60aa7bc407c0da0089244c4be5e0d4b4057" content-type="image/png" url="https://dgulion.com/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBWZz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--2de8bdcbca9ea36b8edaa8a036122fa0207a9609/1587480849322.png" filename="1587480849322.png" filesize="271440" width="1920" height="1080" presentation="gallery"></action-text-attachment><action-text-attachment sgid="BAh7CEkiCGdpZAY6BkVUSSI1Z2lkOi8vbGlrZWxpb24vQWN0aXZlU3RvcmFnZTo6QmxvYi83OT9leHBpcmVzX2luBjsAVEkiDHB1cnBvc2UGOwBUSSIPYXR0YWNoYWJsZQY7AFRJIg9leHBpcmVzX2F0BjsAVDA=--6673e711199c4195b45922af473026c3a8e37a8d" content-type="image/jpeg" url="https://dgulion.com/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBWQT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--e92978ea4960572173b8322497af99495a8a76d3/Screenshot_20200421-234702_KakaoTalk.jpg" filename="Screenshot_20200421-234702_KakaoTalk.jpg" filesize="241093" width="1080" height="2400" presentation="gallery"></action-text-attachment></div>	Submission	60	2020-04-21 14:54:52.944014	2020-04-21 14:54:52.963346
60	description	<div><action-text-attachment sgid="BAh7CEkiCGdpZAY6BkVUSSI1Z2lkOi8vbGlrZWxpb24vQWN0aXZlU3RvcmFnZTo6QmxvYi84Mj9leHBpcmVzX2luBjsAVEkiDHB1cnBvc2UGOwBUSSIPYXR0YWNoYWJsZQY7AFRJIg9leHBpcmVzX2F0BjsAVDA=--aed32347c046895f50bdf98e8bdc7d1141237e97" content-type="application/haansofthwp" url="https://dgulion.com/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBWdz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--ad14086d7600c96d061954583f33fd720fcd7a2c/%EC%BD%94%EB%93%9C%EC%B9%B4%EB%8D%B0%EB%AF%B8.hwp" filename="코드카데미.hwp" filesize="241152"></action-text-attachment></div>	Submission	61	2020-04-21 14:55:53.992129	2020-04-21 14:55:54.002238
61	description	<div><action-text-attachment sgid="BAh7CEkiCGdpZAY6BkVUSSI1Z2lkOi8vbGlrZWxpb24vQWN0aXZlU3RvcmFnZTo6QmxvYi84Mz9leHBpcmVzX2luBjsAVEkiDHB1cnBvc2UGOwBUSSIPYXR0YWNoYWJsZQY7AFRJIg9leHBpcmVzX2F0BjsAVDA=--dacfd82ffc3c5d271d550cdf4f161beab8b13884" content-type="image/png" url="https://dgulion.com/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBXQT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--d77ffe517156851469a7c093a6481d65b5b2b659/%EC%9E%90%EA%B8%B0%EC%86%8C%EA%B0%9C%20%ED%8E%98%EC%9D%B4%EC%A7%80%20%EB%A7%8C%EB%93%A4%EA%B8%B0_%EC%9C%A4%EC%83%81%EC%9A%B0.png" filename="자기소개 페이지 만들기_윤상우.png" filesize="754705" width="2560" height="1600" presentation="gallery"></action-text-attachment><action-text-attachment sgid="BAh7CEkiCGdpZAY6BkVUSSI1Z2lkOi8vbGlrZWxpb24vQWN0aXZlU3RvcmFnZTo6QmxvYi84ND9leHBpcmVzX2luBjsAVEkiDHB1cnBvc2UGOwBUSSIPYXR0YWNoYWJsZQY7AFRJIg9leHBpcmVzX2F0BjsAVDA=--76fbd34df58bedb9d5a2205002ac4cd62fece4b9" content-type="text/css" url="https://dgulion.com/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBXUT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--3e5b7df4f885c5b8730c8bb75e24dfbbd043788d/style.css" filename="style.css" filesize="751"></action-text-attachment><action-text-attachment sgid="BAh7CEkiCGdpZAY6BkVUSSI1Z2lkOi8vbGlrZWxpb24vQWN0aXZlU3RvcmFnZTo6QmxvYi84NT9leHBpcmVzX2luBjsAVEkiDHB1cnBvc2UGOwBUSSIPYXR0YWNoYWJsZQY7AFRJIg9leHBpcmVzX2F0BjsAVDA=--523e3a4de226b423de601d52d35d939992a8b0a4" content-type="text/html" url="https://dgulion.com/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBXZz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--f3d36db21ab5a9a923c46c40eaa704af0f8d49c2/%EC%9E%90%EA%B8%B0%EC%86%8C%EA%B0%9C.html" filename="자기소개.html" filesize="6449"></action-text-attachment></div>	Submission	62	2020-04-26 13:23:54.22329	2020-04-26 13:23:54.247056
\.


--
-- Name: action_text_rich_texts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ubuntu
--

SELECT pg_catalog.setval('public.action_text_rich_texts_id_seq', 61, true);


--
-- Data for Name: active_admin_comments; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.active_admin_comments (id, namespace, body, resource_type, resource_id, author_type, author_id, created_at, updated_at) FROM stdin;
\.


--
-- Name: active_admin_comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ubuntu
--

SELECT pg_catalog.setval('public.active_admin_comments_id_seq', 1, false);


--
-- Data for Name: active_storage_attachments; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.active_storage_attachments (id, name, record_type, record_id, blob_id, created_at) FROM stdin;
10	embeds	ActionText::RichText	13	11	2020-04-17 07:23:32.527943
13	embeds	ActionText::RichText	14	14	2020-04-17 07:58:56.196965
16	embeds	ActionText::RichText	17	19	2020-04-17 09:27:22.069015
18	embeds	ActionText::RichText	18	21	2020-04-17 12:35:08.643826
20	embeds	ActionText::RichText	20	23	2020-04-17 19:50:25.05622
24	embeds	ActionText::RichText	21	29	2020-04-18 08:37:04.407806
25	embeds	ActionText::RichText	22	30	2020-04-18 14:14:23.961524
26	embeds	ActionText::RichText	24	31	2020-04-18 16:40:59.791112
28	embeds	ActionText::RichText	28	33	2020-04-19 06:13:30.358754
29	embeds	ActionText::RichText	29	34	2020-04-19 07:53:16.087733
30	embeds	ActionText::RichText	19	36	2020-04-19 10:29:59.003426
32	embeds	ActionText::RichText	32	38	2020-04-19 12:15:47.610069
33	embeds	ActionText::RichText	34	39	2020-04-19 13:47:37.559636
34	embeds	ActionText::RichText	36	40	2020-04-19 14:56:25.775356
36	embeds	ActionText::RichText	40	47	2020-04-20 01:45:10.689419
37	embeds	ActionText::RichText	42	48	2020-04-20 06:29:19.322821
38	embeds	ActionText::RichText	42	49	2020-04-20 09:10:52.87783
39	embeds	ActionText::RichText	43	50	2020-04-20 15:46:25.668014
40	embeds	ActionText::RichText	43	51	2020-04-20 15:46:25.671729
41	embeds	ActionText::RichText	44	52	2020-04-21 03:20:04.560205
42	embeds	ActionText::RichText	44	53	2020-04-21 03:20:04.563982
43	embeds	ActionText::RichText	45	56	2020-04-21 05:05:22.804649
44	embeds	ActionText::RichText	46	58	2020-04-21 06:22:13.870822
45	embeds	ActionText::RichText	46	57	2020-04-21 06:22:13.874476
46	embeds	ActionText::RichText	47	59	2020-04-21 07:33:01.236447
47	embeds	ActionText::RichText	48	60	2020-04-21 09:34:53.786189
48	embeds	ActionText::RichText	49	61	2020-04-21 09:43:00.786301
49	embeds	ActionText::RichText	50	62	2020-04-21 10:03:57.413914
50	embeds	ActionText::RichText	52	63	2020-04-21 11:30:00.432118
51	embeds	ActionText::RichText	52	64	2020-04-21 11:30:00.435809
52	embeds	ActionText::RichText	53	65	2020-04-21 12:47:39.127617
53	embeds	ActionText::RichText	53	66	2020-04-21 12:47:39.131281
54	embeds	ActionText::RichText	54	67	2020-04-21 12:57:03.786628
55	embeds	ActionText::RichText	51	68	2020-04-21 13:14:30.206502
56	embeds	ActionText::RichText	55	69	2020-04-21 14:11:33.231056
57	embeds	ActionText::RichText	55	70	2020-04-21 14:11:33.238752
58	embeds	ActionText::RichText	55	71	2020-04-21 14:11:33.246153
59	embeds	ActionText::RichText	55	73	2020-04-21 14:11:33.25338
60	embeds	ActionText::RichText	55	72	2020-04-21 14:11:33.260624
61	embeds	ActionText::RichText	55	74	2020-04-21 14:11:33.267894
62	embeds	ActionText::RichText	56	75	2020-04-21 14:20:29.201058
63	embeds	ActionText::RichText	57	76	2020-04-21 14:31:41.354198
64	embeds	ActionText::RichText	58	77	2020-04-21 14:42:33.498969
65	embeds	ActionText::RichText	59	80	2020-04-21 14:54:52.952921
66	embeds	ActionText::RichText	59	81	2020-04-21 14:54:52.957901
67	embeds	ActionText::RichText	59	79	2020-04-21 14:54:52.962451
68	embeds	ActionText::RichText	60	82	2020-04-21 14:55:54.00104
69	embeds	ActionText::RichText	61	83	2020-04-26 13:23:54.236937
70	embeds	ActionText::RichText	61	84	2020-04-26 13:23:54.241692
71	embeds	ActionText::RichText	61	85	2020-04-26 13:23:54.246157
\.


--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ubuntu
--

SELECT pg_catalog.setval('public.active_storage_attachments_id_seq', 71, true);


--
-- Data for Name: active_storage_blobs; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.active_storage_blobs (id, key, filename, content_type, metadata, byte_size, checksum, created_at) FROM stdin;
31	tpuq8tru98kfph833efxs6if9g1m	내가 만들고 싶은 서비스_정광수.docx	application/vnd.openxmlformats-officedocument.wordprocessingml.document	{"identified":true,"analyzed":true}	19765	EkW+3UnSsHd2nH+7OElhgQ==	2020-04-18 16:40:57.819948
2	mgcm8x1095voaqs73troi4fikkmu	test_image7.jpg	image/jpeg	\N	5418898	lgid/GFeIdJdIIx6DsuUXQ==	2020-04-13 04:53:42.189403
42	er3alga8jquv465cxgopr0smiq7u	20200227_4차_회의록 (1).pdf	application/pdf	\N	45576	NZPv87lkwRLLIGgA4tGJmg==	2020-04-20 01:36:55.077005
18	955uz0eaur0pltbkmsfoeswqye02	[5주차] 객체지향프로그래밍 6장 실습.pdf	application/pdf	\N	426186	Bt22kjjoE4mmb0ESLC+5dA==	2020-04-17 08:16:33.520699
19	j8xif4k6uilnih065f1659p458nr	이가원_멋사과제.png	image/png	{"identified":true,"width":1920,"height":1080,"analyzed":true}	249900	Zq2C9i0I82CytbZT/4pBlA==	2020-04-17 09:27:11.416758
48	56kcccb8f5mjk3dfwd7apme8i6vh	image.png	image/png	{"identified":true,"width":1786,"height":785,"analyzed":true}	69139	wQkSs528zemCpoulSGaArw==	2020-04-20 06:29:12.225318
28	jhjqc7m4k7gf4c9u2end8engdxy9	멋사 아이디어 과제 2020111625김동연.docx	application/vnd.openxmlformats-officedocument.wordprocessingml.document	\N	17076	Uqh2YzHpEChvIz+McvJUBA==	2020-04-18 08:36:19.949751
21	4yund6difoha7we3txxfbh63n450	image.png	image/png	{"identified":true,"width":1857,"height":931,"analyzed":true}	158619	xovfyo9BqfwtMe3qU3X+uA==	2020-04-17 12:34:26.036926
11	agc3gw7m3pw41e12m9dxldhly2ey	스크린샷(123).png	image/png	{"identified":true,"width":1920,"height":1080,"analyzed":true}	222029	59R0L0KK/80DzwIMWEfMZw==	2020-04-17 07:23:22.235496
38	rxiyr80lwfd7n9mmsubyylr71z24	멋쟁이사자처럼 아이디어 제출 과제_윤상우.pptx	application/vnd.openxmlformats-officedocument.presentationml.presentation	{"identified":true,"analyzed":true}	215479	htVwIA64rgV83KZnRzoZRA==	2020-04-19 12:15:43.830905
33	s9mcz4teyx8zj9hzg4ta59ggzos6	취미공유 커뮤니티 서비스-1인1아이디어.pdf	application/pdf	{"identified":true,"analyzed":true}	114166	uG77PO4tIlFS0aO173ooXw==	2020-04-19 06:13:13.680498
50	b79isvfak0zcyr7h7ewr1nay9h0k	멋쟁이사자처럼 코드카데미 과제1_윤상우.png	image/png	{"identified":true,"width":2560,"height":1600,"analyzed":true}	221077	aVuXhZsiNSCjW9JebhJKBw==	2020-04-20 15:46:04.556727
23	aa3ng1i6ura0p5xz68yilhg2kgmx	IDEA.docx	application/vnd.openxmlformats-officedocument.wordprocessingml.document	{"identified":true,"analyzed":true}	14269	dylnCDAu028Efbox3ViJsQ==	2020-04-17 19:50:00.795045
14	x462e2duxvu1a5zoq2gllzshvdgt	장영동 멋사 아이디어 제안서.pdf	application/pdf	{"identified":true,"analyzed":true}	32927	6UZuPzYinRH6pElnkYO60Q==	2020-04-17 07:58:53.39744
15	2qprz07qo1nnuussnq386e2ykotz	1. 2020학년도 동국대학교 현장실습 수기공모전 사전신청 안내(홈페이지용).pdf	application/pdf	\N	169610	042lquIOddWui3uSjuvZyw==	2020-04-17 08:01:05.135217
24	47vhnscttlkypv0nhjv2j1fcws5n	멋사 아이디어 과제 2020111625김동연.docx	application/vnd.openxmlformats-officedocument.wordprocessingml.document	\N	17076	Uqh2YzHpEChvIz+McvJUBA==	2020-04-18 08:32:00.476881
29	etoac9rcm0lsfr47wvfo4ggsxkwk	멋사 아이디어 과제 2020111625김동연.docx	application/vnd.openxmlformats-officedocument.wordprocessingml.document	{"identified":true,"analyzed":true}	17076	Uqh2YzHpEChvIz+McvJUBA==	2020-04-18 08:36:37.243237
30	y6spj2ziy03mvl2lroljzuolybjk	멋쟁이사자처럼 아이디어 과제.docx	application/vnd.openxmlformats-officedocument.wordprocessingml.document	{"identified":true,"analyzed":true}	14598	YvJsqTsIVNtsZlonn0va6w==	2020-04-18 14:14:10.302359
49	1oblig1xntzznkah3juti9rztkzx	image.png	image/png	{"identified":true,"width":1846,"height":677,"analyzed":true}	92730	SQwxsJUAckCmMBpAS1QONg==	2020-04-20 09:10:50.808036
34	451n7hmclf2y9cj1lx8jc8695844	아이디어 과제.hwp	application/x-ole-storage	{"identified":true,"analyzed":true}	14848	qKyUSftxxOB+0BhSsJeESQ==	2020-04-19 07:53:09.172828
35	f0i53cwhx2ms0i5wb3ffjxxdjxor	아이디어 과제.hwp	application/haansofthwp	\N	14848	qKyUSftxxOB+0BhSsJeESQ==	2020-04-19 07:54:35.234317
39	370oqoy7y5owfr46tjpo6bjhdxvc	2019110245 이예은 멋쟁이사자처럼 과제.hwp	application/x-ole-storage	{"identified":true,"analyzed":true}	16896	AHnDQN/8stln5AsCu0Cyzw==	2020-04-19 13:47:24.739632
36	cdud4cfn5juc50vhh2wt2nvcayz7	아이디어톤_8기 임도연.pptx	application/vnd.openxmlformats-officedocument.presentationml.presentation	{"identified":true,"analyzed":true}	6504818	6DAba8vsyNba14LrtGlxwg==	2020-04-19 10:29:36.891158
44	2qpi8mrzf25jy38bwv72zv99q89o	test_image1.jpg	image/jpeg	\N	6327490	C88RFEPzz+wzfldWZyqXZA==	2020-04-20 01:39:30.836893
40	kuejai47285hlgw15qsu37ovlr28	오늘 뭐 먹지.pdf	application/pdf	{"identified":true,"analyzed":true}	188899	bNnnR+TXGitmT0sNKaHuPQ==	2020-04-19 14:56:20.80874
41	rmbqod6nh6egzo7mvbk0kzthigjg	오늘 뭐 먹지.pdf	application/pdf	\N	188899	bNnnR+TXGitmT0sNKaHuPQ==	2020-04-19 14:58:44.978888
45	rpgrsj3pz3n6v1xqao2uueyp5buf	20200227_4차_회의록 (1).pdf	application/pdf	\N	45576	NZPv87lkwRLLIGgA4tGJmg==	2020-04-20 01:39:37.788818
46	8iixudbkih3qgeo09pbh2lkiy5k7	사자와코끼리.jpg	image/jpeg	\N	127937	96w9Y6sgiQldw26R4db/Dw==	2020-04-20 01:40:45.575095
47	f73wsjsp4aj9d82far2ycvhc90xr	220CFFE3-E80C-4EC4-832B-0DF567CAD577.png	image/png	{"identified":true,"width":828,"height":1792,"analyzed":true}	183205	yR3qxAwZOPJ9L9itsZVB5w==	2020-04-20 01:44:52.602888
51	qbg04rvgtvcro62m8ec9376l06ia	멋쟁이사자처럼 코드카데미 과제2_윤상우.png	image/png	{"identified":true,"width":2560,"height":1600,"analyzed":true}	302390	lSgfujp09eDGnovS2it3Xw==	2020-04-20 15:46:04.577004
53	fwmcivn9j804exp0jc413wsn92t1	2.PNG	image/png	{"identified":true,"width":1781,"height":919,"analyzed":true}	53651	a/qxp0Y8L+vk2YmhWZDCPw==	2020-04-21 03:20:01.467392
52	5xtcfpppt6ey4nvo2icgz720jr7o	1.PNG	image/png	{"identified":true,"width":1737,"height":883,"analyzed":true}	52662	TSiKFePg/sEFSHIzoRYJwQ==	2020-04-21 03:20:01.457705
54	nulc6u43bbz77sofz48w8p02jfgm	오늘 뭐 먹지.docx	application/haansoftdocx	\N	55784	i/wReoFfSpoySUEU0j+WkQ==	2020-04-21 03:21:14.985406
55	z9hajrrema9ylcxhu4u7jgx6cgl8	오늘 뭐 먹지.pdf	application/pdf	\N	188899	bNnnR+TXGitmT0sNKaHuPQ==	2020-04-21 03:21:29.477476
56	l3atxzo9o7kul24eycxs1aw4irgv	image.png	image/png	{"identified":true,"width":777,"height":677,"analyzed":true}	43495	O9jmJ+n7XJSStxqsJBMvrA==	2020-04-21 05:05:21.080205
57	yg0d5crsaimo22fbyycpywa4vugi	HTML.PNG	image/png	{"identified":true,"width":1535,"height":642,"analyzed":true}	51073	7+DvaFVyhNmvZULZSj2AaA==	2020-04-21 06:22:08.285334
58	u9uoch9hjjnmo5facjswpn8q7hww	CSS.PNG	image/png	{"identified":true,"width":1843,"height":491,"analyzed":true}	39256	2lg7ccltae2QgYhPaFWy7w==	2020-04-21 06:22:08.293116
70	wpq9w1c4pzhfmh2vlvhgaoilhze3	2.PNG	image/png	{"identified":true,"width":1815,"height":765,"analyzed":true}	63885	cKwgvj4GTfNhOisy2pXQfA==	2020-04-21 14:11:26.500771
59	71gqkqul6udaplwxnzq4du9gqrpc	스크린샷 2020-04-21 오후 4.32.04.png	image/png	{"identified":true,"width":1562,"height":738,"analyzed":true}	133444	0zAQ46Yk2xHVQQ+agIOPXQ==	2020-04-21 07:32:48.149729
71	xhusmrul4o9zgvl1x4o26w47jxad	3.PNG	image/png	{"identified":true,"width":1862,"height":798,"analyzed":true}	62876	DhLY+z4QErw6gDNeoWKuRg==	2020-04-21 14:11:26.508296
60	6fjv3u0brvsqpby9e5u6hy7rrbm4	image.png	image/png	{"identified":true,"width":1920,"height":1080,"analyzed":true}	254449	141CGnHGTawwl5bMp8UpbQ==	2020-04-21 09:34:34.453796
73	otg9vhigfuzftj75xy9mzl09ge17	4.PNG	image/png	{"identified":true,"width":1814,"height":883,"analyzed":true}	69047	urFRypFtHK3APeHM2drG9w==	2020-04-21 14:11:26.52649
61	4y342oibnw0ysnl1wqom9r22d9gs	주석 2020-04-21 184026.jpg	image/jpeg	{"identified":true,"width":3840,"height":2160,"analyzed":true}	645970	aUcaAxePWfp/r2+lmq1Qzg==	2020-04-21 09:42:45.88385
72	grg9ant3cnkgq0yexze7yiz5tbpw	5.PNG	image/png	{"identified":true,"width":1856,"height":861,"analyzed":true}	64135	DzzhdfX82U2rRDXNesG/TQ==	2020-04-21 14:11:26.519994
62	lwyjej3nz89w59ho5olzxss4k3ac	캡처.PNG	image/png	{"identified":true,"width":1598,"height":957,"analyzed":true}	58713	T7ozKuFifn8NNoX54kkGnQ==	2020-04-21 10:03:55.147712
74	zcp7v58zobixk99h354ort20z930	6.PNG	image/png	{"identified":true,"width":1811,"height":879,"analyzed":true}	65661	SDgL2LAOiNcZV0LRQ9RKwg==	2020-04-21 14:11:26.532916
63	xiwll52m5us0suf5kg598jcq2q54	0.JPG	image/jpeg	{"identified":true,"width":760,"height":761,"analyzed":true}	59438	nVXELFAKh474voM5VpXEdg==	2020-04-21 11:29:32.979627
64	be4e5nkyrk5byf2xbnvb2jyyhwv3	1.JPG	image/jpeg	{"identified":true,"width":709,"height":791,"analyzed":true}	58120	Zxf1SZnGWRFxqqYoiGs2VA==	2020-04-21 11:29:32.98769
79	ij0agmwv8xnx562qhucvgwyva09f	Screenshot_20200421-234702_KakaoTalk.jpg	image/jpeg	{"identified":true,"width":1080,"height":2400,"analyzed":true}	241093	jSSUXUx1EPvCMLl1rmSIKA==	2020-04-21 14:51:22.317152
75	b8rrmztszcf05bqsxk68jkc0wwot	2019110462_코드과제.hwp	application/x-ole-storage	{"identified":true,"analyzed":true}	920064	yRQK6zl0WeBjXV6ncwywsA==	2020-04-21 14:20:22.62344
65	8hjix13hc8y4qe1v4ls1bajy1hh0	image.png	image/png	{"identified":true,"width":1766,"height":921,"analyzed":true}	135996	baH0Rxyk15Plvl0p762rUA==	2020-04-21 12:46:42.415107
66	tsvstbmhs4o9mltu9i5balp6hr0j	image.png	image/png	{"identified":true,"width":1796,"height":935,"analyzed":true}	144552	qsKoVOWZKfvHtlnGnQlGmg==	2020-04-21 12:46:54.955073
67	ughbla2hvwehnhozx24trf4jaxz2	김태연 코드카데미 과정 이수.zip	application/zip	{"identified":true,"analyzed":true}	216385	uKA3rIGrTrxIM/+0YvEnlA==	2020-04-21 12:57:01.432058
68	y4surhylet52v2rkpdjap8nnaoif	1587474836879.png	image/png	{"identified":true,"width":1890,"height":853,"analyzed":true}	56353	y5FxYIGfcgQ5Sm8lDwnB0w==	2020-04-21 13:14:16.865347
76	0c70tt8qplw40564pa5lgrvhz2l5	코드카데미 이수.JPG	image/jpeg	{"identified":true,"width":954,"height":757,"analyzed":true}	56594	waEI71A407YzqCPWt+rVjg==	2020-04-21 14:31:23.330363
82	mv84ofthbhke6rpm6in5gsu8mv75	코드카데미.hwp	application/x-ole-storage	{"identified":true,"analyzed":true}	241152	oRrXxZ+RAv+mYbJoqekZVg==	2020-04-21 14:55:52.242333
69	cp4qz4n400eywi55tl6fo8ywaynf	1.PNG	image/png	{"identified":true,"width":1808,"height":814,"analyzed":true}	66271	AFGQgshWqbdmiw+pnjzTVg==	2020-04-21 14:11:26.4924
77	nguapklbc93q07tnr4jcsk97t70h	image.png	image/png	{"identified":true,"width":1366,"height":768,"analyzed":true}	81047	bBpzU4lUkF4v+N6VP7J7SA==	2020-04-21 14:39:16.812849
78	0810o5khyztkd1g5u61a1ohbuy1q	1587480636347.jpg	image/jpeg	\N	3175870	TGVfMXIfswDqjeCijm2gkw==	2020-04-21 14:51:03.137414
80	uzkddykl69l5bd6mb4rw7rlv3jqo	1587480851056.png	image/png	{"identified":true,"width":1920,"height":1080,"analyzed":true}	188358	XdCYaIxSq8lHt8Nq44za1w==	2020-04-21 14:54:25.787073
81	hfdq5de0baxyf5urv4gdaanu0v1a	1587480849322.png	image/png	{"identified":true,"width":1920,"height":1080,"analyzed":true}	271440	5U0y0WIBZ1MoPeWTvicaJA==	2020-04-21 14:54:31.911793
83	wtl7zfcslx5wlzykb2stjwrckgpj	자기소개 페이지 만들기_윤상우.png	image/png	{"identified":true,"width":2560,"height":1600,"analyzed":true}	754705	NbBT9RmjitqkcjOxvlhtew==	2020-04-26 13:23:27.143565
84	bbdiscgxfozfuucglev0tp0s4k91	style.css	text/css	{"identified":true,"analyzed":true}	751	WeRtKdTo+8l/4qn1ma64VA==	2020-04-26 13:23:44.162689
85	nkidlxiw5ekg7u0a3czgxyct0ms4	자기소개.html	text/html	{"identified":true,"analyzed":true}	6449	4hAku/Lw/0/LkUejEDbPjA==	2020-04-26 13:23:44.182676
\.


--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ubuntu
--

SELECT pg_catalog.setval('public.active_storage_blobs_id_seq', 85, true);


--
-- Data for Name: admin_users; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.admin_users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, created_at, updated_at) FROM stdin;
1	god@stone.com	$2a$11$uDNCxNfwR.VqNdWpW5d3pewuIo8m6b05LN4b4ff9vNuR2QyMAja8e	\N	\N	2020-08-05 11:08:29.473767	2020-03-17 13:22:46.878369	2020-08-05 11:08:29.474114
\.


--
-- Name: admin_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ubuntu
--

SELECT pg_catalog.setval('public.admin_users_id_seq', 1, true);


--
-- Data for Name: applies; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.applies (id, recruit_id, name, email, phone, major, student_id, grade, ask1_a, ask2_a, ask3_a, ask4_a, ask5_a, ask1_file, ask2_file, ask3_file, ask4_file, ask5_file, created_at, updated_at, ask6_a, ask7_a, ask8_a, additional1_a, additional2_a, additional3_a, ask9_a, ask10_a, ask6_file, ask7_file, ask8_file, ask9_file, ask10_file) FROM stdin;
1	1	연제훈	dusgns01@naver.com	01084665067	수학과	2015110434	4	8기 교육팀을 맡게된 연제훈입니다.	그러게요. 왜 듣고 싶을까요.	음...	올해도 무탈하게	없음	\N	\N	\N	\N	20200316_5차_회의록.pdf	2020-03-17 16:14:18.342678	2020-03-17 16:14:18.342678	\N	\N	\N	1	1	\N	\N	\N	\N	\N	\N	\N	\N
2	1	최지환	ghldtjd901@naver.com	01022497719	컴퓨터공학전공	2017112104	2	프로그래밍을 좋아하고 새로운 것을 배우기 좋아하는 최지환입니다.	안녕하세요 이번에 군대도 갔다왔고 다양한 소프트웨어 활동을 하고 싶습니다. 현재 언어들은 C C++ 파이썬 등 할줄 알지만, 나머지 웹,앱,머신러닝은 이론만 알고 실전은 경험이 없습니다.  이번 기회를 통해서 실전 경험을 쌓아보고 싶습니다.	이번에 코로나19 확진자 웹을 보고 그런 사람에게 도움을 주는 웹을 만들고 싶습니다.	실전에서 활동할 수 있을 만큼 프로그래밍을 배우고 싶습니다.	머신러닝 컴퓨터비전	\N	\N	\N	\N	\N	2020-03-18 09:57:43.576874	2020-03-18 09:57:43.576874	\N	\N	\N	1	0	\N	\N	\N	\N	\N	\N	\N	\N
4	1	조의재	kuda1390@naver.com	01073741392	정보통신공학	2020112121	1학년	평소에 많은 아이디어를 떠올리는데 이 아디어를 실용화시킬 수 있는 개발자가 되는 것이 꿈인 새내기입니다. 뿐만 아니라 친화력이 좋아서 고등학교때 학생회장까지 해봤습니다!	동아리와 같은 곳에 무언가를 배우는 것도 중요하지만 제가 생각했을 때 더 중요한 것은 제가 배운 것을 사용하고 적용할 수 있어야 한다고 생각합니다. 고등학교의 경험을 되살려보면 c언어와 python의 기초를 배웠고 프로그래밍에 대해서 흥미를 기르기 시작했습니다. 하지만 그 배움의 이후 학교 성적과 관련이 없던 컴퓨터 언어를 사용할 수 있는 기회가 없었기에 점점 까먹을 수 밖에 없었습니다. 대학생이 된 후 최근에 멋쟁이사자처럼 프로그래밍 동아리를 알게되었습니다. 페이스북과 인스타그램과 같은 sns 를 찾아보고 활동들을 검색해봤습니다. 많은 활동중에서 아이디어톤과 해커톤이 저를 마구 자극했습니다. 많은 학교가 참여하는 해커톤과 같은 큰 무대에서 저의 성장력과 능력을 보여주고 싶습니다. 멋쟁이사자동아리에 가입한 후 활동을 하여 저의 실력을 갈고 닦아 해커톤에 꼭 참여해 동국대학교의 위상을 더 높이고 싶습니다.	블록체인 기술을 활용하여 은행을 대신하는 대출 웹서비스를 만들어보고싶습니다.	프로그래밍에 관련된 수업을 들으면서 책이나 인터넷의 도움없이 프로그램을 작성할 수 있는 실력을 만들어보고싶습니다. 또 새내기이지만 오티와 새내기배움터에 참여하지 못한 아쉬움이 너무 큰데 동아리 엠티에 참여해 신나게 놀아서 그 아쉬움을 해소하고 좋은 선배님들과 친분을 쌓고싶습니다.	소프트웨어뿐만 아니라 간단한 센서와 같은 하드웨어를 접합하여 사물인터넷을 만들어보고 싶습니다.	\N	\N	\N	\N	\N	2020-03-18 12:30:57.833905	2020-03-18 12:30:57.833905	\N	\N	\N	2	0	\N	\N	\N	\N	\N	\N	\N	\N
5	1	원동주	wdj930729@naver.com	01096850127	컴퓨터공학	2013112136	4	     나는 호기심이 많고 사색하는 것을 즐겨하는 사람입니다.	     저는 교육의 중요성은 아무리 강조해도 지나치지 않다고 생각합니다.  코딩 교육 및 창업 수업이 잘 진행되기 위해서는 멘토와 멘티(사람), 커리큘럼(수업 방식) 이 두 가지 요소가 잘 형성되어야 하는데, 멋사는 위와 같은 조건을 잘 만족하고 있다고 생각합니다. \r\n     첫 번째로, 멋사에 지원한 학생들이나 활동하고 있는 운영진들은 다들 열정적이고 적극적인 사람들이라고 생각합니다. 따라서, 프로젝트에 관한 자기 자신만의 아이디어 의견 제시 또는 프로젝트 진행 중에 발생하는 문제점들을 해결하기 위해 노력하는 모습을 통해 좋은 시너지 효과를 낼 것입니다. \r\n     두 번째로, 1기~7기까지의  커리큘럼을 보면 Ruby에서 Python으로 매년 해당 시점에 가장 효율적인 언어와 프레임워크를 선택하여 수업했음을 알 수 있습니다. 이를 보면 얼마나 커리큘럼에 신경을 쓰는지 알 수 있습니다. \r\n     따라서, 멋사에서 코딩 교육과 창업 수업을 듣는 기회를 얻었으면 합니다.	     1. 대학생 공모전 팀빌딩 서비스 웹사이트 개발\r\n     - 대학생 공모전의 경우 주로 팀 단위로 신청을 하게 되는데 대부분의 학생이 지인이나 과동기생과 팀을 이루어 신청하게 됩니다. \r\n     하지만, 주변인이 없는 사람에 경우에는 온라인 커뮤니티를 통해 팀원들을 구해야하는데 씽굿, 위비티, 캠퍼스픽 등 여러 공모전 관련 사이트를 조사해봤지만 사실상 이러한 웹사이트들의 커뮤니티는 잘 활성화되어 있지 않다는 점을 알게 되었습니다. \r\n     따라서, 다양한 대학 소속, 전공을 가진 학생들이 공모전에 팀을 이루어 나갈 수 있도록 돕는 웹사이트를 개발하여 지원하고 싶습니다.	이번 년도에 멋사에 통과한다면 다양한 사람들과 팀을 이루어 웹 서비스 개발 및 배포도 하고,  HI-SW 봉사단에서 활동하면서 여러 학생들에게  SW 교육을 통해서 자기계발하는 데 도움이 됐으면 좋겠습니다. 	Python 대신에 Rust나 Typescript를 나중에 가르치는 것도 좋을 것 같습니다.	\N	\N	\N	\N	\N	2020-03-18 13:23:29.614817	2020-03-18 13:25:05.537672	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N
6	1	강동희	dhk010111@gmail.com	01059147963	정보통신공학전공	2020112119	1학년	어려워서 포기할 순 있어도 배운 것이 없다고 느껴져 나갈일은 없다는 멋쟁이 사자처럼의 다짐에 배움이 느릴지언정 어렵다고 절대 포기하지 않는 팀원이 되어 시너지를 극대화 시킬 수 있는 20학번 강동희라고 합니다.	프로그래밍의 시야를 넓혀줄 좋은 기회라고 생각했습니다.\r\n대학에 입학하기 전부터 혼자서 C언어, 파이썬, 아두이노를 공부하고 다루면서 기본적인 예제들을 구현하면서 재미와 희열을 느꼈습니다.\r\n그래서 문제를 해결하는 데는 아무 지장이 없었지만, 너무 틀에 박히고 편협한 접근법으로 인해 스스로 상상했던 프로그램을 만들어낼 수는 없었습니다.\r\n특히, 상상했던 프로그램이나 서비스를 제작하게 된다면 상상만 해도 전에 느꼈던 희열보다 더 크게 느낄 것 같습니다.\r\n따라서 멋사의 코딩을 비롯한 다양한 수업을 들으면서 기술적인 부분을 향상하고 싶습니다.\r\n또한, 멋사의 가장 큰 장점은 다양한 학과의 학생들이 모여 전문적인 코딩 교육을 통해 일반적인 코딩 동아리보다 퀄리티 좋은 결과물이 나올 수 있으며\r\n여러 분야에 관심을 가진 학생들이 공유해 폭넓은 종류의 프로그램을 만들 수 있는 것이라고 생각합니다.\r\n따라서 상상만으로 모든 것을 구현할 수 있다는 '멋쟁이 사자처럼'의 모토가 통한다는 것을 알게 되었기 때문에 멋사에서 다양한 교육을 받고 싶습니다.	1) 소외계층을 위한 웹을 제작하고 싶습니다. \r\n사회가 정보의 지능화로 개발 및 적용되면서 정보격차가 심해지는 것을 다양한 봉사와 경험으로 느끼게 되었습니다. 특히, 노인분들의 경우 사회에서 많은 소외가 되고 있습니다. 실제로 사회복지관의 시스템의 경우 독거노인 분들의 실태조사를 직접 다니면서 확인하는 번거로움이 있기에\r\n이를 온라인으로 확인 할 수 있는 웹을 제작해 지역사회에 도움이 되고 싶습니다.\r\n\r\n2.)경알못(경제를 알지 못하는 사람)을 위한 서비스를 제작해보고 싶습니다.\r\n고등학교 생활을 하면서 경제에 대해 공부해보고 싶었습니다. 책, 유튜브로 열심히 찾아보았지만 처음 관심을 가지고 공부하는 사람들에게는 진입장벽이 높아 어려움을 느꼈습니다.\r\n어려운 전문 용어나 지식을 일일이 찾아보는 것도 힘들고 경제 시스템(주식 등)이 어떻게 돌아가는지 이해하기 어렵습니다.\r\n그래서 게임의 예로 들면 튜토리얼처럼, 웹 서비스가 순차적으로 제공하는 것을 따라하다보면 자연스럽게 이해할 수 있도록 도움이 되는 서비스를 제작하여 관심과 호기심만 있다면 학습할 수 있도록 도움을 주고 싶습니다.\r\n특히 학과제한 없이 모집하는 멋사이기 때문에 다양한 관심분야의 학생들이 모여 프로젝트를 하는데 수월할 것이고 더욱 더 실현 가능성이 있다고 생각합니다.\r\n	아직은 배운 것이 부족하는 아는 것이 많이 없지만 꾸준한 교육봉사를 하고 싶습니다. 고등학생 때 매 달마다  지역사회 복지관에서 봉사를 하면서 독거노인분들이나 노인분들의 환경에 대해 많은 것을 보고 느꼈습니다. \r\n특히 꾸준한 관심과 관리가 필요하다는 것을 느꼈습니다. 사회복지관에서 쉽게 관리할 수 있는 프로그램을 만들어보고 싶었지만 수준이 부족해 만들지 못해 많이 아쉬웠습니다. \r\n그래서 멋사에서의 배움을 통해 지역사회에 도움이 될 수 있는 일원이 되고 싶습니다.\r\n동대 멋사에 들어가게 된다면 Hi-SW봉사단의 프로그램에 꾸준하고 적극적으로 참여하고 싶습니다.\r\n	대학 졸업 후 네트워크 포렌식을 공부, 연구하고자 정보통신공학전공을 하고 있지만 1학년 때 기초적인 것들을 배워 많은 아쉬움이 있습니다.\r\n서버의 특성과 관리들을 알아야지 포렌식을 이해할 수 있기 때문에 백엔드 웹 개발에 대해 배우고 싶습니다. 데이터를 저장하고 관리하는 DBMS와 서버 관리들을 공부하고 싶습니다! 구체적으로 웹 구축하는 과정이나 방법, 그리고 mysql, oracle 등의 사용방법을 배우고 싶습니다.	\N	\N	\N	\N	\N	2020-03-19 03:59:16.108273	2020-03-19 03:59:16.108273	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N
106	2	서창환	\N	\N	\N	2014111628	\N	18:20 - 18:40,18:40 - 19:00,19:00 - 19:20,19:20 - 19:40,19:40 - 20:00,20:00 - 20:20,20:20 - 20:40,20:40 - 21:00,21:00 - 21:20,21:20 - 21:40,21:40 - 22:00	18:20 - 18:40,18:40 - 19:00,19:00 - 19:20,19:20 - 19:40,19:40 - 20:00,20:00 - 20:20,20:20 - 20:40,20:40 - 21:00,21:00 - 21:20,21:20 - 21:40,21:40 - 22:00	\N	\N	\N	\N	\N	\N	\N	\N	2020-03-29 07:43:41.897744	2020-03-29 07:43:41.897744	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N
107	2	송요민	\N	\N	\N	2015113035	\N	18:20 - 18:40,18:40 - 19:00,19:00 - 19:20,19:20 - 19:40,19:40 - 20:00,20:00 - 20:20,20:20 - 20:40,20:40 - 21:00,21:00 - 21:20,21:20 - 21:40,21:40 - 22:00	18:20 - 18:40,18:40 - 19:00,19:00 - 19:20,19:20 - 19:40,19:40 - 20:00,20:00 - 20:20,20:20 - 20:40,20:40 - 21:00,21:00 - 21:20,21:20 - 21:40,21:40 - 22:00	\N	\N	\N	\N	\N	\N	\N	\N	2020-03-29 08:14:07.689917	2020-03-29 08:14:07.689917	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N
120	2	강협	\N	\N	\N	2016112016	\N	18:20 - 18:40,18:40 - 19:00,19:00 - 19:20,19:20 - 19:40,19:40 - 20:00,20:00 - 20:20,20:20 - 20:40,20:40 - 21:00,21:00 - 21:20,21:20 - 21:40,21:40 - 22:00	18:20 - 18:40,18:40 - 19:00,19:00 - 19:20,19:20 - 19:40,19:40 - 20:00,20:00 - 20:20,20:20 - 20:40,20:40 - 21:00,21:00 - 21:20,21:20 - 21:40,21:40 - 22:00	\N	\N	\N	\N	\N	\N	\N	\N	2020-03-29 12:57:27.999474	2020-03-29 12:57:27.999474	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N
121	2	유혜리	\N	\N	\N	2019111938	\N	18:20 - 18:40,18:40 - 19:00,19:00 - 19:20,19:20 - 19:40,19:40 - 20:00	18:20 - 18:40,18:40 - 19:00,19:00 - 19:20,19:20 - 19:40,19:40 - 20:00	\N	\N	\N	\N	\N	\N	\N	\N	2020-03-29 13:12:37.963147	2020-03-29 13:12:37.963147	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N
122	2	문지용	\N	\N	\N	2016111671	\N	18:20 - 18:40,18:40 - 19:00,19:00 - 19:20,19:20 - 19:40,19:40 - 20:00,20:00 - 20:20,20:20 - 20:40,20:40 - 21:00,21:00 - 21:20,21:20 - 21:40,21:40 - 22:00	18:20 - 18:40,18:40 - 19:00,19:00 - 19:20,19:20 - 19:40,19:40 - 20:00,20:00 - 20:20,20:20 - 20:40,20:40 - 21:00,21:00 - 21:20,21:20 - 21:40,21:40 - 22:00	\N	\N	\N	\N	\N	\N	\N	\N	2020-03-29 13:21:44.678266	2020-03-29 13:21:44.678266	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N
7	1	김형태	rlagudxo3110@nate.com	01086263110	건설환경공학	2016112295	3	자유로운 영혼, 하고싶은게 많고 아이디어도 많지만 전공이라는 벽 앞에서 항상 고개만 돌리는 학생입니다.	토목과를 졸업하면 항상 건설회사에 현장직이나 사무직으로 취업해야한다는 선배들의 말에 꿈에 대한 회의감을 가지고 있었습니다. 제가 하고싶은 일은 그 쪽이 전혀 아니었지만,  마땅히 전공으로 삼고싶은 분야를 찾는건 23살의 나이에 어려움이 있었습니다. 지난 7월 스페인 순례자의 길을 걸으면서 와이파이가 없어도 gps를 기반으로한 방향과 거리, 꼭 필요한 정보를 찾을 수 있는 buen camino라는 어플의 도움을 받았습니다. 정말 편리했습니다. 어떻게 딱 내가 필요한 정보를 이렇게 잘 정리 해놨을까 하고 감탄 했습니다. 멋사를 지원하는 이유는 지인이 멋사를 하면서 본인의 전공과 프로그래밍을 접목시켜 이루어낸 다양한 성과들을 봤기 때문입니다. 어려워서 도전해보지 못했던 코딩을 배워 ui/ux 디자인을 접목한 도로관리분야나 항만, 운송 등 다양한 토목분야와 연결시켜보고 싶었기 때문입니다.	여러가지 아이디어를 생각 했었습니다. 대부분은 이미 성과를 이룬 서비스도 있지만 개의치 않고 적어보겠습니다.\r\n1. ux 디자인을 활용한 공항 관리, 환승 시스템을 활용해 적은 비용으로 항공권을 구매하는 방법 (이미 플레이 윙즈같은 저가 알림 어플이 있지만, 다구간 항공권이나 장거리 여행을 하게 될 경우 다양한 국제공항의 경유 항공권을 활용하면 더욱 저렴한 비용으로 항공권을 살 수 있는 경험을 했었습니다.)\r\n2. 항공 운송의 이용이 증가하고있습니다. 국내 배송의 경우에는 네이버에 택배사와 송장번호를 입력하면 곧바로 알 수 있지만 해외 택배의 경우에는 이메일로 온 송장번호를 해외 택배사에 입력을 해야하나 방법을 모르는 사람들이 많습니다. 국내 조회 서비스와 조회 방법이 비슷한 경우가 많아 플랫폼을 제작해 국내와 해외 배송을 같이 확인 할 수 있는 웹 서비스가 있으면 좋겠다고 생각했습니다.\r\n이 외에도 다양한 아이디어가 있으나 기술적인 무지로 인해 실현시킬 수 있는지의 여부조차 알 수 없습니다. 이 뜻을 멋사 분들과 같이 이루어보고 싶습니다. 	2020년은 학업에도 정진하고 자기계발을 이룩할 수 있는 한 해가 되었으면 합니다. 전공도 중요하지만, 앞으로의 삶의 방향을 정하고 그 방향으로 정진할 수 있는 방법을 찾기를 원합니다.  최근 다양한 웹서비스의 도움을 받았습니다. 마스크 알리미를 통해 연세가 지긋한 어르신 분들도 어렵지 않게 마스크를 구할 수 있는 모습을 보고 영감을 받았습니다. 누군가에게 도움이 될 수 있는 웹 서비스를 올해 안에 만들어보는 것이 제 목표이고, 사용자 인터페이스, 사용자 경험에 중점을 둔 웹 서비스를 제작하는 방법을 배우고자 멋사에 지원하게 되었습니다.		\N	\N	\N	\N	\N	2020-03-19 04:00:59.16409	2020-03-19 04:00:59.16409	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N
8	1	양송이송이	thddl658@gmail.com	01000000000	동대멋사최고다과	2017110000	사학년	동대멋사 8기 여러분 빠이팅입니다^^^^^	.	.	.	.	\N	\N	\N	\N	\N	2020-03-19 05:04:44.613469	2020-03-19 05:04:44.613469	\N	\N	\N	1	1	\N	\N	\N	\N	\N	\N	\N	\N
9	1	이지민	anna9320@naver.com	01074419320	수학과	2020110408	1	열정으로 가득찬 스무살 새내기입니다!	최근 유행하는 코로나바이러스를 방지하디 위해 멋사에서 '코로나 맵' 및 '마스크 알리미'어플을 개발했다는 공지를 봤습니다. 예전부터 실생활에 필요한 , 유용한 어플들을 만드는게  소원이였는데 멋사에서 이미 너무 필요한 어플을 만들었기에 멋사에서 좋은 멘토님들과 공부하고 싶었습니다	 최근 자취생의 수가 급격히 늘어나면서 건강한 식습관이 망가지고 있습니다. 몸에 유용한 영양소들을 챙길 수 있게 만들 수 있는 자취생 요리법들을 공유할 수 있는 웹서비스를 만들고 싶습니다. 	컴퓨터에 대한 기초적인 지식뿐만 아니라 직접 어플기획까지 해보고 싶습니다. 차근차근 주위에 있는 기회들을 놓치지 않고 이뤄나가고 싶습니다!	'사이버 국방'기슬에 대해서 배우고 싶습니다	\N	\N	\N	\N	\N	2020-03-19 08:23:47.505005	2020-03-19 08:23:47.505005	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N
10	1	이형석	lhs961021@naver.com	01044529826	정보통신공학과	2016112330	3	안녕하세요! 코딩을 정말 재밌어 하지만, 코딩을못하는 컴퓨터공학부 학생이고, 코딩에 대해서 진짜 관심 많고 열심히 배우고싶은 3학년 이형석입니다!	 저는 2학년 1학기 까지는 토목공학과 전공이였습니다.  하지만 저의 꿈은 컴퓨터쪽 진로 였고 저는 1학년때부터 계속 컴퓨터과로 전과를 준비하였습니다.  2학년 1학기를 마치고 바로 컴퓨터공학부 정보통신공학 전공으로 전과를 하였지만, 바로 군대에 가게 되었습니다. 그후 작년 2학년 2학기에 복학을 하였지만, 저에게는 2학년 2학기 컴퓨터과 학생들을 따라가기에는 너무 벅찼습니다.  그래도 저에게는 코딩이 너무 재미있었고, 구글링과 주변에 코딩 잘하는 친구들에게 물어봐가면서 혼자 열심히 과제를 하였고, 그래도 나쁘지 않은 학점을 받게 되었습니다. 하지만 기초가 안되어있는 저의 실력을 알기 때문에 저는 코딩을 배울수 있는 코딩동아리를 알아보기 시작했습니다. 그러던 도중 친한 동기에게 멋쟁이 사자라는 동아리를 듣게 되었고,  관심을 갖고 멋쟁이사자 동아리에 대해서 알아보기 시작했습니다. 작년 2학기에 바로 들어가고싶었지만, 동아리원 모집을 매년 초에 한다는 것을 알게 되었고, 이제서야 겨우 지원을 하게 되었습니다.  저에게는 따로 시간을 내서 학원을 다닐 여력도 되지 않고, 다른 컴퓨터전공 학생들에 비해서 실력이 많이 부족하여 공모전 같은것도 꿈꾸기가 많이 힘듭니다. 멋사에서 코딩을 열심히 배우고 나중에 기회가 되면 공모전 같은것도 나가고 싶고,  창업수업을 들음으로써 컴퓨터 분야에 대해 많은 정보를 얻고싶습니다. 	멋사에서 코딩에 대해서 많이 배워서 나중에 저는 옷과 관련된 웹 서비스를 만들어 보고 싶습니다. 지금 실제로 존재할수도 있겠지만, 저는 인스타 셀럽들이나 연예인들의 다양한 데일리 룩이나 코디 사진들을 모아 놓은 웹 페이지를 만들고, 그들의 사진을 클릭하면 그들이 입고있는 옷이나 신발, 악세서리등의 정보가 다 뜨고, 바로 그 상품에 대한 구매 페이지가 여러군데 떠서 웹 이용자가 가격이나 사이트를 비교하여 그 구매 사이트로 바로 이동할수있거나, 혹은 그 옷이나 신발, 악세서리가 가격이 많이 높다면 웹 이용자가 가격 범위를 설정하여 그 가격범위에 맞는 비슷한 물품들을 추천해주고, 그 구매사이트로 이동할수 있도록 하는 웹 서비스를 만들어 보고 싶습니다. 	2020년은 제가 하고싶은 활동들을 하면서 배우고 싶은 것들을 배우는 행복한 한해를 보내고 싶습니다. 일단 저는 이번년도 저희과 축구동아리 회장으로서 저희과가 축구 대회에서 우승할수있도록 열심히 축구를 할 계획입니다. 또한 제가 배우고 싶어서 하게된 광고홍보학과 복수전공도 열심히 공부를 할것이고, 멋사를 할수 있다면 다른 컴퓨터 공학 전공생들과 어깨를 나란히 할수 있도록 열심히 코딩에대해 배우고, 복습할것 입니다. 또 기회가 된다면 코딩 공모전에도 한번 나가서 입상을 해보고 싶습니다. 	시간이 된다면 포토샾에 대해서 간단한 기초 활용법에 대해서 배우고 싶습니다!	\N	\N	\N	\N	\N	2020-03-19 10:46:25.375714	2020-03-19 10:46:25.375714	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N
11	1	박예린	pyr53540@gmail.com	01053548479	컴퓨터공학과	2018112009	3학년	 문득 이대로 넋놓고 사는게 아니라 뭔가 한 번 제대로 해야겠다는 생각이 들었습니다. 	 저는 노베이스로 컴퓨터공학과에 진학했습니다. 코딩이 뭔지도 모르고 학교에 들어와 아등바등 수업 진도에 맞춰 과제를 풀고 시험을 봤습니다. 짧은 시간 동안 급하게 한 공부는 저에게 부족했습니다. 배웠지만 안다고 자신 있게 말할 수는 없는, 저는 지금 그런 상태입니다. 2학년이 끝나갈 무렵부터 고민했습니다. 이렇게 아무것도 모르는데 어떻게 코딩으로 밥 벌어 먹고살 수 있을까 하고 말입니다. 그러던 와중에 멋쟁이사자처럼의 홍보영상을 봤습니다.\r\n 영상을 보자마자 든 생각은 '이건 진짜다.'였습니다. 실례되는 표현이었다면 죄송합니다. 그래도 제게 필요한 곳이라고 생각했던 건 진심입니다. 전공 공부가 부족한 것은 복습하든 무엇을 하든 할 수야 있겠지만 프로젝트나 포트폴리오는 도대체가 감을 잡을 수가 없었습니다. 누구에게 도움을 구해야 하는지도 모르는 막막한 상황에서 멋사를 알게 되었고 이곳에서는 답을 구할 수 있겠다고 느꼈습니다.\r\n 그리고 19년도부터 대표언어를 파이선으로 하고 있다고 알고 있습니다. 우리 학교 컴퓨터공학과의 커리큘럼에는 파이선 자체를 배우는 강의가 없어서 혼자서 공부했습니다. 이번 기회를 통해 체계적으로 다시 배울 수 있었으면 좋겠습니다. 그리고 IT스타트업에 대해 배운다면 후에 창업이 아니라 취직을 한다고 하더라도 많은 사람과 협업했던 경험이 충분히 도움 될 것으로 생각했습니다. 그래서 이번 8기 모집에 지원했습니다. 	 저는 병원의 정확한 정보를 알 수 있는 서비스를 만들고싶습니다. 온라인상에서 병원에 대해 조사할 수 있는 내용은 대개가 광고입니다. 식당이나 다른 시설과는 다르게 리뷰조차 드뭅니다. 하지만 최악이래봤자 음식이 맛없거나 서비스가 불친절한 다른 경우와는 다르게 병원에서 잘못돼면 후유증이 남을 수도 있습니다. 그렇지만 가보기전까지는 알 수 없는 것이 현상황입니다. 그래서 광고가 아닌 투명한 정보를 알 수 있는 서보스가 필요하다고 생각합니다. 	 올해부터는 한 번 열심히 살아보고싶습니다. 학교 공부든 그 외의 활동이든 뭐든지 최선을 다해볼 생각입니다. 		\N	\N	\N	\N	\N	2020-03-19 12:51:00.822298	2020-03-19 12:51:00.822298	\N	\N	\N	0	1	\N	\N	\N	\N	\N	\N	\N	\N
12	1	이가원	rainrain16@hanmail.net	01041596565	생명과학과/문화예술소프트웨어연계전공	2014111646	졸업생/대학원진학예정자(댓글문의에 신청가능하다고 말씀해주심)	‘하고 싶은 건 하고 산다!’ 가 저를 나타낼 수 있는 문장입니다. 동국대학교를 다니면서 저에게 맞는 전공을 찾기 위해 총 2개의 전공과 1개의 부전공을 전공했습니다. 4학년 때부터 시작한 소프트웨어 연계전공이 잘 맞아서 과감하게 초과학기까지 다니게 되었고, 지금은 it계열로 진로를 정하고자 대학원 진학을 앞두고 있습니다. 여러 전공을 전전하면서 이렇게 하는 게 과연 맞는 건지 시간적으로 조급함이 들 때도 있었지만, 꼭 하고 싶은 것이라고 생각이 드는 공부를 하는 게 맞다고 생각했습니다. \r\n 동국대학교 ‘멋쟁이 사자처럼’은 저와 지난 학기 조별과제를 함께 했던 팀원을 통해 알게 되었고, 그 때부터 ‘나도 한번 해보고 싶다’는 생각이 들었습니다. 지금은 졸업생이고, 다음 학기 때 동국대학교 대학원 진학 예정자라고 댓글을 다니 신청가능하다는 답변을 받아서 신청하게 되었습니다. 	무엇보다도 학교 학우분들과 함께 코딩 교육을 듣고, 웹 서비스를 런칭한다는 점이 제 흥미를 끌었습니다. \r\n학교에서 진행되는 수업을 보면 진도를 나눠놓고 그에 해당하는 과제를 내주거나, 시험을 보는 게 다입니다. 작년에 대외활동을 통해 들은 수업에서도 마찬가지였습니다. 하지만 멋쟁이 사자처럼과 같이 여러 학우들이 모여있는 동아리는 그 보다 조금 더 편한 분위기가 형성될거라 생각합니다. 공부는 억지로 하는 것 보다 재미를 가지고 하는 것이 더 높은 만족도와 결과물을 낸다고 생각하는데, 동아리에서 진행하는 교육이 딱딱한 학교 수업보다는 편하게 서로 의견을 나눌 수 있을 것이고, 이를 통해 더 재미있게, 더 집중하면서 코딩공부를 할 수 있을 거라고 생각합니다. 그래서 기대가 되는 부분도 있고, 또 같은 이유로 창업수업을 들을 때에도 각자의 창업 아이디어를 낼 때 부담을 덜 가지고, 더 자유롭게 낼 수 있을 거라 생각합니다. \r\n저는 이런 경험을 통해 저의 열정과 창의성을 발휘해 보고 싶기 때문에 ‘멋쟁이 사자처럼’을 통해 코딩교육과 창업 수업을 듣고 싶습니다.\r\n	저는 동국대 주변에서 자취를 해 본 적이 있습니다. 어느 날 다리미가 급하게 필요했던 적이 있었습니다. 하필 그 때 집에 있는 다리미를 가지고 오지 않았기 때문에 난감했던 적이 있었습니다. 이 때의 경험을 통해 대학 주변 자취생들끼리 자취용품을 공유하는 웹 사이트를 만들어 보고 싶다는 생각을 했습니다. \r\n우선 제공할 수 있을 만한 서비스들로 간단히 2가지 서비스를 생각해 봤습니다. 첫 째, 자취를 끝내는 사람들(예를 들면 졸업생)이 팔 물건들을 올리면 그 물건들을 보고 필요한 사람들이 사는 거래 서비스,  두번 째, 한 건물에다가 사물함들을 설치한 후, 각 사물함에 자취용품들을 넣어 둡니다. 그리고 웹사이트를 통해  사람들이 자기가 필요한 물건을 대여비를 내고 예약을 했다면 그 물건이 들어있는 사물함의 비밀번호가 제공이 됩니다. 그 후, 물건을 정해진 예약 시간동안 대여를 해주는 서비스입니다.  건물은 물론 학교 자취촌 주변에 위치하고 있어야 할 것입니다. 필요한 자취용품들의 종류를 구체화 하는 것이 제일 중요한 부분일 것입니다.	2020 년은 코로나 때문에 아직 제대로 된 시작을 하지 않았다고 생각했습니다. 이제 제대로 된 스타트를 ‘2020 멋쟁이 사자처럼’을 통해 끊고 싶습니다. ‘멋쟁이 사자처럼’ 활동을 통해서 2020 년 내에 하나의 아이디어를 구체화 시켜 웹 사이트를 만들어 보고 싶습니다. 창업을 생각해 볼 정도로 수준 높은 아이디어를 생각해 내는 것도 좋겠지만, '멋쟁이 사자처럼' 을 통해 배운 것들을 최대한 활용할 수 있는 그런 웹사이트를 함께 만들어 보는 것이 제가 2020년에 이루고 싶은 것입니다. 1학기 때에는 대학원 진학 전이므로 더 열심히 참여를 하면서 기본기를 다지고 싶고, 2학기 때부터는 대학원 수업들을 통해 알게되는 전문적인 지식을들 동아리 학우들과 공유하면서 즐겁게 활동하고 싶습니다.	인공지능에 대해서 배워보고 싶습니다. 머신러닝, 딥러닝이란 무엇인지에 대해서 구체적이고 자세히 알아보고 싶습니다.	\N	\N	\N	\N	\N	2020-03-20 05:15:17.703868	2020-03-20 05:15:17.703868	\N	\N	\N	0	2	\N	\N	\N	\N	\N	\N	\N	\N
13	1	강현우	tngkr7410@naver.com	01026404104	컴퓨터정보통신학부 컴퓨터공학전공	2020112014	1	"성장"이라는 것을 좋아하는 꽃다운 새내기 강현우입니다.	 고등학교시절, 교내 게임개발동아리에 들어가서 게임프로그래밍을 배워 프로그래머로 활동하였습니다. 그리고 게임개발 이외에 좀 더 폭넓은 범위로 역량을 늘리고자 웹 디자인을 배워 기능사 자격을 취득했습니다. 자격증을 따면 뭐든 가능할 것으로 생각했던 건, 저의 큰 오산이었습니다. 현실 속의 웹 디자인/개발의 폭은 매우 넓었고 많은 배움이 필요하다고 생각하게 되었습니다. 그래서 대학을 진학하여 전문적인 수업과 활동으로 성장하는 것을 꿈꾸며 대학 생활을 했던 저는 Python 프로그래밍 수업을 통해 ‘Django’라는 것을 알게 되었고 Django를 활용한 웹 개발에 흥미가 생겼습니다. 관심을 두고 찾아보니 ‘멋쟁이 사자처럼’이라는 동아리를 알게 되었습니다. 멋쟁이 사자처럼에 들어가 여러 사람과 고민하고 공유하며 같이 배우며 성장하고 싶고, 제가 구상한 홈페이지를 직접 제작해 보고 싶습니다.	 ‘Stack Overflow’와 같은 국내 웹 서비스를 만들고 싶습니다. Stack Overflow 웹 사이트는 개발자들이 프로그래밍하다 오류가 나거나 문제가 생겼거나, 또는 프로그래밍에 대한 질문을 하고 답변을 받을 수 있는 웹 서비스입니다. Stack Overflow 사이트는 너무 유명해서 피드백이 금방 올라오고, 심지어 내가 원하는 해답이 이미 올라와 있는 경우가 대부분일 정도라서 저도 게임개발이나 앱 개발을 할 때 모르는 것이 있으면 거의 여기서 해답을 얻었습니다. 이렇게 이미 좋은데 굳이 국내 웹 서비스로 또 만들고 싶은 이유는 영어를 못하면 쓰기가 좀 어렵기 때문입니다. 대부분의 답변은 코드 스니펫과 함께 설명을 해주면서 세세히 알려주긴 하지만 영어가 안되면 그 해석들을 읽지 못하고 코드만 따가면서 이해도 못 하고 사용할 수가 있기 때문입니다. 물론 저희와 같은 대부분의 어른 개발자들은 어느 정도 영어를 해석할 수 있기 때문에 괜찮지만, 개발자의 꿈을 꾸며 성장하는 어린 청소년개발자들은 사용하기 힘듭니다. 번역기가 있다고 해도 이상하게 해석이 되는 경우도 많고요. 그래서 이를 해결하고자 Stack Overflow 사이트와 같은 국내에 한글로 사용할 수 있는 웹 서비스를 만들고 싶습니다.	 꽃다운 새내기인 만큼 20대에는 나에게 도움이 되는 ‘생산적인 일’들을 많이 하고 싶습니다. \r\n 올해 보내고 싶은 일 첫 번째는 ‘효율적인 대학 생활하기’입니다. 이제는 대학생인 만큼 학점과 자기 개발의 신경을 많이 두어야 하지만 그래도 어느 정도 활동은 해야 한다고 생각합니다. 그래서 시간관리가 가능한 선에서 소모임이나 동아리 등 여러 활동을 하려고 노력할 것입니다. 두 번째는 제가 좋아하면서 즐겁게 성장할 수 있는 ‘멋쟁이 사자처럼‘에 들어가서 웹 개발 및 창업을 배우는 것입니다. 멋쟁이 사자처럼에 들어가 다른 분들과 함께 같이 성장하며 내가 원하는 웹 서비스를 만들 수 있는 능력을 키울 것입니다. 세 번째는 ’아키텍처‘의 능력 키우기입니다. 저는 개발하는 데 있어서 프로그램의 전체적인 그림을 만드는 아키텍처의 능력을 키우는 것이 필요하다고 생각합니다. 그래서 아키텍처능력을 키우기 위해 논리/수리력과 상황에 따른 자료구조를 사용하는 것 등이 요구되기 때문에 올해까지 자료구조를 전부 이해하고 틈틈이 버스나 쉬는 시간에 알고리즘문제를 풀어봄으로써 능력을 키울 것입	 이미 정말 좋은 커리큘럼이지만 여유가 있다면 Django가 아닌  ‘플라스크’도 한 번 배워 나만의 웹 프레임워크를 만들어 사용해 보고 싶습니다!	\N	\N	\N	\N	\N	2020-03-20 05:41:25.756871	2020-03-20 05:41:25.756871	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N
14	1	이상민	tkdals1879@gmail.com	01092985440	경제학과	2017110922	3학년	저 이상민은 세상의 패러다임을 바꾸는 꿈을 쫓는 겁쟁이입니다.	저는 멋사 3기 때부터, 제가 본격적으로 컴퓨터 공부를 시작할 때에, 들어가고 싶어 했었던 동아리였습니다. 가장 멋사에 매력을 느꼈던 부분은 "배워서 무엇을 만들고 싶은지", 즉 실용성에 중점을 둔 교육과 활동이었습니다. 가장 빠르게 변화하는 컴퓨터 관련 학문에서 이론과 연습에 그치지 않고 실용적으로 하나의 서비스를 완성해나간다는 것은 저에게 너무도 매력적이게 느껴졌습니다. 대한민국 최고의 코딩교육 기관에서 배우는 실용적인 교육들은 저를 한층 더 성장할 수 있다고 생각하였습니다.\r\n\r\n두 번째 이유는 어느 집단보다 유능하고 열정적인 "인재 pool"을 갖고 있다고 생각합니다. 저는 동국대학교 경제학과 소속이지만 복수전공으로 정보통신공학과를 복수 전공하고 있습니다. 저번 학기에 학교 시스템상, 기초 코딩 수업을 듣지 못한 채로, 알고리즘 실습이라는 수업을 들었습니다. 하지만 혼자 코딩을 할 때, 막히는 부분이나 고민, 궁금증을 해소하기에 힘든 점이 많았습니다. 이런 부분에서 나의 아이디어와 같이 공부해나가는 학우분들끼리 의견을 공유하고 마음에 맞는 사람들끼리 프로젝트를 같이 진행한다면 혼자서 공부하는 것보다 훨씬 더 많은 것을 배울 수 있다고 생각하였습니다. 또한 대외활동으로 진행하는 해커톤 행사 및 다양한 아이디어를 열정이 넘치는 학우들과 공유하고 하나의 서비스로 완성해나가는 것은 멋사가 너무 매력적인 교육 단체라는 것을 보여준다고 생각합니다.	 겨울 방학기간에 스파르타 코딩클럽이라는 곳에서 제작한 기초적인 페이지를 만들어 봤습니다. 제가 만들고 싶은 페이지를 더 업그레이드하여 정말 그럴 듯한 하나의 플랫폼 웹페이지를 완성하는 게 목표입니다. 현재는 기본 홈페이지에서 회원가입 폼까지 코딩하여 놓은 것이 있습니다.  1년 동안 멋쟁이 사자처럼에서 배우는 수준 높은 내용과  많은 경험을 기반으로 실용적으로 활용될 수 있는  홈페이지를 완성도있게 제작하고 싶습니다. \r\n 또한 멋사 활동을 열심히하여 멋사에서 학교내에서 배우는 것들과 대외활동으로 경험한 것들을 잘 정리하여 포트폴리오를 만들고 제가 배우지 못한 	2020년에는 크게 2가지 정도 목표가 있습니다. 먼저 첫 번째는 코딩에 대한 이해 및 경험치 습득입니다. 1년을 휴학하여 이제 3학년을 시작하게 되었습니다. 이번 2020년, 1년 간은 열심히 배우고 연습하여 제가 생각하는 컴퓨터 코딩에 대한 기초를 갈고 닦고 싶습니다. 제가 가장 배우고 싶어하는 부분이 컴퓨터 보안 쪽이어서 기초적인 코딩부터 이해하면서 한 단계, 한 단계 성장하는 것이 목표입니다.\r\n두 번째는 개인적인 목표입니다. 현재 복싱을 배우고 있는데 생활체육인 대회를 한 번 나가보는 것이 목표입니다. 제가 어렸을 때부터 활동적인 성격이라 여러가지 구기종목과 타격운동에 관심이 많아서 태권도, 합기도, 킥복싱 다양한 운동을 하였습니다. 하지만 성인 된 이후로 취미로 가볍게 즐기는 정도 수준으로 하여 1년 정도 열심히 준비하여 몸도 탄탄하게 만들고 체육관에서 배운 것을 실전에서 활용할 수 있는 자가 테스트로서 한 번 도전하고 싶습니다.	지금 제 개인 프로젝트하면서 궁금한 점이기도 합니다. \r\nJSP를 활용한 개발과 파이썬을 활용한 개발 그리고 2가지가 유동성을 갖는 지 이런 부분을 아무리 찾아봐도 잘안나와서 JAVA 웹 개발과 파이썬 웹 개발의 유동성 관련된 부분을 알려주신다면 감사드릴 꺼 같습니다.	\N	\N	\N	\N	\N	2020-03-20 11:34:38.077674	2020-03-20 11:34:38.077674	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N
15	1	김병철	gch04602@naver.com	01052109538	경찰행정학과/융합소프트웨어	2016111283	3	언제나 열정적으로 행동하는 프로배움러 김병철입니다!\r\n	저는 경찰행정학과지만 IT직무로 취업하고 싶습니다. 저는 회사에서 경력을 쌓고 나와 국내에서 범죄예측소프트웨어를 본격적으로 연구하고 개발하는 것이 제 목표입니다. 그러기 위해서 융합소프트웨어전공을 수강하고 있으며 그 외에도 C, Java, Python 언어를 조금 공부 했고 Yolo를 활용한 컴퓨터 비전 프로젝트도 참여했습니다. 하지만 프로젝트들을 하면서 서비스화 시키고 사용자편의성을 위해서는 웹 개발에 대한 부분이 필요하다고 느끼게 되었습니다. 멋사에 대해서는 융합소프트웨어를 시작하면서 알고 있었지만 그 때는 웹 서비스에 관심이 없기도 했고 기초가 없으면 들어가서도 많이 못 배울 거 같아서 지원하지 않았습니다. 그러다가 결정적으로 작년 2학기에 모바일 프로그래밍을 배우면서 앱 개발 팀 프로젝트를 하게 되었는데 그걸 만들면서 웹 버전이 있으면 좋겠다고 생각했습니다. 또한, 팀 프로젝트를 하면서 제가 팀 프로젝트에 익숙하지 않다는 것과 뭔가 체계적으로 일이 돌아가지 못하는 느낌을 받았고 더 많은 팀 프로젝트를 해봐야겠다는 생각을 했습니다. 그때 같이 팀 프로젝트를 했던 친구 중에 멋사 출신이 있어서 추천을 받았고 웹 개발에 하나도 모르는 저에게 처음부터 배울 수 있다는 점과 학교기관과 연계된 봉사활동이 잘 활성화 되어 있다는 점이 저에게 큰 장점으로 다가왔습니다.\r\n	일단 웹 개발을 배워서 서비스를 만들게 된다면 저는 만화 통합 플랫폼을 만들어 보고 싶습니다. 예전에 소위 '밤토끼'와 같은 불법 만화 유포 사이트를 또 한번 검거 했다는 기사를 본 적 있습니다. 보면서 그런 서비스가 없어지지 않는 이유로 '스팀'과 같은 통합 플랫폼이 없기 때문이라고 생각했습니다. 물론 만화를 이용하는 일부 소비층들의 저작권 개념에 대한 인식이 부족한 것도 있겠지만 저는 여러 만화 플랫폼이 분산되어 있고 각 플랫폼마다 결제서비스가 달라 사용자의 편의성을 해치기 때문이라고 생각합니다. '스팀'이 없기 전에 구매자들이 각 게임을 구매하기 위해 번거롭게 개별 판매 서비스를 이용해야 해서 불법복제가 많았던 것처럼 웹툰과 만화도 그런 서비스가 있으면 정당하게 소비하고 싶은 구매자들에게 더 높은 편의를 제공할 수 있을 거라고 생각합니다. \r\n 두번째로 그냥 생각만 했던 아이디어인데 진짜 최저가를 찾는 웹서비스를 만들고 싶습니다. 비슷한 서비스를 다나와에서 제공하지만 실제로 최저가가 아닌 경우도 있고 또 제휴사 할인이나 포인트를 활용하면 구매 가격이 달라질 때도 있기 때문에 그런 변수들을 고려한 최저가 구매 서비스를 만들고 싶습니다. \r\n 세번째로 제가 보드게임을 좋아해서 보드게임동아리에서 활동 중이고 또 보드게임 제작 해커톤을 나가 보드게임을 제작했던 경험이 있습니다. 그런데 만들면서 처음에 재료를 구해야하는데 얼마나 필요한지 감이 안 잡혔고 또 보드게임이 실제로 재밌을지 모르는 상태에서 제작하려니깐 리스크도 크다는 생각을 했습니다. 그래서 웹캐드나 웹IDE처럼 다른 프로그램을 깔지 않고도 소도구나 소부품을 만들어서 시뮬레이션 할 수 있는 서비스를 만들어 보고 싶습니다. \r\n 네번째로 제가 농구를 좋아하는데 농구를 하다보면 점수가 얼마나 되고 시간이 얼마나 남았는지 또 파울일 때 타이머를 멈추고 경기가 재개되면 타이머를 다시 키는 번거로운 일을 해야합니다. 그래서 머신러닝을 이용해서 공이 경기장 밖으로 나가는 동작과 득점이 되는 동작, 경기가 다시 시작하는 동작을 학습시켜 사용자가 동영상을 실시간으로 찍어서 사이트로 보내주면 실제 프로농구에서 하는 것처럼 경기기록을 시켜주는 웹 서비스를 만들고 싶습니다. \r\n 마지막으로 이건 제 미래 목표이기도 한데 사용자 친화적인 범죄지리정보 서비스를 만들고 싶습니다. 범죄 지리정보 서비스를 만들고 차츰 범죄예측 서비스 모델을 하나씩 구현해 보고 싶습니다. 외국에서는 이미 시범운영하고 있는 모델들이 있다고 합니다.  저는 국내에서 적용할 수 있는 범죄예측모델을 만들어 보고 싶습니다. 	개발자로써의 저의 방향을 정하는 1년이 됐으면 좋겠습니다. 문과출신이고 개발자쪽 인맥이 거의 없어서 혼자 여러 가지 찾아보면서 공부했는데 아직도 제가 어떤 쪽으로 더 공부해야하는지 잘 모르는 상황입니다. 올해 동아리 활동을 열심히 해서 여러 사람들을 만나고 고민하면서 방향을 정할 수 있는 한해가 되었으면 좋겠습니다. 	서버 관련 기기들을 한번도 다뤄본적이 없는데 관심 있는 분야가 백엔드 서버쪽이어서 서버쪽에서 리눅스를 배우고 싶습니다. 	\N	\N	\N	\N	\N	2020-03-20 13:50:37.605216	2020-03-20 13:50:37.605216	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N
16	1	신승윤	ssy10011218@naver.com	01066539567	컴퓨터공학전공	2018112005	3	저는 도전적인 경험을 통해 성장하려고 노력합니다.	VC피칭과 협업, 해커톤 등 연합동아리 중에서 모든 기회가 최고라고 생각합니다.\r\n\r\n저는 경제적,사회적 가치를 창출할 수 있는 서비스를 개발하는 것이 가치있다고 생각합니다. 그리고 프로그래밍을 좋아합니다. 그래서 프로그래밍으로 경제적, 사회적 가치를 창출할 수 있는 서비스를 만들고 싶습니다. 2학년 여름방학 때 메이아이에서의 인턴 경험을 통해 딥러닝에 대한 흥미를 고취시키고 실력을 쌓을 수 있었습니다. 그 뒤로는 딥러닝을 적용하여 자동화하거나 사용자 경험을 극대화하여 경제적 사회적 가치 만들어낼 수 있는 유용한 서비스로 방향을 구체화하였습니다. \r\n\r\n최근에는 CAGFace(https://github.com/SeungyounShin/CAGFace), AWing(https://github.com/SeungyounShin/Adaptive-Wing-Loss-for-Robust-Face-Alignment-via-Heatmap-Regression) 과 같은 딥러닝 논문들을 구현해보고 블로그에 논문리뷰(https://medium.com/@ssy10011218) 를 진행하였습니다. \r\n\r\n딥러닝에 대해 깊이 이해할 수는 있었지만 어떤 가치를 창출하는 서비스 구현으로 이어지지 않는 것이 안타까웠습니다. \r\n\r\n제가 멋사를 통해 이루고 싶은 것은 실제 유용한 가치를 창출하는 개발이고 유능하고 도전적인 팀원들과 함께 하고 싶습니다. 감사합니다.	뷰티와 패션 서비스를 혁신해보고싶습니다.\r\n사람들은 본인을 업그레이드 하기 위해 가사에서 할 수 있지만 더 좋은 질의 서비스를 기대할 수 있는 일들에 기꺼이 돈을 지불하고 있고 그래서 세탁관련스타트업, 배민과 같은 푸드테크, 클래스101과 같은 여가 관련 스타트업이 뜨고 있습니다. \r\n더하여 모바일 접근성과 데이터 기반 개인화가 정교해진 만큼 물류비용은 줄어들어 쿠팡과 같은 기업이 성장하고 새벽배송시장도 생기게 되었습니다. 더 나아가 언박싱, 하울 등의 키워드에서 알 수 있듯이 물건을 처음 받았을 때의 소비자 경험도 중요해지게 되었습니다. \r\n이런 소비트렌드는 도시생활양식을 바꾸고 있습니다. 사람들은 소비보다 구독에 익숙하고 시간을 아낄 수 있는 서비스에 기꺼이 지갑을 열고 높은 퀄리티의 소비자 경험을 주는 서비스를 애용합니다. \r\n저는 이미 한번 SPA라는 트렌드 전환을 크게 겪은 패션과 춘추전국 시대 같은 뷰티산업이 이러한 소비트렌드와 생활양식에서 개선점이 있다고 생각합니다. 물건을 처음 받았을 때의 소비자 경험을 중요시하는 소비패턴과 자신을 업그레이드하는데 관심이 많은 2030 세대의 특성을 고려해보았을 때 패션과 뷰티 또한 합리적인 가격에 구독할 수 있는 서비스를 만든다면 충분히 성공할 수 있다고 생각합니다.  	개인적인 이야기인데 대학원에 가고 싶어 군대를 미루어 23살이지만 아직 미필입니다. 이번 1년 동안 군대 계획이 없고 실제 유용한 프로덕트를 만드는데 집중하고 싶고 이런 서비스가 DAU 1만 이상을 가진 서비스로 성장시키는 것이 목표입니다. 이런 성공 경험은 군대라는 리스크와 바꿀 만큼 값어치가 있다고 생각했습니다. \r\n그만큼 누구보다 절실하게 임할 준비가 되어있습니다.\r\n더하여 아직 명확히 제가 하고 싶은게 무엇인지 잘 모르겠습니다. 취업을하든 진학을 하든 결과적으로 스타트업을 하고 싶다는 생각에는 변함이 없지만 어떤 길이 더 창업에 유리할지 또 딥러닝 자체에 흥미가 있기 때문에 연구 자체를 더 해보고 싶다는 생각도 많이 듭니다. \r\n이런 생각을 일년동안 구체화 시키고 인생의 방향을 확실히 잡은 뒤 군대를 가야한다면 가고 아니면 학업에 열중하여 대학원에 진학하고 싶습니다. \r\n	사실 커리큘럼에서 제공하는 것들은 독학으로도 충분히 익힐 수 있는 것이라고 생각합니다. 멋사가 제공하는 가치는 비슷한 관심사를 가진 사람들 끼리 모여서 의견을 나누고 이런 아이디어를 구체화하고 그것을 코드로 구현하는 일련의 과정이라고 생각합니다. 이런 프로세스에서 협업과 소통 , 어떤 문제를 어떤 기술을 적용했는지 등 고민을 통해 더 성장할 것이라고 생각합니다.	\N	\N	\N	\N	\N	2020-03-21 14:42:54.764028	2020-03-21 14:42:54.764028	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N
19	1	김홍준	hongjoon8750@gmail.com	01066358750	산업시스템공학	2020112523	1	훗날 멋쟁이 사자 선배님들처럼 훌륭한 코더 및 프로그래머가 되고 싶은 아기 사자 20학번 김홍준입니다.	. 어릴때부터 스마트폰이나 컴퓨터에 많은 관심이 있었습니다. 컴퓨터를 직접 조립하는 일도 해 보았고 게임이나 프로그램을 돌릴때마다 과연 어떠한 원리로 돌아갈까 하는 궁금증을 항상 가지고 있었습니다.  제 목표는 아직 구체적이진 않지만 데이터 마이닝과 머신 러닝과 같은 기술을 통해 향 후 우리 산업을 이끌어갈 사물인터넷이나 인공지능 같은 산업을 저의 전공인 산업공학을 살려 발전시켜나가는 것 입니다. 이를 위해선 컴퓨터 언어나 코딩에 대한 전반적인 지식이 있어야 한다고 생각했습니다. 대학교에 입학하면서 제가 들어갈만한 동아리를 찾던 도중 마침 코딩을 위한 동아리인 멋쟁이 사자를 발견하였고 꼭 코딩을 배워보고 싶어서 지원하게 되었습니다.  	제가 컴퓨터나 핸드폰에 관심이 있다보니 그에 들어가는 cpu나 gpu 같은 부품 종류들에도 많은 관심을 가지게 되었습니다.  이러한 부품들의 스펙이나 가격을 보기 좋게 정리하고 배열하여 사람들이 나중에 컴퓨터를 조립하거나 휴대폰을 구매할 때 쉽게 비교하고 따질 수 있는 나만의 웹 서비스를 만들고 싶습니다. 	고등학생의 신분을 벗고 대학생이 되는 첫 해로서 해보고 싶은 게 많습니다. 우선 멋쟁이 사자에 들어가 밤새도록 코딩을 공부해 보고 싶습니다. 코딩은 수학처럼 많은 사고력을 요구하고 복잡할 수록 오류가 날 확률이 높다고 들었습니다. 이러한 오류를 잡아내서 구동에 성공했을떄 그렇게 희열을 느낀다는데 그 기분을 꼭 느껴보고 싶습니다.  또한 선배들과 활발히 교류도 하고 싶고 현재 시국 떄문에 가능할 진 모르겠지만 mt 나 ot도 꼭 참여해 보람찬 대학생활을 즐기고 싶습니다. 마지막으로 해커톤 행사에 참여해서 선배님들과 좋은 성적 한번 거두고 싶습니다.		\N	\N	\N	\N	\N	2020-03-23 11:07:40.123578	2020-03-23 11:07:40.123578	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N
17	1	박우현	dssd85@naver.com	01092983183	전자전기공학부	2019111915	2	약간 치우친 균형 감각과 나름대로 합리적 사고방식을 가지고 살아가는 공대생	1학년때 교내에서 프로그래밍 기초와 실습 (프기실) 이라는 수업을 듣고 코딩에 기존에 없던 흥미가 생겼었습니다. 이후 코딩에 대해 자세히 알아보고 배우기 위해 여러 강좌를 찾아보게 되었으나,  좋은 내용이 강좌들은 매우 비싼 가격에 풀리고 있어서 배울 기회가 매우 적어 아쉬었습니다.  그리고 이전에 다니던 대학교에서 창업입문이라는 강의를 들었었고,  수업의 내용이 매우 재밌었고ㅡ 좋은 성적을 거두게 되어 창업에  대해서도 배우고 싶었습니다.  그때문에 코딩교육과 창업수업을 모두 들을 수 있다는 소식을 듣고 이번에 지원하게 되었습니다. 	1. 밥을 같이 먹을 수 있는 친구들을 매칭해주는 웹 서비스.\r\n친한 동기들이 거의 모두 군대를 가서, 2학년때에는 밥을 같이 먹을 친구들이 거의 없어졌습니다.  그래서 때와 장소를 올리면 관심이 있는 학생들을 모아 같이 밥을 먹을 수 있는 서비스를 만들고 싶습니다.\r\n\r\n2. 간단한  전공, 교양 관련 Q&A를 할 수 있는 서비스.\r\n기존에도 이러한 서비스와 앱들은 많았지만,  그 대상이 거의 모두 중,고등학생 이었고,  대학교 학부 수준의 질문을 하면 거의 같은 학부생들이 답변을 달아주는 정도였습니다. 그래서 각 학교, 학과의 교수님들을 대상으로 질문을 할 수 있는 서비스를 만들고 싶습니다. 	위에서 말한 서비스들을 한번 직접 손으로 만들어 보고 싶습니다.  이 동아리를 하면서 좋은 사람들과 함께 좋은 관계를 만들어 나가고 싶고,  학점과 동아리 활동을 모두 챙기는 2020년이 되고 싶습니다. 		\N	\N	\N	\N	\N	2020-03-22 01:47:26.233255	2020-03-22 01:47:26.233255	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N
18	1	윤성우	nerdydream@dgu.ac.kr	01067781723	컴퓨터통신공학부 컴퓨터공학전공	2020112039	1	안녕하세요! 웹 프로그래밍을 배우기 위해 '멋쟁이 사자처럼'에 지원한 윤성우입니다.	저는 평소 게임 개발이 취미입니다. 장래 희망 또한 1인 게임 개발자를 지망하고 있습니다. 취미와 장래 희망을 위해 중학생 시절부터 교육용 프로그래밍 언어인 '스크래치'를 이용해 게임을 만들어오다가, 다른 언어 및 엔진으로 갈아타기 위해 강좌를 찾던 중이었습니다. 또한, 게임을 개발한 이후에는 웹 사이트를 만들어 게임 관련 정보를 공유하고 웹 사이트의 기능을 활용한 미니게임을 만들어보는 것을 계획하고 있습니다.\r\n코딩을 배우는 법에는 독학, 학원, 학교 등 여러 방법이 있습니다. 인터넷에 강좌와 정보가 많이 올라오는 덕분에 독학이 상대적으로 쉬워지긴 했지만, 스크래치를 독학하면서 시간 대비 공부 효율이 썩 좋지 않음을 경험했습니다. 하지만 멋사처럼 체계적인 교육 시스템과 행사가 있는 동아리에서 배운다면 모르는 내용을 동아리 내에서 질문할 수 있고, 결과물을 동아리 내에 공유하고 부원들의 피드백을 받을 수 있기 때문에 매우 효율적으로 배울 수 있을 것으로 생각되고, 멋사에서는 코딩 교육 뿐만 아니라 창업 교육까지 같이 하므로 장래 희망인 게임 개발자가 되는 데에 도움이 될 것 같아 꼭 멋사에서 코딩 교육과 창업 교육을 받고 싶습니다!	간단한 게임을 플레이할 수 있는 웹 사이트를 만들거나, 온라인으로 상호작용할 수 있는 웹 게임을 만들어보고 싶습니다! 사람들이 언제 어디서나 편안하게 놀다 갈 수 있는 웹 서비스를 만들어보는 것이 제 목표입니다. 	1학년이라 학업과 다른 일을 병행할 수 있다고 생각되어, 게임 엔진 'Unity'를 배워서 생각해놓았던 게임 아이디어로 게임을 개발해볼 생각입니다. 또한 이 동아리에 들어가게 된다면, 웹 서비스로도 게임을 만들어서 다른 사람들에게 공유해보고 싶습니다.	간단한 게임을 플레이할 수 있는 웹 서비스를 만드는 법을 배우고 싶습니다.\r\n그리고, 1인 창업에 대해서 배우고 싶습니다.	\N	\N	\N	\N	\N	2020-03-22 13:00:27.160877	2020-03-22 13:09:29.511882	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N
123	2	문지용	\N	\N	\N	2016111671	\N	18:20 - 18:40,18:40 - 19:00,19:00 - 19:20,19:20 - 19:40,19:40 - 20:00,20:00 - 20:20,20:20 - 20:40,20:40 - 21:00,21:00 - 21:20,21:20 - 21:40,21:40 - 22:00	18:20 - 18:40,18:40 - 19:00,19:00 - 19:20,19:20 - 19:40,19:40 - 20:00,20:00 - 20:20,20:20 - 20:40,20:40 - 21:00,21:00 - 21:20,21:20 - 21:40,21:40 - 22:00	\N	\N	\N	\N	\N	\N	\N	\N	2020-03-29 13:22:16.691495	2020-03-29 13:22:16.691495	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N
3	1	장영동	altu1996@naver.com	01068182777	수학과	2015110424	4	 저는 시계같은 사람입니다. \n 저는 시간 약속이 사람들과의 관계에서 가장 중요한 것이라고 생각합니다. 그 이유는 모두에게 공평하게 하루 24시간이 주어져있습니다. 그런데 만약 한사람이 약속 시간을 지키지 못한다면 상대방에게 피해를 끼친다고 생각하기 때문입니다.  따라서 저는 항상 시간만큼은 꼭 지키자고 다짐하는 사람입니다. 이러한 다짐 덕분에 시간 준수를 위해 미리 준비하는 습관이 들여졌고 그 결과 좀 더 부지런한 삶을 살 수 있었습니다. \n 저의 시간을 소중히 여기는 성향이 동아리 활동에 큰 도움이 될것이라고 생각합니다. 첫째, 저는 멘토님들께서 개인 시간을 사용 하시면서 제공하시는 교육을 받고 서로의 시간이 낭비되지 않기 위해 복습과 과제를 철저히 하여 실력향상을 도모하겠습니다. 둘째, 다양한 친목 활동에 참가하여 동아리 원들과 함께 재밌는 시간을 보내겠습니다. 마지막으로 이러한 노력의 결과물로 9월말에 있는 중앙 해커톤에서 좋은 성과를 내겠습니다. 시간을 준수하는 열정과 다짐처럼 동아리 활동을 열정적으로 참여하겠습니다.	  작년 한국거래소에서 개최했던 전국 대학생 증권, 파생상품 경시대회에 참가하였습니다. 이 대회는 연구계획서를 제출하는 형식으로 예선을 진행하였습니다. 연구계획서를 작성하여 교수님께 확인을 받던 중에 교수님께서 방법론에 대하여 조언을 해주셨습니다. 바로 기계학습에서 쓰이는 'Random Forest'라는 분석 방법이였습니다. 당시 저희 팀에는 IT 지식을 보유하고 있는 팀원이 없었기에 'Random Forest'를 이해하기 어려웠습니다. 따라서 계획서를 작성하는데 난항을 겪었습니다. 그리고 결국 10팀이 올라가는 예선에서 11등으로 탈락하게 되었습니다.\n 대회 예선 탈락이라는 경험을 통해 저는 경제 뿐만 아니라 모든 분야에서 IT 지식이 없다면 방법론적으로 문제에 부딪힐 것이라는 생각을 하였습니다. 따라서 IT에 관심을 가지게 되었습니다. 그래서 멋사의 일원이였던 동기의 실력 향상과 멋사에 대한 이야기를 듣고 기회가 있다면 멋사의 구성원으로서 교육을 받고 싶었습니다, \n 그러던 중 이번 겨울방학때 IT를 공부를 시작한 큰 동기부여가 생겼습니다. 현재 저의 친 누나는 의류 사업을 하고 있습니다. 하지만 네이버 스토어 팜에서만 판매를 하여 수익이 크게 나지 않았습니다. 따라서 저는 누나에게 직접 내가 누나 브랜드만의 웹페이지를 만들어서 더 많은 고객을 확보해주겠다고 하였습니다. \n 그래서 저는 코딩학원을 찾아가게 되었습니다. 하지만 학원은 올해 4월달에 끝나기 때문에 저에게는 지속적인 동기부여, 코딩 교육과 연습이 필요하였습니다. 고민을 계속하던 중 멋사의 구성원인 동기와 연락이 닿았습니다. 저는 동기에게 이번에 코딩을 배우고 있다고 말을 하였습니다. 동기는 '그러면 올해 멋사에 지원하는 것이 어떠냐?'라고 제안을 해주었습니다. 멋사에 대해 작년부터 좋은 이미지와 구성원이 되고 싶었던 소망이 있었기 때문에 멋사에 지원하게 되었습니다.	 일단 질문 2에 작성한거 처럼 쇼핌몰 웹 서비스를 만들고 싶습니다. 이 웹 서비스를 잘 만들게 된다면 실제로 누나와 의류 사업 또한 추진하고자 합니다. 그리고 제가 평상시에 만들고 싶었던 웹 서비스는 2가지가 있습니다. 바로 수학 커뮤니티 와 기업 분석 웹 서비스 입니다. \n 저는 전공인 수학을 공부 하면서 quora.com 과 math.stackexchange.com 이라는 해외의 수학 커뮤니티 웹 서비스를 알게 되었습니다. 이 사이트들은 한 사람이 수학 질문을 올리면 그 질문에 웹 서비스 이용자들이 답변을 해주는 형식의 사이트들 입니다. 저의 수학공부는 이 사이트들의 덕을 보았습니다. 그러나 영문 사이트이기 때문에 접근하기 어려운 학생이 있을 수 있다는 생각을 하였습니다. 따라서 저는 한글 서비스로 우리나라의 수학 공부를 하고자하는 학생들을 위한 웹 서비스를 만들고 싶습니다.  \n 그리고 최근에 노후대비에 관심이 생겨 투자에 대해 공부를 하고 있었습니다. 그러던 중 미국인들의 대다수가 노후준비를 주식으로 한다는 것을 알게 되었습니다. 따라서 해외주식에 대해 공부를 하던 중 dividen.com 이라는 기업 정보 및 배당금을 알려주는 사이트를 알게 되었습니다. 이 사이트는 해외 웹 서비스라 영문 사이트였습니다. 따라서 저는 이 사이트의 한글 버전의 사이트를 만들고 싶습니다.	 만약 멋쟁이 사자처럼의 구성원이 된다면 멋사의 모든 교육을 수료하고 모임에 적극적으로 참가하면서 보내고자 합니다. 그리고 멋사에서 제공하는 교육뿐만 아니라 저 스스로 코딩 공부를 열정적으로 하면서 비전공자이지만 전공자와의 격차를 줄이고자 노력할 것입니다 . 그리고 공부와 병행 하면서 제가 만들고자한 사이트를 현실적인 계획을 세워서 만들어 보고 싶습니다. 왜냐하면 항상 무언가를 만들고자하는 생각만 하고 실제로 구현한 적이 없기에 올해 만큼은 꼭 멋사를 통해 제 생각을 실현시키고 싶기 때문입니다. 그리고 9월 말에 있는 중앙 해커톤에 참가하여 팀원들에게 누가 되지 않고 좋은 성과를 보이고 싶습니다. 이렇게 쌓은 지식과 실력을 통해 소프트웨어 교육봉사에 참가하면서 비전공자인 제가 겪었던 경험을 봉사 대상자들에게 전수하고 우리나라의 소프트웨어 발전에 힘을 쓰면서 의미있는 시간을 보내고 싶습니다. \n 그리고 만약 기회와 실력이 된다면 2학기에는 학교와 정부에서 제공하는 창업지원을 받아 제가 만들고자하는 웹 서비스를 기반으로한 저만의 회사 창업을 하고 싶습니다. 그리고 내년에 졸업을 하여 취업 후 졸업이 아닌 1학년때부터 꿈꿨던 창업 후 졸업을 이루고 싶습니다. 저는 이렇게 대학교 4학년을 멋사를 통해 뜻 깊고 멋지게 보내고 싶습니다.	아직까지는 없습니다.	\N	\N	\N	\N	\N	2020-03-18 12:09:36.941291	2020-03-26 06:47:17.062477	\N	\N	\N	0	1	\N	\N	\N	\N	\N	\N	\N	\N
108	2	윤상우	\N	\N	\N	2017110518	\N	19:00 - 19:20,19:20 - 19:40,19:40 - 20:00,20:00 - 20:20,20:20 - 20:40,20:40 - 21:00,21:00 - 21:20,21:20 - 21:40,21:40 - 22:00	19:00 - 19:20,19:20 - 19:40,19:40 - 20:00,20:00 - 20:20	\N	\N	\N	\N	\N	\N	\N	\N	2020-03-29 08:34:43.333065	2020-03-29 08:34:43.333065	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N
109	2	이예은	\N	\N	\N	2019110245	\N	18:20 - 18:40,18:40 - 19:00,19:00 - 19:20,19:20 - 19:40,19:40 - 20:00,20:00 - 20:20,20:20 - 20:40,20:40 - 21:00,21:00 - 21:20,21:20 - 21:40,21:40 - 22:00		\N	\N	\N	\N	\N	\N	\N	\N	2020-03-29 08:35:58.803546	2020-03-29 08:35:58.803546	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N
130	2	장영동	\N	\N	\N	2015110424	\N	18:20 - 18:40,18:40 - 19:00,19:00 - 19:20,19:20 - 19:40,19:40 - 20:00,20:00 - 20:20	18:20 - 18:40,18:40 - 19:00,19:00 - 19:20,19:20 - 19:40,19:40 - 20:00,20:00 - 20:20	\N	\N	\N	\N	\N	\N	\N	\N	2020-03-30 01:43:55.149042	2020-03-30 01:43:55.149042	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N
22	1	라민정	juliejane@dgu.ac.kr	01025738377	경찰행정학과	2020111260	1	매 순간 열정을 토대로 도전하는 삶을 사는 멋사의 일원이 되고 싶습니다!	 과거 세계화가 이루어지기 시작하던 때 타국의 언어를 배워서 알고 있던 사람들은 타인과는 차별화되면서도 시대의 흐름과 맞아떨어지는 본인들만의 능력으로 좋은 위치에 서서 더 넓은 세상을 바탕으로 시대의 발전에 앞장설 수 있었습니다. 저는 4차 산업혁명이 도래하면서 IT기술이 하루가 다르게 발전하고 있는 지금 코딩을 할 수 있는 사람이 된다는 것은 위의 사례와 비슷하게 많은 이점과 자유를 가져다줄 수 있다고 생각합니다. 그래서 저는 몇 년 전부터 코딩에 관심을 가지게 되었고, 2년 전에는 막연하게만 생각했던 코딩을 접해보고자 제주도에서 진행된 코딩 교육과 소규모 해커톤이 결합된 캠프에 참가했었습니다. 일주일이라는 기간 동안 코딩을 접하면서 많이 흥미로웠고 짧은 기간 탓에 기초적인 부분에서 배움이 끝나다 보니 더 알아보고 싶다는 아쉬움이 남았습니다. \n 대학생이 된 후 코딩을 더 접해보고 싶어서 관련 동아리들을 찾아보던 중 '비전공자들이 프로그래밍 기초 지식을 배워 자신만의 웹서비스를 만들 수 있도록 한다' 는 내용을 기반으로 구체적인 스터디나 여러 활동 계획을 가지고 있는 '멋쟁이 사자처럼 at 동국대'의 홍보글을 보게 되었습니다. 홍보글을 보면서 이 동아리에 들어간다면 정말 알차게 코딩에 대해 배울 수 있겠다는 생각이 들었고, 배우는 것에서 그치지 않고 나만의 결과물을 만들어낼 수 있다는 부분에서 내가 과연 어떤 결과물을 이루어낼까? 하는 궁금증과 약간의 기대를 가지고 지원하게 되었습니다. 	 저는 소수의 마니아층에게 인기가 있는 웹 서비스도 좋지만 그보다는 다수의 사람들에게 널리 이용되면서 모두가 혜택을 제공받을 수 있는 웹 서비스를 만들고 싶습니다. 최근에 코로나 19를 겪으면서 그런 성격을 띠는 웹 서비스들을 많이 보게 되었습니다. '멋쟁이 사자처럼'에서 만든 코로나 맵, 마스크 알리미뿐만 아니라 행정안전부에서 만든 자가 격리자 안전보호 어플, 현직 군의관이 개발한 코로나 19 체크업&코로나 19 중증도 분류 앱, 경희대 학생이 개발한 코로나 잇다 등이 있었습니다. 물론 국가에서 제공하는 관련 웹서비스들도 있었지만, 대부분의 화제가 되고 많이 이용되었던 서비스들은 대가를 바라지 않고 위기 상황을 다 같이 극복해나가자는 마음가짐으로 자신의 능력을 발휘해서 서비스를 만들고 유지해나가는 평범한 시민들이 만든 서비스였습니다. 저도 코딩을 배우고 웹서비스를 개발하게 된다면 많은 사람들에게 도움이 될 수 있는 서비스를 개발해보고 싶습니다. \n 제가 멋사에서 만들고 싶은 웹 서비스는 '안심길' 서비스입니다. 우리나라가 다른 여러 국가들에 비해 치안이 좋기는 하지만, 저를 포함한 많은 사람들이 아직은 저녁이나 새벽 일찍 혼자 어딘가를 가야 할 때 혹시 모를 위험에 불안감을 느끼고 있다고 생각합니다. 따라서, 행선지를 입력하면 목적지까지 가는 루트 중에 가장 범죄예방시설이 잘 갖춰져 있고, 행인이 많은 길들을 제시해줘서 조금이나마 안전하게 목적지에 갈 수 있도록 해주는 웹 서비스를 개발하고 싶습니다. 이러한 내용들을 소수의 사람들이 실행하는 것이 아니라 이용자들이 자신이 사는 곳 주변이나 잘 아는 장소 주변의 치안 상태를 입력해나가며 앱을 발전시켜나가는 방식으로 서비스를 운영해 나갈 수 있는 참여형 웹 서비스를 개발하고 싶습니다. 	 저는 2020년에는 하고 싶은 것들을 마음껏 도전해보고 싶습니다. \n 첫 번째로는, 여행을 많이 다녀보고 싶습니다. 굳이 장기간의 여행이 아니더라도 주말이나 공강을 이용해서 짧게라도 여러 번 국내. 외를 자유롭게 여행해보고 싶습니다. 여행을 하면 다양한 사람들을 만나게 되고 평소에 보지 못했던 풍경을 보면서 평소에 하지 못했던 생각들을 하게 되고 , 이를 통해 보다 넓은 시야를 가지고 세상을 볼 수 있을 것이라고 생각해서 꼭 여행을 많이 다녀보고 싶습니다. \n 두 번째로는, 영어 공부를 하려 합니다. 수험생활을 할 때부터 대학생이 된다면 꼭 교환학생을 가보고 싶다는 생각을 했었습니다. 교환학생을 가려면 영어가 지원의 조건이 되기 때문에 준비해야 하는 것도 맞지만, 교환학생이라는 것이 많은 시간과 비용이 들어가는 결정인데 이를 후회하지 않는 선택으로 만들고 많은 것을 배워 오려면 영어는 확실히 잘해야 할 것 같기 때문이고, 비교적 시간이 여유로운 1학년 때 미리 준비를 해 놓는 것이 좋을 것 같기 때문입니다. \n 세 번째로는, 많은 사람들을 만나보고 싶습니다. 같은 동아리나 같은 학과, 같은 수업 등 여러 환경들에서 만나는 사람들을 그냥 흘려보내기보다는 적극적으로 다가가고 행사들에 참여함으로써 좋은 친구, 선배들을 많이 만들고 싶습니다. \n		\N	\N	\N	\N	\N	2020-03-25 06:46:21.787105	2020-03-25 06:46:21.787105	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N
23	1	서윤수	01aggiggi@gmail.com	01036653695	기계에너지로봇공학과	2020112311	1학년입니다!	안녕하세요 저는 휴머노이드 로봇에 관심 있는 서윤수라고 합니다!	저는 휴머노이드 로봇을 개발하고 대중화 시키고 싶습니다. 하지만, 나름대로 독학한다고 공부한 C언어로는 책에서 배운 내용 외에는 할 수 있는 것이 별로 없었습니다. 미래에 휴머노이드 로봇이 1가정에 1대씩 배치되는 모습을 보고싶지만 어떻게 대중화시키는지, 만드는 지 또한 무지한 상태입니다. 멋사에서 코딩 교육을 듣고 다양한 웹서비스를 만들며 보다 자세히 소프트웨어에 대해 이해하고 싶습니다. 또한,창업 수업을 통해 기업이 어떤 형식으로 운영되고 어떻게 물품이 대중화 되는지에 대해 배우고 싶어서 멋사에 지원하게 되었습니다.	대학에 들어오기 전,아이패드와 노트북을 사기 위해 많이 알아봤는데 정보가 퍼져있고 너무 종류가 다양해 고르기 힘들었습니다.그래서 기회가 된다면 차,핸드폰,테블렛,노트북,로봇 등 다양한 전자제품을 정리하고 분류해 놓은 웹서비스를 만들어서 사용자들로 하여금 보다 편하게 정보를 보고 고를 수 있도록 했으면 좋겠습니다.	저는 2020년을 만들며 지내고 싶습니다. 열심히 공부해본 c언어로는 함수 출력정도밖에 안해보았기 때문에 코딩을 더 자세히 배워서 실제로 사용할 수 있는 프로그램을 만들어보고 싶습니다	기회가 된다면, 코딩 언어 말고도 네트워크나 운영체제가 어떻게 돌아가는지 구조정도 배워보고 싶습니다	\N	\N	\N	\N	\N	2020-03-25 12:39:08.638763	2020-03-25 12:39:08.638763	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N
24	1	김현도	kk090303@naver.com	01023049068	컴퓨터공학전공	2015112082	3학년	 의지만큼은 학년 통틀어 최고라고 할 수 있는 3학년 휴학생입니다.! 휴학 기간 동안 제가 하고 싶었던 코딩공부와 프로젝트들을 마음껏 해보고 싶습니다.	학교 내에서 창업 관련 수업 진행과 동시에 value up 캡스톤 디자인 대회에도 참가하면서 4학년 공과대학 재학생들의 졸업작품들과 창업을 위해 사업 아이템을 준비하는 팀까지 쟁쟁한 팀들과의 경연을 경험해 보았습니다. 모든 사업이나 경연에서 일차적으로 평가를 받는 부분은 시각적인 부분으로 어떠한 시스템이 개발되더라도 이를 사용자에게 내놓기 위해서는 웹과 앱이 중요하다고 생각합니다. 전공자로서 웹 프로그래밍을 많이 다뤄보지 않아 이전에 수업 내에서 팀 프로젝트를 통해 웹사이트를 기획 및 개발을 진행하였을 때에도 주어진 시간 내에 프로젝트를 진행하면서 머리에 담지 못한 부분이 많았습니다.\n 멋쟁이사자처럼 내에서 진행하는 세션과 과제에 대해 찾아보고 웹에 관심이 많은 친구와 공유하였을 때 멋사의 커리큘럼을 통해 기초부터 트렌드에 맞는 응용부분까지 차근차근히 공부할 수 있을 것이라는 확신이 들었습니다. 또한 막히는 부분에 대해서는 더 다양한 경험이 있는 멘토 분들에게 도움을 받을 수 있을 것이라 생각합니다. \n 휴학과 동시에 1년간 전공공부 및 자기 계발에 힘쓰기로 마음먹은 만큼 매주 진행하는 수업에 적극 참여하여 아이디어를 기획 및 개발하고 이를 창업 및 공모전에 이르게 하기까지 다른 참여자들과 함께 만들어 보고 싶습니다.	 다양한 분야에서 공유경제 서비스가 이루어지고 가운데 저는 매일 비가 올 때 잠깐 사서 쓰고 잃어버리는 일회용 우산들의 소비를 아끼기 위한 우산 공유 서비스를 조사하였습니다. 중국과 미국에서는 이미 성공사례가 있고 우산을 이용해 광고홍보 제휴 서비스를 더해 이익창출을 하고 있습니다. 저는 이러한 서비스를 제공하기 위해 장고와 파이썬을 통해 하이브리드 앱을 개발해보고 싶습니다. \n 이전에 tesorflow lite를 활용하여 시각장애인들을 위한 위험한 물품을 식별하여 경고를 해주는 애플리케이션을 개발한 적이 있는데 이때 이미 학습된 모델을 통해 개발을 진행하여 아쉬움이 있었고 또한 모바일 플랫폼이라는 한계가 느껴져 웹을 통한 머신 러닝 및 개발을 진행해보고 싶습니다.\n 마지막으로 제가 앞으로 개발할 프로젝트와 지금까지 진행하였던 프로젝트를 기록하고 저장하기 위한 웹사이트를 제작하고 싶습니다. 예전부터 저만의 포트폴리오 웹사이트를 직접 제작하고 채워나가고 싶다는 생각이 있었습니다.	3학년이 끝나고 4학년 전 취업 준비 및 전공 실력을 높이기 위해 1년간 휴학을 신청하였고 지금은 토익과 기사시험을 준비하고 있습니다. 프런트 앤드와 백 앤드 한 분야에 초점을 맞추는 개발자가 아닌 풀 스택 개발자로서 시작부터 끝까지 개발과정을 이해하고, 기본 스킬을 가질 수 있도록 노력하고 싶습니다. 특히 웹 개발을 통해 프론트 앤드와, 백 앤드 모두 다뤄보고 제가 직접 만드는 서비스에 적용하며 유지보수 할 수 있는 능력을 키워보고 싶습니다. 또한, 자신의 방식대로만 코드를 짜기보다는 다른 사람들의 코드를 이해할 수 있는 능력을 배우고 다양한 사람들과 자연스럽게 의견을 나누면서 학교에서 배우는 것보다 더 깊게 전공 공부를 해보고 싶습니다. 멋사에서 제가 앞서 말한 아이디어들이나 혹은 더 좋은 아이디어들을 처음부터 끝까지 개발하고 서비스해 볼 기회가 있었으면 좋겠습니다. 		\N	\N	\N	\N	\N	2020-03-25 13:27:25.574322	2020-03-25 13:27:25.574322	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N
25	1	강현직	rkdguswlr000@naver.com	01083403897	산업시스템 공학과	2020112491	1학년	유소작위, 우공이산/ 제가 이루고 싶은 목표는 남이 뭐라하든 반드시 성취합니다 안녕하세요 멋사에서 목표를 이루고 싶은 동국대 1학년 강현직입니다.	고등학교 때 부터 대학교에 입학하면 후회없이 여러가지 활동들을 하고 싶다고 생각했었습니다. 지금까지는 기회, 혹은 시간의 문제 때문에 전문적으로  배워보지 못한 저의 관심분야인 코딩과 웹 프로그래밍을 제대로 배워보고 싶습니다.	여러가지가 있겠지만 그 중 하나는  새해결심 공유 플랫폼입니다. 몇년동안 저희 가족이 하는 공식 행사 중 하나가 새해결심 달성 대결인데, 각자가 이번년도에 달성하고 싶은 목표 10가지를 지정하고, 돈을 배팅한 뒤 그 해의 마지막 날에 목표달성 여부를 보며 가장 많이 성취한 우승자가 금액 전부를 가져갑니다.\n물론 구체적인 돈을 거는 것이라던지 이런것에 대해서는 수정사항이 필요할 수 도 있겠지만, 단지 그때그때 목표를 세워서 그걸 달성하는 형식보다 1년단위로 큼직큼직하고 달성여부가 확실한 계획들을 세우는 것이 목표를 훨씬 명료하게 만들어 달성도를 높였습니다.\n이런 서비스 참여 범위를 다른 사람들 까지로 늘려서 많은 사람들이 혼자서 세워서 결국은 포기하고 마는 계획의 달성도를 높여서 삶의 질을 높이면 좋겠다고 생각해서 이 서비스를  만들고 싶다고 생각하였습니다.	후회없이 보내고 싶습니다. 마음껏 놀고도 싶고, 여러 경험도 하고 싶기에 멋사라는 단체에 소속되어 새로운 분야에 대한 경험의 폭을 넓히고 싶습니다.		\N	\N	\N	\N	\N	2020-03-26 04:17:59.244907	2020-03-26 04:17:59.244907	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N
20	1	윤상우	awarduuu@gmail.com	01075571738	통계학과	2017110518	2학년	아주 작은 존재에게라도 좋은 흐름을 전달할 수 있는 존재를 꿈꾸는 학생입니다.	대학교 1학년 시절, 프로그래밍 수업을 들으며 처음 코딩을 접했을 때의 신선함을 아직도 잊지 못했습니다. 한 결과를 도출하기 위해 수많은 길을 찾아내고 원하는 길을 선택하여 나아가는 코딩은 다른 공부와는 달리 제게 주도권을 쥐여주었습니다. 이 때문에 코딩 공부할 때 만큼은 자신감 있고, 주체성 있게 행동하는 제 모습을 볼 수 있어 행복하였습니다. 그래서 다시 한 번 즐겁게 공부하는 모습을 보기 위해 수많은 기회를 찾았고, 그 중 '멋쟁이 사자처럼'을 접하게 되었습니다. 멋사는 제가 해보고 싶었던 파이썬을 교육해준다는 점과 더불어 초보자들도 쉽게 배울 수 있다는 멋사의 모토로 저를 사로잡았습니다.\n23세의 나이는 어른이 되어야 한다는 압박감과 순수했던 어릴 적 꿈 사이 혼돈이 가장 심한 시기라고 합니다. 저 역시 꿈은 '나이키'와 같은 대형 의류 플랫폼을 만드는 것이었지만, 현재 안정적인 취업만을 고민하고 있습니다. 창업과 취업을 고민하기 위해서는 그 길에 대한 풍부한 지식이 전제되어야 좋은 선택을 할 수 있을 거로 생각합니다. 하지만 아쉽게도 제 주위에서는 창업에 대해 알려준 사람도 존재하지 않았을뿐더러 창업은 위험하다는 인식만을 심어주었습니다. 그래서 이번 기회에 창업 수업을 통해 지식을 쌓아 제 진로에 후회없는 결정을 하고 싶습니다.\n코딩교육과 창업 수업을 동시에 접할 기회는 ‘멋쟁이 사자처럼’이 유일하다고 생각합니다.	저는 운동분야와 패션 분야에서 두 가지 웹서비스를 생각해보았습니다.\n첫 번째로 운동분야에서는 시합매칭 서비스입니다. 친구들과 함께 풋살을 하려고 하면 운동장 대관부터 인원 모으기까지 상당히 까다로운 작업들의 연속이었습니다. 일단 친구들에게 연락을 일일이 돌려 약속을 잡아야 하고, 사회생활을 하는 친구들이 많아질수록 약속 잡기는 더욱 어려워졌기 때문입니다. 하지만 매칭 서비스를 이용하면 방장이 날짜와 운동장에 대한 정보를 올리면, 운동을 원하는 사람들만 저절로 모이게 될 것이고 더욱 수월하게 매칭이 성사될 거로 생각합니다. 이 서비스는 두 팀이 경기하는 구도이면 운동뿐만 아니라 e-sports 등 다양한 분야에서 사용될 수 있을 것입니다.\n다음은 패션 분야에서의 해외 직구 시스템입니다. 랄프로렌, 스톤아일랜드 등 해외 브랜드들은 국내매장에서 구매할 경우 관세 때문에 정가보다 훨씬 높은 가격이 책정됩니다. 그래서 패션에 관심 있어 하는 사람들의 경우 직구 사이트를 거쳐 해외사이트에서 저렴한 가격에 구매합니다. 하지만 이 과정이 매우 복잡하기에 접근하기조차  꺼려지는 사람 또한 많습니다. 이를 보완하기 위해 배송대행 서비스와 브랜드 사이트를 한 곳에 이루어지게 하면 대중들에게 충분히 매력적으로 보일 수도 있다는 생각을 해보았습니다.	군 생활을 하면서 전역하면 꼭 저 자신을 위한 활동들을 해야겠다고 다짐했었습니다. 자신이 행복해져야 다른 사람에게도 행복을 전해줄 수 있다고 생각하기에 제가 먼저 행복해지기 위한 2020년을 만들어 갈 것입니다. 이를 실천하기 위해 세운 목표들이 있습니다. \n첫째로 나이키 의류판매장의 스태프로 아르바이트를 해보는 것입니다. 왜 하필 나이키이냐? Just do it이라는 나이키의 슬로건은 제 가치관입니다. 만약 제 가치관과 일치하는 회사에서 일을 한다 하면 어떤 기분일지 상상만으로는 부족해서 직접 경험해보고 싶은 욕망이 생겼습니다. \n두 번째로 사람들과 잘 어울리는 2020년을 만들고 싶습니다. 저는 항상 먼저 다가가기를 꺼리는 성향을 가지고 있었습니다. 그래서 정말 친한 친구가 아닌 이상 벽을 허물지 못하고 아쉬운 관계만 만들어나갔습니다. 그 모습도 물론 저 자신답지만 결코 좋지만은 않은 성향임을 알기에 좀 개선해 나가고자 먼저 연락하고 다가가는 연습을 할 것입니다. 외람된 말이지만 멋사가 이 목표를 이뤄주기에 큰 도움을 줄 것으로 생각합니다.\n마지막으로 해커톤 참석해보기입니다. 목표를 이루기 위해 무박 이틀 동안 끊임없이 토론하고, 몰두하는 열정적인 자세는 저를 매료시켰습니다. 팀원들의 생각들이 모여 하나의 결과물이 된다면 상상만 해도 굉장히 뿌듯할 것 같기에 이 목표를 꼭 이루고 싶습니다.	멋사에서는 주로 소프트웨어 교육을 한다고 알고 있습니다. 여기서 나아가 초심자들에게 하드웨어에 대한 기초지식을 더해주신다면 최고의 교육이 될 것같습니다.\n또한 멋사에서 다양한 전공의 사람들을 만나 대화를 하고, 사고방식과 삶의 자세 등을 보며 인생을 배우고 싶습니다.	\N	\N	\N	\N	\N	2020-03-24 05:59:11.861749	2020-03-26 10:52:25.327871	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N
29	1	강선종	sunjong5108@gmail.com	01051255108	전자전기공학부	2015111971	3학년	저는 INFJ-A/INFJ-T 입니다.	학교를 입학하고 간단하게 프로그래밍 기초만 배운 뒤, 심화내용을 배우게 된 것은 2학년 2학기에 복학 후 ‘객체지향언어’를 수강 했을 때 입니다.  사실 배우는 데 어려움이 있었고 좋은 성적을 받지 못했습니다. 하지만 학기 말, 교수님께서 과제, 프로젝트로 내주신 간단한 평균필터를 적용하는 영상처리 프로그램을 만들었습니다. 코드 자체가 깔끔하지 않았지만 결국 원하는 대로 프로그램 실행이 성공했을 때의 성취감은 저에게 좋은 기억으로 남았습니다. 그 후 코딩에 관심을 가지게 되었고 좀 더 알고 싶은 욕심이 생기게 되었습니다. 한참 코딩에 대해 관심을 가지고 지내던 중 친구의 소개로 ‘멋쟁이사자처럼’이라는 동아리를 알게 되었고 멋사에서 할 수 있는 여러 활동에 대해서도 알게 되었습니다. 매 주마다 코딩에 대한 교육, 그리고 다른 분들과의 교류를 할 수 있다는 점이 혼자 배우고 공부하는 것보다  더 좋은 기회라고 생각되었습니다. 	저는 사실 웹 서비스에 대해 깊게 생각해본 적이 없었습니다. 이번 기회에 지원서를 작성하면서 진지하게 생각해보았습니다. SNS를 보던 중, 스브스 뉴스 계정에 올라온 게시물을 보게 되었습니다. 최근 대학교에서 사이버 강의를 진행하게 되면서 청각 장애인분들이 수업을 이해하는데 어려움을 격고 있다는 것을 알게 되었습니다. 또한 온라인 수업이 아니더라도 오프라인 수업에서도 마찬가지로 어려움을 격고 있다는 것을 알게 되었고 이를 웹 서비스를 통해 도움을 드릴 수 있지 않을까 생각해보게 되었습니다. 정확히 어떤 구조로, 어떤 알고리즘의 설계로 가능할 지는 아직 잘 모르겠지만 교수님들, 강의를 하시는 분들의 다양한 음성, 억양, 사투리등을 머신러닝, 딥러닝을 통해 개발을 하고 온라인이던 오프라인이던 수업 중 실행하게 되면 강의하시는 분들의 음성을 녹음과 동시에 스크립트로 저장을 해서 높은 정확도로 시각적인 강의 내용을 실시간으로 제공을 한다면 좋을 것 같다고 생각했습니다. 	저는 지나온 시간동안 항상 도전과 변화를 두려워 했습니다. 어떤 것을 하더라고 ‘내가 정말 할 수 있을까?’, ‘내가 잘 해낼 수 있을까?’ 늘 핑계를 대며 시도조차 하지 않았던 때도 많았습니다. 하지만 올해는 좀 더 적극적이고 변화를 두려워 하지 않는 사람이 되어 적어도 2가지 목표를 이루고 싶습니다. 첫 번째는, 코딩과 이번에 신청한 융합전공에서 인공지능, 머신러닝에 대해 배워서 앞서 생각해본 웹 서비스에 대한 개발을 진행해보고 싶습니다. 두 번째는, 운동을 꾸준히 해서 체력도 기르고 몸도 좋게 가꾸고 싶습니다.	최근에 AI에도 관심이 생겨서 머신러닝이나 딥러닝에 대해서 배워보고 싶습니다.	\N	\N	\N	\N	\N	2020-03-26 14:28:42.388811	2020-03-26 14:30:29.495955	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N
50	1	박소현	shpark5938@naver.com	01049065451	컴퓨터공학과	2019112081	2	저는 원하지 않는 일을 수행해야 하는 경우가 있을 때에도 긍정적으로 생각하고 맡은 일에 최선을 다하는 편입니다.	     ‘멋쟁이 사자처럼’이라는 코딩 연합 동아리를 알게 된 것은 타 학교에 재학 중인 친언니로부터였습니다. 친언니가 회원으로 활동하고 있을 당시라 자연스럽게 동아리에 대해 접하게 되었습니다. 코딩으로 웹페이지를 만들 수 있다는 것에 처음에는 마냥 신기했고 전공을 하게 되면서부터는 기대감이 더욱 커졌습니다.\n     작년 이 시기에 학교 캠퍼스에 붙어있는 ‘멋쟁이 사자처럼‘ 7기 모집 포스터를 보게 되었습니다. 곧바로 지원을 하려고 했지만 수요일 오후에 야간 수업을 듣게 되어 지원조차 하지 못하였습니다. ‘다음에도 기회가 있을 테니 그때는 꼭 지원해보자. 올해는 학과 활동에 집중하자.’라는 마음으로 시간을 보냈습니다. 하지만 1년 동안 학교생활을 하면서 컴퓨터 공학과임에도 불구하고 제가 하고 싶은 것들을 직접 배우고 실습해볼 기회가 전공 실습시간 외에는 많지 않다는 것을 깨닫게 되었습니다. 이제 막 1학년을 마친 컴퓨터공학과 학생으로서는 깊은 전공 지식 없이는 참가할 수 없는 활동들이 있었습니다.\n     작년에 빅스비 해커톤에 작은 역할이었지만 참가해본 적이 있었는데 일정 시간 동안 서비스를 만들어 내는 해커톤에 대한 좋은 인식이 심어진 계기였습니다. ‘멋쟁이 사자처럼’의 대표 활동인 해커톤을 통해 좋은 사람들을 만나고 프로그램 실력도 얻을 수 있는 경험을 얻고 싶습니다.	     저는 평소에 디저트 중 마카롱을 좋아합니다. 하루를 보낸 후 마카롱 집에 들러 여러 개의 마카롱을 사 들고 집에 갈 때 기쁨을 느낍니다. 하지만 개인 디저트 카페 같은 경우엔, 마카롱의 수량이 한정되어 있어 조금이라도 늦는다면 품절되어 허탕을 치고 오는 경우도 종종 있습니다. 어떻게 하면 이를 해결할 수 있을까 고민을 해보다, 마카롱을 사전에 예약하여 구매를 하면 좋겠다는 생각을 하였습니다. 사람들이 영화를 보러 갈 때에 영화관 사이트에서 상영 중인 영화들의 예고편, 후기 등을 본 후 예매하는 것처럼 마카롱도 비슷한 방법으로 예약을 하고 구매하면 좋을 것 같습니다. 우선 해당 웹 페이지에 여러 마카롱 가게들이 자신의 가게를 등록하면 구매자들이 가게들을 비교하며 본인이 원하는 디저트 종류를 선택하게 됩니다. 모든 마카롱에 예약이 걸려 있거나 판매 완료되었을 때 그 위에 ‘솔드아웃’이라는 메시지를 띄움으로 인해 번거로움을 덜 수 있고 재고를 확인할 수도 있습니다. 또, 가게 점주들이 직접 웹 페이지에 홍보 글을 작성한다면 홍보 효과가 똑똑히 드러날 것입니다. 이는 마카롱을 종종 사 먹는 사람들에겐 좋은 웹 서비스가 될 수 있지 않을까라고 생각합니다. 지금은 마냥 상상으로만 구현한 웹페이지이지만 ‘멋쟁이 사자처럼’에서 모든 커리큘럼을 수행 한 다음에는 현실로 구현할 수 있게 되길 기대합니다.	     지난 2019년은 나름의 첫 사회생활을 함에 의의를 두었습니다. 조금은 한정적인 인간관계를 갖고 있는 10대를 지나 처음 20대가 되는 해였습니다. 전국에서부터 서로 다른 성격을 갖고 오는 동기들과 어떻게 하면 친해질 수 있는지, 그와 동시에 학교에도 적응을 잘 해야 한다는 것이 저의 주 고민이었습니다. 저의 걱정과는 달리 무난하게 동기들, 선배들과 친해질 수 있었고 방학 때는 동기들과 국내여행을 다녀오기도 했습니다. 작년에는 인간관계와 대학생활 적응에 많은 시간을 보냈습니다.\n     이번 2020년에는 작년보다 전공 관련 프로그래밍 실력을 키우고 학업에 집중하고 싶습니다. 4차 산업혁명 시대로 넘어가는 요즘 사회에 경쟁력 있는 IT 개발자가 되는 것이 저의 목표입니다. 그 첫 번째 단계가 ‘멋쟁이 사자처럼’이면 좋을 것 같다는 생각을 했습니다. 동아리 활동을 통해 꾸준한 프로그래밍 공부와 웹 프로그래밍에 대해 알아가며 제 꿈에 한 발 다가갈 수 있는 한 해를 보내고 싶습니다. 또한, 지금까지는 여러 학과의 사람들을 만날 기회가 적었는데 동아리를 통해 비전공자분들이 가지는 다양한 창의적인 아이디어나 사고를 접하고 동아리 활동 적응도 잘 하는 것이 목표입니다. 구체적인 계획은 없지만 추가적으로 시간이 된다면 어학 공부를 하는 것도 개인적인 목표입니다.	‘멋쟁이 사자처럼’의 웹을 만들기 위한 대략적인 커리큘럼으로는 HTML, CSS, 파이썬 Django라고 알고 있습니다. 웹페이지를 만들기 위한 툴 이외에 효과적인 디자인을 위한 디자인 툴도 배우면 좋을 것 같다는 생각도 들었습니다. 전공분야가 아니라 잘 알지는 못하지만 포토샵 같은 툴을 사용해 디자인을 하게 된다면 웹페이지가 더욱 사용자들의 눈에 띄고 편리하게 사용할 수 있을 것 같습니다. 또한, 웹페이지를 만들 때 항목들의 배치 등과 같은 레이아웃도 배우고 싶습니다.	\N	\N	\N	\N	\N	2020-03-28 08:11:02.779738	2020-03-28 08:11:02.779738	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N
30	1	박채은	chaeun0618@naver.com	01027075748	컴퓨터공학전공	2018111689	3학년	열정적인 문과성향 공대생 박채은입니다.	 저는 바이오환경과로 입학하였습니다. 환경과학이라는 전공이 저의 큰 꿈에는 부족하다고 생각했고 4차 혁명이라는 시대의 흐름 앞에서 컴퓨터를 공부하고자 하는 열정이 생겨 컴퓨터공학전공으로 전과하게 되었습니다. 생각보다 컴퓨터공학과의 전공 수업으로는 얻을 수 없는 전문적인 지식이 있다는 것을 느꼈습니다. 전공처럼 프로그래밍 언어를 배우고, 컴퓨터의 구조와 원리를 아는 것도 중요합니다. 하지만 실제로 저의 아이디어로 개발을 하거나 실무 현장에서 필요한 능력과 같은 것들은 전공 수업으로 배울 수 없습니다. 심지어 이런 것들이 사회에서 성공을 위해 필수적인 요소들임에도 불구하고 말입니다. 따라서 저는 실질적인 코딩 지식과 개발을 하고 싶어서 동국대학교 멋쟁이 사자처럼에 지원하게 되었습니다. \n 학교에 여러 코딩 동아리가 있지만 왜 멋사에서 코딩교육과 창업 수업을 듣고 싶은 이유는 많지만 크게 두가지 입니다. 첫 번째, 멋사는 여러 학과의 사람들이 모여 다양한 분야의 아이디어를 융합할 수 있다는 것입니다. 두 번째, 선발된 인원으로 체계적인 활동을 한다는 것입니다. 많은 동아리가 초반에만 활발히 활동하고 초심을 잃어가는 경우를 많이 봐왔습니다. 하지만 멋사는 신입생을 선발해 정말 열정이 있는 사람들을 모으며, 체계적인 활동을 한다는 것입니다.\n 2020년부터 저의 학교생활을 멋사 활동으로 보람차게 채워가고 싶습니다.	1. 음성지원 요리 어플\n 기능 : 현재 가지고 있는 요리 재료를 입력하면 그 안에서 만들 수 있는 요리를 알려줍니다. 또한 레시피를 음성으로 읽어주고 사람의 일 처리(썰기, 볶기) 시간을 계산하여 음성 출력 속도를 조절해줍니다. 타이머 기능으로 조리시간도 동시에 측정해 주기 때문에 핸드폰을 보지 않고 들으면서 요리할 수 있습니다.\n 예시 : 계란, 밥, 케첩, 식용유 입력 -> 오므라이스 선택 -> 음성으로 요리법 읽어줌.\n 필요한 이유 : 요리 과정에서 손의 청결이나, 손에 음식이 묻어서 핸드폰을 만질 수 없을 경우에 필요하다고 생각했습니다.\n\n2. 수화 번역기\n 기능 : 자막이 있는 영상은 자막에 따른 수화 영상을 만들어 제공합니다. 자막이 없는 경우에는 음성과 입모양을 딥러닝 시켜 수화 영상을 만들어 줍니다.\n 필요한 이유 : 아직도 공중파 방송에서 수화와 자막이 없는 영상이 제공될 때가 있습니다. 이 때문에 시각 장애인들이 정보를 얻는 것에 어려움을 겪습니다. 또한 입모양과 음성으로 자막을 만드는 기능을 활용하면 이어폰이 없고 조용한 장소에서 영상의 내용을 알아야 할 때 유용하게 쓰일 것입니다.\n\n3. 대학공부 질문 애플리케이션\n 기능 : 대학교 교재의 연습문제나 개인적인 질문이 있을 때 물어보고, 검색하고, 답변해주는 웹 서비스입니다. 족보도 교환하는 게시판을 만들어서, 답변을 작성했을 경우 얻을 수 있는 토큰으로 족보를 얻을 수 있습니다.\n 필요한 이유 : 대학 교재가 스스로 공부하기에는 어려울 수가 있고, 친한 사람이 많지 않은 이상 답변을 얻기 어려울 수 있다. 초중고 공부의 질문 앱처럼 대학생들이 질문과 답을 얻는 애플리케이션이 필요하다고 생각했습니다.\n\n4. 식단을 짜주는 어플\n 기능 : 주부를 겨냥한 웹 서비스입니다. 단지 무엇을 먹을지 정해주는 서비스와 다르게 아이들의 건강을 많이 생각하는 주부들에게 건강한 식단을 제공합니다. 또한 제철 음식을 많이 반영하고 칼로리를 계산해 초과된 칼로리에 대한 운동량과 추천 운동도 제공합니다.\n 필요한 이유 : 현재 주부인 사촌 언니에게 필요한 웹 서비스가 있는지 의견을 얻은 결과, 제철 음식을 알려주는 식단 생성 어플이 필요하다고 했습니다.	 저는 멋사 활동에 많은 비중을 두고 싶습니다. 현재 3학년임에도 불구하고 코딩 실력이 부족하다고 생각합니다. 개인적인 발전을 위해서 방학에 프로그래밍 언어를 미리 공부해보는 것과 같이 제가 스스로 할 수 있는 일들도 있지만 때로는 선배님들의 조언이나, 강연과 같은 곳이 아니면 얻지 못하는 것들이 있습니다. 저에게 좋은 조언자나 방향을 잡아주는 사람이 있다면 저의 진로 구체화와 개발 방향을 정하는 것이 더욱 수월하리라 생각합니다. 하지만 2학년 때 전과를 하여 학과 사람들을 잘 알지 못하는 저는 조언자의 부재를 심하게 느꼈고 결론적으로 코딩 동아리에 들어가야겠다는 생각을 했습니다. 그러던 중 멋사 동아리원인 선배의 홍보를 듣고 멋사의 장점들을 알게 되었고 들어가고자 하는 꿈이 생겼습니다. 이렇듯 멋사는 저에게 새로운 기회이자 간절한 꿈입니다. 사람들이 “2020년의 계획이 취업준비나 자격증 공부와 같은 것이 아닌 동아리 활동이냐‘라고 생각할 수 있지만, 멋사의 활동에 최선을 다한다면 취업준비나 자격증 공부는 덤으로 따라올 뿐만 아니라 누구보다 열심히 살았다고 자부할 수 있을 것입니다. \n 또한 2020년은 저의 많은 아이디어를 실현하는 해로 보내고 싶습니다. 저는 창의력이 많다는 말을 들은 적이 많습니다. 그만큼 저에게는 많은 아이디어가 있습니다. 저는 창의력은 문제 해결 능력이며 배려에서 출발한다고 생각합니다. 문제가 발생하는 이유는 물건이나 서비스 사용자가 불편함을 느끼고 비효율적이라고 생각하는 데서 출발합니다. 이것을 해결하기 위해서는 배려라는 방법을 생각했습니다. 사용자를 배려하고, 사용자의 입장에서 생각해서 불편함을 찾아내는 것입니다. 실제로도 많은 발명품들이 이런 과정으로 만들어졌습니다. 저는 이런 창의력을 키우기 위해 배려하는 방법을 많이 생각해보았습니다. 장애인, 노인의 입장에서 변화하는 세상은 아직 힘들고 적응하기 어려운 부분이 많습니다. 특히 IT 부분에서는 격차가 더 심합니다. 사람들의 편리함으로 만들어진 기계나 서비스가 오히려 차별과 불편함을 불러온 것입니다. 저는 이것을 해결하고자 장애인, 노인의 입장, 더 나아가 IT 기기 이용에 불편함을 겪고 있는 사람들의 입장에서 생각해보았고 그 결과 많은 아이디어를 얻게 되었습니다. 저는 멋사의 전문적인 교육을 기반으로 저의 아이디어를 실현할 계획입니다.\n 마지막으로 저의 진로 계획을 구체화할 예정입니다. 3학년이지만 아직 컴퓨터공학과의 1학년 전공밖에 수강하지 못해 컴퓨터공학의 진로 분야를 잘 알지 못하고 진로를 구체화하지 못했습니다. 이런 저에게 필요한 것은 진로 분야의 직접경험입니다. 멋사에서는 해커톤, 창업 학습 및 지원 등으로 컴퓨터공학 분야의 직접경험을 할 수 있습니다. 또한 OB 선배님들과의 만남과 기업 연계 프로그램은 저의 진로 선택 방향에 큰 도움이 될 것입니다.\n 저는 멋사에서 최선을 다하고자 합니다. 저는 멋사에 들어오고자, 친구와 같이 듣기로 한 저의 수요일 수업을 정정하여 친구와 핀잔을 받았습니다. 이만큼 저는 정말 간절하고 열정적입니다. 물론 저의 학년 때문에 활동 기간이 짧아 마이너스 요소가 될 수도 있다고 생각합니다. 하지만 저는 전과생이라 5학년까지 다닐 예정이고, 남은 학교생활 3년을 멋사에 투자할 것입니다. 저는 그만큼 멋사 활동이 가치 있다고 생각합니다. 멋사가 코딩을 잘 모르는 신입생도 많이 선발하지만, 저와 같은 기본적인 지식이 있는 신입생이 있다면 같은 신입생을 도와주며 서로 더 발전할 수 있으리라 생각합니다. 또한 저는 이미 hi-sw봉사단의 단원으로 코딩 교육 봉사를 할 계획이 있습니다. 저의 프로그래밍 교육 경험으로 저의 멋사 후배들을 가르치며 운영진으로 활동하고 싶습니다. \n 저는 “사람은 자신과 비슷한 사람과 어울린다”라는 말을 믿습니다. 단지 자신과 비슷한 사람을 만난다는 의미뿐만 아니라 자신이 어울리는 사람과 비슷해진다라는 뜻도 있다고 생각합니다. 같은 목표를 향해 나아가고 발전하는 멋사 동아리원 사이에서 저도 노력하고 발전할 것입니다.	현재 멋사 활동만으로도 충분히 완벽하다고 생각합니다!	\N	\N	\N	\N	\N	2020-03-26 15:07:09.143441	2020-03-26 15:07:09.143441	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N
51	1	김태연	xodus1349@naver.com	01089031349	정보통신공학과	2020112107	1학년	성실함과 노력의 표본, 도전하고 성장하는 김태연입니다.	코로나 바이러스로 많은 확진자와 사망자가 발생하였고 이로 인해 사람들이 두려움에 떨고 있을 때 '코로나 알리미'와 '마스크 알리미'가 등장해 사람들에게 편리함과 큰 도움을 주었습니다. 이러한 서비스를 개발한 사람들이 대학생이라는 기사를 보았고 멋사 출신이라는 것을 알게 되었습니다. 코딩을 공부하여 프로그래밍 지식으로 사회에 긍정적인 영향을 주는 서비스를 제작한다는 점에서 정말 멋있다는 생각이 들었고 나도 한번 코딩을 배우고 서비스를 만들어보고 싶다는 생각을 하게 되었습니다. 그리고 동국대학교에도 멋사가 있다는 것을 알게 되었고 동아리에서 웹프로그래밍을 배우는 것뿐만 아니라 기업가 정신 및 UI/UX, 기획, 디자인, SW출시를 비롯한 창업에 필요한 다양한 스킬을 배운다는 것을 알게 되었습니다. 이를 가지고 자신의 아이디어를 프로그램을 통해 실현할 수 있다는 점에서 흥미를 느꼈습니다. 특히 같은 흥미와 관심사를 가진 사람들과 모여 함께 교육을 받고 활동을 할 수 있다는 점, 팀을 만들어 서비스 개발을 하고 발표하는 '중앙해커톤' 행사에 참여한다는 점에서 동국대학교 멋사에 꼭 가입하여 활동해야겠다는 생각이 들었습니다. 멋사에서 동아리 부원으로서 1년동안 프로그래밍에 대해 열심히 공부하고 프로그래밍 지식을 키워 저만의 웹 프로그램을 제작하고 싶습니다. 이러한 소망과 다짐을 가지고 동국대학교 '멋쟁이 사자처럼'에 지원하게 되었습니다.	<취미공유 커뮤니티 서비스>\n저는 쉬는 날에 주로 공예작품 만드는 것을 좋아합니다. 특히 뜨개질로 모자나 가방 만드는 것을 좋아하는데 새로운 작품을 만들기 위해 인터넷을 찾다보면 도안 구매를 해야하거나 필요한 정보를 찾는데 어려움을 겪을 때가 많습니다. 사람들이 자신의 취미활동과 관련 정보를 공유하는 플랫폼이 있다면 좋지 않을까라는 생각이 들어 취미공유 커뮤니티 서비스를 만들어보고 싶습니다.\n공예뿐 아니라 악기연주, 스포츠, 게임 등 다양한 카테고리를 만들어 운영하고 각 분야에 관심있는 사람들이 자신만의 취미를 게시판으로 올려 공유한다면 그 분야에 흥미를 느낀 사람들이 필요한 정보를 쉽게 찾을 수 있고 그 뿐만 아니라 딱히 취미가 없는 사람들은 이 서비스를 통해 새로운 취미를 경험해보고 나만의 취미를 찾을 수 있습니다.\n\n<청년정책 알리미 플랫폼>\n정부나 공공단체가 청년을 대상으로 행해지는 정책인 청년정책과 청년이 누릴 수 있는 혜택, 알면 유익한 정보들이 많이 있습니다. 하지만 청년 정책에 대해 그리고 자신이 어떤 혜택을 받을 수 있는지에 대해 모르는 청년들이 많고 이에 안타깝다는 생각이 들었습니다. 그래서 청년구직활동지언금, 청년 저축계좌신설, 근로장학제도 등 청년대상으로 시행되는 정책을 청년들이 누릴 수 있도록 청년정책에 대한 정보를 알려주는 플랫폼 서비스를 개발해보고 싶습니다.	전 어렸을 때 도전하는 것에 두려움이 많고 걱정이 많은 사람이었습니다. 그런 걱정과 두려움으로 도전을 포기하면 나중에 꼭 후회를 하곤 했습니다. '해보고 싶은 일이 있다면 두려워하지 말고 두전해보자'라는 생각을 가지고 고등학교 3년을 보냈고 그 3년 동안 저는 실패를 하더라고 포기하지 않고 새로운 것에 끊임없이 도전하면서 다양한 경험을 통해 성장했다고 생각합니다. 성숙해진 마음가짐과 성장한 저의 모습을 보면서 제 자신을 더욱 사랑하게 되었고 뿌듯함을 느꼈습니다.\n2020년, 10대를 마치고 20대의 첫걸음. 저는 계속해서 성장하는 사람이 되고 싶습니다. 학업에 충실히 임하면서도 10대에는 하지 못했던 다양한 활동과 경험으로 배워가는 한 해를 보내고 싶습니다. 이러한 다짐으로 '멋쟁이 사자처럼'에 지원하게 되었습니다. '코딩'이라는 것이 어렵게 느껴지고 웹서비스를 제가 만든다는 게 가능할까라는 생각도 들었지만 그건 쓸데없는 걱정이라고 생각합니다. 멋사의 동아리원이 된다면 교육에 열심히 참여하고 지식을 쌓아 웹 개발을 꼭 해볼 것입니다. 동국대학교 멋쟁이 사자처럼 8기가 되어 활동하는 것이 제가 이루고 싶은 것 중 하나입니다.		\N	\N	\N	\N	\N	2020-03-28 08:16:16.697405	2020-03-28 08:16:16.697405	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N
111	2	민은영	\N	\N	\N	2019130089	\N		18:20 - 18:40,18:40 - 19:00,19:00 - 19:20,19:20 - 19:40,19:40 - 20:00,20:00 - 20:20,20:20 - 20:40,20:40 - 21:00,21:00 - 21:20,21:20 - 21:40,21:40 - 22:00	\N	\N	\N	\N	\N	\N	\N	\N	2020-03-29 09:03:40.620079	2020-03-29 09:03:40.620079	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N
112	2	박소현	\N	\N	\N	2019112081	\N		18:20 - 18:40,18:40 - 19:00,19:00 - 19:20,19:20 - 19:40,19:40 - 20:00,20:00 - 20:20	\N	\N	\N	\N	\N	\N	\N	\N	2020-03-29 09:04:14.74713	2020-03-29 09:04:14.74713	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N
113	2	강아림	\N	\N	\N	2017111432	\N	20:00 - 20:20,20:20 - 20:40,20:40 - 21:00,21:00 - 21:20,21:20 - 21:40,21:40 - 22:00	21:00 - 21:20,21:20 - 21:40,21:40 - 22:00	\N	\N	\N	\N	\N	\N	\N	\N	2020-03-29 09:12:14.71038	2020-03-29 09:12:14.71038	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N
28	1	문지용	asdwldyd@naver.com	01029952053	경영학부	2016111671	3학년	안녕하세요! 동국대학교 경영학부 3학년에 재학중인 문지용이라고 합니다.	 '내 아이디어를 내 손으로 실현한다.'라는 멋쟁이 사자처럼의 목표 의식이 인상 깊었습니다. 저는 작년 여름부터 웹서비스를 기반으로 한 창업에 관심을 가지게 되었고, 이를 목표로 소프트웨어 연계전공과 독학을 통해 프로그래밍 학습을 시작하였습니다. 하지만, 이것만으로는 웹서비스 런칭이라는 제 목표에 도달하는데 한계가 있다고 느꼈습니다. 그러던 중, 우연히 SNS를 통해 멋쟁이 사자처럼이라는 코딩 교육 단체가 있다는 것을 알게 되었고 관심을 가지게 되었습니다. 더 알아보면서, 멋쟁이 사자처럼에서는 비전공자도 프로그래밍 교육을 통해 자신이 구상한 웹서비스를 런칭할 수 있게 한다는 교육 목표를 가지고 있으며, 실제로 많은 분들이 교육을 통해 자신만의 웹서비스를 런칭하였다는 사실을 알게 되었습니다. 따라서 저도 멋쟁이 사자처럼에서 웹서비스 런칭을 위한 보다 실용적이고 전문적인 학습을 받게 된다면 제 목표에 더욱 가까워질 수 있겠다고 생각하였습니다.\n 또한, 멋쟁이 사자처럼에서 저와 같은 목표를 가진 다양한 분들과 함께 학습해 나간다면 보다 재미있게 프로그래밍을 공부할 수 있겠다고 생각했고, 제 시야를 넓히고 아이디어를 보다 구체화 할 수 있겠다고 생각했습니다. 마지막으로, 단순한 프로그래밍 교육뿐만이 아닌 창업에 관련한 지식과 정보도 얻을 수 있다는 점이 유익할 것 같다고 느껴졌습니다.	 저는 축구 통계 전문 웹서비스를 만들고 싶습니다. 야구에 '장타율', '출루율'과 같은 통계 지표가 있는 것처럼 축구에도 여러 통계 지표가 존재합니다. 하지만 야구에서의 통계는 승패를 좌우하는 요소로서 중요하게 여겨지는 반면, 축구에서의 통계는 단순히 선수의 역량만을 확인시켜주는 도구로 인식되고 있습니다. 이 때문에 축구 통계를 전문적으로 다루는 서비스는 적습니다. 특히, 우리나라의 경우 '네이버 스포츠'와 같은 축구 전문 사이트에 관련 통계 자료가 존재하기는 하지만, 뉴스 보도가 우선이기 때문에 득점순위나 도움순위 등 다소 간단한 지표만 나와 있으며, 보다 전문적인 통계 자료를 확인하기 위해서는 해외 사이트를 이용해야 하는 경우가 대다수입니다. 따라서 저는 국내 축구팬들이 쉽게 이용할 수 있는 축구 통계 서비스를 런칭하고 싶습니다. 해외에서처럼 다양한 통계 지표를 제공하고, 더 나아가, 자체적으로 새로운 통계 지표를 만들어 제공함으로써 보다 깊고 전문적인 정보를 만들어내고 싶습니다. 이를 통해 축구에서의 통계가 단순히 선수 역량을 확인하는 용도가 아닌 야구에서처럼 승패를 예측하고 결정하는 요소로서 큰 도움이 된다는 점을 보여주고, 국내 팬들의 축구 시청에 있어서 재미를 더 하는 요소가 되었으면 좋겠습니다. 물론 아직 미비한 부분이 많지만, 멋쟁이 사자처럼에서 공부하면서 이를 더욱 구체화 시키고 싶습니다.	 한 가지 프로그래밍 언어는 완벽히 숙달하고 싶습니다. 현재 다양한 프로그래밍 언어가 존재하고 있고 많은 프로그래밍 언어를 습득할수록 좋기는 하지만, 저는 너무 큰 욕심을 갖고 무리하기보다는 차근차근 공부하여 올해에는 적어도 한 가지 프로그래밍 언어를 전문적인 수준까지 활용할 수 있게 하고 싶습니다. 또한, 그동안 구상만 해왔던 제 아이디어를 직접 구현해 보고 싶습니다.  이를 위해 프로그래밍 공부와 더불어 통계학에 대한 공부도 병행할 생각입니다. 하루하루 꾸준히 해나간다면 이 두가지 목표를 달성할 수 있다고 생각합니다.	기회가 된다면 빅데이터와 데이터 처리에 관련한 내용도 배워보고 싶습니다.	\N	\N	\N	\N	\N	2020-03-26 13:38:20.428956	2020-03-26 15:27:10.521965	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N
31	1	박새로이	gmldbd@likelion.org	01029745528	정보통신공학과	2014112139	4학년	내 가치를 네가 정하지마. 내 인생 이제 시작이고, 난 원하는 거 다 이루면서 살거야!	가난해서 못배워서 초보라서 안된다고 안될거라고 미리 정해놓고 그래서 뭘하겠어요 해보고 판단해야겠습니다.\n목표가 확고한 사람의 성장은 무서운 법입니다. 멋사가 있기 때문에 코딩을 하고 창업을 할 수 있는 겁니다.\n소신, 패기 없는 것들이 자존심 지키자고 쓰는 단어 이득이 없다면 고집이고 객기일 뿐입니다.\n멋사를 통해서 소신과 패기를 갖고 싶습니다.\n저는!!! 그게 제 소신이자 멋사 가르침이고, 앞으로도 그렇게 살고 싶기 때문입니다.	장가 포차 처럼 업계 1위에 앞서가는 모바일 술집을 차리고 싶습니다.\n맛있는 순두부찌개에 메인화면에 딱!\n아들, 술맛이 어떠냐? 아직 씁니다.\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n멋사와 함께한 뒤\n아들, 술맛이 어떠냐? 달콥합니다.  	사실 취업하고 싶어요	화이팅...	\N	\N	\N	\N	\N	2020-03-27 06:09:57.567849	2020-03-27 06:09:57.567849	\N	\N	\N	0	1	\N	\N	\N	\N	\N	\N	\N	\N
32	1	정광수	jeongks94@naver.com	01066119818	산업시스템공학과/융합소프트웨어	2014112487	4	첫 시작은 흥미와 호기심으로 빠르게 움직이며 마지막에는 누구보다 꼼꼼하고 철저하게 마무리하는 사람입니다.	제가 생각하고 기획한 서비스를 저 스스로 직접 만들어 보고 싶습니다.\n\n2018년부터 시작하여 3년째 프로그래밍을 공부하고 있습니다.\n기본적인 코딩, 자료구조, 특정 알고리즘에 관한 공부는 많이 했지만 새로운 서비스를 만드는 경험은 부족했습니다. 팀 프로젝트를 통해 새로운 서비스를 만드는 과정에서도 기획, 설계 이후 실제 개발을 하는 과정에서 인터넷상에 있는 많은 가이드와 개발문서를 어떻게 활용해야 할지 그리고 만들고자 하는 서비스를 어떠한 방향으로 구현해 나가야 할지를 몰라 어려움을 많이 겪었습니다.\n\n2020년 멋쟁이 사자처럼의 교육을 수강하며 가장 처음으로 내가 원하는 서비스를 직접 만들 수 있는 개발능력과 방법 등을 배우고 싶습니다. 적절하게 최신기술, 라이브러리 등을 활용하여 개발하고 필요한 자료,방법 등을 자유롭게 사용하고 싶습니다.\n\n또 하나의 서비스는 뛰어난 기술, 개발만으로 이루어지는 것이 아니라고 생각합니다.\n서비스가 계속 사용되고 유지되기 위해서는 이를 사용하는 사람들과 금전적인 부분도 고려해야 한다고 생각합니다. \n\n멋사의 코딩교육을 통해 내가 원하는 서비스를 직접 개발할 수 있는 역량을 키우고, 창업 교육을 통해 사람들이 진정 필요로 하는 서비스를 만들 수 있는 안목을 키우고 싶습니다. 	저는 셰어하우스 월세 간편결제 웹 서비스를 만들고 싶습니다. \n최근 공유 공간에 대한 수요가 증가하여 패스트파이브, 위워크 등 오피스를 공유하는 서비스가 생겨났고, 이와 마찬가지로 주거공간공유에 대한 수요도 증가하여 많은 셰어하우스 들이 생겨나고 있습니다.\n\n하지만 현재 부동산 관련 결제는 수수료, 세금 등의 문제로 카드결제가 어려워 매월 주거비를 내야 하는 사람들이 불편을 겪고 있습니다. 저는 이에 대한 불편을 해결하고자 이러한 서비스를 생각했습니다.\n\n세입자들에게는 월세,관리비 등의 주거공간에 대한 비용을 간편하게 관리,결제하는 서비스를 제공하고, 추가로 생필품,식료품 등의 함께 사용할 수 있는 물건들에 대해서도 함께 구입, 관리 할 수 있는 서비스를 제공합니다. 또 방에 문제가 생겼을 때 수리요청을 보내는 서비스도 제공하고 싶습니다.\n\n집주인들은 이 서비스를 통해 여러 개의 부동산을 한 번에 관리하고, 각 부동산에 있는 각각의 세입자를 한 번에 관리하고 확인할 수 있습니다. 세입자들의 월세, 관리비 납부 여부를 확인하고, 미납 시 납부 요청 메시지를 손쉽게 보낼 수 있습니다. \n\n저는 해당 웹 서비스를 통해 늘어나는 공유공간에 대응하여, 세입자들에게는 납부의 유동성을 제공하여 불편을 해소하고, 집주인들에게는 간편한 세입자 관리를 제공하고 싶습니다.	멋쟁이 사자처럼의 교육을 통해 모두에게 도움을 주는 서비스를 개발하고 싶습니다. \n코로나 알리미, 마스크 알리미 서비스 등 기술을 통해 어려운 시기를 함께 극복하고 도움을 주는것에 대해 많은 감사를 느꼈고 존경심을 느꼈습니다.\n\n저도 내가 가진 기술을 통해 대가없이 다른 사람에게 도움을 주는 서비스를 만들고 싶습니다. \n\n또한 2020년을 실력있는 개발자로 취업하고 성장하여 필요한 한해를 보내고 싶습니다.\n\n단순히 기업에서 제시하는 코딩테스트를 통과하고 배운대로 유지보수하는 개발자를 넘어서 신기술 트렌드를 빠르게 익히고, 창의적인 생각으로 1분1초가 다르게 변화하는 시대에 정말로 필요한 서비스를 만들 수 있는 개발자가 되고 싶습니다.	하나의 웹 서비스를 개발하고 운영하기 위해서는 데이터를 활용하는 능력도 굉장히 중요하다고 생각합니다. 웹 기반 개발 지식뿐만 아니라 현재 다양한 산업에서 주목받고 있는 빅데이터를 활용하고, 이를 웹 서비스에 녹여낼 수 있는 것을 배울 수 있다면 더 좋을 것 같습니다.	\N	\N	\N	\N	\N	2020-03-27 07:03:18.053084	2020-03-27 07:03:18.053084	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N
33	1	최현지	dndbguswl@naver.com	01092040805	경영정보학과	2018111581	3학년	저는 하고 싶은 일이 있다면 기회를 잡기 위해 주저 없이 도전하며, 목표가 있으면 후회가 없도록 끝까지 최선을 다해 노력하는 사람입니다. 	대학에서 전공수업을 들으며 어플리케이션을 간단하게 기획하고 코딩하는 팀 프로젝트를 진행한 경험이 있습니다. 이 수업을 통해 저는 어플리케이션을 직접 만들 수 있다는 것에 굉장한 흥미를 느꼈고 사용자들에게 편리함을 제공하는 웹 서비스를 만들어 창업에 도전해 보고 싶다는 꿈을 갖게 되었습니다. 그리고 이를 위해서 먼저 프로그래밍에 대한 전반적인 지식이 필요하고 저와 같은 목표를 가진 사람들과 함께 협업할 수 있는 기회가 필요하다고 느꼈으며 진로에 대한 많은 고민과 검색 끝에 멋쟁이 사자처럼을 알게 되었습니다. 비전공자들에게도 코딩 교육에 대한 기회를 제공해 주는 멋쟁이 사자처럼의 커리큘럼은 제 꿈을 실현시키는 데 정말 큰 도움을 줄 것이라고 생각하며 멋쟁이 사자처럼은 제가 배우고 싶었던 파이썬 프로그래밍을 배울 수 있고 관심사와 목표가 비슷한 다양한 사람들이 만나서 같이 협업할 수 있는 좋은 기회의 장이라고 생각합니다. 코딩 교육과 창업 수업을 통해 전반적인 코딩 지식과 창업에 대한 지식을 쌓고 싶고 동아리 부원들과 함께 프로그래밍을 배우고 과제를 수행하며 해커톤을 통해 학습한 내용을 바탕으로 아이디어를 개발하고 웹 서비스를 구현해보는 과정에 꼭 참여해 보고 싶습니다. 그래서 팀을 꾸려 팀원들과 좋은 아이디어를 웹 서비스로 구현할 수 있도록 노력하여 최종적으로 웹 서비스를 개발하고자 하는 저의 꿈을 이루고 싶습니다.	 먼저 대학생의 졸업 요건이 충족되었는지를 한 번에 확인할 수 있는 웹 서비스를 만들고 싶습니다. 각 대학과 학과별로 학생들은 한 학기에 이수해야 하는 학점, 학기별로 수강할 수 있는 교양과목 그리고 졸업하기 위해 수강해야 하는 전공기초, 전공심화, 공통 교양과목의 학점 등이 상이합니다. 따라서 총 이수 학점의 확인뿐만 아니라 내가 수강하고자 하는 과목이 졸업을 위해 꼭 필요한 과목인지 아닌지 등 수강신청을 하기 전에 확인해야 할 사항들이 많으며 혹시라도 놓친 정보들이 있는지 확인하기 위해서는 매번 학업 이수 가이드를 살펴보거나 학과 사무실에 문의해야 합니다. 특히 복수 전공을 하는 학생들의 경우 내가 지금까지 들었던 공통 교양과목에 대한 인정 여부 등 확인해야 할 정보들이 더욱 많아 혼란을 느낄 수 있습니다. 이러한 번거로움을 막고, 실수로 확인하지 못한 정보로 인해 졸업요건이 충족되지 않아서 추가 학기를 통해 수업을 수강을 해야 하는 불상사를 피하기 위해, 학생의 대학과 학과 그리고 지금까지 수강한 과목의 정보를 입력하여 이것을 바탕으로 졸업하기 위해 필요한 전공과목(전공기초, 전공심화), 공통교양 과목의 개수와 과목명을 자동적으로 보여주는 웹 서비스를 만들어 학생들이 수강신청을 하는 데 편리함을 느끼고 추가적으로 졸업 전까지의 수강 계획을 대략적으로 세워보며 계절학기 수강 여부 및 복수 전공 또는 조기 졸업에 대한 가능성 여부를 확인하는 데 도움이 되도록 돕고 싶습니다.\n 또한 프로그램을 실행하면 그 안에서 구글이나 네이버 포털 사이트의 검색을 통해 원하는 페이지를 열람할 수 있고 영어가 있는 경우 단어를 클릭하여 바로 뜻을 확인할 수 있으며, 원하는 경우 자동적으로 단어장에 저장하고 형광펜 및 주석과 메모 기능을 제공하여 실행된 웹 페이지 위에 기록을 하고 저장할 수 있는 웹 서비스를 만들고 싶습니다. 꼭 영어로 쓰인 글이 아니더라도 논문을 쓰거나 과제를 수행할 때 내가 해당 웹 페이지에서 얻고자 하는 부분을 본문 내용 위에 기록하고 저장할 수 있기 때문에 자료 조사를 하거나 인터넷의 정보를 바탕으로 글을 쓰고 출처를 확인하여 기록할 때에도 유용할 것이라고 생각합니다. 마치 글을 종이로 프린트하여 그 위에 중요한 내용을 기록하고 그때그때 참고하는 것과 같은 역할을 하는 프로그램으로 공부를 하거나 과제를 수행하는 모든 이들에게 편리한 서비스를 제공하고 싶습니다.\n 마지막으로 인터넷 쇼핑몰에서 판매 중인 아동복과 성인복을 한 군데에 모아서 보여주는 웹 서비스를 만들고 싶습니다. 비슷한 색깔과 패턴을 가진 아동복과 성인복을 매칭하여서 한 화면에 함께 제공하며 아기와 부모의 시밀러 룩을 보여주고 추천하기도 합니다. 어린 자녀를 둔 부모들은 아기 옷을 사는 공간에서 자신의 옷을 구경할 수 있고 자녀와 비슷한 스타일의 옷을 구매할 수 있을 것입니다.\n	2020년은 조금 더 제 진로를 위해 명확하게 노력하는 한 해를 보내고 싶습니다. 작년 한 학기 동안 제가 하고 싶은 것은 무엇이고, 제가 그것을 위해 어떠한 노력을 하고 있는지에 대해 생각해 보았습니다. 웹 서비스를 개발하고 싶다는 막연한 꿈은 있지만 이것을 위한 저의 노력은 턱없이 부족하다고 느꼈습니다. 올해에는 프로그래밍에 대해 더 많이 공부하고, IT 분야에 대한 실무적인 경험을 쌓을 수 있는 기회를 얻고 싶습니다. 우선 2020년의 저의 가장 큰 목표는 멋쟁이 사자처럼에서 활동할 수 있는 기회를 얻어 코딩을 공부를 시작하고, 동아리 구성원들과 함께 다양한 프로젝트를 진행하며 많은 경험과 좋은 결과물들을 쌓아가는 것입니다. 1년 동안 꿈을 위해 노력하며 이것을 구체화할 수 있는 기회를 얻고 싶고 동아리 내에서 저와 비슷한 관심사를 가진 다양한 사람들을 많이 만나며 즐겁고 행복한 2020년을 보내고 싶습니다. 제 곁의 좋은 사람들과 함께 노력하고 많은 것을 배우고 얻어 가며 성취감을 느낄 수 있는 보람찬 한 해가 되었으면 좋겠습니다.	없습니다. 예정된 커리큘럼에서도 충분히 많은 기회들을 제공한다고 생각합니다.	\N	\N	\N	\N	\N	2020-03-27 11:42:31.922587	2020-03-27 11:42:31.922587	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N
34	1	김채원	che9633@naver.com	01084413963	멀티미디어공학과	2018112533	3	집짓기 재료를 매일 모으는 비버처럼 성실하고 배우고자 하는 열정이 있는 김채원입니다	    저번학기에 웹에 관심이 생겨서 '코딩도장' 이라는 블로그에서 html과 css 공부를 했었습니다. 친구들과 함께 온라인으로 공부했는데 그러다보니 체계적으로 활동하지 못해서 아쉬웠습니다.  멋사는 오프라인 수업, 해커톤 등 다양한 프로그램을 진행하고 있기 때문에 혼자 공부하는 것보다 훨씬 신뢰감이 있고, 타 학교와의 교류, OB와의 만남같이 다른 실력자분들을 접할 기회가 마련되어 있어서 진로고민을 하고 있는 저에게 많은 도움이 될 것이라고 생각했습니다. 또한 많은 사람들과 같이 공부하면 혼자 공부할때 몰랐던 부분도 같이 해결할 수 있어서 좋은 것 같습니다. \n     2월 4일에 동국대 팜에서 주관한 현장체험학습에 지원해서 갔다왔는데 스타트업관련 세미나를 들었습니다.  원래는 창업(스타트업)에 관한 관심도 그다지 없었습니다. 그런데 세미나에서 여러 사례들을 소개해주어서 스타트업이 규모가 크지 않더라도 자신의 아이디어를 세상에 선보일 수 있는 좋은 기회라고 생각이 바뀌었습니다. 그리고 대학생 스타트업 지원도 다방면으로 많아 진입장벽이 의외로 낮은 편이라서 스타트업을 한 뒤 계속 투자하는 게 아니라 스펙이라고 생각하고 도전해 보는것도 괜찮다고 들었습니다. 절대 창업을 가볍게 보는 것은 아니지만 저에게 매우 신선한 분야라서 관심이 생겼고, 이번에 멋사에 들어가게 된다면 창업 관련 수업도 들어보고 싶습니다.	특정한 프로그램(클립스튜디오, 포토샵, 영상편집 프로그램)에 대한 사용법을 서로 공유하는 웹 서비스\n셀프 리모델링/ 방꾸미기를 하는 사람들에게 가격 견적을 해주거나 용품을 추천해주는 웹 서비스(집 평면도를 불러와서 가구를 집 가로세로 길이에 맞게 배치 할 수 있는 지 알아보는 기능도 있으면 좋을것같아요)	저는 현재 3학년이고 앞으로 휴학을 하지 않고 졸업할 예정이라서 취업준비 전에 학교생활을 할 날이 많지 않습니다. 그래서 하고싶었던 공부도(전공 관련이 아니더라도) 이것저것 따지지 않고 많이 하고 학점도 저번학기보다 더 잘받게 열심히 공부하는 알찬 한 해를 보내고 싶습니다.	운영체제 관련 공부를 하고 싶습니다. 	\N	\N	\N	\N	\N	2020-03-27 12:51:37.611895	2020-03-27 12:51:37.611895	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N
114	2	홍은주	\N	\N	\N	2017111718	\N	19:00 - 19:20,19:20 - 19:40,19:40 - 20:00,20:00 - 20:20,20:20 - 20:40,20:40 - 21:00,21:00 - 21:20,21:20 - 21:40,21:40 - 22:00	21:00 - 21:20,21:20 - 21:40,21:40 - 22:00	\N	\N	\N	\N	\N	\N	\N	\N	2020-03-29 09:25:59.00539	2020-03-29 09:25:59.00539	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N
115	2	김현도	\N	\N	\N	2015112082	\N	19:00 - 19:20,19:20 - 19:40,19:40 - 20:00,20:00 - 20:20,20:20 - 20:40,20:40 - 21:00	19:00 - 19:20,19:20 - 19:40,19:40 - 20:00,20:00 - 20:20,20:20 - 20:40,20:40 - 21:00	\N	\N	\N	\N	\N	\N	\N	\N	2020-03-29 09:54:16.755921	2020-03-29 09:54:16.755921	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N
116	2	김규은	\N	\N	\N	2018112551	\N		18:20 - 18:40,18:40 - 19:00,19:00 - 19:20,19:20 - 19:40,19:40 - 20:00,20:00 - 20:20,20:20 - 20:40,20:40 - 21:00,21:00 - 21:20,21:20 - 21:40,21:40 - 22:00	\N	\N	\N	\N	\N	\N	\N	\N	2020-03-29 10:04:08.273375	2020-03-29 10:04:08.273375	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N
124	2	김동연	\N	\N	\N	2020111625	\N	20:20 - 20:40,20:40 - 21:00,21:00 - 21:20,21:20 - 21:40,21:40 - 22:00	20:20 - 20:40,20:40 - 21:00,21:00 - 21:20,21:20 - 21:40,21:40 - 22:00	\N	\N	\N	\N	\N	\N	\N	\N	2020-03-29 15:01:56.947358	2020-03-29 15:01:56.947358	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N
35	1	김규은	kke0527@naver.com	01086547604	멀티미디어공학	2018112551	3	학과 전공 수업에서 원하는 수업을 찾지 못해 헤매고 있는 3학년입니다.	현재 저는 코딩 관련 학과에 다니고 있습니다.제가 입학할 때는 학과의 정체성이 게임 개발 쪽으로 치우쳐 있었는데 현재 제가 3학년이 되니 학과 커리큘럼이 로봇 쪽으로 변화하고 있고 학과 수업 또한 제가 관심 있는 웹 개발 관련 전공수업이 거의 없다시피 하여 제가 관심있고 진로 방향과 맞는 코딩 교육을 스스로 찾아야 한다고 생각했고 알아본 결과 그 방법 중 하나인 연합동아리 멋사에서 웹 개발과 관련있는 코딩 교육과 수업을 듣고  싶습니다. 코딩 관련 동아리는 더 있는 것으로 알고 있지만 그 중에서도 멋쟁이 사자처럼이 가장 체계적이고 또한 최근 코로나  관련한 코로나 알리미,마스크 알리미 등 활발한 활동을 한 것으로 알고 있어 멋사가 가장 매력적으로 느껴졌습니다.또한 비슷한 또래의 대학생들끼리 활동하면서 진로와 취업에 대한 얘기도 나누고 서로 정보를 공유할 수 있을거라는 기대도 가지고 있습니다. 그리고 코딩 지식이 없어도 지원가능하고 활동에 문제가 없다는는 점에서 아직 코딩이 능숙하지 못한 저도 지원할 수 있겠다는 생각이 들었습니다.\n코딩 교육을 받는 방법 중에 가장 편한 것은 컴퓨터 학원을 다니는 것이라는 것 또한 알고있지만 학원의 경우 비용적 부담감,창의적인 프로젝트가 불가능함,강사와 학생의 상호교류가 적다는 점,학생들과의 교류 또한 없어 멋사에 비해 단점이 훨씬 크다고 생각하여 멋사에서 코딩 교육과 창업 수업을 듣고 싶습니다.	1.남은학점 계산 서비스 : 각 학교별 졸업이수기준표 정보를 얻어와서 전공,필수교양,일반교양 등으로 분류하여 전공은 몇학점,일반교양은 몇학점,필수교양은 몇 학점을 더 들어야 졸업이수기준을 충족할 수 있는지 알려주는 프로그램을 짜 보고 싶습니다.이는 개인적으로 졸업학점까지 어디서 몇 학점을 더 채워야 하는지 손으로 계산하는 것이 귀찮아서 이런 서비스가 있다면 좋겠다고 생각했습니다.\n2.맛집 도장 찍기 지도 : 지역을 검색하면 해당 지역의 방문수가 높은 맛집이 확대된 지도에 나오고 가본 맛집은 한 번 갔던 곳으로 표시하면 그 다음 부터는 클릭할 수 없게  회색으로 저장되고 안 가본 맛집은 빨간색으로 뜨게 하여 해당 지역의 맛집을 겹치지 않게 모두 갈 수 있게 정보를 제공하는 서비스를 만들어보고 싶습니다.\n3. 노트북으로 쓰는 다이어리 : 종이로 만들어진 다이어리를 꾸미는 것도 재미있지만 글씨를 잘 못 쓰는 저는 인터넷으로 다이어리를 작성하고 각종 스티커와 달력을 꾸미는 것을 노트북으로 할 수 있다면 더 좋았을 것이라고 생각했습니다. 노트북을 활용하면 달력에 이미지와 스티커를 추가하는 것은 손으로 잘라 붙이는 것보다 더 쉬울것이라고 생각합니다.또한 작은 다이어리 보다는 많은 내용을 담을 수 있을거라고 생각합니다.\n4.방 구조 설계 서비스 : 최근 이사를 하면서 방 안의 가구배치를 하는 것에 어려움을 느꼈습니다.방과  가구들의 크기를 입력 받으면 해당 크기의 사물이 생겨나고,이를 통해 방 내부 구조를 이사 전에 미리 설계할 수 있게 해주는 서비스를 만들어 보고 싶습니다.\n	2020년 12월 말이 되었을 때,속으로 '아,올해는 지난해들과 달리 꽉 찬 1년을 보냈구나, 정말 바쁘게 살았다.' 이런 생각이 들 수 있는 1년을 보내고 싶습니다. 1년동안 좋은 사람들과 다양한 언어로 하는 코딩을 배우고 같이 직접 개발도 해보면서 자기계발을 하고 싶습니다.그리고 가장 원하는 것은 내가 앞으로 하고 싶은 것을 알아내는 것 입니다.학과 수업을 통해 배운 언어들 외에 다른 언어들을 배우고 그 언어들이 쓰이는 분야를 직접 배움으로써 2020년이 지나고 2021년에는 '나는 이러이러한 언어가 쓰이는 이런 개발을 하고 싶다.예를 들면 ~~처럼!' 이런 생각을 하는 목표가 명확한,자기주도적인 사람이 되고 싶습니다.저는 이를 멋쟁이 사자처럼에서 진행하는 코딩교육과 해커톤 프로젝트와 같은 다양한 활동을 통해 이룰 수 있을 것이라고 생각합니다.\n마지막으로는 멋쟁이사자처럼 활동을 통해 자신감을 얻고 싶습니다. 이제 3학년이 되지만 저는 저의 코딩능력에 대한 자신감이 낮습니다.주변 학과 친구들을 보면 미디어고등학교와 같은 학교출신 친구들의 경우 코딩,개발 능력과 지식이 저와 현저히 차이가 나는 것을 보면서 저런 친구들이 있는데 내가 이 분야에서 일을 할 수 있을까?라는 생각이 들곤 합니다.멋쟁이 사자처럼 활동을 통해 나도 충분히 할 수 있다는 것을 배우면서 깨닫고 싶습니다.	1.네이버,다음과 같은 웹사이트의 화면을 구성하는 원리에 대해 배우고 싶습니다.\n2.카카오톡과 같은 sns에 일시적인 오류가 나는 이유에 대해서도 알고 싶습니다.\n3.실시간 검색어는 어떻게 정보를 얻어오는 것인지 알고 싶습니다.\n4.맞춤광고를 띄우는 원리와 방법에 대해서도 알고 싶습니다.	\N	\N	\N	\N	\N	2020-03-27 13:13:05.738851	2020-03-27 13:13:05.738851	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N
36	1	김태형	kthnote@naver.com	01020242365	정보통신공학과	2019112151	2	멋진 것을 좋아하고, 멋진 것을 만드는 걸 좋아하는 김태형이라고 합니다!	혼자서 웹 프로그래밍을 배우다 보면 막히는 부분과 정확히 이해하지 못하는 부분들이 분명 있습니다. 막히는 부분을 구글링하다 보면 생각보다 많은 시간을 소비하고, 결국 정확히 이해하지 못하고 넘어가는 부분들도 생기는 등 독학에는 다소 비효율적인 문제가 발생한다고 생각합니다. 멋사에서는 스터디를 들으면서 모르는 부분이 생겼을 때 정확히 알려줄 수 있고 의지할 수 있는 튜터님이 계신 점이 좋았습니다.  그리고 매주 정기적으로 모여 스터디를 하고 과제를 하는 체계적인 스터디 시스템이 끝까지 포기하지 않고 웹 공부를 끝낼 수 있을 것 같아 매우 맘에 들었습니다. 더불어 배운 것을 사람들과 협업해서 개발하는 경험을 할 수 있는 해커톤과 같은 프로그램이 준비되어서 멋사에서 코딩교육을 받고 싶었습니다.\n저는 주어진 업무만 하는 수동적인 일보단, 제 아이디어를 실현시키는 능동적인 일을 하고 싶습니다. 그래서 창업에 관심이 많습니다. 학교수업이나 다른 창업동아리보다는 IT서비스 창업에 특화된 교육을 받을 수 있는 멋사가 제가 발전할 수 있는 가장 적절한 선택이라고 생각합니다. 특히 평소에 공부해보고 싶었던 UI/UX 부분에 대한 교육을 받고 싶습니다. \n	학교 주변 맛집을 소개 해주는 서비스를 만들고 싶습니다. 작년 1년 동안 학교에 다니면서 일명 “동국대 맛집 만다르르”를 보며 점심시간마다 맛집을 찾아다녔습니다. 하지만 정확한 위치를 알기 어려웠고, 무슨 메뉴가 있고 무슨 메뉴가 유명하며 가격대는 얼마인지 사람들의 후기는 어떤지 등의 정보가 부족하여 발품을 팔아야 하거나 선택 장애를 겪곤 했습니다. 그래서 저는 동국대 주변 맛집의 메뉴, 가격대, 정확한 위치 정보 등 관련 정보를 한데 모은 정리한 웹 서비스를 만들고 싶습니다. 구체적으로 학생들이 위생, 맛, 서비스 같은 맛집에 대한 솔직하고 디테일한 평과 별점을 남길 수 있도록 구축하고, 가게 사장님들과 협력하여 실시간 남은 자리나 대기팀이 어떤지 알려주는 기능을 만들어 학생들이 점심시간마다 헛걸음하는 시간을 줄여주고 싶습니다. 추가로 “맹산식당”, “Mr.don”과 상대적으로 덜 알려진 숨겨진 맛집들, 충무로에 새로이 생겨나는 식당, 없어지는 식당들에 대한 정보들도 유저들이 새로 등록할 수 있게 하여 학생들이 더욱 다양한 선택지를 선택할 수 있게 하고 싶습니다. 그리고 가능하다면 동국대뿐만 아니라 다른 학교 주변의 맛집 서비스도 구축하여 영역을 넓혀나가고 싶습니다.	작년보다도 더 규칙적으로 살면서 바쁜 생활을 보내고 싶습니다. 그러면서 저 자신이 크게 성장할 수 있도록 도약할 수 있는 해였으면 좋겠습니다. 구체적으로 프론트, 백엔드 전반에 대한 이해와 실력이 있는 웹 프로그래머가 되어 일상의 불편 속에서 나온 아이디어를 바탕으로, 저와 비슷한 경험이 있는 사람들이 유용하게 사용 할 수 있는 웹 서비스를 개발하고 싶습니다.	Node.js, JAVA Spring, React 공부를 하면 좋을 것 같습니다. 현재 저 스스로 패스트캠퍼스 강의를 통해 학습 중에 있습니다.	\N	\N	\N	\N	\N	2020-03-27 13:44:01.334128	2020-03-27 13:44:01.334128	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N
38	1	홍은주	iu98@naver.com	01068541218	생명과학과	2017111718	4	저는 코딩을 통해 여러 학문을 응용하고, 배운 지식을 나누는 멋쟁이가 되고싶은 홍은주입니다.	저는 아주 어릴적부터 컴퓨터에 관심이 많았고, 컴퓨터를 이용해 여러가지 산출물을 만들어 내는게 행복했습니다. 그래서 현재 컴퓨터 공학을 복수전공하고 있습니다. 이 학문을 공부하면서 컴퓨터를 다루는 것이 참 재밌다고 생각했습니다. 그러나 컴퓨터공학과에서 배운 기술들로 현재 만들 수 있는 것들은 cmd창에 여러가지 입출력과 계산을 하는 것 뿐 입니다. 그래서 저는 멋쟁이 사자처럼에 들어가 더 많은 지식들을 배워 눈에 보이는 새로운 것을 만들고 싶다고 생각했습니다. 그 중 가장 매력적으로 다가오는 것이 웹입니다. 제 손으로 기능을 씌우고, 디자인을 하고 서비스를 실행하는 이 모든 것이 너무나 매력적으로 다가와 멋쟁이사자처럼에서 웹과 코딩교육을 받아 제 손으로 직접 웹을 만들고싶다고 생각했습니다.\n또한 저는 주전공인 생명과학과에서 교직이수를 하는 등 여러 학문을 배우고 있습니다. 이 학문들을 연결해줄 다리가 바로 코딩이라고 생각합니다. 코딩을 통해 가지고 있는 많은 학문들을 응용하여 사회에 이바지하고 싶습니다. 사회에 이바지하는 가장 빠른 길이 창업이라고 생각합니다. 원하는 일을 계획하고, 실천하여 사회를 조금 더 긍정적으로 바꾸어 나가고 싶기 때문에, 저에게 멋쟁이 사자처럼의 창업교육이 꼭 필요하다고 생각했습니다. 그리하여 ‘동국대 멋쟁이사자처럼’에 지원하게 되었습니다.	교육과 관련된 웹서비스를 만들고싶습니다. 저는 2018년 약 10개월 동안 교육봉사를 한 적이 있습니다. 저소득층 아이들을 대상으로 수학교육을 했는데, 참 마음이 따뜻해지는 경험이었지만 그 과정에서 여러 문제들을 알게 되었습니다.  첫번째로 한번에 강의할 수 있는 인원의 제한이 문제라는 것을 알게 되었습니다. 저는 적게는 3명, 많게는 8명 정도의 아이들을 맡아 교육을 했는데, 실제로 그 지역에 이러한 집중 교육을 필요로 하는 저소득층 아이들은 훨씬 많았을 것이라고 예상합니다. 그 아이들 역시 선발된 아이들이었기 때문에 좋은 환경에서 양질의 수업을 들을 수 있던 것이지, 사실 많은 아이들이 그러한 교육을 필요로 할 것입니다. 온라인은 이러한 '인원'의 한계를 극복할 수 있는 좋은 수단이라고 생각했습니다.  두번째로 1:1 코칭의 한계가 큰 문제로 다가왔습니다. 학생은 많은데 가르치는 사람은 한명이기에 아이들을 집중적으로 보기 어려웠습니다. 다수 접속이 가능한 인터넷에서는 여러 사람이 학생들을 한번에 돌볼 수 있고, 더 나아가 교수자끼리의 커뮤니케이션도 편할 것이라고 생각했습니다. 세번째로 보통의 양질의 강의는 유료라는 것이 문제라고 생각했습니다. 과연 자본이 학습자의 교육권을 침해하는 것이 옳을까요? 제가 속한 단체는 무료로 학원에 준하는 수준의 강의를 제공했지만, 사실 이러한 단체는 많지 않습니다. 따라서 학생들의 교육권 보장을 위해 교육비를 학생(혹은 그 가족)에게 부담하도록 하지 않고, 유튜브 시스템처럼 광고 등 다른 수단을 통해 그 교육비를 충당하면 어떨까 생각하게 되었습니다. 따라서 저는 대학생 봉사자 등의 강의를 공유하고, 그 강의 내용에 대한 질문을 다수가 관리할 수 있으며 빠르게 피드백이 가능한 웹 서비스를 만들고 싶습니다. 또한 이러한 강의의 비용은 인터넷 광고 등으로 충당하여 학습자의 교육비 부담을 최대한 덜어, 온라인을 이용한 '교육의 평등'을 실천하는 웹서비스를 만들고 싶습니다. 	저는 2020년이 도전적인 한해가 되었으면 좋겠습니다. 저는 바이오시스템대학 소속이기때문에 서울에 자주 올 수 없어 1, 2학년 때 제대로 된 동아리 활동을 경험하지 못했습니다.  휴학을 했던 작년이 되어서야 비로소 동아리 활동을 즐겨보았습니다. 하지만 제가 경험한 동아리는 공연분과였기 때문에 저의 학술적 호기심을 채워주지는 못했습니다. 작년 한해도 재미있게 보냈지만, 지식적으로 알차게 보냈다고 이야기한 어려울 것 같습니다. 이번 한해는 더욱 더 학문에 열중하는 한해가 되어, 새로운 것에 도전해보고 부딪혀보는 1년이 되길 바랍니다. 2020년 12월에 한 해를 돌아봤을때, '잘살았다' 한마디 하는 것이 아니라 '내가 이것도 해보고 저것도 해봤으니 정말 잘살았다.' '참 도전적으로 살았다'는 생각을 갖게 하는 한해가 되었으면 좋겠습니다.\n사실 멋쟁이 사자처럼에 지원하는 것 또한 하나의 도전일 수 있겠습니다. 4학년, 복수전공, 교직 등 저를 옥죄는 것 처럼 보이는 것이 많으니까요. 하지만 그래도 멈추고싶지 않습니다. 시간은 남는 게 아니라 만들어가는 것이라고 생각하기 때문이여서 그럴지도 모릅니다. 바쁜 와중에도 그 사이에 또 하나 해내는 것이 제 인생에 큰 행복이 될 것 같습니다.  2020년의 마지막에 섰을 때, 성취감에 가득찬 한해를 보낸다면 그 것이 바로 행복일 것 같습니다. 그래서 저는 이번 한해를 도전적인 한해로 보내고 싶습니다.		\N	\N	\N	\N	\N	2020-03-27 16:10:36.782774	2020-03-27 16:10:36.782774	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N
39	1	김소은	kimsoeun0225@naver.com	01088267206	식품생명공학과	2020111765	1학년	열정, 책임감, 그리고 여유로운 시간으로 매사에 적극적으로 참여할 수 있는 김소은입니다.	 최근에는 코딩을 초등학생부터 필수로 배울 정도로, 코딩은 4차 산업 시대에 빠져서는 안되는 중요한 활동임은 분명합니다. 또한 좋은 아이디어가 있더라도 코딩에 대한 지식이 없으면 혼자 창업을 실현하긴 어렵기 때문에 저는 대학생이 되기 전부터 프로그래밍에 관심이 있었습니다. \n 하지만 막상 제가 대학생이 되자 컴퓨터 공학 관련 전공이 아닌 이상 학교에서 코딩을 깊게 배우기는 어렵다고 느꼈습니다.\n 사실 저는 지금 당장 꼭 창업하고 싶은 아이디어가 없기도 할 뿐더러 학원을 다니기는 재정적으로 부담이 되고, 유튜브를 보고 독학하긴 쉽지 않아 보여 코딩 교육을 차일피일 미루고 있었습니다.\n 그러나 이번 코로나 바이러스 사태에 나온 마스크 알리미를 포함한 다양한 앱들이 전국민에게 큰 도움이 되는 것을 보고 모든 아이디어와 창업에는 때가 있다는 것을 깨달았습니다.\n 그 무렵 IT 교육의 불평등함을 완화시키고 비전공자도 코딩을 배워 창업까지 가능하게 하자는 모토를 가진 멋쟁이 사자처럼을 알게 되었고, 저 역시 멋사의 일원이 되어 매 활동에 열심히 노력하고자 하여 지원을 결심하게 되었습니다.\n  멋사에서 프로그래밍을 배운다면 코딩 및 창업 교육 외에도 다양한 사람과 친분을 쌓을 수 있고, (제가 개인적으로 존경하는 인물인) 빌게이츠가 말한 것 처럼 다양한 분야에서 사고력을 키울 수 있기 때문에 제게 정말 귀중한 경험이 될 것이라 확신합니다.	1) 저는 환절기엔 비염으로 고생하는 편인데 병원에 가더라도 환자가 너무 많아 대기 시간이 매우 긴 경우들이 많았습니다. 그래서 저는 스타벅스 사이렌 오더처럼 병원 방문을 미리 예약하고 대기 순서 변화를 앱으로 알 수 있도록 만들고 싶습니다. 또한 병원에 가려해도 병원들이 너무 많아 어떤 병원이 진료를 잘 봐주는지 찾기 힘든 경우가 많은데 예약한 병원에 대한 후기를 남기는 시스템을 통해 주변 병원들의 리뷰를 볼 수 있는 앱을 만들고 싶습니다.\n추가로 아플 땐 병원에 가는 것이 최선의 방법이지만 병원이 너무 멀다든지 당장 갈 시간이 없다든지 등과 같은 경우, 특히 외진 곳에 사시는 노인분들께서는 병원에 가기 힘드실 수 있습니다. 인터넷에 증상을 검색해보면 블로그나 카페등에  단순 감기도 심각한 병으로 부풀리는 등의 믿어도 될까 싶은 정보들이 낭자합니다. \n그래서 저는 개인이 아픈 부위나 증상을 설명해주면 의사가 답변을 해주고 비슷한 증상들을 묶어 범주화 시키는 웹서비스가 있으면 좋을 것 같습니다. 물론 웹서비스를 참고하더라도 병원은 되도록 빠른 시일내에 가야 하겠지만요.\n\n2) 지하철과 버스 등의 다양한 교통수단을 통합적으로 볼 수 있는 웹을 만들고 싶습니다. 저는 도착 시간대와 환승 같은 것이 자세히 나와있는 카카오 버스나 지하철을 애용합니다.  하지만 버스와 지하철을 혼용해 타야 하는 곳을 가는 경우 카카오처럼 둘이 분리된 앱은 불편하다고 느꼈습니다. 반면 네이버 지도와 같은 경우는 통합되어 있지만 카카오처럼 분리된 앱 보다 다음 열차나 환승 관련 정보가 불분명하다는 단점이 있다고 생각합니다. 그래서 저는 다양한 교통수단을 통합적으로 찾아보고 관리할 수 있는 앱을 만들고 싶습니다.\n\n소소보단 조금 더 큰 일상의 불편을 개선하기 위해 만들어진 마스크 알리미 같이 일상의 불편함을 개선 할 수 있게하는 웹서비스도, 대다수가 사용하는 네이버, 카카오톡, 구글 같은 웹서비스도 모두 많은 사람들이 유용하게 사용하고 있습니다.\n저는 아직 특별한 아이디어는 없지만 더 많은 아이디어를 쌓고 그것을  현실화 할 수 있는 코딩을 배우고 더 나아가 창업 교육까지 받기 위해 멋사에 꼭 가입하고 싶습니다!\n	2020년은 제가 대학생이 된 첫 해이기 때문에 여러가지의 목표가 있지만 그 중 몇가지를 적어보자면\n1) 학점을 잘 받고 싶습니다. \n주변에서 1학년 때가 가장 노력한만큼 성적이 나올 수 있는 시기라고 많이들 말씀해주셨기 때문에 학점을 잘 받고 싶습니다.\n2) 미래에 제가 하고자 하는 분야나 직업을 고민해보고자 합니다. \n사실 저는 명확한 꿈 없이 대학교에 들어왔기 때문에 다양한 경험을 하며 제가 흥미있는 분야가 무엇인지 탐색해가는 해가 되었으면 합니다.\n3) 남자친구를 사귀고 싶습니다.\n4) 다이어리를 매일 적는 해가 되고싶습니다.\n많은 경험을 하고 기억에 남기고싶은 매일매일을 보내고 싶습니다.\n5) 저도 멋사의 일원이 되어 열심히 활동하고 멋진 사자가 되기 위해 노력하고 싶습니다!!!!!\n\n	프로그래밍 외에 포토샵, 동영상 편집 등도 간단하게라도 배워보고 싶습니다.\n	\N	\N	\N	\N	\N	2020-03-27 16:33:54.762028	2020-03-27 16:33:54.762028	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N
117	2	서창환	\N	\N	\N	2014111628	\N	18:20 - 18:40,18:40 - 19:00,19:00 - 19:20,19:20 - 19:40,19:40 - 20:00,20:00 - 20:20,20:20 - 20:40,20:40 - 21:00,21:00 - 21:20,21:20 - 21:40,21:40 - 22:00	18:20 - 18:40,18:40 - 19:00,19:00 - 19:20,19:20 - 19:40,19:40 - 20:00,20:00 - 20:20,20:20 - 20:40,20:40 - 21:00,21:00 - 21:20,21:20 - 21:40,21:40 - 22:00	\N	\N	\N	\N	\N	\N	\N	\N	2020-03-29 10:57:11.089986	2020-03-29 10:57:11.089986	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N
125	2	이형석	\N	\N	\N	2016112330	\N		19:00 - 19:20,19:20 - 19:40,19:40 - 20:00,20:00 - 20:20,20:20 - 20:40,20:40 - 21:00,21:00 - 21:20,21:20 - 21:40,21:40 - 22:00	\N	\N	\N	\N	\N	\N	\N	\N	2020-03-29 16:46:58.70707	2020-03-29 16:46:58.70707	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N
131	2	이신희	\N	\N	\N	2018110733	\N	18:20 - 18:40,18:40 - 19:00,19:00 - 19:20,19:20 - 19:40,19:40 - 20:00	18:20 - 18:40,18:40 - 19:00	\N	\N	\N	\N	\N	\N	\N	\N	2020-03-30 02:13:43.658044	2020-03-30 02:13:43.658044	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N
40	1	강혜연	hy1011k@naver.com	01031176186	미디어커뮤니케이션학과	2017111136	3학년	안녕하세요! 대한민국, 아니 세계 최고 멋쟁이가 될 동국대 멋쟁이 강혜연입니다.	‘멋쟁이 사자처럼’은 제가 코딩에 관심이 없었을 때도 익히 들어 알고 있었던 동아리였기 때문에 코딩을 배우고 싶다는 생각이 들었을 때 제일 먼저 ‘멋쟁이 ‘사자처럼’이 떠올랐습니다. 문과생인 저는 학과 수업으로 프로그래밍 언어를 공부할 수 있는 기회가 없고 다른 전공자분들에 비해 지식이 부족하기 때문에 비전공자들이 프로그래밍의 기초를 배우고 웹 서비스를 만드는 ‘멋쟁이 사자처럼’에 들어가고 싶은 마음이 커졌습니다. 또한 프로그래밍과 웹 서비스 개발에 열정이 많은 만큼 활동 기간 동안 최대한 많은 것을 배우고 얻어 가고 싶은데, 동국대 멋사에서 제공하는 온라인 교육은 더 깊고 효율적인 공부를 할 수 있도록 도와줄 것이라는 생각이 들었습니다. 무엇보다 '멋쟁이 사자처럼'에서 코딩을 배워야겠다고 생각한 이유는 꾸준한 sns와 홈페이지 관리입니다. 세션이 진행될 때마다 카드 뉴스를 제작해 페이스북과 인스타그램에 업로드하는 것을 보며 동아리 내에서 어떤 것들을 배우는지 감을 잡을 수 있었고, 체계적인 수업 커리큘럼이 있다는 신뢰감을 얻었습니다. 또한 다른 문항에서 언급했지만 저는 UI/UX에도 관심이 많은데, 프로그래밍 교육뿐만 아니라 창업과 관련하여 자신의 웹 서비스를 런칭할 수 있도록 디자인 교육도 진행한다는 점이 매우 매력적으로 다가왔습니다. 이러한 이유들을 바탕으로 저는 '멋쟁이 사자처럼'에서 첫 프로그래밍 공부에 용기 내어 도전해보고자 합니다.	멋사에서 앞으로 만들고 싶은 웹 서비스는 ‘여행할 때 자신에게 적합한 외국인 동행 구하기’ 모바일 애플리케이션입니다. 지난 학기 유럽으로 교환학생을 다녀오면서 느낀 점은 여행을 할 때 한국인 동행을 구하기는 쉽지만 외국인 동행을 구하기는 어렵다는 것이었습니다. 유럽여행을 한 번쯤 해보신 분들은 네이버 카페 ‘유랑’에 대해 아실 것입니다. ‘유랑’은 엄청난 회원 수를 가지고 있기 때문에 유럽 여행에 대한 다양한 정보를 실시간으로 확인할 수 있고 동행도 쉽게 구할 수 있습니다. 하지만 외국인들과 여행을 하며 외국인 친구를 만들고 싶었던 저에게는 다소 아쉬움이 있었습니다. 물론, 호스텔에 머물며 외국인 친구를 만들 수 있고 다양한 언어 교환 어플이나 펜팔 어플을 통해서도 외국인 친구들을 사귈 수 있지만 이러한 방식만으로 본인의 여행 조건에 맞는 외국인 친구를 만나는 데에는 시간이 많이 소요될 것입니다. 따라서 저는 외국인과 ‘여행’ 목적으로 여행지, 여행 시간, 여행 스타일에 따라 이에 알맞은 외국인 동행을 구할 수 있는 웹 서비스를 제작하고 싶습니다. 자신이 여행하고자 하는 여행지를 같은 날에 여행하려고 하는 사람들을 검색할 수 있고, 설정해놓은 여행 스타일에 따라 다른 여행자를 추천받을 수 있는 서비스입니다. 해외여행을 하는 사람들뿐만 아니라 국내 여행을 하는 한국인들이 외국인 동행들을 만날 수 있도록, 또는 반대로 국내 여행을 하는 외국인들이 한국인, 혹은 다른 외국인 동행들을 만날 수 있도록 웹 서비스를 만들고 싶습니다.	올해 휴학을 하게 되면서 많은 목표들을 세웠습니다. 그중 두 가지를 말씀드리자면 첫 번째로, 가장 중점을 두고 있는 목표인 파이썬 공부입니다. 저는 데이터를 통해 마케팅 성과를 정확하게 트래킹하여 마케팅을 하는 퍼포먼스 마케터로 일을 하고 싶습니다. 따라서 데이터 분석에 매우 기초가 되는 언어인 파이썬 공부에 노력을 기울여야겠다고 생각했습니다. 그뿐만 아니라 현재 디지털 마케팅이 중요해지고 있는 만큼 데이터 분석에 필요한 언어들이 주목을 받고 있고, 비전공자들도 파이썬을 공부하는 것이 매우 중요하다는 것을 느꼈습니다. 뼛속까지 문과생이던 제가 코딩에 관심이 생기면서 웹서비스 제작에도 관심이 커졌고 올해 UX/UI를 배워 포트폴리오를 만들겠다는 두 번째 목표를 세웠습니다. 어렸을 때부터 포토샵과 일러스트를 다뤘고 대학에 와서도 관련 경험을 쌓으며 그래픽 툴 활용 능력을 키워나갔습니다. 이를 바탕으로 어도비 xd와 스케치를 공부해 UX/UI 감각을 키워 제가 직접 디자인한 웹서비스를 런칭하고 싶다는 생각이 들었고, 이러한 저의 최종 목표를 위해 올해는 UX/UI를 공부하며 포트폴리오를 쌓겠다고 다짐했습니다.	지금 진행되는 커리큘럼도 저에게는 충분합니다!\nUX/UI 교육에 대한 비중이 어느 정도인지는 아직 확실하게 잘 모르겠지만, 만약 많지 않다면 프로그래밍 교육 만큼은 아니지만 분량을 좀 더 늘려도 흥미로울 것 같습니다.	\N	\N	\N	\N	\N	2020-03-27 17:48:40.478604	2020-03-27 17:50:40.75298	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N
41	1	고명기	30megapixels@naver.com	01029247389	기계로봇에너지공학	2016112424	3	저는 돌덩이입니다.	 저마다의 사연은 다 있겠지만 저 또한 다사다난하게 살아왔고 그 과정들을 통해 긍정적인 영향력을 펼치고 싶다는 꿈이 생겼습니다. 그러나 곧 어떻게?란 문제점에 봉착했습니다. 군대에서 전역을 하고 한 학기 동안 학교에서 공부를 하면서 여러 정보들을 찾기 시작했습니다. 그러다 ‘액셀,파워포인트와 같은 것들은 꿈을 시각화하지만 코딩은 꿈을 현실화한다.’란 문구에 매료되어 코딩 및 사람들은 어떻게 꿈을 실현시켰는지 즉, 창업에 대한 공부를 하고 싶다는 생각을 했습니다. 25살이란 적지않은 나이에 뒤늦게 하고 싶은 것을 찾았기 때문에 그에 따른 체계적인 계획 수립이 불가피했고, 여러 가지 활동이나 기관을 탐색하던중 이두희가 창설한 ‘멋쟁이 사자처럼’ 동아리를 알게되었고 관심을 가지게 되었습니다. 비전공자들도 들어올 수 있고,‘hack your life 내 아이디어를 내 손으로 실현한다 ’라는 슬로건과 및 해커톤과 같은 활동들이 제가 지향하고 있는 목표를 실현시킬 수 있다고 생각했습니다. 동시에 코로나맵 개발, 도서산간 초등학교 프로그래밍 교육, 여성과 새터민을 위한 교육과정 기획 등 제가 꿈꾸고 있는 것과 멋사가 꿈꾸고 있는것과 같다는 것을 알게 되었습니다. 동시에 여러 기업, 많은 대학들과 협력하고 체계적인 교육과정을 가지고 있는 멋쟁이 사자처럼에 나를 더 발전시킬 수 있을거라 생각했습니다.	 가족 sns를 만들어보고 싶습니다. 제 부모님은 서울에 계시고 4형제는 다 떨어져서 살고 있습니다. 형이 아파서 어렸을 때부터 요양시설에서 살아왔는데 나이가 들어가면서 가족들의 시간을 다맞추는 것은 불가능했고 개인적으로 요양시설을 방문할 기회가 많았습니다. 형에게 가족들은 지금 뭐하고 지내고 있는지 사진을 보여주고 싶었지만 카카오톡은 사진이 금방 만료되어 버리고 여러 가지 캡쳐들과 겹쳐 보이며 사진을 찾는 것이 힘들었고, 스카이프와 같이 단체 영상통화를 할 수 있는 어플이 있지만 일년에 몇 번 사용하지도 않아 다운로드 및 가입을 꺼려왔습니다. 여행과 명절, 생일과 같은 가족행사를 계획하는데 있어서도 가족들의 일정을 알 수 없으니 일일이 연락을 하는 불편함이 있었습니다. 저와 같은 불편함을 느낀 사람이 주변에서 많이 있을거라 생각합니다. 그래서 사용자들의 설정에 의해 가족들이 현재 있는 위치나 기관 건물과 같은 정보를 즉각적으로 공유하여 멀리 떨어져있어도 가족들의 현재 상황을 바로바로 알 수 있는 시스템도 만들어 가족들의 그리움을 한층 덜어줄 수 있는 서비스도 만들어보고 싶고, 가족들끼리 시간표나 출장 등 일정을 공유하고 필요에 의하면 단체 영상통화를 할 수 있고 사진들을 연도 및 공유자에 따라 정리한다던지 그에 따른 코멘트를 달수 있는 댓글창을 만들어 가족들의 추억을 공유하며 유대감을 쌓는것에 도움을 줄 수 있는 웹서비스를 만들어보고 싶습니다.\n	 2020년을 기점으로 배워보고 싶은것들을 배워보고 학교내에 국한되지 않는  여러 가지 활동들을 해보고 싶습니다. 계획하고 있는 활동들은 멋사에서 코딩교육을 받으며 웹서비스 및 프로그래밍 언어에 대한 기초를 다질 것입니다. 동시에 유튜브와 tcpschool과 같은 곳에서 언어와 프로그래밍을 공부하고 백준사이트에서 예제를 풀어보며 코딩과 프로그래밍 언어에 대한 기본기를 탄탄히 하여 동아리나 동기들중 자율주행자동차나 드론과 같은 전공과 관련된 프로그래밍 스터디를 형성하여 구글에서 오픈소스를 받아 해석해보며 4차 산업을 능동적으로 대비할 생각입니다. 멋사나 다른 단체에서 주최하는 여러 해커톤에 참석하여 공부를 진행하고 있더라도 뭐가 부족한지에 대한 즉각적인 피드백을 받을 것이고 미래에 대한 계획들을 수정하며 보완할 것입니다. 2학기에는 멋사에서 창업 교육을 받음과 동시에 한국장학재단에서 진행하는 대학생 지식 멘토링에 참석하며 진로에 대한 선택지를 넓힘과 동시에 진로를 결정할 생각입니다. 지금까지의 대학생활을 돌이켜 보면 배우고 싶은게 있어서 왔지만 초심을 잃어버린채 남들이 사는 방식 그대로 살아왔습니다. 2020년은 지금까지 능동적이지 못하게 살아온 제가 탈바꿈하고 내 인생을 시작할 수 있는 기점이라고 생각합니다.\n	아두이노, 캐드,  iot,  머신러닝,  캐드	\N	\N	\N	\N	\N	2020-03-27 23:39:20.308755	2020-03-27 23:39:20.308755	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N
42	1	배진우	jw969696@naver.com	01063601727	컴퓨터공학전공	2015112128	4	참신한 아이디어를 생각하는 것을 좋아하는 기획자 +  아이디어를 실현시킬 능력을 갖고 싶은 개발자	저는 프로그래밍을 한 번해보지 않은 비전공자는 아닙니다. 컴퓨터공학과에 다니며 몇 가지의 프로그래밍 언어를 접해봤고 코딩이 낯선 것은 아닙니다. 하지만 제가 해왔던 프로그래밍은 수업에서 배운 컴퓨터 공학 이론을 실제로 구현해 원리를 확인하는 방법이었을 뿐, 서비스를 만들기 위한 개발을 해본 적은 없습니다. 멋쟁이 사자처럼에서 운영하는 프로그래밍 교육과 창업 교육을 계기로 내가 만들고 싶은 것을 실제로 만들어 보는 경험을 하고 싶고 그저 서비스를 만드는 것 뿐만 아니라 창업가적 인사이트를 배워 세상에 필요한 것을 캐치해 낼 수 있는 능력을 배워 가고 싶습니다.	2가지의 웹 서비스를 만들어보고 싶습니다. 첫 번째는 사용자가 식당에 방문해서 음식을 먹기 전에 사전에 가게에 주문을 하여 기다리는 시간을 최소로 할 수 있는, 배달 어플리케이션과 식당에 직접 가서 음식을 먹는 것의 중간 단계의 웹 서비스입니다. ‘정해진 식사시간이 있는 직장인과 같은 사람들에게 가장 아까운 시간이 언제일까’ 고민하다 보니 음식을 기다리기 위해 앉아있는 시간을 줄이고 싶었고, 도착예정시간과 조리예정시간을 고려한 선주문을 하여 기다리는 시간이 없어지게 된다면 식사 메뉴를 고를 수 있는 반경이 넓어져 더 많은 선택지를 얻을 수 있을 것 같다는 생각이 들어 만들고 싶다고 생각하였습니다.\n 두 번째는 홈 트레이닝 운동자세 교정 서비스입니다. 최근 코로나 바이러스 여파로 다니던 헬스장이 문을 닫아 집에서 운동을 하고 있는데 혼자 운동을 하다 보니 운동을 다닐 때보다 자세를 잡기 힘들고 의지도 약해져 어려움이 있었습니다. 저와 같거나 비슷한 상황에 있는 운동 초보자들이 많을 것 같다고 생각하여 딥 러닝을 기반으로 한 운동 자세 교정 프로그램을 만들어 초보자들이 올바른 자세를 알 수 있게끔 하고 여기에 작은 커뮤니티를 만들어 서로의 정보를 공유하고 교류하는 형태의 서비스를 만들고 싶다고 생각하였습니다.	2020년이 지나기 전에 흥미 있는 분야를 찾아 진로를 결정하는 것이 목표입니다. 웹 개발, 앱 개발, 임베디드, 데이터 사이언스 등 여러 분야를 고민해보고 개발해 보면서 흥미가 있는 분야를 정하고 해당 분야에서 2개의 프로젝트를 경험해 보는 것이 목표입니다. 멋쟁이 사자처럼에서 배워 갈 능력이 제 목표에 시작점이 되었으면 좋겠습니다.	기획-디자인-개발이 협업하는 프로세스 과정을 배우는 과정이 있다면 좋을 것 같습닌다.	\N	\N	\N	\N	\N	2020-03-28 03:23:11.231703	2020-03-28 03:23:11.231703	\N	\N	\N	0	2	\N	\N	\N	\N	\N	\N	\N	\N
43	1	임혜민	janey326@naver.com	01071997814	정보통신공학과	2018112104	3	자유로운 영혼의 사진작가	"멋쟁이 사자처럼" 이란 문구를 처음 들었던 건 친구의 소개 덕분이었습니다. 이런 동아리가 있다고 알려준 친구 덕에 알아보기 시작했는데, 가슴을 울리는 그 문구만큼 함께하면서 배우고싶다는 열정을 제 안에서 꺼내주었습니다. \n저는 컴퓨터를 전공하고 있는 사진과 여행을 좋아하는 학생입니다. 대학에 입학해서 사진동아리, IT 학회 등에 소속되어 다양한 사람들을 만났고, 사람들이 가진 각자의 매력을 보면서 저의 미래를 더 구체화시켜 나갔습니다. 그러는 과정에서 고등학교 친구들과 "사진관"을 창업해보자는 아이디어를 갖고 창업에 도전했었습니다. 단순히 사진만 찍어주는 것만이 경쟁력이 될 수 없는 시대가 온 만큼 사진관에 새로운 혁신을 만들고 싶었습니다.  인생네컷의 틈새시장 진출에 눈여겨 보았고, 셀프사진관의 전략을 분석해 우리만의 플랫폼을 만든 오프라인 사진관을 만들자는 아이디어로 시작했었습니다. 그 과정에서 "코딩공부"의 필요성을 절실히 느꼈습니다. 코딩으로 프로그램을 만들어 사업을 해야겠다는 생각을 하게 된 첫 순간이었습니다. 덕분에 저는 두려웠던 코딩을 더 가까이 하게되었고, 멋쟁이 사자처럼에서 코딩교육과 창업교육을 꼭 들어야겠다는 생각을 할 수 있었습니다. 멋사에서 진행하는 체계적인 다양한 교육을 통해서 멋진 서비스를 개발하는 것이 저의 최종 목표입니다.	저는 멋사에서 사람들이 쉽게 본인의 집을 인테리어할 수 있는 웹서비스를 개발하고 싶습니다. 어렸을 때부터 관심이 많아 항상 인테리어 디자인 관련 책을 읽으면서 공간을 상상하곤 했었는데, 실제 본인 집에 원하는 디자인과 가구를 배치할 수 있고, 또 바로 구매링크로도 넘어갈 수 있는 서비스를 개발해보고 싶습니다. 	2020년은 저에게 정말 중요한 한 해입니다. 앞으로 인생의 방향을 제대로 정하고 이루어 나가는 데 큰 나침반같은 해가 될 것입니다. 그중에서도 저는 "코딩"을 열심히 배워서 제가 개발자로서 개발할 수 있는 능력을 키우고 싶습니다. 대학에서 처음 코딩을 접했을 때는 나와 다른 영역이라는 막연한 생각만 들었지만, 이제는 저도 할 수 있다는 생각으로 열심히 해 나갈 계획입니다. 그리고 이 계획을 이루어 나가는데 "멋쟁이 사자처럼"이 저에게 큰 기둥이 되어줄 것입니다.	경영도 배우고 싶어요	\N	\N	\N	\N	\N	2020-03-28 04:38:54.514405	2020-03-28 04:38:54.514405	\N	\N	\N	0	1	\N	\N	\N	\N	\N	\N	\N	\N
44	1	김혜준	kimhj0107@naver.com	01038961783	멀티미디어공학과	2016112535	3학년	그 동안 코딩을 배우기는 했지만 실제로 웹 서비스처럼 결과물을 만들어본적이 없는데\n   멋사에서 열심히 공부하고 활동하면서 제대로 웹 서비스를 만들어 보고 싶은 대학생입니다.\n	안녕하세요.\n저는 그 동안 코딩을 배우기는 조금 배웠지만 실제로 웹 서비스를 만들어 본적은 없어서\n멋사에서 코딩을 배우며 실력을 키우고 팀을 만들어 함께 프로그래밍을 하면서 서비스를 만들어 보고 싶었습니다.\n\n왜 다른 동아리가 아니라 멋사에서 만들어 보고 싶었냐면\n멋사에서 열심히 활동을 하면서 개발실력을 키우고\n해커톤에 참여하는 후기를 많이 봤는데\n다들 열심히 해서 결과물을 만들고 뿌듯해하는 걸 보고 \n저도 멋사에서 열심히 활동하며\n해커톤에서 코딩을 하여 결과물을 만들어 내서\n유종의 미를 남기고 싶었습니다.\n\n또한 멋사가 규모가 큰 동아리인만큼 원하는 서비스를 만들고 싶다면\n함께 만들어볼 사람을 구하기도 수월해서 구현해보고 싶은\n서비스를 함께 만들어보기도 쉬울 것 같았습니다.\n그리고 그렇게 함께 만들어 보면서 협업을 하는 경험도 많이 해보면서\n협업능력(?)도 키울수 있으면 좋을것 같았습니다!ㅎㅎ\n\n마지막으로는 다양한 기업에서 후원하고 멋사의 경험을 통해서\n유명한 개발자가 될 수 있었던 많은 분들이 있다고 들었는데\n그만큼 멋사에서의 경험이 저에게도 좋은 기회가 될수 있을것 같아서\n지원했습니다!\n\n정리해보면 코딩교육을 듣고 프로젝트를 함께 해보면서\n프로그래밍실력과 협업하는 경험을 많이 쌓아을 수 있는\n동아리라고 생각해서 지원했습니다 ㅎㅎ\n\n\n\n	1. 편리하게 다양한 보드게임을 즐길 수 있는 웹페이지를 만들어보고 싶습니다.\n\n보드게임 하는걸 좋아하는데 얼마전에 티츄비라는 사이트를 알게되고\n온라인에서도 보드게임을 즐길 수 있는 사이트가 많이 있다는걸 알게 되었습니다.\n그래서 저도 웹에서 보드게임을 즐길수 있는 서비스를 만들어 보고 싶습니다.\n\n2. 주요 뉴스들을 정리해주는 웹서비스를 만들어보고 싶습니다.\n \n요즘 뉴스가 하루에도 정말 많은 수가 쏟아져 나오고 있는데\n그 중에서 사용자의 관심에 맞는, 이건 꼭 알아야 할만큼 중요한?\n그런 뉴스들을 정리해서 보여주는 서비스를 만들어서\n편하게 세상이 어떻게 돌아가는지를 알 수 있게 도와주는\n서비스를 만들면 뉴스를 보기 귀찮아 하는 \n저를 포함한 많은 사람들이 도움을 받을 수 있을 것 같다고 생각합니다.\n\n\n\n	올해 3학년이 되었는데 3학년이 된만큼 어느정도 의미있는 경험을 하고 싶습니다. \n그 중에서도 직접 코딩을 하면서 함께 프로젝트를 하면서\n직접 만들고 싶었던 서비스를 만들어 보고 싶습니다.\n특히 멋사에서 코딩교육을 들으면서 공부를 하고 해커톤에도 나가 제대로 된 결과물도 만들면서 코딩실력을 많이 키우는건 물론이고 어떻게 협업해서 개발을 하는지\n많이 연습해보고 싶습니다!\n\n	비전공자도 코딩을 잘 가르쳐줄수 있는 멋사만의 노하우(??)도 배우면\n코딩교육을 들을 때 도움이 될 것 같습니다.	\N	\N	\N	\N	\N	2020-03-28 05:21:31.678155	2020-03-28 05:21:31.678155	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N
118	2	김태연	\N	\N	\N	2020112107	\N	18:20 - 18:40,18:40 - 19:00,19:00 - 19:20,19:20 - 19:40,19:40 - 20:00,20:00 - 20:20,20:20 - 20:40,20:40 - 21:00,21:00 - 21:20,21:20 - 21:40,21:40 - 22:00	18:20 - 18:40,18:40 - 19:00,19:00 - 19:20,19:20 - 19:40,19:40 - 20:00,20:00 - 20:20,20:20 - 20:40,20:40 - 21:00,21:00 - 21:20,21:20 - 21:40,21:40 - 22:00	\N	\N	\N	\N	\N	\N	\N	\N	2020-03-29 11:38:10.882727	2020-03-29 11:38:10.882727	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N
45	1	이현석	yes950324@naver.com	01089299478	멀티미디어공학	2016112648	3	앞으로 다가올 적과의 동침에 있어서 비참해 지지 않도록 다방면으로 노력하는 사람.	사실 2학년 때까지 학과에서 무엇을 하는지 관심 없었고, 무엇을 해야 할지 생각을 해본 적이 없습니다.\n2학년 때 여러 방황을 하고, 군대를 갔다 오면서 저의 진로에 대해서 다방면을 생각해보면서, 공기업을 갈지, 전공을 최대한 살릴지 생각을 하면서 제가 전공에 대해 아는 것이 없고, 지금 배우고 있는 과목들에 대해 막연한 두려움이 있다는 것을 알게 되었습니다.\n그러던 도중, 우연히 에타 홍보 게시판에서 멋쟁이 사자처럼 이라는 동아리가 있다는 것을 알게 되었고 제가 자신 없어 하는 코딩뿐만이 아니라, 기획과 관련된 교육들도 병행한다는 사실을 알게 되었습니다.\n멋쟁이 사자들이라는 동아리가 전국적으로 유명한 것은 예전에 자소설닷컴을 통해서 알고 있었고, 마스크 알리미나 코로나 알리미 같은 최근에 가장 문제가 되는 상황에 있어서 가장 효율적으로 서비스를 제공할 수 잇는 앱을 만들었다는 점이 매력적이라고 생각하고, 제가 아직 갈피를 잡지 못한 전공을 살리는 진로에 대해서도 방향성을 찾을 수 있을 것 같다는 생각이 들었습니다.\n멋쟁이 사자처럼 에서 코딩 교육과 창업 수업을 들으면서, 이제 더는 다른 선배들이나 동기들이 자신의 길을 찾아 나가는 것을 부러워하거나 아무 생각 없이 보지 않고, 저도 저의 진로를 직접 개척해 나가고 싶습니다.	공부할 때 암기와 관련해서 곤혹을 이룬 적이치룬적이 많았습니다.  그래서 암기와 관련된 앱을 만들어 보고 싶습니다.\n이미 키 질렛이나퀴즐렛이나 다른 깜빡이 앱 같은 암기용 앱들이 많이 있지만, 그 앱들은 단어나 콘텐츠를 직접 입력하기 너무 복잡하고, 사람이 수동으로 하나씩 봐야 한다는 점에서 불편함과 아쉬움을 자주 느꼈습니다.\n멋 사에서멋사에서 프로젝트를 만들 수 있다면, 공부할 때 필요한 콘텐츠들을 암기를 쉽게 할 수 있게 도움을 줄 수 있는 웹 서비스를 만들고 싶습니다.\n문장들을 입력하거나, 사진을 올리면 문자인식을 기반으로 중요하다 싶은 단어들을 자동으로 지워주는 식으로 암기를 유도하거나, 단어들은 적절하게 랜덤으로 나열 할 수 있고, 비슷하거나 헷갈리는 단어들끼리 나열을 해주는 웹 서비스를 만들어 보고 싶습니다.\n또한, 여건이 되면 사람들이 웹서핑이나 다른 SNS를 할 때 시간을 많이 잡아먹는 다는 것에서 착안하여, 설정해 놓은 앱을 할 때 갑자기 팝업창처럼 단어의 정답과 맞춰야 팝업창을 닫을 수 있는 공부에 도움(?)이 되는 앱도 만들어 보고 싶습니다..	내가 무엇을 하고 싶은지를 찾아보고 싶습니다.\n정해진 길을 가는 방법이 많은 것이 아닌, 수많은 길을 가는 길이 열려 있습니다.\n올해 저는 제가 저의 전공을 살려서 어떤 분야로 나아갈 수 있는지, 앞으로 제가 어떤 쪽으로 특화를 시켜서 저의 진로를 찾아 나갈 수 있을지 알아가고 싶습니다.\n또한 지금부터는 저의 전공과 관련된 공부들을 더는 기피하려고 하지 않고, 다른 모든 학과 공부들을 배움에 있어서 기초 토대가 되는 프로그래밍에 있어서 어떤 언어든 공포증을 벗어나고 싶습니다.\n최소한 한가지 코딩 언어라도 자유롭게 구사하는 것이 1학기 목표이고 2학기 때에는 이 동아리에서 기획하는 프로젝트를 진행하고 싶습니다.\n	기획에 상당히 관심이 많습니다. \n주로 어플 이나 정보와 관련된 서비스를 개발 하는 것 뿐만이 아니라\n게임 기획쪽에도 관심이 있어서 혹시 멋사에서 배울수 있으면 게임 기획과 관련된 교육도 받고 싶습니다.	\N	\N	\N	\N	\N	2020-03-28 05:46:20.328746	2020-03-28 05:46:20.328746	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N
37	1	이소정	lsj8249@naver.com	01066345310	수학과	2018113429	3	목표를 달성하기 위해 기본부터 직진하지만 창의력으로 지름길을 만드는 이소정입니다.	대학에서 파이썬과 C++수업을 들었지만 활용할 기회는 없었습니다. 코딩을 활용하고 공부할 수 있는 방법을 찾다가 멋사를 알게 되었습니다.\n\n주입식 교육의 전공수업과는 달리 멋사에서는 노베이스 상태에서도 잘 이해할 수 있게 교육해주고, 멘토링 시스템이 있어 질문이 자유롭다고 알고 있습니다. 같은 학생 입장에서 질문하며 코딩실력을 향상시키고 싶습니다.\n\n제가 생각하는 멋사의 가장 큰 매력은 다양한 전공 친구들이 모여 코딩을 배운다는 것입니다. 다양한 시각을 가지는 것이 코딩을 하는데 도움이 될 거라 생각하기 때문입니다. 또한 전공이 다른 친구와의 친목도 기대가 됩니다.\n\n멋사에 참여하고 싶은 또 다른 이유는 직접 프로그램을 짜보고 싶은 것과 더불어 코딩교육을 받아 개발을 배움으로서 세상을 바라 볼 수 있는 시야를 넓히고 싶다는 것입니다. 이번 코로나가 심각해지고 있는 와중에, 멋사의 비전공자 학생들이 '마스크 알리미' 서비스를 개발한 것을 보고 느낀 바가 많았습니다. 비전공자 학생도 개발을 할 수 있다는 점과, 배운 것을 사회를 위해서 활용한 점이 멋있게 다가왔습니다. 또한 코딩의 사회적 영향력에 대해서도 새삼 깨닫는 계기가 되어 더욱더 멋사에서 코딩교육을 받고 싶습니다.\n\n창업수업은 이번에 새로 생긴 걸로 알고 있습니다. 아직 창업에 대해 생각해 보지 않았지만 제가 멋진 웹서비스를 개발하여 창업을 하고 싶을 때를 대비하여 멋사에 참여하고 싶습니다.	마스크 알리미처럼 사회적으로 영향력 있는 것을 만들고 싶다고 멋들어지게 말하여 다른 사람들과 차별화를 두기 보다는 소소하게 나의 개인 홈페이지를 직접 만들고 싶습니다. 코로나19로 인해 집에 있는 시간이 많아지면서 생각이 많아진 결과입니다.\n\nWIX 서비스로 홈페이지를 만들 수는 있으나 서버가 외국에 있어 속도가 느린 단점이 있다고 합니다. 또한 홈페이지를 유지하기 위해서는 정기적인 비용이 드는데, 비용에서 자유로운, 내 맘대로 만든 나의 홈페이지를 만들고 싶습니다.\n	일단 시국이 시국이니만큼, 코로나19가 종식될 때 까지 건강하고 안전하게 보내는 것이 첫 번째 목표입니다. 나를 비롯한 가족, 친구, 그리고 그 주변사람들 까지도 건강했으면 좋겠습니다.\n\n그리고 학업과, 멋사에 붙는다면 멋사 활동까지, 어느 것 하나 놓치지 않고 끝까지 잘 마무리하고 싶습니다. 2020년이 다 지나갔을 때 아쉬움은 있어도 후회나 미련은 없는, 진짜 열심히 살았다고 말할 수 있는, 알찬 한 해를 보낼 것입니다.\n\n또한 다양한 사람을 많이 만날 수 있었으면 좋겠습니다. 학교생활을 주로 하다 보니 만나는 사람이 한정되어 있습니다. 작년에 봉사활동을 했었는데 다양한 전공의 친구들을 만나서 활동하는 점이 가장 좋았습니다. 올해는 멋사에서 그런 경험을 하고 싶습니다.\n	어느 정도의 실력이 쌓이면 원하는 사람들끼리의 스터디를 만들어서 코딩공모전이나 LINE, Kakao, Naver 등에서 출제했던 입사문제를 한 번 다뤄보는 시간이 있었으면 좋겠습니다. 이런 기업에서는 코딩을 사용한 면접을 보는데 컴공과 친구의 말에 따르면 다양한 창의력과 사고력이 요구된다고 합니다. 다 같이 모여서 토론하고 논의하는 시간이 있으면 실력향상에 도움이 될 거 같습니다. 감사합니다.\n	\N	\N	\N	\N	\N	2020-03-27 14:26:30.658625	2020-03-28 07:16:49.296113	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N
47	1	이동헌	dlehdgjs199@naver.com	01027114057	기계로봇에너지공학과	2016112459	3학년	저는 혼자가 아니라 같이 있어야 빛나는 사람입니다.	  저에게 코딩은 컴퓨터에 오류가 났을 때, 알 수 없는 글자들이 올라오는 상황을 생각나게 해서 배워보고는 싶었지만 막연하게 어려울 것이라고 단정 짓고 배우기를 꺼렸습니다. 그러다 학과 수업에서 매트랩이라는 수치해석 프로그램을 접하게 되고 공부를 하면서 이 프로그래밍이라는 것이 생각보다 할 만하다고 느끼고 기존에 가지고 있었던 선입견을 버리게 되었습니다. 그 후 진로에 대해 고민하던 중 2학년을 마치고 3학년 수업을 들으면서 2학년에 이어서 로봇에 관한 과목을 많이 접하게 되었고 자연스럽게 로봇에 관심을 갖게 되었습니다. 로봇이라는 것이 프로그래밍되어 움직이는 것이기 때문에 코딩을 배우는 것은 선택이 아니라 저에게 필수가 되었고 학과 소모임에서 자율주행 자동차를 만드는 팀원을 모집한다고 해서 지원하려 했으나 고학년 중에서는 프로그래밍을 잘 할 수 있는 사람을 뽑았기 때문에 들어갈 수 없었습니다. 이미 3학년이 되었지만, 코딩할 줄 모르는 고학년을 써주는 곳은 잘 없었기에 하루빨리 코딩을 배워야겠다 생각하는 와중에 지인의 소개로 멋사를 알게 되었고, 지원하게 되었습니다.	  만들고 싶은 웹 서비스에 대해서는 생각해 본 적이 없지만 멋사에서 배운 코딩 스킬이나 지식들은 분명 저에게 큰 양분이 될 것이라고 생각합니다.\n	  대학교 3학년이 되기까지 이뤄놓은 것이 육군 병장 만기전역밖에 없는 것 같습니다. 2020년 올해 첫 목표인 멋사 합격을 시작으로 코딩에 익숙해지고 공모전 수상까지 한다면 올해는 더 바랄 것이 없을 것 같습니다. 우선 코딩을 배우고 잘 다룰 수 있게 되면 내가 할 수 있고, 또 참여할 수 있는 일이 많아질 테니 가능한 많은 활동에 참여하여 정말 뜻깊은 한 해를 보내고 싶습니다. 매 순간 누구보다 강한 열정과 책임감을 가지고 멋사라는 거목의 뿌리 같은 사람이 되겠습니다!	  저같은 학생들을 위한 로봇 프로그래밍 교육도 있으면 좋겠습니다.	\N	\N	\N	\N	\N	2020-03-28 07:17:25.758597	2020-03-28 07:17:25.758597	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N
52	1	주현이	hyeoneedyou@naver.com	01025160452	화학과	2016110452	3	동대 멋사에서 코딩이라는 이빨과 창업이라는 발톱을 길러 아이디어를 사냥하고 싶은 아기사자입니다.	(비전공자를 대상으로 나눔을 실천하는 멋사의 슬로건)\n 비전공자들도 쉽게 코딩을 배워 아이디어를 실현할 수 있다는 슬로건은 저의 심장을 두근거리게 만들었습니다. 코딩을 많이 들어보기는 했으나 진입장벽이 높았던 비전공자인 저에게 다신 없을 기회라 느껴졌습니다. 이러한 서비스와 교육을 무료로 제공하는 것은 코딩의 대중화하고 소프트웨어 사회를 풍성하게 만듭니다. 저 또한 멋사에서 많은 것을 배우며 아이디어를 직접 실현함은 물론, 이를 사회에 환원함으로써 아름다운 나눔에 동참하고 싶습니다.\n\n(큰 규모의 체계적인 시스템과 코딩, 창업을 모두 배울 수 있는 곳)\n 천재 해커로 유명하고 코로나 관련 웹서비스로 긍정적인 영향을 펼치는 분들이 이끄는 동아리인 만큼 신뢰도는 물론, codecademy 및 멘토링 등의 체계적인 시스템은 교육을 잘 따라갈 수 있다는 확신을 심어주었습니다. 큰 규모의 동아리인 만큼 연합 해커톤 등을 통해 다양한 사람들과 교류하며 배운 것을 활용해볼 수 있는 기회와 기업과 교류의 기회까지 합쳐져 굉장히 유익한 활동이 되리라고 기대합니다.\n 코딩 교육과 더불어 창업 관련 학습 지원까지 받을 수 있다는 것은 흔치 않은 기회입니다. 스스로가 생각한 아이디어를 실현하는 것에서 그치지 않고, IT 서비스 창업까지 연결할 수 있다는 것은 한층 더 성장할 수 있는 계기가 될 것입니다. 	(나만의 게임 만들기)\n 이두희 대표님께서 특별한 자신만의 게임을 만들어 선물한 것을 보았습니다. 저도 저만의 게임을 만들어 특별함과 스트레스 해소를 느껴보고 싶습니다. 또한 주변 사람들에게 잊지 못할 특별한 경험을 선물해 주는 것도 뜻깊을 것입니다. 그리고 동대 멋사에서 개발한 더 지니어스 웹 게임도 있다고 보았습니다. 직접 게임을 개발해 함께 즐긴다면 정말 특별한 경험이 될 것입니다. \n\n(학교 축제 알리미 등 학우들이 편리하게 사용할 수 있는 학교 관련 서비스)\n 동대 멋사에서 학교 축제 관련 웹서비스를 개발한 것을 보았습니다. 저도 다가오는 축제에 관련된 정보를 학우들이 쉽게 확인할 수 있는 웹서비스나, 학교 관련 정보 등을 편리하게 이용할 수 있도록 도움이 되는 서비스를 개발해보고 싶습니다. \n\n(코로나 맵, 마스크 알리미 처럼 사회에 이로운 영향을 끼칠 수 있는 서비스)\n 코로나 맵과 마스크 알리미는 직접 사용해보았기에 그 편리함과 유용함을 더 깊이 느낄 수 있었습니다. 저도 사회에 이로운 영향을 줄 수 있는 서비스를 개발할 수 있도록 동대 멋사에서 여러 사람들과 함께 끊임없이 생각하고 시도해보고 싶습니다..\n\n(많은 데이터를 빠르게 처리할 수 있는 서비스)\n 최근 유튜브에서 댓글로 달린 의견들을 코딩을 통해 손쉽게 집계하는 것을 보았습니다. 정보의 바다라고 할 만큼 정보가 쏟아져 나오는 시대에서 데이터를 선별하고 처리하는 일의 중요성은 더 큽니다. 이처럼 데이터를 처리할 수 있는 서비스를 개발할 수 있다면 굉장히 유용하게 사용될 것으로 기대하므로 개발해보고 싶습니다. \n\n(시대의 변화 흐름에 맞는 서비스)\n 카카오톡이 이용료를 무료로 함으로써 수요를 이끌어 내고 인터넷의 개발에 따른 시대의 변화를 잘 예측해 필수 어플로 자리 잡은 것이 인상적입니다. 현재 4차 산업혁명이 급속히 진행되고 있으며, 우리는 그 과도기에 놓여있습니다. 저는 이 시대의 변화 속에서 그 흐름을 잘 파악해 많은 사람들이 필수처럼 사용하는 서비스를 개발해보고 싶습니다. 인공지능의 개발이나 그에 따른 조절 기능을 다룬 서비스 등이 해당될 것 입니다.	(아기사자에서 멋쟁이사자로 거듭나기)\n 동대 멋사에 합격해 정규세션 및 비정규 세션까지 그 누구보다 열심히 참여하고 공부해 내 아이디어를 직접 실현할 수 있는 멋쟁이 사자로 거듭날 것입니다. 아이디어톤, 해커톤 등에서 우수한 성적을 거두어보고 싶습니다. 단순히 할 수 있는 것을 넘어서 자유자재로 다룰 수 있을 정도가 되어 HI-SW봉사단이나 동대 멋사의 운영진으로 제 지식을 나눌 수 있는 사람이 되고 싶습니다. \n\n(나만의 아이디어를 생각하고 실현해서 VC 피칭까지 도전하기)\n 웹서비스 개발은 물론 그 서비스를 런칭할 수 있는 창업가가 되기 위한 기초를 다지고 싶습니다. 기업가정신 및 UI/UX, 기획/디자인 등 창업의 기본 소양을 배우고 이를 활용해 VC 피칭까지 도전해 예비 창업가로서 많은 도움이 될 소중한 경험을 하고 싶습니다.\n\n(멋사에서 좋은 인연들을 만나 마음이 풍족한 한 해 보내기)\n 공통 관심사를 가진 사람들을 만난다는 것은 굉장히 설레는 일입니다. 동대 멋사에서 좋은 인연들을 만나 웹서비스 개발에 대한 생각도 많이 나누고, 밤샘 작업도 해보고, 같이 친목도 다지며 마음까지 풍족한 한 해를 보내고 싶습니다.		\N	\N	\N	\N	\N	2020-03-28 08:53:40.879745	2020-03-28 08:53:40.879745	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N
53	1	윤선아	gw07167@naver.com	01076442021	컴퓨터공학전공	2019112112	2학년	저는 동국대학교 컴퓨터공학을 전공하고있는 윤선아입니다. 제가 생각하기에 저의 장점은 꼼꼼함과 친절함이라고 생각합니다. 이러한 저의 장점이 멋쟁이사자처럼이라는 코딩동아리에 적합하다고 생각했습니다. 꼼꼼함이라는 장점이 오류를 잘 찾을 수 있고 친절함이 동아리 회원들과 잘 지낼수 있기 때문입니다. 멋쟁이사자처럼 동아리에서 1년동안 코딩에 관한 많은 지식을 쌓아 실제로 취업을 할 때 큰 밑바탕이 될 수 있겠다고 생각하여 지원하게 되었습니다.	일단, 컴퓨터공학전공에서는 파이썬을 배우지 않습니다. 멋쟁이사자처럼에서 지금까지 한 활동들을 살펴보니 파이썬을 배우는 활동이 있었습니다. 지금 수강하고있는 자료구조와 실습이라는 강의에서 오티수업때 교수님이 파이썬의 코딩언어가치가 높다고 말씀하셨습니다. 그래서 저는 동아리에서 파이썬을 배우고 싶었습니다.\n또한, 멋쟁이사자처럼이라는 동아리는 전국연합동아리이기 때문에 훨씬 더 많은것을 배울 수 있다고 생각했습니다. 1박2일동안 코딩을 하는 중앙 해커톤이 제일 눈에 띄었습니다. 제가 생각하기에 코딩은 혼자하는것이 아니라고 생각합니다. 내가 생각하지 못하는 오류를 남들은 더 빨리 알 수 있기 때문에 같이하는 공부라고 생각합니다. 이런 코딩의 특징은 해커톤이라는 활동에서 빛을 바란다고 생각하기 때문에 해커톤을 꼭 해보고 싶었습니다. 취업에 관한 글들을 보면 해커톤을 경험해보라는 글들이 많았습니다. 하지만 저에게는 그런 기회가 흔치 않았습니다. 아직 전공수업을 많이 듣지 않아서 전공지식이 부족하기 때문에 해커톤에 지원할 자신이 없었습니다. 하지만 멋쟁이사자처럼에서 해커톤을 경험해본다면 다른 해커톤을 할 때 큰 밑거름이 될 수 있다고 생각합니다. 또한, 타 학교와의 교류, 기업과의 연계를 통해 취업에 아주 큰 도움이 될 수 있다고 생각했습니다. 저는 아직 제가 어떤 직업을 가져야겠다는 확신이 없습니다. 하지만 멋쟁이사자처럼에서 하는 다양한 활동들을 한다면 제가 진짜 하고싶은 진로를 정할 수 있겠다고 생각했습니다. 특히 코로나사태에 관련되서 코로나맵, 마스크알리미를 제작한 동아리가 멋쟁이사자처럼이라는 기사를 보고 사회에 좋은 영향을 끼치는 웹을 만들고 싶다는 생각을 하였습니다. 그래서 멋쟁이사자처럼에 지원하였습니다.	확고한 주제는 없지만 사회에 좋은 영향을 끼칠 수 있는 웹 서비스를 만들고 싶습니다. 특히 코로나 관련해서 만들어진 웹 서비스가 아주 좋은 예시라고 생각합니다.	2020년동안 내 인생을 책임질 진로에 관한 길을 개척하고 싶습니다. 대학에 오기까지는 그저 대학을 오기위한 진로의 선택이었지만 막상 제가 원하는 길은 아니었습니다. 2020년에는 전공수업도 많이 듣고 멋쟁이사자처럼에서 웹서비스나 해커톤을 하면서 제 진로를 확고하게 정할 수 있는 해로 보내고 싶습니다.		\N	\N	\N	\N	\N	2020-03-28 09:04:03.700464	2020-03-28 09:04:03.700464	\N	\N	\N	0	2	\N	\N	\N	\N	\N	\N	\N	\N
59	1	유혜리	dbgpfl1206@naver.com	01092641731	전자전기공학부	2019111938	2학년	아기 사자가 멋쟁이 사자가 되어 멋진 아이디어로 세상을 바꿀 그 날까지 최선을 다할 자신이 있습니다. 	처음 입학하고 개강했을 때에는 어떤 동아리에 들어가야 할지 잘 모르고 관심이 있는 분야도 없어서 친구의 권유로 통계동아리에 가입했었습니다. 그러던 중 1학기 때 프로그래밍기초와실습이라는 수업에서 C언어를 배웠습니다. 수업을 들으면 들을수록 C언어에 관심을 가지게 되었고 전공자는 아니지만 C언어 이외의 다른 컴퓨터 언어들도 배워보고 싶고 코딩을 배우고 실습하는 동아리에 들어가고 싶다는 생각이 들었습니다. 저희 학교에 코딩동아리가 어떤 곳이 있나 찾아보던 중 ‘멋쟁이 사자처럼’을 발견했고 페이스북이나 인스타그램을 보면 매주 정기적인 강의를 듣고 밤샘 코딩파티와 같은 다양한 활동을 진행하고 있는 것을 보았습니다. 제가 작년에 가입했던 동아리에서는 동아리 활동보다는 친목 도모에 더 중점을 둔 것 같아서 조금 아쉬웠었는데 ‘멋쟁이 사자처럼‘에서는 동아리 부원들과 친목 도모뿐만 아니라 체계적으로 강의도 듣고 과제도 수행해야 하고 공식행사에도 반드시 참여해야 한다는 것이 마음에 들어 동아리에 가입하고 싶었습니다. 작년에 2학기 시작할 때 지원하려고 보니 ’멋쟁이 사자처럼‘은 1년에 한 번 모집한다는 사실을 알고 지원을 못 해서 너무 아쉬웠습니다. 그래서 강의 시간표를 동아리 활동시간에 맞춰 구성했고 이번 연도 모집공고가 뜨기만을 기다렸습니다.	모든 동국대학교 건물 각각의 구체적인 구조를 확인할 수 있는 웹서비스를 개발하고 싶습니다. 학교 건물의 구조가 복잡해서 강의실을 이동할 때나 수강신청을 할 때 많은 불편함이 생깁니다. 그럴 때 각각의 건물을 층별로 확인할 수 있으면 좋을 텐데 동국대학교 어플이나 홈페이지에는 건물의 위치만 나와 있을 뿐 건물 안 내부 지도는 확인할 수가 없습니다. 확인하려면 건물 안에 붙어있는 내부 지도를 일일이 직접 확인하는 수밖에 없는데 그 지도의 위치 또한 파악하기가 힘듭니다. 그래서 건물의 층별 지도를 한 번에 확인할 수 있는 서비스를 만들어서 학생들이 건물 안 강의실 위치를 쉽게 확인할 수 있게 도와주고 싶습니다. 거기에다 화장실 위치와 정수기 위치까지 파악할 수 있도록 하여 편의를 제공하고 싶습니다.	작년에 같은 학과 사람들이랑만 교류를 했었다면 올해는 ’멋쟁이 사자처럼‘에서 같은 학과 사람들이 아닌 다른 학과 사람들과 코딩을 배우며 함께 중앙 해커톤 행사와 봉사를 하면서 다양한 경험과 좋은 추억을 쌓고 싶습니다.	고등학교때 학교에서 정보시간에 아두이노 키트를 이용해서 기초 실습만 진행했었는데 신기하고 재미있었던 게 기억이 남아서 기회가 된다면 '멋쟁이 사자처럼' 동아리 부원들과 같이 해보고 싶습니다.	\N	\N	\N	\N	\N	2020-03-28 11:39:31.451262	2020-03-28 11:39:31.451262	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N
132	2	홍은주	\N	\N	\N	2017111718	\N		21:00 - 21:20,21:20 - 21:40,21:40 - 22:00	\N	\N	\N	\N	\N	\N	\N	\N	2020-03-30 04:07:27.367426	2020-03-30 04:07:27.367426	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N
85	2	김병철	\N	\N	\N	2016111283	\N	18:20 - 18:40,18:40 - 19:00,19:00 - 19:20,19:20 - 19:40,19:40 - 20:00,20:00 - 20:20,20:20 - 20:40,20:40 - 21:00,21:00 - 21:20,21:20 - 21:40,21:40 - 22:00	18:40 - 19:00,19:00 - 19:20,19:20 - 19:40,19:40 - 20:00,20:00 - 20:20,20:20 - 20:40,20:40 - 21:00,21:00 - 21:20,21:20 - 21:40,21:40 - 22:00	\N	\N	\N	\N	\N	\N	\N	\N	2020-03-29 06:09:07.779584	2020-03-29 06:09:07.779584	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N
48	1	노승연	synoh7777@naver.com	01097759223	산업시스템공학	2018113620	3학년	지속적으로 도전하는 사람	어떠한 분야로 창업을 해야겠다는 구체적인 계획은 없지만 사람들의 삶의 질을 상승시켜 줄 수 있는 서비스 또는 제품을 생산하는 회사를 창업하는것이 목표입니다. 제가 올해 동국대학교에 편입학 하였는데, 창업에 대한 목표가 생기고 코딩을 통해 할 수 있는 것이 많다는 생각에 전적대학교 재학중 몇몇 코딩관련 수업을 수강하였습니다. 하지만 편입준비와 학교, 코딩 공부 세가지를 모두 병행하는데 조금 무리가 있어 코딩 공부를 제대로 해보지 못하고 내려놓게 되었습니다. 제대로 배워보지 못한것에 대한 아쉬움이 있는데 멋쟁이 사자처럼을 통해 코딩 교육을 받고 창업 수업을 들으면 제가 꿈꾸는 미래를 위한 좋은 배움의 과정이 될 것이라고 생각했습니다. 전적대학교에서 코딩 수업을 들으면서, 기말고사 과제로 직접 웹으로 총알쏘기 게임을 제작한 경험이 있습니다. 직접 완성품을 만드는 과정에서 매주 받은 과제와 손코딩 시험을 통해 배운것 보다 많은 것을 배울 수 있었다고 생각합니다. 멋쟁이 사자처럼 또한 매주 학습한 내용을 해커톤에 참여하면서 그동안의 배움의 과정을 정리할 수 있는 시간과 아이디어를 실현화 시킬 수 있는 기회가 주어진 점이 매력적이었습니다. 또한 하고자 하는 의지가 있어도 혼자 지속적으로 무언가를 학습하기 어려운데 매주 함께 배울 수 있는 사람이 있다는 것도 멋쟁이 사자처럼에서 코딩과 창업 교육을 받고 싶은 이유 입니다. 	멋쟁이 사자처럼을 통해 만들고 싶은 웹 서비스는 농작물 재배 환경 모니터링 서비스 입니다. 농산물을 재배하는 과정에서 다양한 외부 요건이 농작물의 품질에 많은 영향을 끼칩니다.  습도, 조도 등등 농작물에 영향을 끼치는 요인은 많은데, 이 많은 요인을 한번에 확인하는것은 현실적으로 어려운 부분이 많다고 생각합니다.  하나의 화면을 통해 실시간으로 농작물을 재배하는 공간의 농작물 생산에 미치는 요소들의 데이터 값을 받아와서 웹을 통해서 실시간으로 농작물 재배 요건을 확인할 수 있다면 농부들이 지금보다 적은 시간을 투자해서 더 좋은 품질의 농산물 생산이 가능할 것이라고 생각합니다.  또한 이러한 모니터링 서비스가 존재한다면, 국내의 자연적 날씨 환경에서 재배 불가능했던 농작물을, 인위적 환경을 조성한 후 관리를 통해 지금보다 손쉽게 재배가 가능해 질 것이라고 생각합니다. 	2020년 이루고 싶은 목표가 있다면 학교에서 할 수 있는 많은 경험을 하며 학교생활을 충실히 하는것입니다.  두번의 입시 실패로 전적대학교를 입학하는 순간부터 편입을 생각했고 준비했습니다.  편입을 하는것이 가장 우선순위에 있는 목표였기 때문에 대학생으로서 학점을 관리하는 것 이외에는 학교생활을 많이 해보지 못한것 같아. 2020년의 목표가 있다면 학업에 충실한것 이외에 평소에 배우고 싶었던것들을 배우고 학교를 통해 할 수 있는 활동을 충실하게 하면서 대학생으로서 경험할 수 있는 많은 경험을 해보는 것이 이루고 싶은 목표입니다. 	커리큘럼에서 배우는 것 이외에 데이터 분석에 관심이 있어서 R을 사용하는 방법을 배우고 싶습니다. 	\N	\N	\N	\N	\N	2020-03-28 07:36:23.181416	2020-03-28 07:36:23.181416	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N
46	1	고수민	kosm1113@naver.com	01036931917	멀티미디어공학과	2018111706	3학년	안녕하세요 저는 멋쟁이 사자처럼 8기 활동에 참여하고 싶은 멀티미디어공학과 18학번 고수민입니다.	제 실력이 가장 성장했다고 생각되는 때는 알고리즘 과목을 수강했던 때입니다. 그 수업의 과제는 배운 내용 여러 가지를 활용하여 프로그래밍을 해야 하는 제가 느끼기에 꽤 어려운 수준이었습니다. 과제를 하기 위해서 수많은 고민을 하고 그때만큼 몰입하여 코딩을 하던 때가 없었던 것 같습니다. 정말 힘들고 정신없이 한 학기를 보냈습니다. 하지만 끝나고 되돌아보니 단지 수업을 듣고 간단한 예제 수준의 과제를 제출했던 때와는 제 스스로가 성장했음을 느끼는 정도가 확연히 달랐습니다. 그 이후로 저는 개념적인 것을 공부한 뒤 개념들을 응용하여 내가 스스로 이부분은 어떻게 표현해야할지, 여기서는 어떤 개념을 적용해야할지 등 고민을 하며 프로그래밍을 해내는 경험이 프로그래밍 실력의 성장에 정말 중요하다는 것을 깊게 깨달았습니다. 그러한 경험들을 앞으로 많이 해야겠다고 다짐하였고, 직접 개발을 할 수 있는 과정을 찾던 중 멋사에 관심을 가지게 되었습니다. 하지만 아직 웹 프로그래밍은 배워보지 못하여 바로 웹 서비스 제작을 하기에는 기본이 부족했기 때문에 일단 기본부터 배우고 싶었었습니다. 바로 제가 바라던대로 멋사에서 이론적 교육부터 시작하여 웹서비스 개발까지의 과정으로 진행되고 있었기에 꼭 참여하고 싶어 지원하게 되었습니다. 열심히 배워 원하는 웹 프로그램을 제작 할 수 있는 실력으로 성장 하고 싶습니다.	여행 기록 서비스를 만들어 보고 싶습니다. 블로그와 비슷한 형태이지만 지도를 중심으로 피드를 구성하는 서비스 입니다. 사용자는 지도에서 방문한 위치를 선택하고, 그 위치에서의 추억을 사진, 동영상, 글 형태로 기록할 수 있습니다. 기본 메인 화면에는 지도가  있고, 기록을 남긴 위치가 지도상에 표시되도록 합니다. 기존의 블로그나 인스타그램같은 경우 주로 시간 순서대로 피드가 정리되지만, 시간순이 아닌 위치에 따라 피드를 꾸며 볼 수 있도록 하는 것도 좋은 것 같아서 생각해보았습니다.	앞에서 말씀드렸다시피 저는 성장에 경험이 중요하다는것을 깨달았습니다.  2020년은 다양한 경험들을 통해 프로그래밍 실력 뿐만 아니라 인격적으로도 성장할 수 있는 시간으로 보내고 싶습니다. 한 해동안 멋사의 활동에 집중하여 열정적으로 활동하고, 기회가 된다면 내년에는 운영진으로서 배운 내용을 다시 가르쳐 주는 역할에도 참여해보고 싶습니다. 멋사에서의 경험을 통해 성장하는 뿌듯한 한해를 이루고 싶습니다.	가능하다면 앱개발도 배워보고싶습니다.	\N	\N	\N	\N	\N	2020-03-28 06:59:43.552682	2020-03-28 07:48:48.79479	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N
49	1	김동연	dongyune0409@naver.com	01093603200	바이오환경과학과	2020111625	1학녓	멋사에서의 코딩 교육을 통해 웹 서비스를 만들어보고 싶은 김동연입니다!	고등학생 때 코딩을 배우며 재미있어 이에 관심을 가지게 되었습니다. 수능이 끝나고 본격적으로 코딩을 공부해보겠다고 c언어와 파이썬 책을 샀고, 공부를 시작했습니다. 하지만 혼자 책을 보며 하는 공부는 실습을 하기 어렵다는 점에서 코딩에 대한 저의 흥미를 좀먹었습니다. 동아리를 통해 학습을 한다면 제대로 코딩 공부를 할 수 있을 것이라고 생각했고, 체계적인 커리큘럼의 스터디로 자칫 유명무실할 수 있는 동아리가 아닌 부원들이 매주 교육을 받을 수 있는 멋사에서는 제대로 공부할 수 있을 것이라 생각했습니다. 또한 이와 같은 공부는 최종적으로 저만의 웹서비스를 개발하는데 큰 도움이 될 것이라고 생각합니다.\n미래에 창업을 할 생각을 하고 있기 때문에 창업 관련 공부나 정보가 필요하다고 생각합니다. 창업을 혼자서 공부하기는 막막하고 무리한 양이기에 창업교육을 받는 것이 효율적이라고 생각합니다. 멋사에서는 UI/UX를 비롯한 창업 수업을 통해 저의 IT서비스를 개발하는 등의 활동은 미래에 창업을 하게되면 값진 경험으로 작용할 것이라고 생각해 멋사에서 코딩 교육과 창업 수업을 듣고 싶습니다!	 -실험결과를 공유할 수 있는 웹 서비스\n: 코로나 사태로 인해 실험과목도 vod시청으로 전환됨에 따라 직접 실험을 하지 않고 레포트를 써야하는 상황이 굉장히 당황스러웠습니다. 실험을 하며 발생한 문제점을 고찰하고 이에 대한 해결방법을 제시하는 것이 실험을 통한 발전을 돕는다고 생각했기 때문입니다. 실험결과를 공유하는 플랫폼이 생긴다면 현재와 같은 불가피한 상황에서 과거에 업로드해놓은 실험영상을 보고 발생한 문제점을 찾거나 예측해 이와 관련된 고찰을 할 수 있을 것이라고 생각합니다. 또한 각 분야에서의 실험 및 연구 결과를 볼 수 있게 하면 여러 과목간의 융합이나 지식공유에 도움이 될 것입니다. \nA관련 연구를 할 때는 보통 A관련 전문가들로 연구진이 이루어집니다. 하지만 A관련 연구라해도 B관련 실험결과가 연구진행에 필요한 경우가 있습니다. 이 경우 실험결과를 공유하는 플랫폼에서 B관련 실험결과 검색한 후 이를 바탕으로 연구를 진행할 수 있습니다. 이처럼 타과목전문가가 없더라도 그 과목의 관련 지식이나 실험결과를 얻는데 도움을 줄 수 있습니다. \n\n-화학물질 관련 웹서비스\n:  종합과학사의 경우 파는 시약의 종류가 한정적이기 때문에 원하는 시약을 구하기 위해서는 아는 화학사에 들어가 그 화학사에서 해당 시약을 제조하는지 확인하고 제조하지 않으면 다른 화학사를 찾아봐야합니다. 또한 시약을 제조하는 화학사를 찾았다해도 구매가능한 최소용량, 남은 재고량을 알아보기 위해 전화나 문의를 해야합니다. 이러한 과정은 시간이 꽤 소모되기 때문에 비효울적이라고 생각합니다. 이에 구하고자 하는 화학물질을 검색하면 이 물질을 제조하는 화학사, 화학사별 판매하는 최소용량, 화학사에 현재 남은 재고량 등을 한눈에 확인할 수 있는 웹서비스를 만들고 싶습니다. \n\n-화학공부할 때 노트필기에 최적화되어있는 노트필기 어플\n: 화학공부할 때는 그림을 그려보며 문제를 풀거나 여러 화학식을 작성할 때가 많습니다. 화학공부에 최적화된 노트필기 방법을 체계화하여 이를 적용한 노트필기 어플을 만들어보고 싶습니다.	목표했던 것을 모두 성취하는 한 해를 보내고 싶습니다! \n멋사에사 코딩배워서 웹 서비스 개발하기. 스스로 번 돈으로 배낭여행가기		\N	\N	\N	\N	\N	2020-03-28 08:09:57.541232	2020-03-28 08:09:57.541232	\N	\N	\N	0	1	\N	\N	\N	\N	\N	\N	\N	\N
86	2	김형태	\N	\N	\N	2016112295	\N	18:20 - 18:40,18:40 - 19:00,19:00 - 19:20,19:20 - 19:40,19:40 - 20:00	18:20 - 18:40,18:40 - 19:00,19:00 - 19:20,19:20 - 19:40,19:40 - 20:00,20:00 - 20:20	\N	\N	\N	\N	\N	\N	\N	\N	2020-03-29 06:09:38.333715	2020-03-29 06:09:38.333715	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N
87	2	김현도	\N	\N	\N	2015112082	\N	19:00 - 19:20,19:20 - 19:40,19:40 - 20:00,20:00 - 20:20,20:20 - 20:40,20:40 - 21:00	19:00 - 19:20,19:20 - 19:40,19:40 - 20:00,20:00 - 20:20,20:20 - 20:40,20:40 - 21:00	\N	\N	\N	\N	\N	\N	\N	\N	2020-03-29 06:10:09.811906	2020-03-29 06:10:09.811906	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N
119	2	고명기	\N	\N	\N	2016112424	\N	18:20 - 18:40,18:40 - 19:00,19:00 - 19:20,19:20 - 19:40,19:40 - 20:00,20:00 - 20:20,20:20 - 20:40,20:40 - 21:00,21:00 - 21:20,21:20 - 21:40,21:40 - 22:00	18:20 - 18:40,18:40 - 19:00,19:00 - 19:20,19:20 - 19:40,19:40 - 20:00,20:00 - 20:20,20:20 - 20:40,20:40 - 21:00,21:00 - 21:20,21:20 - 21:40,21:40 - 22:00	\N	\N	\N	\N	\N	\N	\N	\N	2020-03-29 12:11:32.45612	2020-03-29 12:11:32.45612	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N
126	2	윤상우	\N	\N	\N	2017110518	\N	18:20 - 18:40,18:40 - 19:00,19:00 - 19:20,19:20 - 19:40,19:40 - 20:00,20:00 - 20:20,20:20 - 20:40,20:40 - 21:00,21:00 - 21:20,21:20 - 21:40,21:40 - 22:00		\N	\N	\N	\N	\N	\N	\N	\N	2020-03-29 18:21:22.332277	2020-03-29 18:21:22.332277	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N
54	1	강아림	znehdkfla@naver.com	01042155580	경영정보학과	2017111432	3	안녕하세요! 카페에서 빠질 수 없는 존재 커피원두, 어느 팀에서도 빠질 수 없는 든든한 서포터 강아림입니다.	사실 저의 꿈은 데이터마케터였습니다. 창업으로 성공한 사람들을 보면서 대단하다라는 생각을 했지만 창업에 대한 생각으로 이어지지는 않았습니다. 하지만 지금은 창업을 하고 싶습니다. 그리고 회사로 키워나가보고 싶습니다. 지금 생각해보면, 큰 생각이 없다기 보다는 사실 창업을 할 용기와 실행력이 없었던 것 같습니다. \n  제 생각이 바뀌게 된 건 최근 운이 좋게도 스타트업의 개발팀에서 인턴을 하게 된 경험 때문입니다. 크지 않은 스타트업이었지만, 회사의 성장을 위해 모두 힘을 모아 일 하고 있었습니다. 수평적이고 자율적이며, 모두가 자신의 일이 좋아서, 회사와 함께 성장하고 싶어서 일한다는 느낌이 강하게 들었습니다. 3명에서 시작한 회사가 7층 건물에 60명의 직원과 함께 하기까지는 모두가 한 방향을 바라보며 노력했기 때문이라는 생각이 들었습니다.\n뭔가 그 때, 감명을 받았던 것 같습니다. 나도 내가 하고 싶은, 고객들에게 주고 싶은 서비스를 만들고, 마음이 맞는 사람들과 함께 회사를 성장시켜 나가고 싶다. 그러면 정말 즐겁게 일할 수 있지않을까?라는 생각을 하게 되었습니다. 그러기 위해서는 먼저 나의 역량을 길러야한다고 생각했습니다. 창업은 한 사람이 여러가지 역량을 필요로 합니다. 우선적으로, 최소한 내가 창업을 하고 싶은 서비스를 어느 정도 구현할 수 있는 역량은 있어야한다고 생각이 들었고 ‘멋쟁이 사자처럼’에 지원하게 되었습니다.	  아직 구체적이지는 않지만 서로 설문조사를 해주는 웹서비스를 만들어보고 싶습니다. \n \n  팀플이나, 간단한 조사가 필요할 때, 팀원들이 주변에 설문조사를 뿌린다거나, 간단한 개인프로젝트 등에는 많은 표본을 얻기 힘듭니다. 그래서 서로 품앗이처럼 설문조사를 해주면 어떨까?라는 생각을 하게 되었고 이를 기반으로 웹서비스를 한 번 만들어 보고 싶습니다.\n  설문조사를 많이 해준 사람일 수록 상위에 노출되고, 설문조사를 할 시간이 없다면, 추가적인 금액을 내고 상위에 노출될 수 있습니다. 그리고 관심있는 주제에 대한 설문조사를 개인에게 노출되도록 하는 기능도 추가해보고 싶습니다. 또한 공유기능을 통해 지인에게 설문조사를 유도할 수 있는 기능도 추가해 보고싶습니다.	지금까지 되돌아 보면 정신없고 힘들다고 생각했던 순간이 가장 저를 성장할 수 있게 하였고, 더 크게 성장할 수 있도록 만들어 주었다고 생각합니다. 밤을 세워 제출 했던 대외활동 동영상도, 친구들과 공강마다 모여 만들었던 발표자료도, 처음이라 모든게 서툴었던 인턴경험도, 모두 저를 더 단단하게 만들어주었습니다. 그래서 저는 이번 2020년도, 한 해가 끝나고 돌아봤을 때 정말 힘들었지만 성장했다!라는 생각이 들 수 있도록 보내고 싶습니다. 그 과정은 힘들지만 뒤돌아보면 성취감은 엄청나기 때문입니다.\n  2020년이 끝나기 전, 이루고 싶은 것은 창업을 하는 것입니다. 사실 이전의 저는 창업보다는 일반 취업에 더 관심이 많았습니다. 하지만 최근 스타트업에서 인턴을 하면서 창업과 스타트업에 대한 생각이 많이 바뀌었고 나도 마음이 맞는 사람들끼리 모여 스타트업을 발전시켜 나가보고 싶다는 생각을 하게 되었습니다. 그래서 2020년이 끝나기 전, 멋쟁이 사자처럼을 통해 창업을 할 수 있는 나의 역량을 키워서 창업 아이템을 구체화하고 정부의 지원을 받는 것을 목표로 하고 있습니다.	지금 커리큘럼도 저에게는 배우기에 충분하다고 생각합니다. 	\N	\N	\N	\N	\N	2020-03-28 09:28:33.237236	2020-03-28 09:28:33.237236	\N	\N	\N	0	2	\N	\N	\N	\N	\N	\N	\N	\N
55	1	임도연	dlaehdus99@naver.com	01097175111	멀티미디어공학과	2019112524	2	내 손으로 직접 열매를 맺고자 하는 새싹 개발자입니다.	  WIX를 이용해 웹사이트의 UI를 꾸며 본 적이 있습니다. 그러나 WIX로는 UI의 배치, 카테고리 수정 등 원하는 웹사이트의 형태를 만들기에 역부족이었습니다. 직접 무엇인가 만들고자 하는 의지로 멀티미디어공학과에 입학하였고, 지난 한 해 동안 파이썬과 C언어에 대해 배웠습니다. 기초적인 문법과 예제를 해결하는 방안에 대해 고민하는 과정은 겪었으나 배운 이 언어들로 최종적인 결과물을 내기에는 너무 부족한 배움이었습니다. 저는 멋쟁이사자처럼 동아리에서 이론적인 교육뿐만 아니라 직접 나만의 서비스를 제작하고 선보이는, 그런 실전적인 교육을 한다는 점에서 꼭 참여하고 싶습니다.\n\n 창업에도 관심이 많아 1학년을 마치고 연계전공으로 창업학에 대해서 찾아보았으나 올해부터 폐지가 되어 신청할 수 없었습니다. 경영, 창업과 관련된 여러 수업을 듣고 싶었지만 당장 전공과 교양에 더 집중하고 있어 원하는 수업도 듣지 못하고 있습니다. 학교 수업으로 들을 수 없었던 창업의 현실과 실제 창업자의 조언 등에 대한 기대감에 동아리에 지원하게 되었습니다.\n\n HACK YOUR LIFE. 내 아이디어를 내 손으로 실현한다는 실천적이고 의지적인 문구는 저에게 굉장히 인상적이게 다가왔습니다. 배우는 것에서 그치지 않고 무엇인가 결과물을 항상 만들어 내려던 저의 평소 가치관에 부합하는 멋쟁이사자처럼에서 꼭 활동하고 싶습니다.\n	게임QA 웹 서비스\n\n 게임 개발에 관심이 많아 지난해 성남 모바일 앱센터에서 게임 QA교육을 받고 몇 가지 게임을 직접 QA해보는 시간을 갖게 되었습니다. 이 교육을 하면서 게임은 연령, 성별, 개인의 취향에 따라 그 평가가 굉장히 다양해진다는 것을 느꼈고 더 많은 사람의 QA가 진행될수록 게임개발자에게 더 큰 도움이 된다는 것을 인식하게 되었습니다. 따라서 소수의 사람이 아닌 대중이 쉽게 접근할 수 있는 게임 QA 웹 서비스를 제작하고 싶습니다.\n \n 대형 게임사는 QA담당자가 사내에 있거나, 하청업체에 맡기기 때문에 대형 게임사가 아닌, 그 비용이 많이 들어가는 중소기업이나 인디게임 개발 팀 혹은 개인의 게임을 업로드 하려고 합니다. 게임의 종류, 주요 유저 성향 등을 고려해 카테고리 별로 분류를 할 것입니다. 웹사이트라는 이점을 살려 최근 많이 플레이 하지 않는 플래시게임들도 업로드하여 다양한 체험을 할 수 있도록 할 것입니다. 게임을 일정시간 이상 플레이 한 유저에게 일정 포인트를 부여하고, 개발사에서 좋은 QA를 제출한 유저에게 추가적으로 포인트를 부여하여 포인트 상점을 운영한다면 유저 입장에서도 사용하고 싶고 개발자 입장에서도 게임에 대한 많은 조언을 얻을 수 있는 웹 서비스가 될 것입니다.\n	 2019년은 배우기 위한 한 해였다면 올해는 배운 것을 바탕으로 이루어 나가는 한 해가 되었으면 좋겠습니다. 먼저, 지난 해 전공수업으로 배운 파이썬과 C언어를 다시 한 번 되새기는 공부를 할 것입니다. 백준을 활용해 단계별로 코드를 풀이하여 기초적인 내용을 다시 배우려고 합니다.\n\n 유나이트 서울이나 인디게임 페스타, 지스타 등 여러 게임 박람회 중 꼭 한군데에는 참관하고자 합니다. 새로운 게임을 접해보고, 안목을 높이는 것에 큰 도움이 될 것입니다.\n \n 보는 것에 그치지 않고 유니티를 독학하거나 이것이 어렵다면 RPG MAKER를 이용해 간단한 게임을 하나 만들 것입니다. \n	 요즘은 스마트폰 이용률이 늘어서 앱의 사용량도 늘어났다고 생각합니다. 이러한 트렌드에 맞추어 앱 개발에 대한 교육이나, 앱-웹의 연동에 관해서도 배우고 싶습니다.	\N	\N	\N	\N	\N	2020-03-28 09:33:39.336133	2020-03-28 09:33:39.336133	\N	\N	\N	0	1	\N	\N	\N	\N	\N	\N	\N	\N
56	1	강협	kanghyeop@gmail.com	01022493381	전자전기공학부	2016112016	3	고양이와 고슴도치를 좋아하는 글쓰는 공대생 겸 사업가 입니다.	① 함께하는 기회.\n\n코딩과 프로그래밍은 동료학습을 통해서 배워야 한다는 생각이 있습니다. 무언가를 내 손으로 동료들과 함께 구현하는 경험을 가져볼 기회가 없었어서 그러한 기간을 만들어보고 싶습니다. :)\n\n② 프로토타이핑.\n\n기획자입니다. 그러다보니, 시각적으로 풀어내는 능력이 필요한데, 그것을 하기 위해서 프로토타이핑 툴을 사용하고 싶습니다. Framer와 같은 툴을 활용하기 위해서는 JS 또는 React 를 다룰 수 있는 능력이 필요합니다. 머터리얼ui등을 끌어와서 사용하는 등의 위주의 프론트 개발 능력을 갖고 싶습니다.\n\n③ 창업.\n\n창업을 하고자 하는데, 간단한 무언가 필요한 것을 내 손으로 구현할 수 있는 개발 능력이 필요하다는 것을 창업 과정에서 깨달았습니다. 그래서 기술을 쌓는 기간을 보내보고 싶습니다.\n\n④ 멋사에 대한 호감.\n\n이두희 대표님을 비롯한 멋사 중앙 운영진과 한번 만나서 대화를 나누어본 적이 있었는데, 마인드셋을 비롯한 생각이 상당히 멋있었습니다. 그 또한 멋사가 대학생 생태계에 기여하는 선한 영향력을 긍정적으로 생각하고 있습니다. 	① 랜딩 페이지\n\n서비스를 만들기 위해서, 또는 제품을 팔기 위해서, 하나의 간단하지만 깔끔한 랜딩 페이지 하나만 있으면 되는 경우가 많이 존재합니다. 그런 것을 여러개 만들어보고 싶습니다.\n\n② 간단한 커머스 \n\n회원가입 및 게시판 및 PG연동을 활용하여, 그 내에서 회원가입과 구매와 결제가 일어날 수 있는 커머스를 하나 만들어보고 싶습니다. 현재 사업을 하고 있어서, 그것에 활용하기 위함이기도 합니다.\n\n③ 에듀테크 웹서비스 프로토타이핑.\n\n만들고 싶은 에듀테크 웹 어플리케이션이 있는데, 기능적으로 복잡한 부분이 많아서 직접 구현을 모두 할 수는 없겠지마는, 그럼에도 불구하고 프론트엔드 개발을 통한 (프론트와 백은 복합적으로 돌아가기는 하지만 ...) 프로토타이핑 버전까지는 만들어보고 싶습니다.	① 교육사업확장.\n\nwww.dafit.me\nwww.gravityclass.co.kr\n\n두개의 교육 서비스를 운영하고 있습니다.\n그 두개를 제가 세운 나름의 계획대로 발전시키고 싶습니다.\n\n② 공부\n\n1) 거시경제학\n2) 금융\n3) 개발\n\n올해 이 세가지를 일정 수준 이상으로 공부해보고 싶습니다.\n\n③ 운동.\n\n1) 자전거\n2) 등산\n\n요새는 이 두가지를 열심히 하고 있는데, 하루에 자전거 100km를 가볍게 탈 수 있을 정도의 체력을 만들고 싶습니다. 어떤 일을 이루고자 할 때는 체력이 기본이란 것을 많이 느꼈기 때문입니다.	① Flask, Django 등의 프레임워크 세트\n② React, Node 등의 프레임워크 세트\n③ 팀 단위의 프로젝트 해커톤. (특정 기간동안 팀 단위로 서비스를 서빙까지 완료해내는)	\N	\N	\N	\N	\N	2020-03-28 10:24:21.61141	2020-03-28 10:24:21.61141	\N	\N	\N	0	2	\N	\N	\N	\N	\N	\N	\N	\N
57	1	정민재	renya6761@naver.com	01064836761	전자전기공학부	2015112022	4학년	나 자신을 옭아매던 밧줄을 풀고 아직 방황하고 있습니다.	 전자전기공학부에서 여러가지 커리큘럼이 존재하는데 3학년까지 방황하고 있었습니다. 그러다가 코딩결과가 눈에 확연히 보이는 SW개발쪽으로 가자고 마음 먹었습니다. \n 학부에서 기본적인 C언어는 배웠지만, 웹이나 앱 개발쪽에 대해서는 무지합니다. 혼자서 공부하는 것보다 다양한 사람들과 함께하며 개발에 대해 배우는 것이 앞으로의 개발경험에 도움이 될 것 같아서입니다.\n 혼자서 개발을 공부한다면 지쳐서 포기하고 싶을 때가 자주 올 것입니다. 하지만 옆에 같이 공부하는 학우들이 있다면, 나만 놀고 있을 수 없다는 동료의식이나 지고 싶지 않다는 라이벌의식이 발동해 포기하지 않고 열심히 할 것입니다.\n 게다가 대학교에서 진행한 팀 프로젝트 외에는 프로젝트를 진행한 경험이 없기 때문에 혼자서 해나가기 힘들 것 같은데, 멋사에서는 이미 7년의 경험이 있기 때문에 많은 도움을 받을 수 있을 것 같습니다.	특정 웹 서비스를 목표로 하는 것은 없습니다. 다만 앞에서 결과가 확연히 보이기 때문에 SW개발을 선택했다고 언급했듯이 눈에 보이는 성과가 확실한 웹 서비스를 만들고 싶습니다. 현재 아이디어가 없지만, 멋사 학우분들과 함께 이야기를 나누고 개발을 같이 공부하다 보면 서로 아이디어를 자극할 것이라고 생각합니다.	2020년에는 눈에 보이는 성과를 만들고 싶습니다. 그것이 꼭 코딩이라는 분야가 아니더라도 나라는 사람의 성장했으면 좋겠습니다.	JAVA도 배우고 싶긴 합니다. 다만, 여러개를 얕게 아는 것보다는 한 개를 더 깊게 배우는게 좋을 것 같아 커리큘럼에 집중하는게 좋을 것 같습니다.	\N	\N	\N	\N	\N	2020-03-28 10:28:26.823471	2020-03-28 10:28:26.823471	\N	\N	\N	0	1	\N	\N	\N	\N	\N	\N	\N	\N
58	1	솔로몬	iam@solo.bb	01077497375	연애세포생물학	2012113370	5	난 너에게 사랑을 주는 사람	untitled 상태인 너의 마음에 나를 코딩하고 싶어	텐진 배달 서비스	너에 대한 내 마음을 미분 해봤어\n근데 파이가 나왔어\n너와의 관계를 독립에서 종속으로 바꾸고 싶어	일 안 하면서 돈 벌고 예쁜 여자랑 결혼하는 법	\N	\N	\N	\N	\N	2020-03-28 10:29:53.268688	2020-03-28 10:29:53.268688	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N
89	2	라민정	\N	\N	\N	2020111260	\N	20:00 - 20:20,20:20 - 20:40,20:40 - 21:00,21:00 - 21:20,21:20 - 21:40,21:40 - 22:00	20:00 - 20:20,20:20 - 20:40,20:40 - 21:00,21:00 - 21:20,21:20 - 21:40,21:40 - 22:00	\N	\N	\N	\N	\N	\N	\N	\N	2020-03-29 06:13:15.160677	2020-03-29 06:13:15.160677	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N
90	2	이가원	\N	\N	\N	2014111646	\N	18:20 - 18:40,18:40 - 19:00,19:00 - 19:20,19:20 - 19:40,19:40 - 20:00,20:00 - 20:20,20:20 - 20:40,20:40 - 21:00		\N	\N	\N	\N	\N	\N	\N	\N	2020-03-29 06:14:05.853352	2020-03-29 06:14:05.853352	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N
127	2	정광수	\N	\N	\N	2014112487	\N	18:20 - 18:40,18:40 - 19:00,19:00 - 19:20,19:20 - 19:40,19:40 - 20:00,20:00 - 20:20,20:20 - 20:40,20:40 - 21:00,21:00 - 21:20,21:20 - 21:40,21:40 - 22:00		\N	\N	\N	\N	\N	\N	\N	\N	2020-03-30 00:38:08.495192	2020-03-30 00:38:08.495192	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N
60	1	조재환	jhcho0824@naver.com	01066029294	정보통신공학과	2015112230	3 (가진급 4학년)	동기부여가 필요한 심바	’멋쟁이사자처럼‘을 처음 접하게 된 것은 저번 학기 수업을 듣던 중 어떤 학생을 만나고 나서부터였습니다. 수업의 주제는 자신이 만든 포트폴리오를 ppt로 발표하는 시간이었는데 한 학생의 포트폴리오가 유독 눈에 띄었습니다. 그 학생의 발표 중에 멋사에서 활동한 내용을 봤었는데 그중 제가 흥미롭게 봤던 활동은 팀원들과 창업을 목표로 구현하고자 하는 프로그램을 기획하고 사업 기획서까지 만들어 전문가의 조언을 받은 활동이었습니다. 이처럼 저는 멋사에 지원을 하게 된 이유는 단순히 코딩 교육을 받는 것이 아니라 더 나아가 이를 현장에서 어떻게 활용하는지 그리고 창업 수업을 통해 구현한 프로그램이 가치가 있는 상품으로 상품화되는 과정까지를 배우고 싶어 지원하게 되었습니다.	- 챗봇 서비스 (금융, 의료)\n- 환자의 진단/처방 기록을 통한 의료 예측 서비스	위에 저를 ’동기부여가 필요한 심바‘라고 소개했습니다. 저를 이렇게 표현한 이유는 아직 배울 것도 많고 모르는 것이 많은 아기 사자라는 뜻으로 이렇게 저를 묘사하였습니다. 2020년은 제 꿈을 좀 더 세부적으로 설계해보고 어떤 점을 더욱 보완해야 하는지 알아가는 한 해가 될 것으로 생각합니다. 그리고 그 꿈을 이루기 위해 멋사의 일원으로 활동하고 싶습니다.\n	필요한 정보를 검색하는 효율적인 방법 ex) 스스로 코딩을 교육할 때 어떤 사이트에서 검색하면 유용한 정보가 많은지 등	\N	\N	\N	\N	\N	2020-03-28 11:40:37.72429	2020-03-28 11:40:37.72429	\N	\N	\N	2	0	\N	\N	\N	\N	\N	\N	\N	\N
61	1	김병권	kimbk2008@naver.com	01080113675	경영학부	2015111580	4	안녕하세요 경영학부 15학번 김병권입니다	  1년 전부터 저는 코딩을 배우기 시작했습니다.  그 후에는 혼자서 여러가지 활동이나 학습을 혼자 탐색하고 진행하며 시간을 보내왔습니다. 그동안 혼자가 아닌 팀으로 움직이는 경험을 해보고 싶었기도 하고 주위에서도 그러한 경험이 중요하다는 조언을 많이 들었기에 멋쟁이 사자처럼에 지원하는 주요한 계기가 되었습니다. 이 외에는 웹프로그래밍 경험이 없기에 동아리를 통해 체험해 볼 수 있겠다는 생각도 있었습니다.\n 창업 수업의 경우 굳이 제가 창업을 하지 않더라도 소비자들에게나 업계에서 인기있는 서비스에 관심이 많기 때문에 경영학 전공자로서도 코딩을 배우는 사람으로서도 이득이 되는 경험이리라 생각됩니다.	 제가 만든 것을 남이 사용할 때 보람을 느끼는 성격이기에  '마스크알리미'같은 공익을 증진시키는 웹서비스나 '000월드컵'처럼 재미를 주는 서비스 등 어떤 방식으로든 누군가가 사용하면 효용이 창출되는 웹 서비스를 만들어보고 싶습니다.	빨리 졸업한다면 졸업하는 해가 될 것이고 그렇지 않더라도 그 문턱에 걸리는 해가 될 것인데 괜히 긴장하기보다는 남은 캠퍼스 라이프를 최대한 즐기되 성취할 것은 성취하는 한 해가 되었으면 좋겠습니다. 멋쟁이 사자처럼과 함께할 수 있다면 더욱 흥미로운 2020년이 되지 않을까 합니다.	음... 아직 제 식견이 좁아서 떠오르는 것이 없는데 커리큘럼 외의 것을 학습하는 스터디 활동이 있다면 해보고 싶기도 합니다	\N	\N	\N	\N	\N	2020-03-28 11:48:57.621105	2020-03-28 11:48:57.621105	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N
62	1	백진영	bjytkfkdgo@naver.com	01094465416	멀티미디어공학과	2018112226	3학년	앞으로를 걱정하기 보다는 현재를 즐기며 살아가고 있는 개발자 백진영 입니다.	대학교 1학년때 저는 전과 준비를 하고있었습니다. 대학교 와서 가장 배우고 싶었던 것이 프로그래밍 이었기 때문입니다. 전과를 준비할 때의 가장 큰 고민은 과연 무슨과를 가야하나 였던것 같습니다. 많은 고민끝에 저는 '멀티미디어공학과'로 마음을 굳혔습니다. 저는 이 과만의 <희소성>을 좋게 평가했습니다. '게임 프로그래밍'이라는 커리큘럼이 있다는 것. 애초에 제가 프로그래밍에 관심을 가진것의 시초가 <게임개발>이었기 때문에 그 커리큘럼을 본 순간 고민할 필요가 없었죠. 그리고 저는 전과에 성공했습니다.  과를 들어가자마자 마주한 것은 많고도 많은 언어들이었습니다. 개발자의 길은 멀구나 라고 느꼈던 순간이기도 했습니다. 하지만 1년이 지난 지금 저는 그래도 꽤 개발자에 가까워졌다고 생각합니다.  이제 더이상 개발자라고 해서 개발만 알아야 할 것 같지 않다는 생각이 들었고, 그래서 분야를 확장시키고 싶었습니다. 프로젝트에는 아시다시피 개발자만 있는 것이 아니죠. 기획팀, 디자인팀, 마케팅 등등 많은 사람들의 협업으로 하나의 프로젝트가 완성되는 것입니다. 하지만 프로젝트를 진행하다보면 사람들간의 마찰은 피할 수 없게 됩니다. 서로의 직군에 대한 이해없이는 프로젝트가 성공적으로 진행될 수 없다는 생각을 했고, 따라서 멋사에서 디자인이나 기획까지 어느정도를 이해하고 원활한 프로젝트를 진행할 수 있는 그런 올라운드 플레이어가 되고 싶습니다. \n\n멋사는 비전공자를 위한 동아리라는 것을 알고 있습니다. 하지만 동아리에 들어가서 저의 능력 내에서 다른 비전공자분들을 도와드릴 수도 있다고 생각합니다. 그리고 그만큼 많은 것을 해보면서 함께 성장하고 싶습니다.	제가 게임개발에 관심을 가지게 된 것은 PS4를 처음 접했을 때였습니다. 사촌동생집에 놀러갔다가 PS4에 있는 'Last of Us'라는 게임을 플레이했고 저는 빠져들었습니다. 게임 캐릭터가 살아있다고 느꼈고, 스토리 또한 탄탄했습니다. 사실 이런 게임을 어떻게 만들었을까 감탄했습니다. 나도 이런걸 만들어볼 수 있으면 좋겠다 라는 생각이 제 꿈의 시초였습니다. 멋사에 들어가서 엄청 거창한 웹 서비스를 만들고싶다는 생각은 아닙니다. 그저 저와 맞는 사람들과 함게 앱 게임이나, 작은 웹 게임을 만드는 프로젝트를 진행해보고 싶다는 마음입니다.	2020년은 '저'에게 집중하는 것이 목표입니다. 작년까지는 정말 이상하게 많은 일들이 겹치고, 또 여러가지로 신경써야 할 것들이 많아서 순탄치 않았던 한 해였습니다. 물론 1학년 때도 마찬가지 였습니다. 학점, 인간관계, 건강관리 등 어느 하나에 집중할 수 없었습니다. 사실 저중 하나에만 집중하기에도 벅찬데 말이죠. 하지만 올해 초 여러가지를 해결하기도 하고 선택과 집중을 했습니다. 온전히 저 자신에게만 집중할 수 있는 환경을 만들었다고 볼 수 있습니다. 그래서 올해는 자기개발에만 신경쓰고 싶습니다. 나를 조금 더 발전시키는 한 해가 되고 싶습니다. \n\n동아리활동과 과생활을 병행하면서 어느하나 놓치고 싶지 않습니다. 처음하는 동아리이니 만큼 열심히 활동하고 싶고, IT에 흥미가 있는 사람들끼리 관심사를 공유하며 잘 지내고 싶습니다 :)\n		\N	\N	\N	\N	\N	2020-03-28 11:49:52.986101	2020-03-28 11:49:52.986101	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N
63	1	한만규	aswertr@naver.com	01047678343	기계로봇에너지공학과	2016112449	4	전 야망이 있는 남자입니다! Ambition!!	어떠한 것을 성취하기 위해서 있으면 좋은 것들이 있다고 생각합니다. 같은 목표를 가진 사람들과 함께 하는 것은 일의 능률을 높이며, 추진력을 갖게하고, 동기부여를 할 뿐만 아니라 서로에게 객관적인 관점을 부여할 수 있게 한다고 생각합니다. 제가 앞으로 성취하고자 하는 것은 웹서비스 개발을 통한 창업입니다. 멋사는 이 목적에 가장 잘 부합하는 집단이라고 생각합니다. 제가 멋사를 알게 된 배경은, 타 학교의 같은 학과 친구의 추천입니다. 같이 공부를 하며, 뭔지 모를 불안감에 가득 차있는 4학년인 저에게 멋사라는 단체는 가슴을 뜨겁게 만들어 주었습니다. 그 아웃풋이 증명해주듯, 멋사는 누구나 욕심낼 만한 단체이며, 타성에 젖은 불쌍한 4학년이 용기를 내어 지원하게 해준 위대한 단체입니다. 또한 멋사에는 예쁘고 잘생긴 사람이 많다고 들었습니다. 제가 들어가지 않을 수 없습니다. 할때는 하는 남자인 저, 맹수같은 남성성을 지닌 동물의 왕 사자 그자체, 3대 400, 롤 탑레이팅 플레티넘, 읽어주셔서 감사합니다.	작년 교내 대회에 출전하면서, 중장년층을 위한 피트니스 서비스를 구상해 보았습니다. 올해 그것을 실현해보고 싶습니다. 외부 대표님들께서 추천해 주신 주제로, 시장 가능성은 충분한 주제라고 생각합니다. 실제 네이버의 '사운드짐' 서비스와 같은 파급력을 가진 서비스를 구상하는 것을 목표로 삼고 있습니다.  	제 인생은 남들이 짜준 길을 걸어오며 남의 선택에 인생의 큰 선택들을 맡겨오면서 조금의 후회를 가지고 살고 있습니다. 올해는 제가 만들 길을 걸어보고 싶습니다. 2020년에는 멋사에서 좀 더 주체적인 삶을 살아보는 것이 목표입니다. 	지극히 개인적이긴 하나, 웹서비스 개발에 버전관리를 위해 docker를 자주 사용하는 것으로 알고 있습니다. 기회가 된다면 배워보고 싶습니다.	\N	\N	\N	\N	\N	2020-03-28 12:19:53.135316	2020-03-28 12:19:53.135316	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N
91	2	김태형	\N	\N	\N	2019112151	\N	18:20 - 18:40,18:40 - 19:00,19:00 - 19:20,19:20 - 19:40,19:40 - 20:00,20:00 - 20:20,20:20 - 20:40,20:40 - 21:00,21:00 - 21:20,21:20 - 21:40,21:40 - 22:00	18:20 - 18:40,18:40 - 19:00,19:00 - 19:20,19:20 - 19:40,19:40 - 20:00,20:00 - 20:20,20:20 - 20:40,20:40 - 21:00,21:00 - 21:20,21:20 - 21:40,21:40 - 22:00	\N	\N	\N	\N	\N	\N	\N	\N	2020-03-29 06:25:09.641268	2020-03-29 06:25:09.641268	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N
92	2	이소정	\N	\N	\N	2018113429	\N	18:20 - 18:40,18:40 - 19:00,19:00 - 19:20,19:20 - 19:40,19:40 - 20:00,20:00 - 20:20,20:20 - 20:40,20:40 - 21:00,21:00 - 21:20,21:20 - 21:40,21:40 - 22:00		\N	\N	\N	\N	\N	\N	\N	\N	2020-03-29 06:28:46.321754	2020-03-29 06:28:46.321754	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N
93	2	박채은	\N	\N	\N	2018111689	\N	18:20 - 18:40,18:40 - 19:00,19:00 - 19:20,19:20 - 19:40,19:40 - 20:00,20:00 - 20:20,20:20 - 20:40,20:40 - 21:00,21:00 - 21:20,21:20 - 21:40,21:40 - 22:00	18:20 - 18:40,18:40 - 19:00,19:00 - 19:20,19:20 - 19:40,19:40 - 20:00,20:00 - 20:20,20:20 - 20:40,20:40 - 21:00,21:00 - 21:20,21:20 - 21:40,21:40 - 22:00	\N	\N	\N	\N	\N	\N	\N	\N	2020-03-29 06:32:44.799131	2020-03-29 06:32:44.799131	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N
128	2	정광수	\N	\N	\N	2014112487	\N	18:20 - 18:40,18:40 - 19:00,19:00 - 19:20,19:20 - 19:40,19:40 - 20:00,20:00 - 20:20,20:20 - 20:40,20:40 - 21:00,21:00 - 21:20,21:20 - 21:40,21:40 - 22:00		\N	\N	\N	\N	\N	\N	\N	\N	2020-03-30 00:38:44.524386	2020-03-30 00:38:44.524386	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N
64	1	이예은	lee00096kr@gmail.com	01087665593	일본학과	2019110245	2	게으르기 위해 부지런함을 추구하는 사람, 이예은입니다.	 제가 이루고자 하는 바를 실현할 수 있는 표현 방법의 범주를 넓히고 싶기 때문입니다. 1년 동안 일본어를 전공하며 느낀 점은 언어를 알수록 접할 수 있는 정보와 경험이 늘어나 저의 지평이 넓어진다는 것이었습니다. 이처럼 컴퓨터 언어를 익힌다면 코딩을 다루거나 프로그래밍이 가능하기에 저의 관심사나 하고 싶은 것들을 더 다양한 방법으로 표현할 수 있을 것이라는 생각이 들었습니다. 그러나 비전공자였기에 혼자서는 막막하고 두려워 도전을 주저하고 있었을 때 멋쟁이 사자처럼을 알게 되었습니다. 비전공자임에도 코딩을 배워 직접 서비스를 만들어보며 여러 아이디어로 대회까지 나간다는 내용에 이끌려 관심을 갖게 되었습니다. 체계적인 커리큘럼이 갖춰져 있고,  창업 스킬을 배우며 마케팅 하는 방법을 익히고, 사람들과 함께 프로그래밍을 공부한다는 점에서 꼭 멋사에서 좋은 인연들을 만나 같이 성장하고 싶습니다.\n 저는 작년에 명상 VR 시나리오 공모전을 준비했었습니다. 시간과 장소에 따라 명상 장소와 소리가 변화하고, 코끼리 캐릭터를 따라 명상을 진행한다는 기획을 세우면서 ‘시나리오를 만드는 것도 좋지만, 여기서 그치지 않고 이런 아이디어를 내가 직접 서비스로 구현할 수 있는 능력을 가졌다면 더 많은 도전을 할 수 있었을 텐데.’라는 아쉬움이 들었습니다. 제가 좋아하는 것들에서 비롯된 아이디어를 막연하게 상상으로 남기지 않고, 멋쟁이 사자처럼을 통해 코딩이라는 수단으로 구체화시키고 싶습니다.	 재미있는 웹툰을 하나하나 찾는 것은 힘들기 때문에 다양한 포털 사이트의 웹툰을 한 번에 모아서 취향에 맞게 추천해주는 서비스를 만들고 싶습니다. 평소 웹툰을 즐겨보지만 자주 가는 특정 포털들에만 한정되어 다른 사이트에서 연재하는 웹툰들은 잘 보지 못하고, 이름이 알려져 있지 않아 접근성이 떨어지는 곳은 연재하는지 조차 몰라 아쉬웠던 적이 많았습니다.\n 기존의 웹툰 추천 서비스들은 대부분 포털만 모아놓았기 때문에 세부적으로 어떤 웹툰이 연재되고 있는지는 알기 어려운 경우가 많습니다. 이런 점을 개선해서 서비스 내에서 자체적으로 사이트 불문 장르별 세분화를 하여 소개하고, 연령대나 취향별로 추천하는 기능을 넣고 싶습니다. \n 이용자들이 직접 참여하는 서비스도 넣고 싶습니다. 멜론이나 유튜브에서 리스트를 만드는 것처럼 사용자가 웹툰 리스트를 자체적으로 만들어서 서로 공유합니다. 좋아하는 웹툰의 후기를 남겨서 홍보하는 것도 생각하고 있습니다.\n 추천 이외의 부가적인 특징은 정보 알림과 공익성입니다. 단체나 기관에서 만화 행사나 전시회, 관련 수업이나 강좌를 홍보합니다. 또한 불법 웹툰 사이트 이용에 대한 경각심을 알리는 배너를 배치하고 싶습니다.	제 올해 목표는 새로운 것에 도전하고, 좋아하는 일을 더 열심히 하는 것입니다. 컴퓨터 관련 이외에 제가 공부하기로 목표한 분야는 마케팅과 광고입니다. 타인을 논리적으로 설득하는 방법을 익히고 싶기 때문입니다. 또 그림 그리고 만드는 것을 좋아하기 때문에 올해 안으로 팝업북 제작을 콘텐츠로 한 유튜브 채널 개설을 생각하고 있습니다. 많은 연습과 준비가 필요하다는 생각이 들어 현재 영상 공모전에 도전해서 촬영을 직접 해보고 있습니다.		\N	\N	\N	\N	\N	2020-03-28 12:43:44.983125	2020-03-28 12:43:44.983125	\N	\N	\N	0	2	\N	\N	\N	\N	\N	\N	\N	\N
65	1	신주연	sjy8738@naver.com	01087387875	미디어커뮤니케이션학과	2017111162	3	아주 작은 활동이더라도, 사회에 좋은 영향력을 끼칠 수 있는 활동을 기획하고 실행하는 것을 좋아하는 사람입니다. 	 멋사에서의 교육과 활동을 통해 제 머리 속에 있는 서비스를 실제로 구현해보면서 더 많은 사회적 가치 창출에 도전해보고 싶습니다.\n 저는 2019년 1년동안 SK 대학생 자원봉사단 SUNNY 리더그룹 활동을 통해 환경, 10대 청소년 성 인식, 노인일자리와 청년 우울 문제를 대상으로 사회변화 프로그램을 기획하고 실행해 왔습니다.  활동 중  '시각장애인 부모의 제한적인 육아 정보 접근과 제한적이고 맞춤형 육아서비스'를 해결하는 프로젝트를 기획한 적이 있습니다.  저희가 설정한 문제를 해결하기 위해 기존의 째깍악어와 같은 앱 서비스를 시각장애인 부모 맞춤형으로 더 디벨롭하자는 의견이 나왔지만, 저희 팀 중 웹서비스 개발 능력을 가진 팀원은 1명 뿐이었고 저를 포함한 나머지 팀원들은 개발 경력뿐만 아니라 개발 지식 또한 아예 없었습니다. 현실적인 벽에 부딪힌 저희는 아예 프로젝트 문제 설정을 뒤엎고 새로운 프로젝트를 기획해야 했습니다.  이후로 활동을 하면서 이때 느꼈떤 아쉬움이 떠오를 때가 점점 늘기 시작했습니다. \n 사회 변화 프로그램을 기획하고 실행하는것이 해당 대외활동의 주 내용이었지만, 거의 모든 활동이 오프라인 활동 위주였고 활동의 지속가능성, 임팩트, 접근성을 고려할 때 부족한 점이 많았습니다. 이런 고민과 한계에 부딪히면서 '웹서비스'라는 분야가 한계를 보완할 수 있다는 생각이 들었습니다. 그래서 비전공자도 개발을 배울 수 있다는 멋사의 공고를 보고 '웹서비스 개발'이라는 분야에 도전해보고 싶어 멋사에 지원하게 됐습니다.	<시각장애인 이미지 텍스트 추출 화면 리더 프로그램>\n시각장애인들은 대부분 '스크린리더'프로그램(화면에 나타나는 정보들을 음성으로 출력해주는 프로그램)을 이용하여 컴퓨터를 사용합니다. 화면에 입력된 텍스트를 음성으로 출력하는 원리로 작동하는 프로그램이기 때문에 이미지 정보에 대한 접근이 제한적이라는 기사를 본 적이 있습니다. 해당 기사에서 옥션, g마켓 같은 쇼핑사이트에서 식품 성분표와 같은 정보들의 경우 판매자들이 사진을 찍어서 올리기 때문에 해당 프로그램이 이미지의 내용을 추출하지 못한다는 한계가 있다는 내용이 있었습니다. 실제로 이러한 문제 때문에 계란 알러지가 있는 자녀를 키우는 시각장애인 부모가 큰 피해를 봤다는 사례도 접할 수 있었습니다.  \n해당 기사 내용을 알게된 이후에 기존 스크린리더 프로그램이 추출하지 못하는 이미지의 텍스트를 인식할 수 있는 서비스가 있으면 좋겠다는 생각이 들었습니다. 그래서 만약 멋사 활동을 하게 되면 스크린리더가 읽지 못하는 이미지들을 이용자가 웹상에 업로드를 하면 텍스트 추출 기술을 통하여 이용자들의 정보 접근의 한계를 보완할 수 있는  웹서비스를 개발하고 싶다는 생각이 들었습니다.	2019년은 제 꿈을 발견했지만, 그 꿈에 비해서 제가 너무 부족하다는 것을 느낄 수 있었던 한 해였습니다. 그래서 저는 '저의 내실을 다지자'는 다짐과 함께 2020년을 맞이했습니다. \n우선은, 저의 역량을 다지고 싶습니다. 프로젝트를 진행하면서 일러스트 툴을 다루기 시작했지만 전문적인 능력이 부족하다는 생각이 많이 들었습니다. 그래서 이미지를 다루는 툴을 제대로 배우고 싶어서 계획을 짜고 조금씩 실행중입니다. 또한 지난 1년간 휴학을 했기 때문에 전공 공부나 이론적인 공부에 있어서 많이 부족하다는 생각이 들었습니다. 이번 1년동안 전공 공부도 열심히 하고 사회문제를 바라보는 안목을 키우면서 제 생각의 깊이를 넓히고 싶습니다.\n마지막으로는 저의 꿈을 구체화하고 싶습니다. 사회적 기업에 종사하고 싶다는 꿈이 생겼지만, 아직 분야나 직무 등 구체적으로 정해진 것이 아무것도 없어 이번 해의 활동을 통해서 좀더 제 꿈을 더 선명하게 그리고 싶습니다. 		\N	\N	\N	\N	\N	2020-03-28 12:47:39.096043	2020-03-28 12:47:39.096043	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N
66	1	김민지	minjiamy@naver.com	01049077090	경영	2017111628	3	매사 끊임없이 도전하고 노력하며 해당 경험을 통해 배우고 성장하고자 지칠 줄 모르는 열정의 소유자입니다.	멋쟁이 사자처럼은 비전공자인 학생들을 대상으로 코딩 교육을 실시하며 학습에서 그치는 것이 아닌 학생들이 직접 웹 서비스를 만들어 볼 수 있는 기회를 제공해준다는 점에서 관심을 가지게 되었습니다. 현재에는 직접적인 IT 관련 분야가 아니더라도 4차 산업 혁명에 따라 많은 분야가 IT와 결합되어 적용되고 있기 때문에 제가 관심있는 분야인 마케팅과 기획 역시 IT기반 지식은 필수적입니다. 그러나, 저는 평소 기본적인 컴퓨터 활용 능력 외에 이와 관련된 지식을 쌓을 수 있는 기회가 없었음에 아쉬움을 느끼고 있었습니다. 최근에는 더욱이 코딩을 비롯한 IT 관련 지식의 필요성에 대해 절실히 깨닫고 있었고 교내 수업으로는 불가한 대신에 IT교육을 받을 수 있는 동아리나 대외활동을 알아보게 되었습니다. 그러던 중 멋쟁이 사자처럼을 발견하여 알게 되었습니다. 자소설 닷컴, 탈잉, 코로나맵 등의 친숙한 웹서비스가 멋쟁이 사자처럼을 통해 런칭된 서비스라는 점에서 눈여겨보게 되었습니다. 멋쟁이 사자처럼의 세부 활동 내용을 유심히 찾아보며 많은 대중화된 웹서비스가 창출될 수 있었던 것은 양질의 맞춤형 교육 제공과 이에 그치는 것이 아닌 해커톤 실시를 통해 경쟁하며 프로그래밍을 구현해볼 수 있는 활동도 포함하고 있다는 점이 인상깊었습니다.	제가 멋사에서 만들고 싶은 웹 서비스는 ‘국내 문화와 관련된 행사 및 축제 통합 안내’ 서비스입니다. 저는 2학기 동안 교환학생 교류회 활동을 하며 대다수의 교환학생들이 파견 기간 중 국내 문화 체험 행사나 축제에 대해 정보 부족으로 인해 열의가 있음에도 기회를 놓쳐 참여하지 못한 경우들을 공통적으로 지님을 알 수 있었습니다. 저 역시 지난 학기 해외에서 교환학생 생활을 마쳤으며, 마찬가지로 해당 지역 문화나 축제에 대한 정보를 혼자만의 힘으로는 찾기 어려움을 크게 느꼈습니다. 이를 토대로 해당 정보를 한 곳에 모아 제공하는 서비스가 있다면 어떨지에 대해 생각해보게 되었고 구체화하여 ‘국내 문화 관련 행사 및 축제 안내’ 서비스를 고안하게 되었습니다. 이러한 서비스는 국내 문화 관련 행사 및 축제에 관한 정보들에 친숙하지 않은 다양하고 폭넓은 대상에게 적용될 수 있을 것이라 예상합니다.\n우선, 서비스 운영 방식으로는 검색 기능을 두어 국내 문화 관련 행사 및 축제를 직접 검색하도록 하는 방법과 카테고리별 설정을 통해 웹서비스에서 해당 카테고리에 부합하는 행사 및 축제에 관한 정보를 제공해주는 2가지 방향으로 웹 서비스 이용자 분들이 정보를 쉽게 취득할 수 있도록 고안해보았습니다. 또한, 직접 해당 행사 및 축제를 참여한 후 후기를 남길 수 있도록 하여 다른 이용자 분과 경험을 공유할 수 있도록 진행할 예정입니다.\n카테고리로는 크게 테마별(가족, 친구, 연인 등 즐길 수 있는 활동을 각각 분류), 계절별(봄,여름,가을,겨울을 구분하여 분류), 지역별(크게는 도 또는 작게는 시에 따라 분류) 총 3가지로 나누며 카테고리 내에서도 해당 항목에 따른 행사 및 축제를 항목화 하여 제시합니다. 서비스 이용자가 나열된 행사와 축제 중 관심있는 행사나 축제를 클릭하면 기본 정보와 추가 정보를 제공합니다. 기본 정보로 해당 행사 및 축제의 시간, 장소, 금액, 관련 사진 및 영상 및 내용을 포함하도록 하며 추가 정보는 실제 행사나 축제를 경험한 다른 이용자가 작성한 후기를 정리해 열람 및 소통할 수 있도록 합니다. 이처럼 해당 서비스는 서비스 본연의 역할인 사람들의 불편함을 해소하는 기능을 충분히 수행한다는 점에서 의미를 지닐 것이라 생각합니다.\n	올 해 역시 다양한 경험을 통해 배움을 실천하고 이를 실현하는 과정에서 스스로가 한 층 더 성장할 수 있도록 하는 한 해를 보내고 싶습니다. 처음에는 서투를 수 있지만 진행되는 온라인, 오프라인 교육 그리고 멘토링 프로그램을 적극적으로 활용하여 프로그램 이수를 마칠 때에는 누구보다 많이 발전할 수 있도록 노력할 것입니다.\n평소에 가진 아이디어를 실현해 웹 서비스를 런칭하는 것 역시 매우 기대됩니다. 이전에 관심있던 마케팅이나 기획을 또 다른 방식으로 적용해보게 되는 경험이라 색다르게 느껴집니다. 이번 기수부터 새롭게 추가된 UI/UX, 기획/디자인/SW 출시를 바탕으로 실제 웹서비스를 기획할 때 필요한 관련 부분에 대한 지식을 세부적으로 학습할 수 있다는 점에서 특히 기대됩니다. 또, 멋쟁이사자처럼으로 활동하게 되면서 가장 기대되는 활동 중에 하나는 중앙 해커톤 참여입니다. 중앙 해커톤에서 다른 팀들이 제공하고자 하는 팀별 웹서비스를 살펴보며 상호 평가 과정에서 스스로 만든 웹서비스를 객관적으로 점검할 수 있을 뿐만 아니라 상대팀의 참신하며 현실 가능성이 높은 아이디어들을 토대로 추후 더 나은 웹서비스를 만드는 데에 참고하여 활동을 마무리할 수 있을 것이라 생각합니다.		\N	\N	\N	\N	\N	2020-03-28 13:09:58.355568	2020-03-28 13:12:07.476511	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N
96	2	김소은	\N	\N	\N	2020111765	\N	18:20 - 18:40,18:40 - 19:00,19:00 - 19:20,19:20 - 19:40,19:40 - 20:00,20:00 - 20:20,20:20 - 20:40,20:40 - 21:00,21:00 - 21:20,21:20 - 21:40,21:40 - 22:00	20:40 - 21:00,21:00 - 21:20,21:20 - 21:40,21:40 - 22:00	\N	\N	\N	\N	\N	\N	\N	\N	2020-03-29 06:42:00.158048	2020-03-29 06:42:00.158048	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N
97	2	김동연	\N	\N	\N	2020111625	\N	20:20 - 20:40,20:40 - 21:00,21:00 - 21:20,21:20 - 21:40,21:40 - 22:00	20:20 - 20:40,20:40 - 21:00,21:00 - 21:20,21:20 - 21:40,21:40 - 22:00	\N	\N	\N	\N	\N	\N	\N	\N	2020-03-29 06:42:53.869985	2020-03-29 06:42:53.869985	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N
98	2	백진영	\N	\N	\N	2018112226	\N	18:20 - 18:40,18:40 - 19:00,19:00 - 19:20,19:20 - 19:40,19:40 - 20:00,20:00 - 20:20,20:20 - 20:40,20:40 - 21:00	18:20 - 18:40,18:40 - 19:00,19:00 - 19:20,19:20 - 19:40,19:40 - 20:00,20:00 - 20:20,20:20 - 20:40,20:40 - 21:00	\N	\N	\N	\N	\N	\N	\N	\N	2020-03-29 06:49:15.265881	2020-03-29 06:49:15.265881	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N
99	2	이상민	\N	\N	\N	2017110922	\N	18:20 - 18:40,18:40 - 19:00,19:00 - 19:20,19:20 - 19:40,19:40 - 20:00	18:20 - 18:40,18:40 - 19:00,19:00 - 19:20,19:20 - 19:40,19:40 - 20:00,20:00 - 20:20	\N	\N	\N	\N	\N	\N	\N	\N	2020-03-29 06:52:27.772413	2020-03-29 06:52:27.772413	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N
100	2	김동연	\N	\N	\N	2020111625	\N	20:20 - 20:40,20:40 - 21:00,21:00 - 21:20,21:20 - 21:40,21:40 - 22:00	20:20 - 20:40,20:40 - 21:00,21:00 - 21:20,21:20 - 21:40,21:40 - 22:00	\N	\N	\N	\N	\N	\N	\N	\N	2020-03-29 07:00:24.771914	2020-03-29 07:00:24.771914	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N
101	2	주현이	\N	\N	\N	2016110452	\N	19:00 - 19:20,19:20 - 19:40,19:40 - 20:00,20:00 - 20:20,20:20 - 20:40,20:40 - 21:00,21:00 - 21:20,21:20 - 21:40,21:40 - 22:00	18:20 - 18:40,18:40 - 19:00	\N	\N	\N	\N	\N	\N	\N	\N	2020-03-29 07:02:59.408434	2020-03-29 07:02:59.408434	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N
102	2	양지우	\N	\N	\N	2019110462	\N	18:20 - 18:40,18:40 - 19:00,19:00 - 19:20,19:20 - 19:40,19:40 - 20:00,20:00 - 20:20,20:20 - 20:40,20:40 - 21:00,21:00 - 21:20,21:20 - 21:40,21:40 - 22:00	18:20 - 18:40,18:40 - 19:00,19:00 - 19:20,19:20 - 19:40,19:40 - 20:00,20:00 - 20:20,20:20 - 20:40,20:40 - 21:00,21:00 - 21:20,21:20 - 21:40,21:40 - 22:00	\N	\N	\N	\N	\N	\N	\N	\N	2020-03-29 07:21:44.860587	2020-03-29 07:21:44.860587	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N
103	2	홍은주	\N	\N	\N	2017111718	\N	19:00 - 19:20,19:20 - 19:40,19:40 - 20:00,20:00 - 20:20,20:20 - 20:40,20:40 - 21:00,21:00 - 21:20,21:20 - 21:40,21:40 - 22:00	21:00 - 21:20,21:20 - 21:40,21:40 - 22:00	\N	\N	\N	\N	\N	\N	\N	\N	2020-03-29 07:23:38.443157	2020-03-29 07:23:38.443157	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N
104	2	신주연	\N	\N	\N	2017111162	\N	19:20 - 19:40,19:40 - 20:00,20:00 - 20:20,20:20 - 20:40,20:40 - 21:00	19:40 - 20:00,20:00 - 20:20,20:20 - 20:40,20:40 - 21:00	\N	\N	\N	\N	\N	\N	\N	\N	2020-03-29 07:27:51.966096	2020-03-29 07:27:51.966096	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N
129	2	김민지	\N	\N	\N	2017111628	\N	18:20 - 18:40,18:40 - 19:00,19:00 - 19:20,19:20 - 19:40,19:40 - 20:00,20:00 - 20:20,20:20 - 20:40,20:40 - 21:00,21:00 - 21:20,21:20 - 21:40,21:40 - 22:00		\N	\N	\N	\N	\N	\N	\N	\N	2020-03-30 00:56:37.714037	2020-03-30 00:56:37.714037	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N
67	1	양지우	didwldn3032@naver.com	01066153032	통계학과(경영학과 복수전공)	2019110462	2학년	적극성에 한번, 숨겨진 매력에 한번 놀라게 하는 프로그래밍 같은 학생 양지우라고 합니다!	제가 멋사를 지원하게 된 첫번째 이유는 바로 멋쟁이 사자처럼에서 나온 다양한 서비스들 입니다. 이 서비스들의 가장 큰 매력은 우리가 무의식중에 필요하다 느꼈던 부분들을 캐치해 서비스로 만들었다는 점이라고 생각합니다.  멋사에서의 창업 수업이라면 주변에서 발생하는 문제점들을 캐치하고 이를 기획하여 창업으로까지 이뤄낼 수 있다고 생각합니다. 또한, 창업에 대해 어떤 부분이 필요한지 배울 수 있기 때문에 조금 더 실현가능한 서비스에 다가갈 수 있다고 생각합니다. \n그리고 두번째 이유는 이렇게 비전공자인 제가 코딩교육을 통해 내가 원하는것을 만들어볼수 있다는 입니다. 대부분의 동아리들은 자소서나 면접등을 통해 지금까지 해온 관련활동을 묻고 이를 통해 참가자의 기초 지식에 대해 평가하지만 멋사에서는 비전공자 또한, 프로그래밍을 할 수 있다는 점이 좋았습니다. 만들고 싶은 서비스, 프로그램에 대해서는 떠오르는 바가 많았지만 컴퓨터 프로그램에 대한 지식은 기초적인 지식이나 전공 수업을 통해 배운 지식이 다였기 때문에 만들어보거나 기획해보는 등의 실천이 어려웠습니다. 하지만 멋사를 통해서라면 다양한 분야에 계신 학우분들과 함께 많은 프로그램에 참여하여 그 경험을 창업과 연관시켜 이어나갈 수 있다고 생각합니다. 이런 부분을 통해 프로그램을 바라보는 시야도 넓히고 제꿈에도 한발짝 더 다가가고자 멋사에 지원하게 되었습니다.	학생들에게 도움이 되는 학교 내 이동루트 웹서비스를 만들어보고 싶습니다.\n이제 막 학교에 입학한 신입생들이 가장 많이 하는 질문이 시간표 질문, 그 중에서도 연강이 가능한 거리인가?에 대한 질문이라고 생각합니다. 신입생의 경우 자신들이 듣는 수업이 어느 건물에서 이루어지는지, 건물간의 거리는 어떤지에 대해 잘 알지 못합니다.  현재 우리학교는 산에 위치해 있기 때문에 엘리베이터와 지름길같은 루트를 알지 못한다면 한겨울에도 땀을 흘릴만큼 건물 간에 이동이 힘들다는 점에서 이와 같은 서비스를 생각하였습니다.\n\n이와 같은 문제를 해결하기 위해서 자신의 시간표를 업로드하면 각 강의마다의 건물을 파악하고 이를 학교 내의 지도와 연동시켜 최적의 루트를 찾아주는 웹서비스를 만들어보고 싶습니다. 구름다리나 신공학과 엘리베이터와 같은 학교 내의 이동경로나 엠버서더를 통하는 지름길, 헐떡고개를 통한 길 등 재학생들이 알고 있는 정보들을 통해 강의별로 어떻게 이동하는 것이 좋은지, 그리고 이동시간은 어느정도 걸리는지를 보여주고 싶습니다. \n 또한, 10분 내는 추천 10분 이상은 비추천 등 기준에 따른 평가를 통해 학생들이 자신의 시간표를 객관적으로 바라볼 수 있고, 비추천의 개수가 많을 경우 차선책을 학생들에게 제안하며 어려움을 느꼈던 시간표 짜기를 쉽게 다가갈 수 있도록 돕고 싶습니다.  \n 이후 재학생들이 자주 사용하는 에브리타임과 같은 서비스와 연동시켜시간표와 강의실에 대한 정보, 그리고 주변 친구들과의 시간표에 대한 정보를 연동시키거나 게시글 서비스를 통해 자신의 시간표에 대해 사람들이 별점을 매길 수 있는 서비스도 함께 도입한다면 학생들에게 굉장히 편리하고 필수적인 서비스가 될 수 있을것이라고 생각합니다. \n\n비록 지금은 작은 아이디어를 통해 생각한 웹서비스이지만 이를 단순히 우리학교에서 그치지 않고 정보가 입력된 학교라면 어디든지 활용할 수 있는 서비스로 발전시키고 싶습니다.	2020년에는 '내가 무엇을 하고 싶은가'라는 주제를 보다 폭넓게 바라보고 싶습니다.\n누군가 저에게 무엇을 하고 싶냐라고 물었을때 저는 빅데이터 마케팅이라고 이야기를 합니다.  하지만 저기에서 세부적으로 접근한다면 말문이 막히곤 합니다. 사람마다의 분석된 데이터를 기반으로 그들에게 필요한 서비스를 제공하는 것이 제 목표지만 이를 위해서는 어떤 지식이 필요한지, 현재 얼만큼 발전되어있는지, 이것이 어떻게 상용화 되어있는지에 대해서는 잘 알지 못하는 것 같습니다.  \n\n그렇기 때문에 이번 학년부터 새롭게 배울 경영학 수업을 통해 마케팅에 대한 기초를 쌓고 이를 실현시킬 수 있는 프로그래밍에 대한 기초 지식을 쌓는 것이 2020년도의 제 첫번째 목표입니다. 아이디어가 떠올랐을 때 바로 이를 어떻게 실현시킬지 떠오르지는 않아도 차근차근 계획을 세울 수 있을정도로 저를 발전시키고 싶습니다.\n\n두번째로, 다양한 분야 속에 많은 사람들을 만나고 싶습니다. 같은 과 친구들과 이야기를 하면서 꿈에 대해 생각해보았지만 '통계'라는 경계 밖으로는 잘 나가지 못했습니다. 그렇기 때문에 동아리나 학교 행사 등을 통해 다른 분야의 사람들을 만나고 그 분야에는 어떤 특징이 있는지 알아보고 싶고,  여러 곳에서 데이터라는 것이  어떤 프로그램에서 어떻게 사용되는지 알아보고 싶습니다.\n\n그리고 많은 도전을 해보고 싶습니다. 3학년 이후로는 취업에 대한 걱정때문에 지금보다는 새로운 도전을 하기에 힘들다는 이야기를 많이 들었습니다. 그래서 2020년에 하고 싶은 공모전에도 나가 제 아이디어를 다른 사람들에게 알려보고, 멋쟁이 사자처럼의 부원이 되어 프로그램과 창업에 대해서도 많이 고민할 기회를 갖고 싶습니다. \n\n많은 사람들이 자신의 전공을 실제 직업과 연관시키는 것은 힘들다고 합니다. 하지만 고등학교 때부터 바라왔던 꿈이기 때문에 저는 제꿈을 미래의 제가 이뤄나갈 수 있길 바랍니다.  그렇기 때문에 2020년이 저에게 있어서 수많은 갈림길 속 가장 이끌리는 길로 걸어나갈 수 있는 방향키가 되도록 노력하고 싶습니다.\n	실제 사람들에게 설문조사나 여러 사이트를 통해 필요한 웹서비스에 대해 의견을 묻고 선별해 이를 실제로 만들어보는 활동을 해보고 싶습니다. \n정말로 대학생활동안 멋사를 통해 많은 것을 배워나가고 싶습니다. 잘부탁드립니다!	\N	\N	\N	\N	\N	2020-03-28 13:38:57.154684	2020-03-28 13:38:57.154684	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N
68	1	이신희	tlsgml4643@naver.com	01041364643	북한학	2018110733	3	만들고 싶은 것이 있는 사람입니다.	얼마전 라스에 나오신 지숙님을 통해 이두희 대표님 프로필을 우연히 봤었고, 덕분에 '멋쟁이 사자처럼' 을 알게되었습니다. 평소 내셔널지오그래픽을 즐겨보는 저는 사자가 멋쟁이라는 것에 크게 공감했었는데,  최근 코딩을 배우고 싶다는 생각을 하게되면서 멋사가 머릿속에 떠올랐습니다.\n저는 불평불만이 많은 스타일은 아니지만 일상생활에서 필요한 것들을 많이 찾습니다. 그리고 저는 이러한 것들이 무언가를 만들어낼 기회이자 아이디어라 생각합니다.  아이디어가 많은 만큼 하고 싶은 것들도 많은데, 기술이 없으니 제 아이디어에 공감해주는 기술자를 만나기 전에는 아무것도 할 수 없었습니다.  \n그래서 저는 제가 직접 코딩 교육, 창업 수업을 들어야 겠다 생각했습니다.  스스로 아이디어를 내고 코딩을 통해 결과물을 만들어내고, 나아가서는 창업까지 생각해볼 수 있는 능력을 갖추겠다 다짐했습니다. \n학원이 아닌 멋사에서 코딩 교육과 창업 수업을 듣고 싶은 이유는 함께하는 사자들이 있기 때문입니다.  혼자 앉아서 무언가를 하게 되면 집중이 되는 느낌은 있지만, 몇몇의 힘을 합치면 시너지 효과가 있다고 생각합다. 또래 사자들과 관심사를 나누면서 제 생각의 폭도 넓히고 서로가 서로에게 좋은 영향을 주며 성장하고 싶습니다. 	저는 몽골과 말을 좋아합니다. 그런데 몽골로 승마 트래킹을 가려하면 불편함을 겪습니다. 보통 몽골로 마음 편하게 승마 트래킹을 가려면 몽골에 지인이 있거나 관광 업체와 함께 가야한다 생각합니다. 그렇지 않다면 몽골 말 소유자들이 가지고 있는 말의 상태가 어떠한지, 한국인 안장은 있는지, 낙마했을때의 대처 여부는 어떠한지 등을 알 수 없기 때문입니다.  몽골이 넓은 초원이 많은 말을 가지고 있는 것에 비해 승마 트래킹에 접근할 수 있는 폭이 좁다 생각했습니다.\n그래서 몽골에서의 승마 트래킹에 쉽게 접근할 수 있는 웹서비스를 만들고 싶습니다.  농장별 승마 트래킹 이용 비용, 한국인 안장을 이용할 경우 드는 추가 비용, 이용 후기, 평점 등을 기록할 수 있는 웹서비스를 만들어 승마 트래킹의 접근성을 높이고 싶습니다.  구조상 가능하다면 예약 서비스도 넣고 싶습니다.\n승마 매니아들의 경우 이 웹서비스를 유용하게 쓸것이라 생각하고 여러 승마 동호회에서도 소규모 단체 예약을 많이 할 것이라 생각합니다. 또한 몽골에 넘쳐나는 승마 인재들이 직접 승마를 가르쳐주는 시스템을 추가하면 승마를 제대로 배우고 싶은 사람에게는 맞춤 서비스가 될 것이라 생각합니다.\n조금만 상상해도 여러 난관들이 떠오르지만 제 능력이 닿게 된다면, 멋사와 함께 이 웹서비스를 만들어보고싶습니다.	저는 내실을 갖추고 싶습니다. 하고 싶은 것들을 곧바로 실천하고 그것을 끝까지 끌고가기 위해서는 제 내실이 무엇보다 중요하다 생각했기 때문입니다.\n\n2020년 제 첫번째 목표는 코딩을 배우는 것입니다. 코딩은 내실 있는 기술이라 생각하기 때문입니다.  위에 말씀드린 승마 트래킹 관련 웹서비스 이외에 저는 필요하다고 생각되는 웹서비스가 몇가지 더 있습니다. 생각에 그치지 않고 직접 코딩을 배워서 결과물로 이끌어 낼 수 있는 사람이 되고 싶습니다.  \n\n두번째 목표는 독서와 어휘력 기르기 입니다. 어렸을때는 크게 귀기울여 듣지 않았지만 독서와 어휘력은 글을 쓸때도, 어딘가에서 말을 할때도, 독해를 할때도 중요한 내실이라 생각됩니다. 너무나도 기본적이고 당연한 것처럼 느껴졌기에 큰 비중을 두지 않았었는데 이번 년도에는 제 두번째 순위 목표로 두면서 눈에 띄는 발전을 이루어내고 싶습니다.\n\n2020년 계획을 묻는 질문인 만큼 거창한 것들을 쓰고 싶은 마음도 있지만 이번 년도에 저는 기본에 충실하면서 단단해지는 것이 목표입니다. 멋사활동을 주축으로 2020년은 내실을 갖춘 사람이 되고싶습니다.	사실 지금은 코딩과 창업에 대해 아는 것이 많으 없어 추가로 무언가를 말씀드리기가 어려울 것 같습니다. 멋사가 된다면 조금씩 배우면서 더 배우고 싶은것들에 대해 말씀드리겠습니다.	\N	\N	\N	\N	\N	2020-03-28 14:25:25.716371	2020-03-28 14:25:25.716371	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N
69	1	민은영	love09eymq@naver.com	01092932650	컴퓨터공학과	2019130089	2학년	안보이면 괜히 생각나고 아쉬운 두구칼 같은 존재감을 가진 21살 민은영입니다.	컴퓨터공학을 전공으로 하고 있지만 전산원 소속이라 교수님과 학생들이 모두 편입에만 집중을 하고 있어서 제대로 된 코딩 수업을 받지 못했습니다. 아주 간단한 기초적인 것만 알려주셨는데 이게 제게는 마중물 같았습니다. 너무 재미있고 흥미로워서 더 배워보고 싶었으나 혼자 독학으로 공부를 하기엔 누군가가의 피드백이나 질문을 할 지지자가 필요했고 학원을 다니기엔 현실의 벽에 다다르며 잊고 지내고 있었습니다. 그러던 차에 코로나19로 마스크 대란이 일어나는 등 모두가 힘들어할 때 마스크알리미를 만든 이두희 대표님과 타 대학 동아리에서 만든 코로나맵을 사용하면서 항상 이걸 만든 사람들은 어떤 사람일까 ? 이런 웹을 만든걸 보면 전공자이고 이쪽으로 일하는 사람일거라고 생각했는데 비전공자가 만들었다는 것을 보고 나도 이런 웹을 만들어보고싶고 나도 할 수 있을 것 같다는 생각이 강하게 왔습니다. 그리고 마스크 알리미와 코로나맵을 많은 사람들이 이용하며 더 큰 서버가 필요했는데 그 돈을 이두희 대표님이 사비로 지원했다는 인터뷰를 보고 대표님에 대한 존경심이 생겼습니다. 그러면서 멋쟁이 사자처럼 이라는 단체에 대해 알게 되었고 이번에 동아리원을 모집한다는 홍보글을 보고 커리큘럼을 찾아본 결과 본인과 잘 맞는다고 생각이 들었습니다. 누군가에게 알려주고 사람들을 만나는걸 좋아하는 제게 잘 맞는 동아리라고 생각을 해서 저는 멋사의 동아리원이 되고 싶습니다. 	두 개의 웹 서비스를 만들고 싶습니다. \n첫번째로는 영상 추천 웹 입니다. 많은 사람들이 영상을 볼 때 유튜브를 이용해서 많이 봅니다. 유튜브 자체의 알고리즘으로 다양한 영상을 추천해주기는 하지만 본인의 기분을 맞추지는 못합니다. 옷 쇼핑몰의 아우터, 상의, 바지, 치마 등으로 카테고리가 나눠져 있어 본인이 원하는 카테고리에 들어가서 옷을 고르듯이 영상도 밥먹을때 보기 좋은 영상, 홈트레이닝 영상, 대중교통에서 보기 좋은 짧은 영상 등 다양한 카테고리별로 나눠진 웹을 만들습니다. 본인의 상황에 따라서, 기분에 따라 원하는 주제를 골라서 볼 수 있기에 유용한 웹이 될 수 있다고 생각합니다. \n두번째로는 쇼핑몰을 만들고 싶습니다. 요즘 여러 쇼핑몰을 묶어서 한번에 보여주는 앱이나 웹이 많이 있습니다. 또 쇼핑몰을 들어가면 아우터, 상의, 바지 등의 카테고리로 나눠져 있어서 거기서 원하는 옷을 골라 구매할 수 있습니다. 그러나 본인이 선호하는 옷 스타일을 찾으려면 한참을 여러 쇼핑몰에서 찾아봐야 합니다.  그래서 저는 카테고리를 하나 더 만들어서 캐주얼룩, 아메카지룩, 스트릿룩, 면접룩 등으로 나눠 한결 더 편하고 빠른 옷 구매를 할 수 있는 그런 쇼핑몰을 만들고 싶습니다.	지금까지는 중고등학교에서 하라고 해서 하는 반강제적인 봉사를 했다면 이제는 스스로 원해서 하는 봉사활동을 하며 보내려고 합니다. 현재도 현혈이나 도서관 봉사활동 등을 하고는 있지만 조금 더 직접적인 면에서 도움이 되는 봉사활동을 해보고 싶습니다. \n또 올해 가장 이루고 싶은 것으로는 대학교 편입이 있습니다. 작년부터 원하고 노력해오던 일이기에 가장 하고싶습니다. 편입해서 원하는 수업 듣고 배우고 싶은 것을 더 집중적으로 배워보고 싶습니다. 		\N	\N	\N	\N	\N	2020-03-28 14:39:09.083763	2020-03-28 14:39:09.083763	\N	\N	\N	0	2	\N	\N	\N	\N	\N	\N	\N	\N
70	1	박지혜	qkrwlgp235@gmail.com	01020302950	멀티미디어공학과	2019122537	2학년	타닥타닥 타오를 준비가 되어있는 장작, 박지혜입니다	  저는 애브리타임에서 멋사를 알게되었습니다. 그리고 호기심이 생겨 유튜브에 검색을 했습니다. 어떤 단체이고 무엇을 목표로 할까라는 궁금증을 가지고서 말입니다 . 그리고 '멋쟁이사자처럼 프로그래머 이두희'라는 영상을 보게되었습니다. 사실은 그분이 한 말이 인상깊어 멋사에 8기를 지원하게 되었습니다.\n  흔히 프로그래머들이 하는 얘기가 있습니다. '게을러야 프로그래밍을 한다.' 매우 모순적이 말일 수 도 있습니다. 그러나 내가 불편함을 줄이고 편리한 생활과 삶을 위해, 위 표현을 가져온다면 게으름을 즐기기위해 프로그래밍을 한다는 것이죠. 얼마전에 동방신기 유노윤호가 마스크 특허를 냈습니다. 음료를 먹기 편하게 바꾼 실용신안 이였죠. 저는 이런 유노윤호의 열정과 행동력을 존경합니다. 그리고 프로그래머가 가져야할 덕목도 이런 것이라 생각합니다. 실천에 옮기는것. 기민하게 알아채서 삶을 변화 시키는것. 그리고 결국에 해내는 것. 사실 저는 결국해내는것에서 주로 좌절합니다. 시작을 하고 행동하지만 결국 끝이 묘연해지죠. 그렇게 끝맺음을 지지못하는 것에 무뎌지고 익숙해지게되었습니다. 그리고 저는 이번 멋쟁이사자처럼 에서 다시 도전해보고싶습니다. 같은 꿈을 꾸는 이들과 함께 종점을 정확히 찍고 싶습니다. 그리고 열정에 미친 저를 보고싶습니다. 	  최근에 MBTI 성향에 대한 관심이 깊습니다. 이런 검사도 온라인에서 쉽게 할 수 있어졌습니다. 그만큼 대중화되었습니다. 그래서 저는 제 성향과 같은 사람을 만나보고 싶고, 또 저와 가장 잘맞는 혹시 잘맞지 않는 성향을 사람들을 만나보고 싶습니다. 제가 mbti에 관심을 갖게 된 것은 첫째 저를 알기위해서 둘째 남을 알기 위해서 입니다. 같은 유형을 만나게 되면 서로의 경험을 공감할 수 있겠죠. 혹은 조언을 얻을 수도 있을 것입니다. 다른 유형의 사람을 만나게 되면 남을 이해 하는데 도움이 될 것이라 생각합니다. 사람은 함께 살아가는 사회적인 존재입니다. 그리고 원만하고 평탄한 인간관계는 사람을 더 행복하게 만듭니다. 따라서 저는 소통을 할 수 있는 커뮤니케이션 사이트를 만들고 싶습니다. 서로의 경험을 공유하고, 질문할 수 있는 자유로운 소통창과 자신의성향과 상대의 성향에 대한 검색기능,그룹이라는 기능을 통해  소모임이나 대면할 수 있는 만남의 장까지. 여러기능을 탑재한 소통창 을 만들고 싶습니다.	 뜬금없지만 최근에 구매한 칼림바라는 악기를 가지고 디즈니의 ost들을 완곡하는 멋진 연주를 하고 싶습니다. 작지만 소박한 것이지만 제가 목표로 정한 것을 끝까지 해내겠다는 것에 큰 의미를 두었습니다. 무엇을 하던 이런 마음가짐이 2020년은  열심히 살았다는 것에 자부심을 갖게 할것이라 생각합니다.	배우고 싶은 것보다는 선배님들 혹시 현직자분들의 꿈강연을 듣고 싶습니다.	\N	\N	\N	\N	\N	2020-03-28 14:42:13.665272	2020-03-28 14:42:13.665272	\N	\N	\N	0	1	\N	\N	\N	\N	\N	\N	\N	\N
71	1	서창환	shokey95@naver.com	01049247782	경영학부	2014111628	4학년	안녕하세요 정해진 기찻길을 운전하는 기관사보다는 새로운 곳으로 철도를 까는 사람이 되고싶은 서창환입니다. 	‘멋쟁이 사자처럼’을 처음 알게 된 건 고려대 멋사에서 개발한 ‘마스크알리미’라는 어플을 통해서 였습니다. 전 국민이 혼란에 빠지고 마스크 품귀현상과 각종 포비아들이 존재했던 코로나 발생초기에 저 역시 마스크를 구하지 못해 이 약국 저 약국을 돌아다니며 찾아 헤맸습니다. 그렇게 시간낭비를 하며 약국별 마스크재고를 미리 알 수 있으면 얼마나 좋을까라는 생각을 했습니다. \n며칠뒤 멋사에서 ‘마스크알리미’라는 어플을 개발했고 이젠 사람들은 시간낭비 없이 손쉽게 마스크를 구할 수 있게 되었습니다. \n문과여서 코딩과 나는 인연이 없어라며 별다른 관심이 없었던 저는 머리를 한 대 맞은 것 같았습니다. 코딩을 하지 못해 생각에서만 그쳤던 저와 달리 어떤 사람들은 프로그래밍을 통해 생각을 실현시키고 그게 우리의 삶과 위기상황에 적용돼 사람들이 더 나은 삶을 살 수 있게 도와주는구나.. 특히 국가적 위기상황에서 누구보다 먼저 생각을 실현시켜 정부가 미쳐 신경쓰지 못한 부분들까지 보완해 사회적으로 긍정적인 영향을 미치며 도움이 될수 있다는게 얼마나 멋진 일인지에 대해서 생각을 해보았습니다. 스마트폰이라는 작은 네모난 기계를 통해 세상과 마주하고 어른 아이 할거없이 it신기술과 친숙해지고 있는 현 시점에서 어플과 코딩능력이 더 이상 전문가만의 몫이 아니구나. 프로그래밍은 점점 더 우리생활과 밀접히 관련지어질 것이고 머릿속 생각을 프로그래밍 언어로 바꾸는 능력은 이 it가 지배하는 세상에서 소통하기 위해 필수 역량이 될 것 이라는 생각들이 들었습니다. 생각이 여기까지 미치자 더 이상 코딩공부를 망설이고 싶지 않았습니다. 코딩 지식이 전무한 저는 누군가에게 피드백을 받으며 체계적으로 혼자서도 공부할수 있도록 방향을 잡아줄 환경이 필요했고 그런 저에게 멋사만한 곳이 없다는 생각이 들었습니다. 망설일 것 없이 지원버튼을 누르게 되었습니다. \n	1. 홈스위트홈\n\n이용자가 안전히 달콤한 집까지 귀가할 수 있도록 책임져 주는 막차알림서비스 어플입니다. 항상 술을 먹거나 늦게까지 일정이 있을때면 택시이용이 부담스러운 가난한 대학생으로서 막차에 대한 정보는 필수입니다.  미리 막차가 몇시이며 언제쯤 출발해야 안전하게 탈수있는지를 계산해두지만 술에 취해 알딸딸한 상태에서는 판단력이 흐려져 막차를 놓치는 경우가 더러 있으며 혹시나 지하철을 놓쳤다면 심야버스라던지 집에서 최대한 가까운곳까지 가는 대안 경로를 다시 네이버에서 일일이 검색해야하는 불편함도 있습니다. 이러한 여러 가지 막차관련 불편사항들을 개선하고자, 또한 귀가자에 대한 가족들의 걱정을 줄이고, 좀더 치안에서 안전한 귀가를 보장하고자 이 어플을 개발하고 싶습니다. \n \n 이 어플을 이용한다면 현재위치와 집의 위치를 입력만하면 여러 대중교통 경로추천과 막차를 타려면 몇시에 현재위치에서 출발해야하는지를 알려줍니다. 단순히 막차시간을 안내해 주는 것이 아니고 환승루트까지 고려하여 최종마을버스 막차를 안전하게 타려면 몇시 출발하는 지하철을 타야되며 현재위치에서 역까지의 도보거리를 계산하여 몇시에 술집에서 출발해야하는 지를 안내해줍니다. 또한 알림기능을 추가해서 사용자가 선택한 경로를 이용하기 위해 출발해야 하는 시간이 오면 알람이 울려서 술먹느라 정신놓고있을 이용자에게 지금출발해야함을 알려줍니다.  \n이 서비스는 대중교통에만 국한된 것이 아니라 안전한 귀가까지 모든 과정을 책임집니다. 예를들어 막차를 놓쳐서 택시를 탄 경우 타기전 번호판을 어플에 입력하면 택시기사의 (개인정보보호법상 문제되지 않는선에서) 정보가 가족들에게 전송이 되어서 안심할수 있으며 중간중간 위치정보를 분석해서 택시가 손님이 술취한걸 이용해 빙빙돌아가진 않는지 집오는 경로를 이탈해 다른 위험한 곳으로 이동하고 있진않는지 가족들이 확인할 수 있습니다. 또한 이용자가 잠이들어 택시값을 계산하지 못하거나 집까지 제대로 걸어갈수 없는 상황에서 택시기사님들이 난감한 경우가 많으셨을텐데 이 어플을 통해 택시기사님은 가족들과 연락을 취할 수 있습니다. \n동네마다 ‘여성 안심귀가 스카우트 제도’라는 안심귀가 서비스가 있는데 이 어플은 그 서비스와 연동되서 안전귀가도우미의 정보를 확인하고 연락을 주고받는데 도움을 줄 수 있습니다. \n\n2. 헌혈의민족\n\n전국민이 헌혈을 생활화하는 민족이 되었으면 하는 바람에서 만들고 싶은 어플입니다. 주기적으로 헌혈을 하는 저는 항상 헌혈전에 하는 각종 문진들과 매번하는 헌혈금지 말라리아 지역 출입여부 확인, 같은 사전 문진들이 시간을 잡아먹으며 문진자 자의적으로 판단하는 만큼 그 객관성에 대해서 의심을 품어 왔습니다. 예를들어 말라리아지역에 갔었지만 헌혈을 하기 위해 안갔다고 한다던지, 감기약을 최근에 먹었지만 까먹고 안먹었음에 체크한다던지. 물론 수혈전에 피검사를 한번더 한다고는 하지만 이왕이면 검사전까지 최대한의 불필요한 헌혈자를 줄일수는 없을까 하는 생각이 들었습니다. \n\n이 어플을 사용하게 되면 헌혈자필요한 사항들에 대해 미리 공지를 해줍니다. 아침밥을 먹어야 한다던지 컨디션을 체크해야한다던지 하는 주의사항을 미리 안다면 불필요하게 헛걸음해서 퇴짜맞는 경우가 없을것입니다. 또한 어플을 통해 오는길에 전자문진을 작성할수 있게하여 불필요한 시간낭비를 줄일수 있습니다. 또한 정보의 객관성을 위해 문진자의 의료정보나 항공정보와 연동을 해서 헌혈금지 약물을 복용하고 있다거나 말라리아지역에 다녀온 경험이 있다던가 하는 경우는 특정 시기까지 헌혈을 하지 못하도록 처리를 할 수 있습니다. 또한 헌혈이 끝난후 다음헌혈가능시기가 오면 핸드폰으로 알림이 가서 헌혈을 독려할수 있으며 집에 어디있는지도 모르는 종이헌혈증서대신 전자헌혈증서를 발급할수 있게 합니다. 영화관람권이나 편의점이용권같은 헌혈기념품도 어플을통해 전자표로 지급받을수 있을것입니다. 마지막으로 사람들이 헌혈을 안하는 이유중의 하나가 자신의 소중한 피가 정확히 어디에 어떤식으로 쓰였는지를 모르기 때문이라고 생각합니다. 환자의 개인정보를 보호하는 선에서 수혈자의 피가 어떤병에 걸린 환자에게 쓰였다는걸 어플을 통해 알수있게 하여 내 피의 사용처에 대해 투명하게 공개를 한다면 수혈자입장에서도 좀더 보람있고 뿌듯함을 느껴 헌혈이 장려될 수 있을것입니다. \n\n	2019년 까지 저는 인생을 관통하는 뚜렷한 목표라던지 꿈에대한 생각이라던지 여러 가지 걱정들 없이 마음 편하게 살아왔습니다. 걱정없이 살아왔다는게 열심히 안살았다는 말은 아닙니다. 생활을 위해 필요한 돈을 벌고 학점을 위해 밤도 새고 하고싶었던 활동들을 하며 한번뿐이 없는 인생의 20대를 열심히 누렸습니다. 누군가는 현실감각이 없다고 하겠지만 구체적인 직무와 관련된 활동을 안했을 뿐이지 제가 살아온 순간순간들은 저에게 저라는 사람에 대해 공부하고 더 나은사람이 되기 위해 피드백을 하며 나만이 가지고 있는 개성들, 내가 살고싶은 삶의 방향이나 태도등을 찾을 수 있었던 시간들이었습니다.    \n취업이 코앞으로 다가온 현재 저도 이젠 인생에 대해 구체화의 단계가 왔다고 생각합니다.\n여태 알아온 저라는 사람에 대한 정보를 바탕으로 제가 사회에 도움이 될 수 있고 사회가 저를 필요로 하는, 그리고 제가 행복할 수 있는 일을 찾고 그 일을 하기위해 필요한 구체적인 실천방안들을 하나하나 실현해가는 2020년 한 해가 되었으면 합니다. 		\N	\N	\N	\N	\N	2020-03-28 14:47:07.270479	2020-03-28 14:47:07.270479	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N
105	2	김혜준	\N	\N	\N	2016112535	\N	18:20 - 18:40,18:40 - 19:00,19:00 - 19:20,19:20 - 19:40,19:40 - 20:00,20:00 - 20:20,20:20 - 20:40,20:40 - 21:00,21:00 - 21:20,21:20 - 21:40,21:40 - 22:00	18:20 - 18:40,18:40 - 19:00,19:00 - 19:20,19:20 - 19:40,19:40 - 20:00,20:00 - 20:20,20:20 - 20:40,20:40 - 21:00,21:00 - 21:20,21:20 - 21:40,21:40 - 22:00	\N	\N	\N	\N	\N	\N	\N	\N	2020-03-29 07:29:28.732812	2020-03-29 07:29:28.732812	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N
72	1	김예지	yeji0331@naver.com	01031872583	컴퓨터공학과	2020112073	1학년	 나는 책임감이 강하고 한 번 시작하면 끝을 보는 적극적인 마인드의 소유자이다.	부끄럽지만 나는 컴퓨터공학과임에도 불구하고 코딩을 할 줄 모른다. 고등학교 때는 입시에 필요한 공부들만 했었고 하고 싶은 것을 도전할 만한 여유가 없었다. 오로지 관심과 흥미를 생각하며 컴퓨터공학과에 들어온 나는 이제서야 코딩에 대해 공부하고 있는데 여태 배워온 화학, 수학 등과는 결이 다른 공부를 하는 것 같았다. 단순 이론 암기를 넘어 이를 적용할 수 있는 분야가 무궁무진하다는 점에서 매력과 어려움을 동시에 느꼈다. 이론공부로는 채울 수 없는 보다 현실적인 경험이 필요하다고 느꼈고 창업에 대해 배우는 것이 현재 사회의 흐름을 알게 하는데 도움이 되는 중요한 기회라고 생각했다. 이러한 점에서 코딩과 창업을 고루 배우는 멋사의 홍보글이 눈에 들어왔다. 많은 사람들과 교류하며 각자가 서로의 친구, 스승, 파트너가 될 수 있는 멋사에서 소소한 아이디어를 구체화시키는 활동을 해보고 싶다.	 사회에 도움이 되는 웹 서비스를 만들고 싶다. 하나의 예로 생각해본 것이 요즘 이슈화된 취업난이다. 많은 대학 졸업생들이 공공기업에 취업을 희망하는데 공공기관마다 채용일정과 채용조건이 다르다. 이를 알기 위해서 현재는 각 기관의 홈페이지 또는 박람회를 통해 알 수 있는 실정이다. 이를 위해서 취업 준비생들을 위해 특화된 우리나라의 모든 공공기관의 채용일정, 채용조건, 제출서류 등의 정보를 모아둔 웹 서비스를 만들어보고 싶다.  	무엇이 되었든 해보고 싶었던 것들에 도전하는 해가 되었으면 좋겠다. 고등학생일 때에는 생각만 하고 실천으로 옮기지 못했던 것들이 늘 머릿속에 잔류하여 다른 일에 방해가 되고 고민을 만들어냈다. 때로는 앞선 걱정과 고민을 버리고 시도해보고 부딪혀보는 경험이 필요하다는 것을 알아도 스스로 그러한 것들을 해낼 여건이 되지 않는다는 생각에 늘 정체되어 있던 것 같다. 그래서 전문성에 도전하여 그 분야의 지식을 쌓고 새로운 도전을 해보고 싶다.	아는 것이 많이 없습니다. 배우는 과정에서 생각나는 것이 있다면 말씀드리겠습니다. 	\N	\N	\N	\N	\N	2020-03-28 14:50:53.559639	2020-03-28 14:50:53.559639	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N
73	1	장정은	jeongeun001023@naver.com	01094025513	경영정보학과	2019111552	2학년	프로그래밍에 대한 소질은 없지만 누구보다 잘하고 싶은 학생 장정은입니다.	 일단 코딩 교육 부분에서는 멋사만의 오프라인 교육과 멘토, 멘티 시스템이 있다는 점이 제일 이끌렸습니다. 제가 코딩에 관심을 가지고 자발적으로 공부해보았을 때 인터넷 검색과 유튜브 영상을 통한 온라인 학습에서는 궁금한 점에 대한 완벽한 해답을 찾기에는 어려움이 있었습니다. 하지만 이렇게 강의와 실습으로 구성되어있는 오프라인 교육과 모르는 부분이 있을 때 멘토에게 질문을 할 수 있다는 점에서 학습의 효율성을 높여줄 뿐만 아니라 코딩에 대한 흥미 또한 점차 커질 수 있다고 생각하였습니다. 더하여 창업에 대해서는 또다른 대외적인 활동을 따로 하지 않아도 멋사 내에서 진행하는 체계적인 창업 수업을 통해 IT서비스를 만들 수 있게 된다는 점이 좋았습니다. 창업에서도 다양한 분야가 있겠지만 그 중에서도 제 관심사인 IT에 집중이 되어 있는 것 같아 더 이끌렸습니다.	 창업에 대한 아이디어를 가진 사람들과 창업을 실현시키기 위해 뒷받침해 줄 수 있는 사람(투자자)들을 매칭해주는 웹서비스를 만들어보고 싶습니다. 창업에 대한 자신의 아이디어나 생각해둔 아이템을 업로드하면 투자자들은 자신의 관심분야와 관련된 아이디어를 가진 사람들을 찾을 수 있는 방식으로 운영될 것입니다. 창업에 대한 더욱 참신한 아이디어도 나올 수 있을 뿐만 아니라 창업의 활성화를 이끌어낼 수 있는 웹서비스가 될 수 있을 것이라 생각합니다.	 경영정보학과에 1년 동안 재학하면서 배웠던 코딩에 대한 얕은 지식을 멋사를 통해 전문적인 지식으로 발전시키고 실제로 프로그래밍이 활용되는 것을 경험하는 의미 있는 1년이 되고 싶습니다. 만약 멋사에 들어가게 된다면 멋사를 통해 대외적으로도 많은 사람들과 관심사를 공유하고 더 많은 것을 알아가면서 코딩에 대한 흥미를 키워갈 것입니다. 또한 학생으로서도 좋은 학점을 유지하기 위해서도 노력하며 현재 공부하고 있는 사회조사분석사 자격증도 이번 년도 안에 딸 수 있도록 노력할 것입니다. 늘 열정적이고 재미있는 하루하루를 만들어 가면서 누구보다 자신감 있는 2020을 보내고 싶습니다.		\N	\N	\N	\N	\N	2020-03-28 14:51:25.019391	2020-03-28 14:51:25.019391	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N
74	1	이동렬	academyblu@naver.com	01035369383	경영정보	2018113533	3	 저의 전공 장점을 더 키우고 싶은 경영정보학과 이동렬 학생입니다.	저는 현재 경영정보를 전공하고 있습니다. 마케팅, 조직 행동론, 재무관리와 같은 일반적인 경영학 교과목뿐 만 아니라 R과 python을 통해 데이터 프로그래밍을 하는 교과목도 수강했습니다. 일반적인 경영학 교과목들의 성적은 좋았지만 데이터 프로그래밍 관련 교과목들의 성적은 좋지 않았습니다. 하지만 저는 일반적인 경영학과와 다르게 코딩 교육을 받는 경영 정보학과의 장점을 살리고 싶습니다. 그래서 ‘멋쟁이 사자처럼’에서 python 코딩 교육을 받아 저의 실력을 더 키우고 싶습니다.\n 다양한 경험을 해야 저의 적성에 맞는 업무를 찾을 수 있다고 생각을 합니다. 저는 아직 창업 교육을 받은 적이 없습니다. 그래서 창업 수업을 통해 창업을 위해 필요한 능력, 스펙, 성격 등 창업에 대한 전반적인 지식을 쌓고 싶습니다.	실시간으로 미세먼지 수치를 알려주는 웹 서비스를 만들고 싶습니다.	 저는 python, R, Java 중 하나라도 예전보다 데이터 프로그래밍을 좀 더 수월하게 사용할 수 있게 되면 좋겠습니다. 현재 1학기에 신청한 전공 교과목은 SPSS를 이용하는 수업을 제외하고 나머지는 모두 필기, 암기형 과목입니다. 그래서 '멋쟁이 사자처럼‘에서 코딩 교육을 받게 된다면 수업과 병행하므로 힘들 수 있지만 이를 견디고 저의 코딩 실력을 더 키우는 2020년을 보내고 싶습니다.	 경영정보학과의 전공수업은 python뿐만 아니라 R, SPSS, Java를 이용하여 수업을 진행합니다. 특히, Java를 이용한 수업이 많으므로 Java로 코딩을 하는 수업도 듣고 싶습니다.	\N	\N	\N	\N	\N	2020-03-28 14:59:08.598932	2020-03-28 14:59:08.598932	\N	\N	\N	0	2	\N	\N	\N	\N	\N	\N	\N	\N
75	1	송요민	alsthd27@naver.com	01095775298	영화영상학과	2015113035	4	'아기코끼리 되기'는 수년 전 달성했으니 이제 '아기사자 되기'가 목표인, 아직 졸업과는 거리가 먼 4학년 학생입니다!	저는 초등학생 때부터 일련의 과정을 자동화시키는 것을 좋아했습니다. 예를 들어서 초등학생 때는 방문이 열리고 나서 바로 닫혔으면 하는 마음에 부엌 고무줄을 다 모아 벽-방문을 연결해 일종의 자동문을 만들었습니다. 중학생 때는 컴퓨터에 관심이 많아 수리기사를 자처해 친구들의 컴퓨터를 자주 고쳐주었는데요. 점점 저를 찾는 친구들이 많아지자 집 PC에 깔려있던 '나모 웹에디터 2008'로 간단한 웹사이트를 만들었습니다. 그 이후로는 웹사이트로만 접수를 받았고 고장 증상, 집 주소, 접수 순번 등의 정보를 모두 웹상에서 나열해 정리할 수 있었습니다. 이런 성격은 대학생이 된 지금까지 줄곧 유지돼왔습니다. 요즘은 제가 몸담고 있는 작은 교육봉사단체에서 업무용 메신저 슬랙을 통해 신입회원 온라인 온보딩 등 난도가 그리 높지 않은 업무자동화 작업을 하고 있습니다.\n\n이같은 경험들을 토대로 저는 언젠가부터 특정 분야 가릴 것 없이 기존의 과정에서 느끼는 복잡함이나 불편함을 해소하는 서비스를 직접 만들어보고 싶은 마음이 들었습니다. 개인적으로 예전부터 전공과 관련된 웹서비스를 하나 구상 중이었는데, 구현은 못 하고 생각만 하던 중 그새 비슷한 아이템이 론칭된 것을 발견한 적이 있습니다. 그 무렵 코딩 독학을 하다 포기하기도 했었고 추후 멋사 지원을 염두에 두고 있었기 때문에 따로 실천으로 옮기지 못 한 게 한이었습니다. 그래서 더 늦기 전에 아기사자가 되어 코딩을 배우고 창업을 꿈꾸는 분들과 함께하고 싶습니다.	제가 만들고 싶은 웹서비스는 위 문항에서 언급했던 것인데요. 영상제작자 등 크리에이터를 위해 저작권 문제가 없는 다양한 음원(배경음, 효과음 등)을 제공하는 사이트입니다. 대표적인 유사 서비스로는 해외엔 '오디오 정글', 국내엔 'BGM 팩토리'가 있습니다.\n\n전공이 영화영상학이다보니 영상 편집을 하는 경우가 많은데, 할 때마다 느끼는 것은 저작권 걱정 없이 마음껏 사용할 수 있는 음원이 생각보다 적다는 것이었습니다. 유료 음원을 구매하는 방법도 있지만, 원하는 음원을 찾았다 하더라도 비용을 지불하지 않으면 당장 편집 중인 영상과 잘 어울리는지 실시간으로 확인할 수가 없었습니다.  또 저작권 문제가 없는 무료 음원은 대부분 퀄리티가 낮거나 저작자가 몇 가지 이용 조건을 걸어두어 실질적으로 자유롭게 사용할 수 없었습니다. 퀄리티가 높은 무료 음원의 경우 저뿐만 아니라 다른 편집자들도 자주 사용하기 때문에 저의 고유한 아이덴티티을 담은 작품을 만들 수 없었습니다.\n\n그래서 많은 공을 들이는 작품을 편집할 땐 가급적 작곡을 전공하는 친구들에게 부탁을 하곤 했는데 그러다 문득 이런 서비스를 만들면 어떨까 하는 생각이 들었습니다. 제가 구상한 것을 간략히 말씀 드리자면, 이 사이트에 있는 모든 음원은 누구나 무료로 자유롭게 이용할 수 있습니다. 다만 무료 이용자에게는 카테고리 분류 기능을 제공하지 않고 기본적인 검색 기능과 보통 음질의 음원을 제공합니다. 반면 유료 구독자에게는 카테고리 분류 및 세부 검색 기능, 고음질 음원을 제공합니다.	올해도 벌써 4월을 향해 가고 있는데요. 부끄럽지만 저는 성적이 많이 낮습니다. 중고등학생 때부터 교과활동 보다는 비교과활동에 온 시간을 할애하더니 대학에 와서도 이러고 있습니다. 하지만 그만큼 제가 지속적으로 관심을 가져왔던 분야에 대한 전문성과 경험치는 많이 높아졌음을 느끼고 있습니다.\n\n그리고 저는 4학년이지만 아직 미필입니다. 정훈장교를 생각하고 있어 졸업 전에 포트폴리오(필모그래피)도 마련해야 하고 동시에 성적도 올려야 합니다. 그래서 졸업까지는 아직 시간이 꽤 남아 있습니다.\n\n이 시간을 활용해 저는 더 큰 성장을 하고 싶습니다. 작년과 비교할 수 없을 정도로 바쁘고 알찬 학기를 보내고 싶습니다. 이같은 결심에는 성적 복구, 포트폴리오 구성도 물론 있지만 예전부터 바라왔던 멋사 활동도 포함돼 있습니다.\n\n요약하자면 올해에는 '성적 복구', '포트폴리오 구성, 그리고 무엇보다 이전부터 만들고 싶었던 '웹서비스 구현'을 이뤄내고 싶습니다.		\N	\N	\N	\N	\N	2020-03-28 14:59:57.430391	2020-03-28 14:59:57.430391	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N
80	2	강동희	\N	\N	\N	2020112119	\N	18:20 - 18:40,18:40 - 19:00,19:00 - 19:20,19:20 - 19:40,19:40 - 20:00,20:00 - 20:20,20:20 - 20:40,20:40 - 21:00	18:20 - 18:40,18:40 - 19:00,19:00 - 19:20,19:20 - 19:40,19:40 - 20:00,20:00 - 20:20,20:20 - 20:40,20:40 - 21:00	\N	\N	\N	\N	\N	\N	\N	\N	2020-03-29 06:02:53.483183	2020-03-29 06:02:53.483183	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N
81	2	강현우	\N	\N	\N	2020112014	\N	19:00 - 19:20,19:20 - 19:40,19:40 - 20:00,20:00 - 20:20,20:20 - 20:40,20:40 - 21:00,21:00 - 21:20,21:20 - 21:40,21:40 - 22:00	19:20 - 19:40,19:40 - 20:00,20:00 - 20:20,20:20 - 20:40,20:40 - 21:00,21:00 - 21:20,21:20 - 21:40,21:40 - 22:00	\N	\N	\N	\N	\N	\N	\N	\N	2020-03-29 06:06:19.326637	2020-03-29 06:06:19.326637	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N
82	2	고수민	\N	\N	\N	2018111706	\N		19:00 - 19:20,19:20 - 19:40,19:40 - 20:00,20:00 - 20:20,20:20 - 20:40,20:40 - 21:00,21:00 - 21:20,21:20 - 21:40,21:40 - 22:00	\N	\N	\N	\N	\N	\N	\N	\N	2020-03-29 06:06:57.627965	2020-03-29 06:06:57.627965	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N
83	2	강혜연	\N	\N	\N	2017111136	\N	18:20 - 18:40,18:40 - 19:00	18:20 - 18:40,18:40 - 19:00	\N	\N	\N	\N	\N	\N	\N	\N	2020-03-29 06:07:51.76589	2020-03-29 06:07:51.76589	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N
84	2	라민정	\N	\N	\N	2020111260	\N	20:00 - 20:20,20:20 - 20:40,20:40 - 21:00,21:00 - 21:20,21:20 - 21:40,21:40 - 22:00	20:00 - 20:20,20:20 - 20:40,20:40 - 21:00,21:00 - 21:20,21:20 - 21:40,21:40 - 22:00	\N	\N	\N	\N	\N	\N	\N	\N	2020-03-29 06:07:57.270152	2020-03-29 06:07:57.270152	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N
88	2	최현지	\N	\N	\N	2018111581	\N	18:20 - 18:40,18:40 - 19:00,19:00 - 19:20,19:20 - 19:40,19:40 - 20:00,20:00 - 20:20,20:20 - 20:40,20:40 - 21:00,21:00 - 21:20,21:20 - 21:40,21:40 - 22:00		\N	\N	\N	\N	\N	\N	\N	\N	2020-03-29 06:11:18.098662	2020-03-29 06:11:18.098662	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N
94	2	임도연	\N	\N	\N	2019112524	\N	18:20 - 18:40,18:40 - 19:00,19:00 - 19:20,19:20 - 19:40,19:40 - 20:00,20:00 - 20:20,20:20 - 20:40	18:20 - 18:40,18:40 - 19:00,19:00 - 19:20,19:20 - 19:40,19:40 - 20:00	\N	\N	\N	\N	\N	\N	\N	\N	2020-03-29 06:38:05.432549	2020-03-29 06:38:05.432549	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N
95	2	이현석	\N	\N	\N	2016112648	\N		21:00 - 21:20	\N	\N	\N	\N	\N	\N	\N	\N	2020-03-29 06:38:20.475899	2020-03-29 06:38:20.475899	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N
110	2	정광수	\N	\N	\N	2014112487	\N	18:40 - 19:00,19:00 - 19:20,19:20 - 19:40	18:40 - 19:00,19:00 - 19:20,19:20 - 19:40	\N	\N	\N	\N	\N	\N	\N	\N	2020-03-29 08:49:35.56463	2020-03-29 08:49:35.56463	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N
\.


--
-- Name: applies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ubuntu
--

SELECT pg_catalog.setval('public.applies_id_seq', 132, true);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	production	2020-03-17 13:07:28.263902	2020-03-17 13:07:28.263902
\.


--
-- Data for Name: assignments; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.assignments (id, user_id, title, content, image, start_at, end_at, file, created_at, updated_at) FROM stdin;
2	5	아이디어 과제	<p>5월 23일에 예정된 아이디어톤을 준비하기 위해 8기 여러분들의 아이디어를 받고자 합니다.</p><p>본인이 만들고 싶은 서비스 아이디어를 자유롭게 적어주세요!</p>	\N	2020-04-15 04:00:00	2020-04-20 14:59:59	\N	2020-04-15 07:21:33.740596	2020-04-19 15:24:42.573762
9	3	페이지 이동 활용하기	<p>페이지 이동을 활용하여 간단한 게임, 퀴즈 등의 페이지를 자유롭게 만들어보시면 됩니다.</p>	\N	2020-06-04 02:02:23	2020-06-09 14:59:59	\N	2020-06-04 02:03:00.315587	2020-06-04 02:04:03.120475
3	2	자기소개 과제	<p><em>코드카데미 과제에서 학습한 html/css를 활용하여 html 파일 하나로 자기소개 페이지를 만들어주세요.</em></p><p><em>완성된 html파일을 웹 브라우저에 띄운 화면을 캡처한 사진과 html 파일을 제출해주시면 됩니다.</em></p><p><em>배운 내용을 바탕으로 부담없이 만들어주세요!</em></p><p><em>﻿</em></p><p><em> 참고) html 문서를 웹 브라우저에 띄우는 방법입니다!</em></p><p><em>자기소개 페이지가 잘 만들어졌는지 확인 후 제출해주세요.</em></p><p><em>- 메모장을 사용하는 방법: https://mainia.tistory.com/3917</em></p><p><em>- vs code를 사용하는 방법(권장): http://blog.naver.com/mathesis_time/221610656211</em></p>	\N	2020-04-22 14:59:59	2020-04-29 02:59:59	\N	2020-04-26 11:52:02.335317	2020-04-26 11:59:39.048237
4	3	아이디어 발표 자료 제출	<p><br></p>	\N	2020-05-09 12:00:00	2020-05-20 09:00:00	\N	2020-05-09 12:53:47.215173	2020-05-09 12:53:47.215173
10	3	지금까지 배운걸로 자유롭게 프로젝트 만들기	<p>오늘 세션을 통해 학기 중에 배웠던 것들을 복습하고 base, include, static에 대해서 배워봤습니다.</p><p>지금까지 배웠던 것들을 이용해서 자유롭게 프로젝트를 진행하고 github repository 경로를 올려주시면 됩니다.</p><p><br></p>	\N	2020-07-01 14:59:59	2020-07-07 14:59:59	\N	2020-07-01 14:57:05.943603	2020-07-02 07:35:28.735113
11	1	해커톤 팀빌딩 진행상황 업로드	<p>중앙 아이디어톤(<a href="http://idea.likelion.org/idea/" target="_blank">http://idea.likelion.org/</a>) 또는 동대멋사 아이디어톤(<a href="http://52.79.107.177/" target="_blank">http://52.79.107.177/</a>) 홈페이지에서 아이디어를 보고</p><p>팀원을 모집중인 아이디어 중에서 관심있는 아이디어를 올린 사람에게 합류를 요청하세요.</p><p>관심있는 아이디어가 없거나, 본인 아이디어로 해커톤에 참여하실 분들은 중앙 아이디어톤 사이트에 아이디어를 업로드해 주세요.</p><p>본인의 팀빌딩 진행상황(이메일 또는 카카오톡으로 아이디어 게시자에게 연락한 증빙자료 또는 중앙 아이디어톤 사이트에 업로드한 아이디어 url)을 제출해주시면 됩니다.</p><p>팀빌딩 진행을 하지 않으신 분들은 과제 미제출로 간주됩니다.</p>	\N	2020-07-03 12:27:36	2020-07-08 09:29:29	\N	2020-07-03 12:32:09.78928	2020-07-03 12:32:09.78928
5	3	부트스트랩을 이용한 자기소개 페이지	<p>자기소개 페이지에 부트스트랩을 적용해서 깃허브에 올려주세요.</p><p>과제는 코드를 올린 링크를 제출해주세요.</p>	\N	2020-05-09 13:00:00	2020-05-20 14:59:59	\N	2020-05-09 13:48:43.317254	2020-05-20 08:09:11.169951
6	3	장고 강의 들어오기	<p>구름 멋사 채널에서 '초보자를 위한 Django 뿌시기'를 듣고 완료 화면 캡쳐 해서 올려주시면 됩니다.</p><p><br></p><p>Django 기초 부분</p><p>1강. Django란?</p><p>2강. MTV 패턴에 대한 이해</p><p><br></p><p>여기만 들으시면 돼요.</p>	\N	2020-05-21 09:00:00	2020-05-26 14:59:59	\N	2020-05-21 09:23:59.855907	2020-05-21 09:23:59.855907
7	3	장고 뿌시기 강의 5강, 6강 들어오기	<p>장고 뿌시기 5강과 6강 수강을 완료하고, 완료 화면을 캡쳐해서 올려주시면 됩니다.</p>	\N	2020-05-28 04:00:00	2020-06-02 14:59:59	\N	2020-05-28 08:17:26.49844	2020-05-28 08:17:26.49844
8	3	로컬에서 장고 서버 실행시키기	<p>로컬에서 장고 환경세팅을 마무리하고, 서버를 실행시킨 화면을 캡쳐해서 올리시면 돼요.</p>	\N	2020-05-28 04:00:00	2020-06-02 14:59:59	\N	2020-05-28 08:18:24.773539	2020-05-28 08:18:24.773539
14	1	여름학기 4주차 과제	<p>지난 주에 과제로 제출했던 프로젝트에서 django-allauth, 1:N 관계의 모델링을 추가해 주세요.</p>	\N	2020-07-23 01:42:42	2020-07-28 14:59:59	\N	2020-07-23 01:43:02.358248	2020-07-23 01:43:02.358248
13	1	여름학기 3주차 과제	<p><span style="color: rgb(0, 0, 0);">지난 주에 과제로 제출했던 프로젝트에서 U(Update), D(Delete), media 기능을 추가해 주세요.</span></p>	\N	2020-07-16 01:40:27	2020-07-21 14:59:59	\N	2020-07-16 01:40:54.199359	2020-07-23 01:43:17.059696
12	1	여름학기 2주차 과제	<p>지난 주에 과제로 제출했던 프로젝트에서 C(Create), R(Read) 기능을 추가해 주세요.</p>	\N	2020-07-09 01:06:35	2020-07-14 14:59:59	\N	2020-07-09 01:08:15.888017	2020-07-23 01:43:25.986533
15	1	여름학기 5주차 과제	<p>지난 주에 과제로 제출했던 프로젝트에서 조회수 기능을 추가해 주세요.</p><p>다음 주에 있을 미니 해커톤을 위해 지금까지 배운 내용 복습은 필수!</p>	\N	2020-07-29 16:38:50	2020-08-04 14:59:59	\N	2020-07-29 16:39:10.773873	2020-07-29 16:39:10.773873
20	1	여름학기 8주차 과제	<ul><li>여름학기에 과제로 제출하던 프로젝트(조회수까지 구현된 상태)</li><li>CRUD 해커톤에서 만든 쇼핑몰 프로젝트</li></ul><p>둘 중 하나의 프로젝트를 골라서 댓글 CRUD와 구글 소셜로그인 기능을 추가해주세요.</p><p>(참고: 댓글 U, D는 수업에서 진행하지 않았지만 직접 코드를 짜 보세요.)</p>	\N	2020-08-19 16:27:12	2020-08-25 14:59:59	\N	2020-08-19 16:47:03.645071	2020-08-19 16:47:03.645071
17	1	CRUD 해커톤 제출	<p>Github repository url을 올려주세요.</p><p>마감시간 이전에 push된 commit까지만 채점에 반영됩니다.</p>	\N	2020-08-05 10:24:49	2020-08-05 11:49:59	\N	2020-08-05 10:25:09.327512	2020-08-05 11:40:56.466878
18	1	여름학기 6주차 과제	<p>8월 5일 진행한 CRUD 해커톤 프로젝트를 완성한 결과물을 push한 Github repository url을 제출해 주세요.</p>	\N	2020-08-05 16:43:47	2020-08-11 14:59:59	\N	2020-08-05 16:44:09.458656	2020-08-05 16:44:09.458656
19	1	CRUD 해커톤 프로젝트 보충과제	<p>CRUD 해커톤 프로젝트를 보충한 결과물을 push한 Github repository url을 제출해 주세요.</p>	\N	2020-08-13 12:48:53	2020-08-19 09:29:29	\N	2020-08-13 12:49:11.797003	2020-08-13 12:49:11.797003
22	1	2학기 2주차 과제	<p>SNS 프로젝트에서</p><ul><li>마이페이지 제작(나를 팔로우 하는 사람(팔로워), 내가 팔로우 하는 사람(팔로잉), 내가 작성한 게시글 모아보기가 있어야 함)</li><li>home(전체 게시글 목록)에서 작성자 이름을 누르면 해당 사용자의 마이페이지로 이동할 수 있어야 함</li></ul><p>을 추가해주세요.</p>	\N	2020-09-10 02:42:08	2020-09-15 14:59:59	\N	2020-09-10 02:42:26.190025	2020-09-10 02:42:26.190025
21	1	2학기 1주차 과제	<p>지난 번 과제로 제출했던 프로젝트에서</p><ul><li>좋아요/좋아요 취소 기능</li><li>내가 좋아요 한 글 목록 페이지</li><li>상세보기 페이지에서 좋아요 개수 및 좋아요를 누른 유저를 표시</li></ul><p>를 추가해주세요.</p>	\N	2020-09-03 04:41:48	2020-09-08 14:59:59	\N	2020-09-03 04:42:00.292139	2020-09-03 04:46:31.135919
23	1	2학기 3주차 과제	<p>myblog 프로젝트를 ModelForm으로 변경해주세요.</p>	\N	2020-09-16 15:47:04	2020-09-23 02:59:59	\N	2020-09-16 15:47:17.970651	2020-09-22 15:09:04.785394
24	1	Django 프로젝트 배포하기	<p>배포한 Django 프로젝트의 주소를 올려주세요.</p>	\N	2020-09-23 12:28:09	2020-09-29 14:59:59	\N	2020-09-23 12:47:35.290158	2020-09-23 12:47:35.290158
25	2	JavaScript/jQuery 과제	<p>JavaScript/jQuery 과제를 완료한 후, Github repository url을 제출해 주세요.</p>	\N	2020-10-28 13:37:10	2020-11-03 14:59:59	\N	2020-10-28 13:37:36.782667	2020-10-28 13:37:36.782667
26	10	싫어요 Ajax 과제	<p>Ajax를 이용해 싫어요 기능을 추가한 Django 프로젝트를 Github repository에 push 한 후, url을 남겨주세요.</p>	\N	2020-11-05 02:35:08	2020-11-10 14:59:59	\N	2020-11-05 02:35:21.874952	2020-11-05 02:35:21.874952
27	3	댓글 삭제 ajax 과제	<p><span style="color: rgb(0, 0, 0);">Ajax를 이용해 댓글 삭제 기능을 추가한 Django 프로젝트를 Github repository에 push 한 후, url을 남겨주세요.</span></p>	\N	2020-11-12 01:12:49	2020-11-17 14:59:59	\N	2020-11-12 01:13:26.920838	2020-11-12 01:13:58.817434
\.


--
-- Name: assignments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ubuntu
--

SELECT pg_catalog.setval('public.assignments_id_seq', 27, true);


--
-- Data for Name: comments; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.comments (id, commentable_type, commentable_id, user_id, body, created_at, updated_at) FROM stdin;
3	\N	\N	11	댓글\n	2020-04-13 06:39:19.450572	2020-04-13 06:39:19.450572
4	\N	\N	3	댓글댓글	2020-04-13 07:25:56.642943	2020-04-13 07:25:56.642943
7	Submission	26	2	무신사 급으로 성장하면 옷 한 벌 부탁드릴게요 ㅎㅎㅎ	2020-04-19 11:03:59.957137	2020-04-19 11:03:59.957137
8	Submission	22	2	아이디어가 현실세계에 구현이 되기를 기대해봅니다 ㅎ.ㅎ	2020-04-19 11:10:44.144624	2020-04-19 11:10:44.144624
9	Submission	35	2	훌륭합니다!	2020-04-19 14:41:41.927325	2020-04-19 14:41:41.927325
10	Submission	15	3	굿굿	2020-04-19 15:51:44.869467	2020-04-19 15:51:44.869467
11	Submission	30	3	좋은 아이디어인 것 같아요	2020-04-19 15:52:21.909056	2020-04-19 15:52:21.909056
6	\N	\N	2	ㅎㅇㅎㅇ	2020-04-17 09:29:30.970597	2020-04-17 09:29:30.970597
5	\N	\N	2	잘 달립니다요	2020-04-17 09:29:17.096232	2020-04-17 09:29:17.096232
2	\N	\N	3	댓글 달리네	2020-04-13 06:15:34.795301	2020-04-13 06:15:34.795301
1	\N	\N	3	댓글 달리나?	2020-04-13 06:15:23.470433	2020-04-13 06:15:23.470433
13	Submission	199	12	수정한 링크입니다!\n\nhttps://github.com/dhk010111/project	2020-07-08 04:41:30.278784	2020-07-08 04:41:30.278784
\.


--
-- Name: comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ubuntu
--

SELECT pg_catalog.setval('public.comments_id_seq', 15, true);


--
-- Data for Name: galleries; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.galleries (id, user_id, title, content, image, created_at, updated_at) FROM stdin;
1	3	\N	\N	5c9b2c46-b818-4dad-b979-e7b3d71f7c23헤커톤1.jpg.jpg	2020-04-13 12:32:07.901253	2020-04-13 12:32:07.901253
\.


--
-- Name: galleries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ubuntu
--

SELECT pg_catalog.setval('public.galleries_id_seq', 1, true);


--
-- Data for Name: lectures; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.lectures (id, user_id, title, content, image, view_count, lecture_type, created_at, updated_at, file) FROM stdin;
2	9	1주차(04.29) 강의노트	<p>1주차 강의노트입니다.</p>	\N	\N	\N	2020-05-20 03:59:20.499587	2020-05-20 03:59:20.499587	세션1.pdf
3	3	방학 세션 1주차(07.01) 강의노트	<p>방학 세션 1주차 강의 자료입니다.</p>	\N	\N	\N	2020-07-01 15:03:40.430439	2020-07-01 15:06:42.905825	방학_week01.pdf
4	11	방학 세션 2주차(07.08) 강의노트	<p>방학 세션 2주차 강의 자료입니다.</p>	\N	\N	\N	2020-07-09 10:50:06.164503	2020-07-09 10:50:40.938936	week02-배포용.pdf
5	10	방학 세션 3주차(07.15) 강의노트	<p><span style="color: rgb(0, 0, 0);">방학 세션 3주차 강의 자료입니다.</span></p>	\N	\N	\N	2020-07-16 01:43:08.571287	2020-07-16 01:43:08.571287	동대멋사_3주차_수업자료.pdf
6	6	방학 세션 4주차(07.22) 강의노트	<p>방학 세션 4주차 강의 자료입니다.</p>	\N	\N	\N	2020-07-23 01:45:10.688909	2020-07-23 01:45:10.688909	4주차세션_관계모델_Django-allauth_User.pdf
7	2	방학 세션 5주차(07.29) 강의노트	<p>방학 세션 5주차 강의 자료입니다.</p>	\N	\N	\N	2020-07-29 17:46:39.670908	2020-07-29 17:46:39.670908	5주차세션_배포용_최종.pptx
8	1	방학 세션 6주차(08.05) CRUD 해커톤	<p><br></p>	\N	\N	\N	2020-08-19 16:53:39.321142	2020-08-19 16:55:04.951526	해커톤_프로젝트_요구사항.pdf
9	1	방학 세션 8주차(08.19) 강의노트	<p>방학 세션 8주차 강의 자료입니다.</p><p>댓글 C, R</p>	\N	\N	\N	2020-08-19 16:55:15.564616	2020-08-19 16:55:15.564616	week08-배포용.pdf
10	1	방학 세션 8주차(08.19) 강의노트 - 구글 소셜로그인	<p>방학 세션 8주차 강의 자료입니다.</p><p>구글 소셜로그인</p>	\N	\N	\N	2020-08-19 16:56:01.510401	2020-08-19 16:56:01.510401	week08-Google_소셜로그인-배포용.pdf
11	5	2학기 1주차(09.02) 강의노트	<p>2학기 1주차(09.02) 강의노트입니다.</p>	\N	\N	\N	2020-09-10 02:45:08.067409	2020-09-10 02:45:08.067409	1주차_좋아요-배포용.pdf
12	3	2학기 2주차(09.09) 강의노트	<p>2학기 2주차(09.09) 강의노트입니다.</p>	\N	\N	\N	2020-09-10 02:45:35.747866	2020-09-10 02:45:35.747866	2주차_배포용.pdf
13	2	2학기 3주차(09.16) 강의노트-ModelForm	<p>2학기 3주차(09.16) 강의노트입니다. (ModelForm)</p>	\N	\N	\N	2020-09-16 15:32:44.457186	2020-09-16 15:32:44.457186	모델폼.pdf
14	2	2학기 3주차(09.16) 강의노트-django crispy forms	<p>2학기 3주차(09.16) 강의노트입니다.(django-crispy-forms)</p>	\N	\N	\N	2020-09-16 15:33:30.096572	2020-09-16 15:33:30.096572	장고크리스피폼.pdf
\.


--
-- Name: lectures_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ubuntu
--

SELECT pg_catalog.setval('public.lectures_id_seq', 14, true);


--
-- Data for Name: recruits; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.recruits (id, member_num, start_at, end_at, ask1_q, ask2_q, ask3_q, ask4_q, ask5_q, created_at, updated_at, ask6_q, ask7_q, ask8_q, additional1_q, additional2_q, additional3_q, ask9_q, ask10_q, ask1_type, ask2_type, ask3_type, ask4_type, ask5_type, ask6_type, ask7_type, ask8_type, ask9_type, ask10_type, ask1_choices, ask2_choices, ask3_choices, ask4_choices, ask5_choices, ask6_choices, ask7_choices, ask8_choices, ask9_choices, ask10_choices) FROM stdin;
1	0	2020-03-17 13:00:00	2020-03-28 15:00:00	한 문장으로 자기소개를 해주세요.	왜 멋사에서 코딩 교육과 창업 수업을 듣고 싶으신가요?(700자 이내)	멋사에서 만들고 싶은 웹 서비스는?	2020년을 어떻게 보내고 싶은가요? 이루고 싶은 것이 있다면 작성해 주세요.	예정된 커리큘럼 이외에 멋사에서 배우고 싶은 것이 있나요? (본 질문은 8기 운영에 참고하기 위한 것으로, 지원자를 평가하는 항목이 아닙니다.)	2020-03-17 13:30:34.600273	2020-03-24 09:50:55.154378				4월 8일 수요일 18시 30분부터 진행하는 OT에 참석하시나요?	4월 11일 토요일~12일 일요일에 진행하는 MT에 참석하시나요?				0	0	0	0	0	\N	\N	\N	\N	\N										
2	0	2020-03-29 06:00:00	2020-03-30 06:00:00	4월 1일 수요일	4월 2일 목요일				2020-03-28 15:47:39.828711	2020-03-29 03:50:33.635728				4월 22일 수요일 18시 30분부터 진행하는 OT에 참석하시나요?					2	2	\N	\N	\N	\N	\N	\N	\N	\N	18:20 - 18:40/18:40 - 19:00/19:00 - 19:20/19:20 - 19:40/19:40 - 20:00/20:00 - 20:20/20:20 - 20:40/20:40 - 21:00/21:00 - 21:20/21:20 - 21:40/21:40 - 22:00	18:20 - 18:40/18:40 - 19:00/19:00 - 19:20/19:20 - 19:40/19:40 - 20:00/20:00 - 20:20/20:20 - 20:40/20:40 - 21:00/21:00 - 21:20/21:20 - 21:40/21:40 - 22:00								
\.


--
-- Name: recruits_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ubuntu
--

SELECT pg_catalog.setval('public.recruits_id_seq', 2, true);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.schema_migrations (version) FROM stdin;
20200121082820
20200123080434
20200123080855
20200123085529
20200123085752
20200124025246
20200124025339
20200131040038
20200205061933
20200205080530
20200207032320
20200208040337
20200208040338
20200208040339
20200208040340
20200208040341
20200208040342
20200209113207
20200213072221
20200227121527
20200227121746
20200302060047
20200316125805
20200316130146
20200324070909
20200324071624
20200411142522
20200411142523
\.


--
-- Data for Name: submissions; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.submissions (id, user_id, assignment_id, title, description, url, image, file, view_count, grade, created_at, updated_at) FROM stdin;
15	31	2	장영동 아이디어 제안서(첨부파일)	\N		\N	\N	26	0	2020-04-17 07:58:56.186186	2020-05-03 02:53:03.846105
65	30	4	아이디어 발표 자료	아이디어 발표 자료 제출		\N	Qame_임도연.pdf	2	0	2020-05-15 02:19:00.073483	2020-05-20 08:36:08.737091
73	15	5	2020111625김동연		https://github.com/rlaehddus/ABC.git	\N	\N	5	0	2020-05-19 03:42:28.258428	2020-05-20 08:39:29.325838
34	17	2	아이디어 제출	\N		\N	\N	12	0	2020-04-19 13:27:53.740716	2020-05-07 17:46:04.737934
18	26	1	수강인증_과제제출	\N		\N	\N	8	0	2020-04-17 09:27:22.058134	2020-04-23 07:18:52.092754
12	20	2	아이디어 과제 제출	\N		\N	\N	21	0	2020-04-16 08:52:20.488151	2020-05-20 02:44:11.386829
69	27	5	이소정 자기소개 과제	https://github.com/SJLEE316/HELLO_GOORM	https://github.com/SJLEE316/HELLO_GOORM	\N	\N	7	0	2020-05-18 02:38:10.177001	2020-05-20 08:43:02.963055
49	21	1	코드카데미 이수 과제 제출합니다	\N		\N	\N	3	0	2020-04-21 09:34:53.775178	2020-04-21 14:26:30.81249
47	12	1	코드카데미 과제	\N		\N	\N	3	0	2020-04-21 06:22:13.853204	2020-04-21 14:26:34.554082
54	34	1	코드카데미 html/css 과정 이수 과제 제출합니다.	\N		\N	\N	1	0	2020-04-21 12:47:39.110105	2020-04-21 13:25:21.45715
22	15	2	2020111625 김동연	\N		\N	\N	17	0	2020-04-18 08:32:15.927308	2020-05-08 15:36:41.42801
55	18	1	김태연_2020112107_코드카데미 과정이수 과제	\N		\N	\N	2	0	2020-04-21 12:57:03.756045	2020-04-21 15:00:38.17237
41	16	1	코드카데미 과제 제출	\N		\N	\N	4	0	2020-04-20 01:45:10.678368	2020-04-21 15:00:41.974594
14	20	1	코드카데미 과제 제출	\N		\N	\N	6	0	2020-04-17 07:23:32.501336	2020-04-21 13:25:45.587826
48	31	1	장영동 코드카데미	\N		\N	\N	3	0	2020-04-21 07:33:01.22089	2020-04-21 15:00:49.427623
17	26	2	WearThenBuy 서비스	\N		\N	\N	22	0	2020-04-17 09:17:03.62758	2020-04-23 07:19:07.583483
61	17	1	과제 제출합니다!	\N		\N	\N	1	0	2020-04-21 14:55:53.984673	2020-05-15 03:42:25.119528
33	25	2	회춘 : 온라인 실버타운	\N		\N	\N	21	0	2020-04-19 09:33:42.423712	2020-04-23 07:19:19.970847
35	28	2	2019110245 이예은 아이디어 과제 제출	\N		\N	\N	8	0	2020-04-19 13:47:37.547466	2020-04-23 02:18:45.362847
32	34	2	1인 1 아이디어 과제 제출합니다. 	\N		\N	\N	17	0	2020-04-19 08:48:06.404359	2020-04-24 02:54:12.142095
44	25	1	코드카데미 과제 제출입니다!	\N		\N	\N	1	0	2020-04-20 15:46:25.649895	2020-04-21 13:26:39.86527
23	16	2	아이디어 과제 제출	\N		\N	\N	15	0	2020-04-18 14:14:23.917096	2020-04-23 02:02:31.271174
19	30	1	8기 임도연 과제 제출	\N		\N	\N	4	0	2020-04-17 12:35:08.630855	2020-04-19 15:34:50.831507
50	29	1	과제 제출 	\N		\N	\N	2	0	2020-04-21 09:43:00.774946	2020-04-21 14:39:34.197762
24	12	2	경제 학습 커리큘럼 사이트	\N		\N	\N	9	0	2020-04-18 15:21:02.935553	2020-04-23 02:03:45.769367
56	28	1	이예은_html/css 과제 제출합니다	\N		\N	\N	1	0	2020-04-21 14:11:33.197185	2020-04-21 14:39:42.45974
42	13	2	기업청원 서비스	\N	http://www.president.go.kr/	\N	\N	12	0	2020-04-20 04:58:51.368752	2020-04-23 02:22:01.093374
52	33	1	4/21 과제입니다.	\N		\N	\N	2	0	2020-04-21 10:37:25.24233	2020-05-15 03:42:26.798727
26	29	2	나도 멋쟁이가 될수있어 	\N		\N	\N	17	0	2020-04-18 17:37:03.402709	2020-04-23 02:04:44.868857
60	15	1	코드카데미과제	\N		\N	\N	2	0	2020-04-21 14:54:52.93066	2020-04-24 12:53:28.621899
43	13	1	코드카데미	\N		\N	\N	4	0	2020-04-20 06:29:19.311129	2020-04-24 12:53:33.178565
20	30	2	8기 임도연 아이디어 과제 제출입니다.	\N		\N	\N	17	0	2020-04-17 16:55:38.621322	2020-04-23 02:30:33.399834
27	27	2	우리 언제 만날까?	\N		\N	\N	15	0	2020-04-19 01:39:51.99172	2020-04-23 02:05:37.755251
46	32	1	코드카데미과제_정광수	\N		\N	\N	2	0	2020-04-21 05:05:22.787972	2020-04-21 14:25:47.170442
57	24	1	코드카데미 과제 제출합니다_2019110462양지우	\N		\N	\N	2	0	2020-04-21 14:20:29.189934	2020-04-24 12:53:40.173143
64	30	5	자기소개페이지	자기소개 페이지 과제 제출	https://github.com/dddooo9/dgulion.git	\N	\N	9	0	2020-05-15 02:15:45.537054	2020-06-09 13:12:26.609786
71	31	5	장영동 과제제출	https://github.com/jang-1996/dongguk_lion		\N	\N	6	2	2020-05-18 20:33:10.174661	2020-09-17 18:15:18.54385
45	19	1	2019112151 김태형 과제 제출	\N		\N	\N	2	0	2020-04-21 03:20:04.542701	2020-04-24 12:53:43.763926
59	22	1	코드카데미 과제	\N	https://www.codecademy.com/profiles/2653618833	\N	\N	1	0	2020-04-21 14:42:33.488153	2020-06-09 14:55:26.717065
36	23	2	신주연-아이디어제출입니다.	\N		\N	\N	12	0	2020-04-19 14:23:25.771465	2020-04-23 04:13:30.220447
29	18	2	2020112107 정보통신공학과 김태연	\N		\N	\N	13	0	2020-04-19 06:11:06.179261	2020-04-23 02:07:45.420965
30	24	2	아이디어 과제 제출합니다	\N		\N	\N	13	0	2020-04-19 07:53:16.076408	2020-04-23 02:10:24.070221
58	23	1	신주연 코드카데미 강의 과정 이수 인증입니다.	\N		\N	\N	0	0	2020-04-21 14:31:41.343331	2020-04-21 14:31:41.355481
53	27	1	#1	\N		\N	\N	1	0	2020-04-21 11:30:00.415052	2020-04-21 13:27:00.13633
31	33	2	이 강의듣는 사람 여기 모여라 "클래스메이트"	\N		\N	\N	8	0	2020-04-19 08:04:54.425724	2020-04-23 02:14:57.199104
51	14	1	코드카데미 과제입니다	\N		\N	\N	3	0	2020-04-21 10:03:57.402662	2020-04-24 15:23:35.814684
25	32	2	내가 만들어보고 싶은 서비스_정광수	\N		\N	\N	24	0	2020-04-18 16:40:59.775694	2020-04-23 01:46:07.564631
11	22	2	리리뷰(Re-review)	\N	www.rereview.co.kr	\N	\N	20	0	2020-04-16 08:51:29.004147	2020-04-23 01:48:04.399779
28	14	2	웹서비스 아이디어	\N		\N	\N	18	0	2020-04-19 04:13:00.52206	2020-05-18 23:35:34.446759
70	25	5	부트스트랩 이용 과제		https://github.com/Awarduuu/rep	\N	\N	8	0	2020-05-18 07:06:24.054577	2020-05-20 10:10:48.577601
67	25	4	회춘 : 온라인실버타운	아이디어 과제 발표 자료입니다.		\N	멋쟁이사자처럼_아이디어_제출_과제_윤상우.pptx	3	0	2020-05-17 06:51:05.789524	2020-05-20 08:35:37.165427
37	19	2	오늘 뭐 먹지? - 대학가 맛집 추천, 평가, 실시간 여석(예약) 서비스 	\N		\N	\N	16	0	2020-04-19 14:56:25.762419	2020-05-20 02:44:16.9884
21	21	2	아이디어 제출합니다.	\N		\N	\N	23	0	2020-04-17 19:50:25.029545	2020-05-19 07:19:41.918441
62	25	3	자기소개 과제_윤상우	\N		\N	\N	9	0	2020-04-26 13:23:54.206568	2020-08-05 05:01:20.084922
66	34	5	과제 제출합니다.		https://github.com/hyeonjee/hi	\N	\N	10	2	2020-05-15 19:58:26.157286	2020-09-17 18:15:01.465256
88	28	4	2019110245 이예은 아이디어 발표 자료			\N	아이디어과제.pptx	2	0	2020-05-20 04:36:48.771569	2020-05-20 08:37:59.434462
90	12	4	아이디어 발표 자료			\N	멋사_아이디어.pptx	1	0	2020-05-20 05:59:28.92992	2020-05-20 08:38:10.547722
99	17	5	자기소개 과제		https://github.com/soeun-25/lion	\N	\N	0	0	2020-05-20 08:33:04.406615	2020-05-20 08:33:04.406615
105	31	4	장영동 과제 제출			\N	멋사_아이디어_발표_자료.pptx	0	0	2020-05-20 09:20:04.148567	2020-05-20 09:20:04.148567
68	24	5	부트스트랩 이용한 자기소개 페이지 과제 제출합니다!	GitHub 주소 : https://github.com/didwldn3032/-	https://github.com/didwldn3032/-	\N	\N	1	0	2020-05-17 13:04:52.338246	2020-05-19 22:03:21.151677
113	29	6	과제제출			\N	멋사과제.png	1	0	2020-05-25 10:25:47.964137	2020-05-26 18:04:05.929697
82	22	5	부트스트랩으로 자기소개 페이지 만들기	http://bluemove.or.kr/lion-index.html	https://github.com/alsthd27/self-introduction	\N	\N	3	0	2020-05-19 13:26:30.198877	2020-05-20 10:11:16.732129
77	14	5	부트스트랩을 이용한 자기소개 페이지	고명기 과제 제출입니다~	https://github.com/godgi	\N	\N	4	0	2020-05-19 08:12:07.144066	2020-05-20 10:12:12.623596
78	29	5	자기소개 페이지 	http://dguhomework-yecei.run.goorm.io/\r\nhttps://github.com/lhs961021/homework		\N	\N	3	0	2020-05-19 09:01:28.312914	2020-05-20 03:26:45.219378
91	14	4	아이디어 발표 자료 제출	고명기 과제 제출입니다~		\N	멋사_아이디어_발표.pptx	1	0	2020-05-20 06:19:38.754176	2020-05-20 08:38:20.468581
112	27	6	이소정			\N	캡처.JPG	0	0	2020-05-25 02:00:31.212182	2020-05-25 02:00:31.212182
83	12	5	강동희_자기소개	레퍼지토리 링크 입니다!\r\nhttps://github.com/dhk010111/dhk	https://github.com/dhk010111/dhk	\N	\N	2	0	2020-05-19 13:38:26.821675	2020-05-20 08:47:31.443916
97	27	4	이소정			\N	이소정.pptx	2	0	2020-05-20 07:57:07.502579	2020-05-20 08:48:59.187819
81	15	4	2020111625김동연			\N	멋사_발표자료.pptx	1	0	2020-05-19 11:35:50.470935	2020-05-20 08:36:39.270717
96	18	4	김태연_취미공유커뮤니티 서비스			\N	취미공유_커뮤티니_서비스_1인_1아이디어_발표.pptx	1	0	2020-05-20 07:33:56.718754	2020-05-20 08:36:51.362461
84	23	5	신주연 과제 제출입니다.		https://github.com/juyeonshin/juyeon2.git	\N	\N	5	2	2020-05-19 14:36:20.64561	2020-06-09 13:11:51.723913
98	33	4	주현이 발표 자료			\N	아이디어_과제_발표_제출용.pdf	1	0	2020-05-20 07:57:51.756354	2020-05-20 08:37:17.872903
95	21	4	컴퓨터공학전공 박채은 아이디어 발표자료 제출합니다			\N	아이디어_발표.pptx	2	0	2020-05-20 07:22:05.238009	2020-05-20 08:37:25.915326
85	24	4	아이디어 발표 자료 제출합니다			\N	아이디어_과제_PPT.pdf	1	0	2020-05-19 17:53:40.108265	2020-05-20 08:37:35.034195
87	28	5	2019110245 이예은 과제제출		https://github.com/lee00096/yeeun.git	\N	\N	2	0	2020-05-20 01:49:34.641075	2020-05-20 10:30:24.765023
86	17	4	2020111765 김소은 아이디어 발표 과제 제출합니다.			\N	멋사_발표_ppt.pptx	1	0	2020-05-19 18:59:08.603069	2020-05-20 08:37:42.999946
100	19	5	2019112151_김태형		Https://github.com/pletain/lion.git	\N	\N	2	0	2020-05-20 08:34:20.255879	2020-06-09 13:11:21.802082
89	13	4	TRACKER : 위치정보시각화 어플리케이션	제출합니다. 감사합니다.		\N	아이디어톤_발표자료_강협_0520.pdf	1	0	2020-05-20 05:11:27.463392	2020-05-20 08:37:51.250444
93	16	4	아이디어 과제 제출			\N	아이디어_발표.pdf	1	0	2020-05-20 06:51:09.525489	2020-05-20 08:38:29.340963
76	16	5	부트스트랩 이용한 자기소개 페이지	과제 제출합니다	https://github.com/minzzy107/-1007 	\N	\N	2	0	2020-05-19 07:03:56.741462	2020-05-20 08:38:40.934105
94	29	4	너도 멋쟁이가 될수 있어!			\N	너도_멋쟁이가_될_수_있어_.pptx	1	0	2020-05-20 07:00:45.106187	2020-05-20 08:39:04.492333
80	18	5	김태연_자기소개페이지 만들기		https://github.com/taeyeon0319/taeyeon0319	\N	\N	1	0	2020-05-19 11:13:29.441511	2020-05-20 08:39:07.865107
101	19	4	2019112151 김태형			\N	오늘_뭐_먹지.pptx	1	0	2020-05-20 08:34:34.901523	2020-05-20 08:39:30.052243
79	29	5	자기소개 페이지 	http://dguhomework-yecei.run.goorm.io/\r\nhttps://github.com/lhs961021/homework		\N	\N	1	0	2020-05-19 09:01:28.436699	2020-05-20 08:39:40.761183
104	34	4	발표 자료 제출합니다			\N	발표_ppt.pptx	2	0	2020-05-20 08:55:25.189043	2020-05-20 10:47:25.143323
108	13	6	강의 수강 완료	강의를 수강했습니다.\r\n사진을 제출합니다. \r\n\r\n감사합니다.		\N	Django_강의_수료.jpg	0	0	2020-05-22 07:22:54.300012	2020-05-22 07:22:54.300012
109	16	6	장고 강의 1-2강 수강 완료			\N	9379E62C-D668-489E-8C2F-B5333471EA0C.png	0	0	2020-05-23 03:27:03.246807	2020-05-23 03:27:03.246807
72	33	5	주현이 부트스트랩 자기소개 페이지 과제입니다.		https://github.com/hyeoneedyou/self-introduction-HY	\N	\N	3	0	2020-05-18 23:33:42.692265	2020-05-20 09:03:44.326682
110	12	6	강동희 장고 강의			\N	멋사_강의_과제.PNG	0	0	2020-05-23 05:29:32.437594	2020-05-23 05:29:32.437594
102	32	5	과제 제출합니다!	https://github.com/wjdrhkdtn/wjdrhkdtn.git	https://github.com/wjdrhkdtn/wjdrhkdtn.git	\N	\N	2	0	2020-05-20 08:34:46.322201	2020-06-09 13:10:50.482776
103	32	4	아이디어 발표자료_정광수	아이디어 발표자료_정광수		\N	가로등알리미.pptx	2	0	2020-05-20 08:35:18.205457	2020-07-09 02:16:27.823149
107	15	6	2020111625			\N	django.png	1	0	2020-05-22 04:58:26.883028	2020-05-24 06:48:58.770393
111	28	6	2019110245 이예은 장고 강의 청강 과제	과제 완료했습니다!		\N	장고강의청강.PNG	1	0	2020-05-23 06:01:00.136336	2020-05-24 06:49:10.553272
114	30	6	장고 강의 과제			\N	django_임도연.jpg	0	0	2020-05-25 11:37:26.381508	2020-05-25 11:37:26.381508
115	25	6	Django 듣기 과제_윤상우			\N	Django_강의_듣기_과제.png	0	0	2020-05-25 13:50:54.873578	2020-05-25 13:50:54.873578
116	19	6	2019112151김태형 과제 제출			\N	캡처.PNG	0	0	2020-05-25 14:05:51.337434	2020-05-25 14:05:51.337434
117	31	6	장고 강의 듣기	휼륭한 강의였습니다.!		\N	스크린샷_2020-05-26_오전_12.41.53.png	0	0	2020-05-25 15:42:24.231403	2020-05-25 15:42:24.231403
118	34	6	장고 강의 듣기 과제 			\N	장고_강의_듣기_과제.pdf	0	0	2020-05-25 16:32:55.948636	2020-05-25 16:32:55.948636
119	23	6	신주연 과제 제출입니다.			\N	멋사_과제.JPG	0	0	2020-05-26 01:52:28.923276	2020-05-26 01:52:28.923276
120	21	6	장고 강의 들어오기_컴퓨터공학전공 박채은	장고 강의를 듣고 수강화면 캡쳐했습니다		\N	캡처.PNG	0	0	2020-05-26 03:47:07.437973	2020-05-26 03:47:07.437973
121	17	6	과제 제출			\N	django.PNG	0	0	2020-05-26 04:13:18.681478	2020-05-26 04:13:18.681478
122	17	6	과제 제출 합니다!			\N	django.PNG	0	0	2020-05-26 04:14:26.079574	2020-05-26 04:14:26.079574
123	14	6	장고 강의 들어오기	고명기 과제 제출입니다!		\N	멋사_과제.JPG	0	0	2020-05-26 06:52:36.824273	2020-05-26 06:52:36.824273
124	33	6	주현이 5월 26일 과제			\N	5월26일.png	0	0	2020-05-26 07:38:07.553698	2020-05-26 07:38:07.553698
125	32	6	Django_정광수			\N	Django_정광수.PNG	0	0	2020-05-26 09:45:12.785891	2020-05-26 09:45:12.785891
126	24	6	장고 강의 수강하였습니다.	강의 2개 수강완료하였습니다!		\N	멋사_강의_수강.docx	0	0	2020-05-26 10:56:16.438366	2020-05-26 10:56:16.438366
127	18	6	Django 강의 듣기 과제			\N	Django_수강_사진.png	0	0	2020-05-26 12:36:14.877807	2020-05-26 12:36:14.877807
128	22	6	초보자를 위한 Django 뿌시기 수강			\N	송요민_-_초보자를_위한_Django_뿌시기_수강_내역.PNG	0	0	2020-05-26 13:35:43.690311	2020-05-26 13:35:43.690311
129	30	7	장고 5,6강			\N	KakaoTalk_20200529_010917678.png	0	0	2020-05-28 16:11:18.561226	2020-05-28 16:11:18.561226
131	15	7	2020111625김동연(6/2)			\N	3.png	0	0	2020-05-29 01:44:09.810974	2020-05-29 01:44:35.115705
132	15	8	2020111625김동연(6/2)-서버 실행			\N	2.png	0	0	2020-05-29 01:45:29.560702	2020-05-29 01:45:29.560702
133	16	7	장고 뿌시기 5,6강 수강 확인			\N	ACDB80E9-127A-46A8-9349-F98D19A36D3C.jpeg	0	0	2020-05-29 10:19:51.682789	2020-05-29 10:19:51.682789
136	27	7	이소정			\N	이소정2.PNG	0	0	2020-06-01 08:47:42.137384	2020-06-01 08:47:42.137384
137	27	8	이소정			\N	이소정.PNG	0	0	2020-06-01 08:47:54.640543	2020-06-01 08:47:54.640543
140	18	7	장고 뿌시기 강의 5강 6강 듣기			\N	Django_뿌시기_강의_듣기_-_5강__6강.png	0	0	2020-06-01 12:58:46.978443	2020-06-01 12:58:46.978443
141	18	8	로컬에서 장고 서버 실행시키기			\N	장고_환경세팅.png	0	0	2020-06-01 12:59:38.350841	2020-06-01 12:59:38.350841
147	25	8	로컬에서 장고 서버 실행시키기			\N	로컬에서_장고_서버_실행시키키_윤상우.png	0	0	2020-06-02 05:38:59.919407	2020-06-02 05:38:59.919407
148	25	7	장고 뿌시기 들어오기			\N	장고_뿌시기_들어오기_윤상우.png	0	0	2020-06-02 08:52:13.91319	2020-06-02 08:52:13.91319
149	12	7	강의			\N	강의_5__6.PNG	0	0	2020-06-02 09:23:35.474769	2020-06-02 09:23:35.474769
150	12	8	장고 서버 실행			\N	로컬_서버_실행.PNG	0	0	2020-06-02 09:23:57.864554	2020-06-02 09:23:57.864554
151	21	7	강의 들어오기_컴퓨터공학전공_박채은			\N	강의.PNG	0	0	2020-06-02 09:44:52.249706	2020-06-02 09:44:52.249706
152	21	8	장고 서버 실행_컴퓨터공학전공_박채은			\N	KakaoTalk_20200601_175119268.png	0	0	2020-06-02 09:45:59.983373	2020-06-02 09:45:59.983373
153	29	8	과제제출합니다			\N	주석_2020-06-02_184705.png	0	0	2020-06-02 09:50:15.661711	2020-06-02 09:50:15.661711
154	29	7	과제제출합니다!			\N	주석_2020-06-02_183753.png	0	0	2020-06-02 09:50:27.75574	2020-06-02 09:50:27.75574
156	33	7	주현이 6월2일 과제입니다.			\N	6월2일-1.png	0	0	2020-06-02 11:18:02.708008	2020-06-02 11:18:02.708008
144	34	7	과제 제출합니다.			\N	과제.pdf	3	0	2020-06-02 04:25:57.503588	2020-06-03 04:42:57.049855
157	19	7	김태형 과제 제출			\N	캡처.PNG	0	0	2020-06-02 12:21:50.156806	2020-06-02 12:21:50.156806
158	19	8	김태형 과제제출			\N	캡처.PNG	0	0	2020-06-02 12:25:15.504917	2020-06-02 12:25:15.504917
159	14	7	장고 뿌시기 강의 5강, 6강 들어오기			\N	hw.JPG	0	0	2020-06-02 12:26:17.730674	2020-06-02 12:26:17.730674
160	14	8	로컬에서 장고 서버 실행시키기			\N	h2.JPG	0	0	2020-06-02 12:26:38.345116	2020-06-02 12:26:38.345116
161	32	7	과제 제출합니다.			\N	Django_정광수_2_.PNG	0	0	2020-06-02 12:30:28.374083	2020-06-02 12:30:28.374083
162	32	8	RUNSERVER			\N	runserver.png	0	0	2020-06-02 12:35:42.566867	2020-06-02 12:35:42.566867
164	17	8	과제 제출합니다!			\N	12.PNG	0	0	2020-06-02 13:15:44.241082	2020-06-02 13:21:24.04877
134	16	8	로컬에서 장고 서버 실행시키기			\N	677AC1FD-404D-42A9-A42A-97C15359DBFD.jpeg	1	0	2020-05-29 10:21:06.949208	2020-06-02 14:24:31.091613
166	23	7	신주연 과제제출입니다.			\N	동대멋사_과제_인증_6월2일_.JPG	0	0	2020-06-02 14:50:08.783486	2020-06-02 14:50:08.783486
146	13	8	제출합니다.	제출합니다.		\N	run_server_success.jpg	2	0	2020-06-02 04:49:19.562429	2020-06-03 04:41:49.637062
168	15	9	2020111625김동연-페이지 이동 활용하기		 https://github.com/rlaehddus/quizzy.git	\N	\N	2	0	2020-06-07 16:59:29.406606	2020-07-05 12:19:33.93799
135	22	8	과제 Django 강좌 수강, 로컬 서버 실행			\N	송요민_과제_Django_강좌_수강__로컬_서버_실행.png	1	0	2020-05-31 08:44:03.923874	2020-06-03 04:36:32.543405
139	24	8	서버 실행 과제 제출합니다			\N	멋사_서버_실행.docx	1	0	2020-06-01 11:21:00.984397	2020-06-03 04:41:57.403788
143	31	8	장영동			\N	스크린샷_2020-06-02_오전_2.20.43.png	2	0	2020-06-01 17:43:40.480368	2020-06-03 04:41:47.562732
145	13	7	제출합니다.	제출합니다.		\N	django_lecture_success.jpg	1	0	2020-06-02 04:49:07.280297	2020-06-03 04:42:11.626203
163	28	8	2019110245이예은 과제 제출			\N	장고과제.PNG	2	0	2020-06-02 13:08:56.854465	2020-07-05 12:17:19.482611
138	24	7	장고 강의 과제 제출합니다			\N	멋사_강의_수강.docx	1	0	2020-06-01 11:20:20.674975	2020-06-03 04:42:18.728122
167	22	9	페이지 이동 활용하기	페이지 이동 활용하기 과제 입니다.	https://github.com/alsthd27/assignment	\N	\N	5	0	2020-06-05 03:27:42.077971	2020-07-05 12:19:36.142652
74	21	5	컴퓨터공학전공 박채은 과제 제출합니다.		https://github.com/ChaeeunPark/introduction	\N	\N	6	0	2020-05-19 06:06:41.360063	2020-06-09 13:12:47.79927
130	30	8	로컬 장고 실행			\N	KakaoTalk_20200528_221912355.png	1	0	2020-05-28 16:11:32.486784	2020-06-09 15:53:01.786744
165	17	7	과제 제출합니당			\N	장고.PNG	1	0	2020-06-02 13:16:02.918905	2020-07-07 10:19:50.193
155	33	8	주현이 6월2일 과제입니다.			\N	6월2일-2.png	1	0	2020-06-02 11:17:40.285248	2020-06-09 15:53:50.034642
170	30	9	페이지 이동 과제		https://github.com/dddooo9/page.git	\N	\N	1	0	2020-06-08 16:08:36.754162	2020-06-09 15:54:13.611682
142	31	7	장영동			\N	스크린샷_2020-06-02_오전_2.42.31.png	2	0	2020-06-01 17:42:57.952536	2020-06-30 05:54:47.412501
248	24	13	여름학기 3주차 과제		https://github.com/didwldn3032/Market	\N	\N	0	0	2020-07-21 07:02:59.843679	2020-07-21 07:02:59.843679
250	14	13	여름학기 3주차 과제(U, D, media)		https://github.com/godgi/django_project2_kmg	\N	\N	0	0	2020-07-21 07:46:39.700738	2020-07-21 07:46:39.700738
183	34	9	페이지 이동 게임 과제 제출합니다!		https://github.com/hyeonjee/dalgonagame	\N	\N	7	2	2020-06-09 14:23:44.12733	2020-07-07 13:28:13.122877
178	13	9	제출합니다.	1) 제 컴퓨터가 환경설정상에 문제가 있어, 경로를 직접경로로 해주어야 하고, \\ 대신 \\\\ 를 입력해주어야 하는 문제가 있어 ... 타 컴퓨터에서 실행이 되지 않습니다. 실행 화면은 동영상으로 찍어서 제출합니다.\r\n2) HTML is not programming languague 임을 느꼈네요. (랜덤변수로 바꿔주려고 했으나 ... 아직 하지 못하겠어요.ㅎ)	https://github.com/Kanghyeop/likelion/tree/master/week3/lion/likelion	\N	0609aiden.mp4	1	0	2020-06-09 12:05:15.295443	2020-06-09 13:28:00.150491
172	27	9	이소정	https://github.com/SJLEE316/sjcoding		\N	\N	1	0	2020-06-09 01:07:06.951315	2020-06-09 14:07:22.995282
180	17	9	과제 제출 합니다!	https://github.com/soeun-25/lion.git\r\n\r\n맞게 제출한건지 잘 모르겠어서 혹시 이상 있으면 알려주시면 감사하겠습니다!	https://github.com/soeun-25/lion.git	\N	\N	1	0	2020-06-09 13:07:47.925776	2020-06-09 15:25:42.499161
182	32	9	과제 제출합니다.	https://github.com/wjdrhkdtn/wjdrhkdtn.git	https://github.com/wjdrhkdtn/wjdrhkdtn.git	\N	\N	1	0	2020-06-09 13:31:32.517171	2020-06-09 15:31:33.444903
194	30	11	팀빌딩 진행			\N	teambuilding.png	0	0	2020-07-06 15:06:37.892837	2020-07-06 15:06:37.892837
173	31	9	장영동	https://github.com/jang-1996/Django_hw	https://github.com/jang-1996/Django_hw	\N	\N	3	0	2020-06-09 04:43:54.524922	2020-06-09 15:42:41.91283
184	23	9	신주연 과제제출입니다.		https://github.com/juyeonshin/juyeon2	\N	\N	0	0	2020-06-09 14:50:05.325649	2020-06-09 14:56:59.274263
179	21	9	페이지 이동_컴퓨터공학과_박채은	과제 제출합니다	https://github.com/ChaeeunPark/FirstDjangoProject	\N	\N	3	0	2020-06-09 13:03:03.052839	2020-06-09 14:57:04.236791
191	27	10	이소정	https://github.com/SJLEE316/dgu-total		\N	\N	1	0	2020-07-06 14:31:13.683137	2020-07-08 06:50:27.665556
171	25	9	페이지 이동 과제_2017110518 윤상우	페이지 이동과제입니다.	https://github.com/Awarduuu/-5-/tree/master/project_1	\N	\N	4	0	2020-06-08 20:24:03.711645	2020-06-09 14:57:44.435504
186	19	9	김태형 과제제출		https://github.com/pletain/first.git	\N	\N	2	0	2020-06-09 14:59:37.280018	2020-07-05 12:17:44.16224
185	28	9	과제 제출합니다	중간에 저장을 해서 두개의 커밋이 들어있는데, Likelion_homework를 확인해주시면 감사하겠습니다!	https://github.com/lee00096/tkffuwnj	\N	\N	1	0	2020-06-09 14:55:40.950113	2020-06-09 15:20:38.041084
177	33	9	주현이 6월9일 제출 과제입니다.		https://github.com/hyeoneedyou/django	\N	\N	3	2	2020-06-09 10:54:45.090185	2020-07-05 12:18:04.097344
174	24	9	페이지 이동 과제 제출합니다		https://github.com/didwldn3032/-	\N	\N	2	0	2020-06-09 05:46:29.456972	2020-07-05 12:18:37.733019
190	15	10	2020111625김동연-프로젝트 제작		https://github.com/rlaehddus/blog.git 	\N	\N	0	0	2020-07-06 09:04:56.774604	2020-07-06 09:04:56.774604
181	12	9	페이지 이동 활용	퀴즈를 이용해 간단한 페이지 이동을 만들었습니다.\r\n(학교에서 과제와 기말대체과제 프로젝트땜에 멋사 과제에 시간을 많이 못 썼어요....\r\n저번 세션에서 배운것을 아주아주 간단하게 이용만 했습니다..죄송합니다.\r\n앞으로 더 열심히 배우고 활동하겠습니다!!)	https://github.com/dhk010111/likelion2	\N	\N	1	0	2020-06-09 13:10:47.387289	2020-06-10 04:48:13.805231
176	14	9	페이지 이동 활용하기	과제 제출입니다~	https://github.com/godgi	\N	\N	3	0	2020-06-09 10:22:46.716984	2020-06-10 11:48:25.207248
169	18	9	페이지 이동 활용하여 역사페이지 만들기	역사페이지 만들기	https://github.com/taeyeon0319/History-page.git	\N	\N	3	0	2020-06-08 06:13:27.681706	2020-06-15 07:08:49.386068
192	15	11	2020111625김동연-해커톤 팀빌딩 진행상황 		http://idea.likelion.org/detail/231	\N	\N	2	0	2020-07-06 14:51:01.028266	2020-07-13 07:05:25.391278
196	33	11	팀빌딩 컨택 인증 사진입니다.			\N	2020_7_7.jpg	1	0	2020-07-06 16:37:55.783216	2020-07-13 07:14:53.887586
175	29	9	페이지 이동 활용하기 		https://github.com/lhs961021/homework	\N	\N	2	0	2020-06-09 09:14:22.768143	2020-07-07 13:27:53.143357
195	33	10	2020/7/7 제출 과제입니다.		https://github.com/hyeoneedyou/zzeung_prototype.git	\N	\N	3	0	2020-07-06 16:36:07.017314	2020-07-08 06:50:21.267591
203	19	11	김태형 과제 제출			\N	C4E02254-BA23-49DA-B807-7871B41D1682.png	1	0	2020-07-07 10:32:47.027601	2020-07-08 10:12:19.235978
193	30	10	자유 프로젝트		https://github.com/dddooo9/week1	\N	\N	2	0	2020-07-06 15:05:26.087052	2020-07-08 06:50:24.955945
200	25	10	프로젝트 만들기!	나이키 신발 소개 웹사이트를 만들어 보았습니다.	https://github.com/Awarduuu/7.5-project	\N	\N	4	0	2020-07-07 08:59:56.697128	2020-07-08 06:50:13.242061
204	23	10	과제 제출합니다.		https://github.com/juyeonshin/summer-week1.git	\N	\N	2	0	2020-07-07 10:40:26.605022	2020-07-08 06:50:02.321723
202	32	10	과제 제출합니다	https://github.com/wjdrhkdtn/wjdrhkdtn.git	https://github.com/wjdrhkdtn/wjdrhkdtn.git	\N	\N	1	0	2020-07-07 10:25:44.573617	2020-07-08 06:50:05.563334
201	19	10	김태형 과제 제출		https://github.com/pletain/summerP1.git	\N	\N	2	0	2020-07-07 10:18:19.488036	2020-07-07 15:51:00.212365
197	24	10	프로젝트 market과제		https://github.com/didwldn3032/Market	\N	\N	2	0	2020-07-07 04:56:15.872686	2020-07-08 06:50:18.112334
199	12	10	방학 세션 프로젝트 제작	\r\nhttps://github.com/dhk010111/project	https://github.com/dhk010111/project	\N	\N	2	0	2020-07-07 05:03:26.985306	2020-07-08 06:50:09.381576
188	31	10	장영동 자유 프로젝트	https://github.com/jang-1996/myblog_django\r\n\r\n깃허브로 제출합니다	https://github.com/jang-1996/myblog_django	\N	\N	2	0	2020-07-05 17:28:03.41368	2020-07-08 06:50:32.159066
198	24	11	해커톤 팀빌딩 진행상황			\N	팀빌딩_진행상황.docx	1	0	2020-07-07 04:59:20.992602	2020-07-08 10:12:30.308409
189	29	11	해커톤 팀빌딩 진행상황			\N	KakaoTalk_20200706_110432280.jpg	5	0	2020-07-06 02:05:51.773034	2020-07-08 10:12:52.740131
187	25	11	해커톤 팀빌딩 진행상황	제 아이디어를 올리긴 하였지만, 한국기술교육대학교 문찬웅님의 아이디어가 너무 좋아 팀빌딩을 원한다고 메일을 보낸 상황입니다!	http://idea.likelion.org/mypage/detail/143	\N	해커톤_팀빌딩_메일.png	4	0	2020-07-05 11:46:45.202257	2020-07-13 07:13:20.019539
249	21	13	3주차 과제 제출합니다. 컴퓨터공학전공 박채은		https://github.com/ChaeeunPark/assignment3	\N	\N	0	0	2020-07-21 07:21:33.556505	2020-07-21 07:21:33.556505
251	25	13	3주차 update, delete, media 활용 과제입니다.	3주차 update, delete, media 활용 과제입니다.	https://github.com/Awarduuu/7.5-project	\N	\N	0	0	2020-07-21 08:50:58.65726	2020-07-21 08:50:58.65726
208	21	11	컴퓨터공학전공 박채은 팀빌딩 현황 업로드합니다.	현재 멋사 단톡방에서 멤버를 모집한다는 글을 보고 팀 빌딩을 하였으며 아이디어 제안부터 시작하려고 합니다.		\N	캡처22.PNG	0	0	2020-07-07 12:29:33.469612	2020-07-07 12:29:33.469612
211	12	11	해커톤 팀 참여	해커톤 팀 구성 카톡방 입니다!		\N	1.PNG	0	0	2020-07-07 12:54:49.587758	2020-07-07 12:54:49.587758
237	32	12	과제 제출합니다	https://github.com/wjdrhkdtn/wjdrhkdtn	https://github.com/wjdrhkdtn/wjdrhkdtn	\N	\N	1	0	2020-07-14 13:37:52.497577	2020-07-15 02:45:09.83914
227	30	12	C,R 과제		https://github.com/dddooo9/week1 	\N	\N	0	0	2020-07-13 12:49:35.08453	2020-07-13 12:49:35.08453
228	33	12	7월14일 과제입니다		https://github.com/hyeoneedyou/zzeung_prototype/blob/master/manage.py	\N	\N	0	0	2020-07-13 16:53:44.500383	2020-07-13 16:53:44.500383
219	17	11	팀빌딩 과제 제출합니다!			\N	팀빌딩.PNG	1	0	2020-07-08 06:48:46.088246	2020-07-08 10:10:16.023701
218	32	11	해커톤 과제 제출합니다.	http://idea.likelion.org/detail/145	http://idea.likelion.org/detail/145	\N	\N	1	0	2020-07-08 06:38:54.071143	2020-07-08 10:10:52.835923
207	21	10	컴퓨터공학전공 프로젝트 제출합니다	깃허브 페이지에 있습니다	https://github.com/ChaeeunPark/test	\N	\N	2	0	2020-07-07 12:27:29.101168	2020-07-07 15:24:32.398937
217	31	11	장영동	강협씨와 팀을 구성했습니다		\N	inbound1052139880518470148.jpg	1	0	2020-07-07 18:02:54.533095	2020-07-08 10:11:09.466043
229	12	12	2주차 과제	https://github.com/dhk010111/project	https://github.com/dhk010111/project	\N	\N	0	0	2020-07-14 06:39:19.43761	2020-07-14 06:39:19.43761
241	30	13	u,d,media 과제		https://github.com/dddooo9/week1	\N	\N	0	0	2020-07-18 17:08:54.684921	2020-07-18 17:08:54.684921
231	19	12	2019112151 김태형 과제 제출		https://github.com/pletain/summerP1.git	\N	\N	0	0	2020-07-14 08:53:16.416249	2020-07-14 08:53:16.416249
213	18	10	자유롭게 프로젝트 만들기 - 김태연		https://github.com/taeyeon0319/Summer_First	\N	\N	2	0	2020-07-07 13:28:57.803658	2020-07-08 06:30:22.412163
232	25	12	create, read 추가하기	https://github.com/Awarduuu/7.5-project	https://github.com/Awarduuu/7.5-project	\N	\N	0	0	2020-07-14 09:44:28.747499	2020-07-14 09:44:28.747499
212	27	11	이소정			\N	Screenshot_20200707-215258_Samsung_Internet.jpg	4	0	2020-07-07 12:55:32.689398	2020-07-08 10:11:50.297201
210	34	11	팀빌딩 과제 제출합니다!			\N	스크린샷_2020-07-07_오후_8.58.28.png	1	0	2020-07-07 12:41:03.159519	2020-07-08 10:12:03.084456
221	27	12	이소정	https://github.com/SJLEE316/dgu-webmodeling		\N	\N	0	0	2020-07-11 14:39:57.897979	2020-07-11 14:39:57.897979
222	34	12	과제 제출합니다!		https://github.com/hyeonjee/website-iu	\N	\N	0	0	2020-07-12 07:03:14.026573	2020-07-12 07:03:14.026573
223	14	12	여름학기 2주차 과제(C, R)		https://github.com/godgi/django_project1_kmg	\N	\N	0	0	2020-07-12 17:41:04.953202	2020-07-12 17:41:04.953202
224	23	12	신주연 과제제출입니다.		https://github.com/juyeonshin/summer-week1.git	\N	\N	0	0	2020-07-13 05:16:33.052947	2020-07-13 05:16:33.052947
220	28	11	팀빌딩과제	김동연님과 함께 프로젝트를 진행하게 되었습니다.\r\n동연님의 화학노트 아이디어로 진행하고, 차차 아이디어를 구체화시킬 계획입니다!		\N	KakaoTalk_20200707_231124272.jpg	2	0	2020-07-08 09:24:37.577082	2020-07-13 07:04:49.827559
216	22	11	성공회대 웹키오스크팀 연락			\N	과제_2020-07-07_232705.png	1	0	2020-07-07 14:27:34.221316	2020-07-13 07:14:16.165648
214	18	11	해커톤 팀빌딩 진행상황 업로도 - 김태연	쯩명사진 팀		\N	팀빌딩_증빙자료1.jpg	2	0	2020-07-07 13:32:37.786789	2020-07-13 07:14:33.042705
233	18	12	여름학기 2주차 과제 - 김태연		https://github.com/taeyeon0319/Summer_First	\N	\N	0	0	2020-07-14 09:56:31.156441	2020-07-14 09:56:31.156441
209	34	10	과제 제출합니다!		https://github.com/hyeonjee/blog	\N	\N	3	0	2020-07-07 12:40:20.668859	2020-07-14 09:57:10.818376
215	22	10	세션06 과제		https://github.com/alsthd27/likelion_dgu	\N	\N	4	0	2020-07-07 14:14:49.382056	2020-07-14 09:57:22.290559
234	22	12	C&R		https://github.com/alsthd27/likelion_dgu	\N	\N	0	0	2020-07-14 11:52:59.447118	2020-07-14 11:52:59.447118
235	21	12	컴퓨터공학전공 박채은 2주차 과제 제출합니다		https://github.com/ChaeeunPark/-	\N	\N	0	0	2020-07-14 12:28:30.041024	2020-07-14 12:28:30.041024
236	28	12	2019110245 이예은 과제제출	https://github.com/lee00096/summer13\r\n\r\n과제 제출합니다!		\N	\N	1	0	2020-07-14 12:39:30.023678	2020-07-14 15:04:31.267113
225	15	12	2020111625김동연 여름학기 2주차 과제		https://github.com/rlaehddus/navber.git 	\N	\N	1	0	2020-07-13 08:15:35.896862	2020-07-14 15:04:47.533043
230	24	12	여름학기 2주차 과제		https://github.com/didwldn3032/Market	\N	\N	1	0	2020-07-14 07:22:36.16262	2020-07-14 16:01:48.561213
238	29	12	과제 제출합니다	과제 제출합니다	https://github.com/lhs961021/myblog	\N	\N	2	0	2020-07-14 15:15:14.918036	2020-07-15 03:25:46.194962
239	28	13	2019110245 이예은 과제제출	과제 제출합니다	https://github.com/lee00096/summer13	\N	\N	0	0	2020-07-16 08:39:39.364776	2020-07-16 08:39:39.364776
240	15	13	2020111625김동연 여름학기 과제-U,D,madia		https://github.com/rlaehddus/delete.git 	\N	\N	0	0	2020-07-16 14:59:42.443741	2020-07-16 14:59:42.443741
242	27	13	이소정		https://github.com/SJLEE316/dgu-crud	\N	\N	0	0	2020-07-19 10:51:50.01673	2020-07-19 10:51:50.01673
243	29	13	3주차 과제 제출 		https://github.com/lhs961021/myblog.git	\N	\N	0	0	2020-07-20 08:50:56.811333	2020-07-20 08:50:56.811333
245	19	13	2019112151 김태형 과제제출		https://github.com/pletain/summerP1	\N	\N	0	0	2020-07-20 15:11:50.21332	2020-07-20 15:11:50.21332
247	33	13	7/21 제출 과제입니다.		https://github.com/hyeoneedyou/zzeung_prototype	\N	\N	0	0	2020-07-21 06:20:32.233497	2020-07-21 06:20:32.233497
244	31	13	장영동	https://github.com/jang-1996/myblog_django	https://github.com/jang-1996/myblog_django	\N	\N	1	0	2020-07-20 13:36:17.566806	2020-07-21 16:08:06.61509
226	31	12	장영동	https://github.com/jang-1996/myblog_django	https://github.com/jang-1996/myblog_django	\N	\N	2	0	2020-07-13 12:18:53.313464	2020-07-21 16:12:02.024179
252	12	13	3주차 과제 	https://github.com/dhk010111/project	https://github.com/dhk010111/project	\N	\N	0	0	2020-07-21 11:18:01.857809	2020-07-21 11:18:01.857809
253	34	13	과제 제출합니다!		https://github.com/hyeonjee/website-iu	\N	\N	0	0	2020-07-21 13:45:58.473147	2020-07-21 13:45:58.473147
254	18	13	여름학기 3주차 과제 - 김태연		https://github.com/taeyeon0319/Summer_First	\N	\N	0	0	2020-07-21 14:25:04.71762	2020-07-21 14:25:04.71762
246	13	13	3주차과제	url를 바꾸어 메인페이지를 posts:main 으로 바꾸어주었고,\r\n게시판의 본 기능에 조금 더 충실하게 수정해보았습니다.	https://github.com/Kanghyeop/project	\N	\N	1	0	2020-07-21 02:30:03.747665	2020-07-21 16:07:11.781619
205	13	11	현재 팀원 2명입니다	장영동 님과 팀이 되어서 2명인 상태입니다.\r\n하지만 추가 팀원 모집이 진행되지 않고 있습니다.\r\n이상입니다.		\N	\N	2	0	2020-07-07 11:14:34.054104	2020-07-21 16:12:17.839906
206	13	10	환경설정의 문제	현재 노트북 변경하여서 환경구축을 다시 하였는데, 환경설정에 문제가 있었는지 원래 잘 돌아가던 코드가 돌아가지 않는 상황입니다. 몇시간 동안 계속 매달려보았는데 잘 해결이 되지 않네요 ... 만나서 한번 멘토님들께 도움을 요청드려볼 수 있도록 하겠습니다. 그래서 이번 과제는 진행하지 못했습니다. ㅠㅠ 사진 첨부는 2일전에 커밋한 최종 상태의 url과 사진을 제출합니다.	https://github.com/Kanghyeop/newLikeLion/tree/master/helloworld	\N	스크린샷_2020-07-07_오후_8.16.00.png	6	0	2020-07-07 11:17:09.179592	2020-07-21 16:12:26.061858
255	15	14	2020111625김동연 여름학기 4주차 과제		https://github.com/rlaehddus/delete.git 	\N	\N	0	0	2020-07-24 14:56:00.17092	2020-07-24 14:56:00.17092
256	28	14	2019110245 이예은 과제제출합니다	과제제출합니당!!!	https://github.com/lee00096/summer13	\N	\N	0	0	2020-07-25 04:56:58.61428	2020-07-25 04:56:58.61428
257	22	14	1:N 모델 추가		https://github.com/alsthd27/likelion_dgu	\N	\N	0	0	2020-07-25 08:13:14.584832	2020-07-25 08:13:14.584832
259	12	14	4주차 과제		https://github.com/dhk010111/project	\N	\N	0	0	2020-07-25 10:17:29.217193	2020-07-25 10:17:29.217193
260	27	14	이소정		https://github.com/SJLEE316/dgu-assign	\N	\N	0	0	2020-07-26 13:20:08.091095	2020-07-26 13:20:08.091095
262	34	14	과제 제출합니다!!		https://github.com/hyeonjee/website-iu	\N	\N	0	0	2020-07-27 12:04:55.340298	2020-07-27 12:04:55.340298
263	18	14	김태연_4주차 과제		https://github.com/taeyeon0319/Summer_First	\N	\N	0	0	2020-07-28 05:47:50.559949	2020-07-28 05:47:50.559949
264	25	14	allauth, 1:N 관계 과제		https://github.com/Awarduuu/7.5-project	\N	\N	0	0	2020-07-28 06:47:34.245297	2020-07-28 06:47:34.245297
266	29	14	여름학기 4주차 과제 		https://github.com/lhs961021/myblog.git	\N	\N	0	0	2020-07-28 07:33:28.496005	2020-07-28 07:33:28.496005
268	19	14	2019112151 김태형 과제 제출		https://github.com/pletain/week4	\N	\N	0	0	2020-07-28 08:15:51.903383	2020-07-28 08:15:51.903383
269	13	14	댓글 기능 추가	지난주 진행한 미니게시판 프로젝트에 댓글 모델과 게시글:댓글 관계를 추가하여 댓글 작성이 용이하게 변경하였습니다.	https://github.com/Kanghyeop/project	\N	\N	0	0	2020-07-28 09:09:22.407121	2020-07-28 09:09:22.407121
270	23	14	신주연 과제 제출합니다.		https://github.com/juyeonshin/summer-week1.git	\N	\N	0	0	2020-07-28 09:43:54.92849	2020-07-28 09:43:54.92849
265	14	14	여름학기 4주차 과제		https://github.com/godgi/django_project2_kmg	\N	\N	1	0	2020-07-28 07:26:32.501133	2020-07-28 13:36:53.924825
261	33	14	allauth, user		https://github.com/hyeoneedyou/zzeung_prototype	\N	\N	1	0	2020-07-27 11:39:42.456212	2020-07-28 13:47:59.336225
258	30	14	django-allauth 과제		https://github.com/dddooo9/week1	\N	\N	1	0	2020-07-25 08:13:54.186914	2020-07-28 13:48:13.645475
267	24	14	여름학기 4주차 과제		https://github.com/didwldn3032/Market	\N	\N	1	0	2020-07-28 08:15:41.697673	2020-07-28 13:48:31.582505
271	31	14	장영동 4주차	https://github.com/jang-1996/myblog_django	https://github.com/jang-1996/myblog_django	\N	\N	0	0	2020-07-28 14:02:13.599425	2020-07-28 14:02:13.599425
272	28	15	2019110245이예은 과제제출	과제제출합니다	https://github.com/lee00096/summer13	\N	\N	0	0	2020-07-30 07:05:41.322788	2020-07-30 07:05:41.322788
273	12	15	5주차 과제		https://github.com/dhk010111/project	\N	\N	0	0	2020-07-31 07:37:38.10457	2020-07-31 07:37:38.10457
274	13	15	add view_count	조회수 기능을 추가했습니다.	https://github.com/Kanghyeop/project	\N	\N	0	0	2020-08-03 03:14:17.333019	2020-08-03 03:14:17.333019
275	27	15	이소정	https://github.com/SJLEE316/dgu-myblogassign		\N	\N	0	0	2020-08-03 09:00:54.184553	2020-08-03 09:00:54.184553
276	15	15	2020111625김동연 여름학기 5주차 과제		https://github.com/rlaehddus/delete.git 	\N	\N	0	0	2020-08-03 10:12:25.515857	2020-08-03 10:12:25.515857
277	29	15	https://github.com/lhs961021/myblog.git			\N	\N	0	0	2020-08-03 11:17:03.109177	2020-08-03 11:17:03.109177
278	19	15	컴퓨터공학과 김태형 과제제출		https://github.com/pletain/week4.git	\N	\N	0	0	2020-08-03 11:31:25.671429	2020-08-03 11:31:25.671429
279	33	15	조회수추가		https://github.com/hyeoneedyou/zzeung_prototype	\N	\N	0	0	2020-08-03 16:06:23.795919	2020-08-03 16:06:23.795919
280	24	15	여름학기 5주차 과제		https://github.com/didwldn3032/Market	\N	\N	0	0	2020-08-04 03:36:19.339795	2020-08-04 03:36:19.339795
282	30	15	5주차 과제		https://github.com/dddooo9/week1.git	\N	\N	0	0	2020-08-04 06:15:25.307717	2020-08-04 06:15:25.307717
283	18	15	김태연 5주차 과제		https://github.com/taeyeon0319/Summer_First	\N	\N	0	0	2020-08-04 06:56:54.870033	2020-08-04 06:56:54.870033
284	25	15	view_count 과제	과제입니다.	https://github.com/Awarduuu/7.5-project	\N	\N	0	0	2020-08-04 08:44:30.027774	2020-08-04 08:44:30.027774
285	14	15	여름학기 5주차 과제		https://github.com/godgi/django_project2_kmg	\N	\N	0	0	2020-08-04 08:50:27.038172	2020-08-04 08:50:27.038172
286	22	15	조회수 기능 추가		https://github.com/alsthd27/likelion_dgu	\N	\N	0	0	2020-08-04 08:57:12.269447	2020-08-04 08:57:12.269447
287	31	15	장영동 5주차 과제	https://github.com/jang-1996/myblog_django	https://github.com/jang-1996/myblog_django	\N	\N	0	0	2020-08-04 11:48:05.385087	2020-08-04 11:48:05.385087
288	23	15	신주연 과제제출입니다.		https://github.com/juyeonshin/summer-week1.git	\N	\N	0	0	2020-08-04 13:11:27.084288	2020-08-04 13:11:27.084288
289	32	15	과제 제출합니당	https://github.com/hehahihang/jks_likelion.git	https://github.com/hehahihang/jks_likelion.git	\N	\N	0	0	2020-08-04 13:28:33.380263	2020-08-04 13:28:33.380263
290	22	17	asdf		https://github.com/alsthd27/dgulion	\N	\N	3	0	2020-08-05 11:26:00.312231	2020-08-08 05:17:31.849108
281	34	15	과제 제출합니다.-조회수		https://github.com/hyeonjee/website-iu	\N	\N	1	0	2020-08-04 05:18:40.239277	2020-08-11 12:31:51.084948
309	32	18	과제 제출합니다	https://github.com/hehahihang/minihack.git	https://github.com/hehahihang/minihack.git	\N	\N	0	0	2020-08-11 07:11:28.288805	2020-08-11 07:11:28.288805
313	34	18	미니 해커톤 과제 제출합니다. - 쇼핑몰	superuser id : chj\r\npassword: 1234	https://github.com/hyeonjee/shopping_page	\N	\N	1	0	2020-08-11 10:05:51.644513	2020-08-11 15:04:02.548566
318	29	18	여름학기 6주차 과제 		https://github.com/lhs961021/dgulionhackerthon.git	\N	\N	3	0	2020-08-11 14:49:45.195649	2020-08-12 03:36:14.594631
310	19	18	컴퓨터공학과 김태형 과제 제출		https://github.com/pletain/hack_practice.git	\N	\N	1	0	2020-08-11 08:05:09.225552	2020-08-11 15:04:25.46653
308	30	18	6주차 과제		https://github.com/dddooo9/minihk.git	\N	\N	2	0	2020-08-11 06:40:13.955477	2020-08-12 03:36:31.915574
305	33	18	해커톤 완성 과제입니다.		https://github.com/hyeoneedyou/mini_hackerthon	\N	\N	1	0	2020-08-10 19:14:58.756152	2020-08-12 04:35:28.451042
294	19	17	김태형 제출		https://github.com/pletain/hack_practice.git	\N	\N	7	0	2020-08-05 11:29:54.138782	2020-08-11 12:28:55.261076
295	23	17	신주연 제출입니다.		https://github.com/juyeonshin/hack.git	\N	\N	4	0	2020-08-05 11:31:55.331413	2020-08-11 12:31:09.802357
291	32	17	해커톤 제출합니다.	https://github.com/hehahihang/minihack.git	https://github.com/hehahihang/minihack.git	\N	\N	6	0	2020-08-05 11:27:02.442906	2020-08-11 12:51:36.409073
302	30	17	해커톤		https://github.com/dddooo9/minihk.git	\N	\N	3	0	2020-08-05 11:33:11.69729	2020-08-07 12:14:31.449018
293	29	17	해커톤 1		https://github.com/lhs961021/dgulionproject.git	\N	\N	4	0	2020-08-05 11:29:52.229453	2020-08-11 13:02:06.648871
311	31	18	장영동 과제	https://github.com/jang-1996/hacker\r\n\r\n(쇼핑몰)	https://github.com/jang-1996/hacker	\N	\N	1	0	2020-08-11 08:16:09.556858	2020-08-13 07:00:02.036395
317	25	18	동대멋사 CRUD 해커톤	동대멋사 CRUD 해커톤	https://github.com/Awarduuu/Sangwoo	\N	\N	3	0	2020-08-11 14:06:34.913908	2020-08-13 12:37:51.546866
303	13	17	해커톤	지각 죄송함당	https://github.com/Kanghyeop/mini-hackathon	\N	\N	6	0	2020-08-05 11:41:14.526078	2020-08-11 15:28:38.672326
304	24	18	여름학기 6주차 과제		https://github.com/didwldn3032/dgulion200805	\N	\N	1	0	2020-08-10 09:43:03.913921	2020-08-13 07:02:32.280481
299	18	17	쇼핑몰		https://github.com/taeyeon0319/Shopping-	\N	\N	3	0	2020-08-05 11:32:37.619369	2020-08-11 15:30:37.022316
307	14	18	여름학기 6주차 과제		https://github.com/godgi/shop_kmg	\N	\N	4	0	2020-08-11 04:47:47.938578	2020-08-13 12:38:25.305581
320	30	19	admin 보충		https://github.com/dddooo9/minihk.git	\N	\N	0	0	2020-08-16 12:59:16.289839	2020-08-16 12:59:16.289839
298	25	17	미니 해커톤 제출	미니 해커톤 제출입니다.	https://github.com/Awarduuu/Sangwoo	\N	\N	3	0	2020-08-05 11:32:25.659996	2020-08-08 04:27:22.226208
296	27	17	이소정	https://github.com/SJLEE316/dgu-hackathon.git		\N	\N	3	0	2020-08-05 11:32:18.014872	2020-08-08 05:09:50.884812
322	18	19	CRUD 해커톤 프로젝트 수정!		https://github.com/taeyeon0319/LIKELION-SHOPPING	\N	\N	0	0	2020-08-17 02:03:03.900727	2020-08-17 02:03:03.900727
323	31	19	장영동 보충 과제	https://github.com/jang-1996/hacker	https://github.com/jang-1996/hacker	\N	\N	0	0	2020-08-17 06:02:59.609772	2020-08-17 06:02:59.609772
301	33	17	미니해커톤		git remote add origin https://github.com/hyeoneedyou/mini_hackerthon.git	\N	\N	4	0	2020-08-05 11:33:03.922819	2020-08-11 17:34:10.019124
316	23	18	신주연 과제 제출입니다.		https://github.com/juyeonshin/shop.git	\N	\N	1	0	2020-08-11 12:43:13.001339	2020-08-13 08:11:44.363833
319	12	18	6주차 과제	https://github.com/dhk010111/DGU_shoppingmall	https://github.com/dhk010111/DGU_shoppingmall	\N	\N	0	0	2020-08-11 14:54:01.664122	2020-08-11 14:54:01.664122
297	34	17	미니 해커톤 과제		https://github.com/hyeonjee/shopping_page	\N	\N	3	0	2020-08-05 11:32:18.386494	2020-08-11 14:54:20.752496
324	33	19	보충과제입니다.		https://github.com/hyeoneedyou/shoppingmall	\N	\N	1	0	2020-08-17 12:59:12.897532	2020-09-22 05:12:33.535876
312	27	18	이소정		https://github.com/SJLEE316/dgu-hackathon	\N	\N	1	0	2020-08-11 08:18:48.837609	2020-08-13 08:33:08.613542
300	31	17	장영동	https://github.com/jang-1996/hacker	https://github.com/jang-1996/hacker	\N	\N	5	0	2020-08-05 11:32:46.356786	2020-08-11 17:47:11.607678
292	24	17	CRUD 해커톤 제출	쿠팡 사이트 연결까지 했습니다	https://github.com/didwldn3032/dgulion200805	\N	\N	5	0	2020-08-05 11:29:38.924141	2020-08-11 17:47:29.653549
315	22	18	밤새우며해보겠습니다		https://github.com/alsthd27/dgu_mini_hackathon	\N	\N	3	0	2020-08-11 12:28:10.878928	2020-08-13 11:10:03.815633
329	12	19	해커톤보충과제	https://github.com/dhk010111/dgumall	https://github.com/dhk010111/dgumall	\N	\N	0	0	2020-08-18 14:16:16.603508	2020-08-18 14:16:16.603508
306	13	18	으악 해커톤	git reinitialize 문제 때문에 정말 계속 시도해봤는데, 다시 안되어서, 우선 작업된 부분까지 파일로 제출해두는 것으로 갈음합니다. ㅠ 	git 이 안됩니다.. ㅠㅠ	\N	mini_hackathon.zip	2	0	2020-08-11 04:01:35.699604	2020-08-13 11:10:15.172702
325	27	19	이소정		https://github.com/SJLEE316/dgu-hackathon	\N	\N	0	0	2020-08-18 01:01:24.894369	2020-08-18 01:01:24.894369
327	32	19	과제 제출합니다	https://github.com/hehahihang/minihack.git	https://github.com/hehahihang/minihack.git	\N	\N	0	0	2020-08-18 06:31:30.608422	2020-08-18 06:31:30.608422
314	18	18	6주차 과제 - 김태연 -		https://github.com/taeyeon0319/LIKELION-SHOPPING	\N	\N	4	0	2020-08-11 10:19:02.036227	2020-08-18 14:17:52.236785
326	13	19	제재출 합니다.	- 깃헙 오류로 인하여 프로젝트를 다시 생성하였습니다.\r\n- 메인페이지, CRUD 정상구현, 댓글기능 정상구현 까지 완료하였습니다.\r\n(그전과 같아 보이는데 다시 만들었습니다. 흑흑)\r\n- 그 외에 잡지 못한 디테일들이 많은데, 다시 보완할 수 있도록 하겠습니다.\r\n(TimeZone 같은건 처리하였으나, App 의 URL.py 로 처리하는 등의 코드 스타일 등의 디테일은 아직 잡지 못했습니다.)	https://github.com/Kanghyeop/retry_project	\N	\N	1	0	2020-08-18 01:53:02.157251	2020-08-18 14:42:19.344977
330	28	19	2019110245 이예은 과제제출합니다		https://github.com/lee00096/winter1231	\N	\N	1	0	2020-08-18 14:19:32.661414	2020-08-22 06:15:35.445299
328	34	19	crud 해커톤 보충과제 제출합니다!		https://github.com/hyeonjee/shopping_page	\N	\N	1	0	2020-08-18 13:37:29.705158	2020-08-22 06:15:56.242291
321	19	19	김태형 과제 제출		https://github.com/pletain/hack_practice	\N	\N	2	0	2020-08-16 19:30:55.636152	2020-09-07 13:31:32.538006
331	25	19	crud 해커톤 프로젝트 보충과제_윤상우		https://github.com/Awarduuu/Sangwoo	\N	\N	1	0	2020-08-18 14:42:59.619211	2020-08-18 14:48:00.747348
333	33	20	댓글 CRUD, 구글 소셜 로그인		https://github.com/hyeoneedyou/shoppingmall	\N	\N	3	0	2020-08-23 17:37:18.988213	2020-09-07 00:59:47.604191
335	12	20	8주차 과제		https://github.com/dhk010111/dgumall	\N	\N	2	0	2020-08-24 11:40:00.72658	2020-09-07 01:28:21.639599
337	19	20	김태형 과제제출		https://github.com/pletain/hack_practice	\N	\N	3	0	2020-08-25 02:40:00.911894	2020-09-07 01:35:02.632602
348	32	20	여름학기 8주차 과제		https://github.com/hehahihang/minihack	\N	\N	1	0	2020-08-26 19:15:19.039183	2020-09-07 01:35:21.932062
364	25	21	2학기 1주차 과제		https://github.com/Awarduuu/Nike-project	\N	\N	1	0	2020-09-08 14:53:15.676642	2020-09-08 15:10:52.26558
352	18	21	2학기 1주차 과제 - 좋아요 기능 추가-		https://github.com/taeyeon0319/Summer_First	\N	\N	0	0	2020-09-07 01:55:19.027783	2020-09-07 01:55:19.027783
342	29	20	여름학기 8주차 과제		https://github.com/lhs961021/myblog.git	\N	\N	1	0	2020-08-25 13:08:23.842875	2020-09-15 03:46:12.997292
345	28	20	2019110245 이예은 과제제출합니다		https://github.com/lee00096/peach8	\N	\N	1	0	2020-08-25 13:41:29.205614	2020-09-15 03:40:26.738105
369	14	22	2학기 2주차 과제		https://github.com/godgi/SNS_project_hw-1	\N	\N	2	0	2020-09-15 03:19:02.428022	2020-10-14 20:09:36.826069
339	24	20	여름학기 8주차 과제		https://github.com/didwldn3032/dgulion200805	\N	\N	0	0	2020-08-25 08:41:31.678159	2020-08-25 08:41:31.678159
343	13	20	미완성 제출합니다.	로그인 기능에서 꼬여서, 우선 완료하지 못했습니다.\r\n\r\n소셜로그인 추가를 완료시켰는데, 제가 미니프로젝트의 app 구조를 달리해서 그런지, 로그인 화면이 뜨는 부분이 확인이 안되어서 (여러가지 시도를 해봄...) 우선 완료를 하지 못했습니다.\r\n\r\n지난번 CRUD 프로젝트를 아주 완벽하게 끝내지 못함, 그리고 미니프로젝트에서 너무 문제를 단순히 풀고자 했던게 원인인듯하여 ... \r\n\r\n철저히 복습하고 새 프로젝트를 빌딩하여, 다음주 과제 진행을 할 때, 모든 것을 철저히 한번 뿌시는 상태로 제출토록 하겠습니다 ... ㅠ_ㅠ (https://velog.io/@_aiden 한번 정리하려고 벨로그도 만들었습니다. 봐주세요 흐극끅극흙)	https://github.com/Kanghyeop/project	\N	\N	0	0	2020-08-25 13:08:48.71418	2020-08-25 13:08:48.71418
359	31	21	장영동	https://github.com/jang-1996/hacker	https://github.com/jang-1996/hacker	\N	\N	1	0	2020-09-08 10:23:16.663275	2020-09-08 15:27:22.46061
340	15	20	2020111625김동연 여름학기 8주차 과제		https://github.com/rlaehddus/all	\N	\N	1	0	2020-08-25 09:49:26.686219	2020-09-15 03:37:35.317617
338	14	20	여름학기 8주차 과제		https://github.com/godgi/django_project3_kmg	\N	\N	2	0	2020-08-25 04:43:40.839069	2020-08-28 11:28:39.7965
332	31	20	8주차 장영동	https://github.com/jang-1996/hacker	https://github.com/jang-1996/hacker	\N	\N	2	0	2020-08-22 07:33:51.568916	2020-09-15 03:39:10.85367
350	27	21	이소정	https://github.com/SJLEE316/dgu-myblogassign	https://github.com/SJLEE316/dgu-myblogassign	\N	\N	0	0	2020-09-06 11:40:18.901483	2020-09-06 11:40:18.901483
341	18	20	여름학기 8주차 과제!!!!!		https://github.com/taeyeon0319/Summer_First	\N	\N	1	0	2020-08-25 11:42:02.143111	2020-09-06 12:10:59.099763
355	13	21	좋아요 기능 추가	좋아요 관련 기능을 추가했습니다.	https://github.com/Kanghyeop/BoardProject	\N	\N	3	0	2020-09-07 13:31:20.077624	2020-09-15 12:28:18.463931
371	34	22	2학기 2주차 과제		https://github.com/hyeonjee/django_sns	\N	\N	0	0	2020-09-15 05:51:58.727747	2020-09-15 05:51:58.727747
346	30	20	댓글 crud		https://github.com/dddooo9/myblog	\N	\N	3	0	2020-08-25 13:46:46.971353	2020-09-08 12:22:35.060672
361	12	21	2학기 1주차 과제	https://github.com/dhk010111/DGU-Likelion	https://github.com/dhk010111/DGU-Likelion	\N	\N	0	0	2020-09-08 13:04:39.402867	2020-09-08 13:04:39.402867
362	29	21	2학기 1주차 과제		https://github.com/lhs961021/myblog.git	\N	\N	0	0	2020-09-08 14:10:13.788327	2020-09-08 14:10:13.788327
357	14	21	2학기 1주차 과제		https://github.com/godgi/django_project4_kmg	\N	\N	2	0	2020-09-08 01:23:29.208952	2020-09-15 03:23:21.888242
354	24	21	2학기 1주차 과제		https://github.com/didwldn3032/Shop	\N	\N	2	0	2020-09-07 08:13:12.467595	2020-09-15 12:24:22.067714
360	34	21	2학기 1주차 과제	id : chj\r\npassword : 1234	https://github.com/hyeonjee/shopping_page	\N	\N	1	0	2020-09-08 12:19:42.371569	2020-09-15 03:17:35.25423
363	32	21	과제 제출합니다!	부족한부분 보완해볼게요!	https://github.com/hehahihang/minihack.git	\N	\N	2	0	2020-09-08 14:17:45.513399	2020-09-15 03:17:27.723143
353	15	21	2020111625 김동연 2학기 1주차 과제		https://github.com/rlaehddus/all	\N	\N	1	0	2020-09-07 07:48:16.871857	2020-09-15 12:28:58.578117
344	25	20	8주차 과제	https://github.com/Awarduuu/7.5-project	https://github.com/Awarduuu/7.5-project	\N	\N	3	0	2020-08-25 13:18:58.685662	2020-09-15 03:37:32.397531
334	22	20	댓글 U, D / 구글 소셜 로그인		https://github.com/alsthd27/dgu_mini_hackathon	\N	\N	3	0	2020-08-24 07:10:01.875382	2020-09-15 03:38:49.586797
347	23	20	신주연 과제제출합니다.		https://github.com/juyeonshin/shop.git	\N	\N	2	0	2020-08-25 14:47:40.051807	2020-09-15 03:45:36.117338
336	34	20	여름학기 8주차 과제 제출		https://github.com/hyeonjee/shopping_page	\N	\N	5	0	2020-08-24 13:46:00.442081	2020-09-15 03:48:13.533775
373	29	22	2학기 2주차 과제 		https://github.com/lhs961021/django-sns.git	\N	\N	0	0	2020-09-15 07:10:59.248402	2020-09-15 07:10:59.248402
356	28	21	2019110245 이예은 과제제출합니다		https://github.com/lee00096/peach8	\N	\N	1	0	2020-09-07 17:45:29.829223	2020-09-15 12:29:47.99508
351	33	21	좋아요		https://github.com/hyeoneedyou/shoppingmall	\N	\N	2	0	2020-09-06 13:59:25.65377	2020-10-14 20:02:47.053884
370	19	22	김태형 과제제출		https://github.com/pletain/hack_practice.git	\N	\N	1	0	2020-09-15 05:12:01.687816	2020-10-14 20:29:27.887045
365	33	22	sns 마이페이지 기능 추가		https://github.com/hyeoneedyou/django-sns	\N	\N	8	0	2020-09-12 23:46:16.700413	2020-10-14 20:22:00.236245
372	18	22	마이페이지 제작하기_김태연		https://github.com/taeyeon0319/django-sns.	\N	\N	1	0	2020-09-15 06:05:39.872521	2020-09-21 13:05:58.697133
366	27	22	이소정	이소정과제냄	https://github.com/SJLEE316/django-sns	\N	\N	1	0	2020-09-13 11:17:30.701128	2020-09-15 15:28:49.61868
349	30	21	좋아요 count, 목록		https://github.com/dddooo9/myblog	\N	\N	2	0	2020-09-03 12:55:12.399423	2020-10-14 19:58:25.490854
367	30	22	sns과제		https://github.com/dddooo9/django-sns.git	\N	\N	4	0	2020-09-13 16:06:44.916831	2020-10-14 19:49:53.840768
376	24	22	2학기 2주차 과제		https://github.com/didwldn3032/django-sns	\N	\N	0	0	2020-09-15 12:08:12.099998	2020-09-15 12:08:12.099998
358	19	21	김태형 과제 제출		https://github.com/pletain/hack_practice.git	\N	\N	2	0	2020-09-08 08:01:18.898321	2020-09-15 12:23:53.503145
378	28	22	과제제출합니다		https://github.com/lee00096/SNS	\N	\N	0	0	2020-09-15 14:57:48.996848	2020-09-15 14:57:48.996848
404	33	24	배포		http://34.226.220.140/	\N	\N	1	0	2020-09-23 14:03:54.563497	2020-09-29 15:40:50.174134
375	31	22	장영동	https://github.com/jang-1996/hacker	https://github.com/jang-1996/hacker	\N	\N	1	0	2020-09-15 12:02:59.65022	2020-09-15 15:34:13.016081
377	22	22	2학기 2주차 과제		https://github.com/alsthd27/django-sns	\N	\N	3	0	2020-09-15 14:54:52.840477	2020-09-15 15:56:10.563439
75	13	5	부트스트랩활용_강협	제출합니다.\r\n감사합니다.	https://github.com/Kanghyeop/likelion/tree/master/week1_bootstrtap	\N	\N	3	2	2020-05-19 06:40:33.575267	2020-09-17 18:11:32.529266
380	15	23	2020111625김동연 - 모델폼 / 2학기 3주차 		https://github.com/rlaehddus/all	\N	\N	0	0	2020-09-18 14:23:59.432578	2020-09-18 14:24:17.195549
382	28	23	과제제출		https://github.com/lee00096/summer13	\N	\N	0	0	2020-09-21 02:43:24.826593	2020-09-21 02:43:24.826593
383	27	23	이소정		https://github.com/SJLEE316/dgu-myblogsession	\N	\N	0	0	2020-09-21 06:24:10.528631	2020-09-21 06:24:10.528631
386	23	23	신주연 과제제출입니다.		https://github.com/juyeonshin/myblog.git	\N	\N	0	0	2020-09-21 17:17:17.937446	2020-09-21 17:17:17.937446
387	18	23	2학기 3주차 과제 - 모델폼		https://github.com/taeyeon0319/Summer_First	\N	\N	0	0	2020-09-22 00:35:32.026494	2020-09-22 00:35:32.026494
389	31	23	장영동 form 과제	https://github.com/jang-1996/HW	https://github.com/jang-1996/HW	\N	\N	0	0	2020-09-22 07:16:26.731366	2020-09-22 07:16:26.731366
390	29	23	2학기 3주차 과제		https://github.com/lhs961021/myblog.git	\N	\N	0	0	2020-09-22 10:56:12.769143	2020-09-22 10:56:12.769143
391	19	23	김태형 과제 제출		https://github.com/pletain/hack_practice.git	\N	\N	0	0	2020-09-22 11:26:23.002906	2020-09-22 11:26:23.002906
392	13	23	forms.py	기존 과제를 forms.py 를 이용하는 방식으로 변경하였습니다.	https://github.com/Kanghyeop/BoardProject	\N	\N	0	0	2020-09-22 11:59:22.799081	2020-09-22 11:59:22.799081
393	24	23	2학기 3주차 과제		https://github.com/didwldn3032/Shop	\N	\N	0	0	2020-09-22 12:54:40.188218	2020-09-22 12:54:40.188218
407	24	24	Django 프로젝트 배포하기		http://100.26.200.98/	\N	\N	1	0	2020-09-26 10:54:27.285984	2020-09-29 15:40:59.272573
410	31	24	프로젝트 배포	3.22.188.25	3.22.188.25	\N	\N	1	0	2020-09-28 03:29:37.263058	2020-09-29 15:41:18.963854
395	12	23	2-3주차 과제	my blog 레퍼지토리가 삭제되어 다시 추가했습니다..	https://github.com/dhk010111/myblog	\N	\N	0	0	2020-09-22 15:29:00.493983	2020-09-22 15:29:00.493983
396	32	23	과제 제출이요~	https://github.com/hehahihang/myblog.git	https://github.com/hehahihang/myblog.git	\N	\N	0	0	2020-09-22 17:18:05.88201	2020-09-22 17:18:05.88201
394	25	23	과제 제출합니다.	modelform	https://github.com/Awarduuu/django_first	\N	\N	2	0	2020-09-22 15:13:56.744788	2020-09-23 12:27:56.123469
374	32	22	과제 제출합니다	https://github.com/hehahihang/django-sns.git	https://github.com/hehahihang/django-sns.git	\N	\N	1	0	2020-09-15 11:58:48.543075	2020-10-14 20:29:59.832686
397	19	24	김태형 과제제출		http://3.86.5.211/	\N	\N	0	0	2020-09-23 13:01:32.276537	2020-09-23 13:01:32.276537
398	15	24	django 과제 배포	54.152.235.81	http://54.152.235.81/	\N	\N	0	0	2020-09-23 13:02:22.883675	2020-09-23 13:02:56.457994
399	29	24	django 프로젝트 배포하기 		http://3.93.248.87/	\N	\N	0	0	2020-09-23 13:07:12.807422	2020-09-23 13:07:12.807422
401	14	24	Django 프로젝트 배포하기		3.95.6.62	\N	\N	0	0	2020-09-23 13:31:39.129841	2020-09-23 13:31:39.129841
402	18	24	Django 프로젝트 배포하기..김태연		http://3.14.82.15/	\N	\N	0	0	2020-09-23 13:48:03.657333	2020-09-23 13:48:03.657333
403	34	24	배포 과제		http://3.83.84.133/	\N	\N	0	0	2020-09-23 14:00:08.869918	2020-09-23 14:00:08.869918
406	28	24	과제제출합니다		54.84.215.147	\N	\N	0	0	2020-09-24 14:42:44.103983	2020-09-24 14:42:44.103983
409	32	24	과제 제출합니다.	54.175.114.236:8000	54.175.114.236:8000	\N	\N	0	0	2020-09-27 08:03:49.35711	2020-09-27 08:03:49.35711
411	12	24	django 프로젝트 url		http://34.229.164.116/	\N	\N	0	0	2020-09-28 06:36:32.412821	2020-09-28 06:36:32.412821
408	25	24	윤상우_django 프로젝트 배포하기 과제	http://54.209.15.222/	http://54.209.15.222/	\N	\N	1	0	2020-09-27 07:55:16.49765	2020-09-29 15:41:14.565925
388	14	23	2학기 3주차 과제		https://github.com/godgi/Myblog_ModelFormHW	\N	\N	3	0	2020-09-22 05:19:39.745128	2020-10-02 13:39:18.107443
412	13	24	제출합니다.		http://54.210.202.51	\N	\N	3	0	2020-09-29 11:37:30.267438	2020-09-29 15:42:05.638962
405	27	24	이소정	http://54.180.155.213/	http://54.180.155.213/	\N	\N	1	0	2020-09-23 16:17:40.967186	2020-09-29 16:17:33.961336
400	30	24	aws 배포		54.147.111.92	\N	\N	1	0	2020-09-23 13:09:59.588665	2020-10-02 13:51:30.622527
384	33	23	ModelForm		https://github.com/hyeoneedyou/myblog	\N	\N	2	0	2020-09-21 08:58:23.465374	2020-10-01 14:39:02.425579
379	25	22	2주차 과제(mypage 제작)		https://github.com/Awarduuu/django-sns	\N	\N	1	0	2020-09-15 14:58:07.923617	2020-10-14 20:31:42.707854
381	30	23	모델폼 과제		https://github.com/dddooo9/myblog	\N	\N	2	0	2020-09-20 03:44:00.060451	2020-10-02 14:15:27.831571
368	13	22	Django sns	내가 좋아요한 게시글 모아보기는 했는데,\r\n팔로잉 하는 부분에서 에러가 나서 해결 아직 못함 ... ! \r\n논리적으로는 해결했는데, 자꾸 못불러옴. ㅠ_ㅠ	https://github.com/Kanghyeop/django_sns	\N	\N	2	0	2020-09-14 12:18:43.239576	2020-10-14 20:29:51.156712
416	34	25	과제 제출합니다		https://github.com/hyeonjee/test	\N	\N	1	0	2020-11-02 03:14:15.845257	2020-11-08 08:38:15.900022
385	34	23	modelform		https://github.com/hyeonjee/django_sns	\N	\N	1	0	2020-09-21 16:56:37.311237	2020-11-03 10:25:45.51673
418	27	25	이소정	https://github.com/SJLEE316/dgu-javascript	https://github.com/SJLEE316/dgu-javascript	\N	\N	1	0	2020-11-02 13:43:45.882456	2020-11-08 08:38:22.721482
417	33	25	JavaScript/JQuery 과제 입니다.		https://github.com/hyeoneedyou/playWithJavascript/tree/master	\N	\N	1	0	2020-11-02 11:54:26.905403	2020-11-08 09:06:42.438599
415	30	25	javascript/jquery 과제		https://github.com/dddooo9/playWithJavascript/tree/master	\N	\N	2	0	2020-11-01 13:32:44.560231	2020-11-08 09:16:29.454207
419	18	25	김태연-JavaScript/JQuery 과제		https://github.com/taeyeon0319/Javascript-JQuery	\N	\N	0	0	2020-11-03 04:26:48.48939	2020-11-03 04:26:48.48939
420	24	25	JavaScript/jQuery 과제		https://github.com/didwldn3032/playWithJavascript/tree/master	\N	\N	0	0	2020-11-03 05:23:57.861747	2020-11-03 05:23:57.861747
421	25	25	과제 제출합니다!	https://github.com/Awarduuu/playWithJavascript/tree/master	https://github.com/Awarduuu/playWithJavascript/tree/master	\N	\N	0	0	2020-11-03 09:06:39.593708	2020-11-03 09:06:39.593708
424	22	25	10월5주차 과제		https://www.github.com/alsthd27/dgulion_assignment	\N	\N	0	0	2020-11-03 11:31:47.593286	2020-11-03 11:31:47.593286
427	29	25	JavaScript/jQuery 과제		https://github.com/lhs961021/javascriptisfun.git	\N	\N	0	0	2020-11-03 14:24:28.568589	2020-11-03 14:24:28.568589
413	15	25	JavaScript/jQuery과제		https://github.com/rlaehddus/2020javascript.git	\N	\N	1	0	2020-10-28 14:13:54.528062	2020-11-08 07:36:09.711378
428	19	25	김태형 과제제출		https://github.com/pletain/Javascript-JQuery.git	\N	\N	1	0	2020-11-03 14:34:36.04778	2020-11-08 09:06:25.53941
423	23	25	과제 제출		https://github.com/juyeonshin/java_practice.git	\N	\N	1	0	2020-11-03 10:27:07.548087	2020-11-08 09:07:09.874862
422	28	25	2019110245 이예은 과제제출합니다		https://github.com/lee00096/jamjamjs	\N	\N	1	0	2020-11-03 09:46:53.454629	2020-11-08 09:15:49.719973
414	13	25	제출	todo app 의 main.html 에 수행했습니다.\r\n타 프로젝트를 진행하던 도중 하나의 html 을 이용해 진행했습니다.\r\nhtml 과 js 분리하는데에 알수없이 동작하지 않아 스크립트로 처리했습니다.	https://github.com/Kanghyeop/reactDjango/commits?author=Kanghyeop	\N	스크린샷_2020-10-31_오후_8.49.15.png	2	0	2020-10-31 11:48:44.820089	2020-11-08 09:16:05.410905
425	32	25	과제 제출합니다~	https://github.com/hehahihang/playWithJavascript.git	https://github.com/hehahihang/playWithJavascript.git	\N	\N	1	0	2020-11-03 11:49:06.72577	2020-11-08 09:16:49.252835
426	14	25	JavaScript/jQuery 과제		https://github.com/godgi/javascript_hw	\N	\N	1	0	2020-11-03 13:59:16.529792	2020-11-08 09:17:24.337391
448	22	27	댓글 삭제 ajax		https://github.com/alsthd27/ajax_comments	\N	\N	0	0	2020-11-17 12:56:32.366483	2020-11-17 12:56:32.366483
449	24	27	댓글 삭제 ajax 과제		https://github.com/didwldn3032/ajax_prac	\N	\N	0	0	2020-11-17 13:10:41.716974	2020-11-17 13:10:41.716974
450	34	27	과제 제출합니다		https://github.com/hyeonjee/test_ajax	\N	\N	0	0	2020-11-17 13:41:02.228715	2020-11-17 13:41:02.228715
438	24	26	싫어요 Ajax 과제		https://github.com/didwldn3032/ajax_prac	\N	\N	1	0	2020-11-10 08:40:56.798741	2020-11-10 15:00:54.872435
437	28	26	과제제출		https://github.com/lee00096/ajax_prac	\N	\N	1	0	2020-11-10 07:18:12.31346	2020-11-10 15:01:15.708281
434	15	26	싫어요 Ajax 과제 		https://github.com/rlaehddus/2020_ajax.git	\N	\N	1	0	2020-11-09 12:17:54.963724	2020-11-10 15:02:25.888806
436	27	26	이소정		https://github.com/SJLEE316/ajax_prac	\N	\N	2	0	2020-11-09 16:43:05.461053	2020-11-10 15:01:53.906302
451	25	27	제출합니다	https://github.com/Awarduuu/ajax_prac	https://github.com/Awarduuu/ajax_prac	\N	\N	0	0	2020-11-17 14:30:32.369494	2020-11-17 14:30:32.369494
433	25	26	과제 제출합니다.	https://github.com/Awarduuu/ajax_prac	https://github.com/Awarduuu/ajax_prac	\N	\N	1	0	2020-11-09 08:48:53.519156	2020-11-10 15:02:58.523759
432	33	26	싫어요 ajax		https://github.com/hyeoneedyou/ajax_prac	\N	\N	1	0	2020-11-08 15:49:05.567264	2020-11-10 15:03:25.1681
431	30	26	싫어요 Ajax 과제		https://github.com/dddooo9/ajax_prac	\N	\N	1	0	2020-11-08 12:46:49.033352	2020-11-10 15:03:43.956071
430	12	26	싫어요 Ajax 과제	https://github.com/dhk010111/dgulikelion2\r\n\r\n\r\n+저번주 과제를 했는데 과제 게시판에 등록을 안했습니다...ㅠ\r\n지나기는 했지만,, 링크는 이겁니다..!\r\nhttps://github.com/dhk010111/dgulikelion	https://github.com/dhk010111/dgulikelion2	\N	\N	1	0	2020-11-08 09:25:57.780066	2020-11-10 15:04:03.428532
429	23	26	과제 제출합니다		https://github.com/juyeonshin/ajax_prac.git	\N	\N	1	0	2020-11-08 08:37:36.437379	2020-11-10 15:04:35.549129
435	18	26	김태연_싫어요 과제		https://github.com/taeyeon0319/ajax_prac	\N	\N	2	0	2020-11-09 15:57:54.404263	2020-11-10 15:05:54.520715
442	19	26	김태형 과제제출		https://github.com/pletain/ajax_prac.git	\N	\N	3	0	2020-11-10 13:22:25.039614	2020-11-11 06:48:03.932608
441	14	26	싫어요 Ajax 과제		https://github.com/godgi/ajax_prac_HW	\N	\N	2	0	2020-11-10 12:36:30.894916	2020-11-11 07:13:12.575217
440	29	26	싫어요 Ajax 과제		https://github.com/lhs961021/ajax_prac.git	\N	\N	2	0	2020-11-10 10:11:55.45032	2020-11-12 04:27:58.516834
443	30	27	댓글 삭제 ajax		https://github.com/dddooo9/ajax_prac	\N	\N	0	0	2020-11-16 13:43:12.55813	2020-11-16 13:43:12.55813
444	27	27	이소정	https://github.com/SJLEE316/ajax_prac	https://github.com/SJLEE316/ajax_prac	\N	\N	0	0	2020-11-16 16:24:31.251451	2020-11-16 16:24:31.251451
445	33	27	댓글 삭제 ajax 과제		https://github.com/hyeoneedyou/ajax_prac.git	\N	\N	0	0	2020-11-16 17:32:48.095748	2020-11-16 17:32:48.095748
446	18	27	김태연_댓글 삭제 ajax 과제		https://github.com/taeyeon0319/ajax_practice	\N	\N	0	0	2020-11-17 03:34:57.011188	2020-11-17 03:34:57.011188
447	13	27	제출합니다.		https://github.com/Kanghyeop/ajax_prac	\N	\N	0	0	2020-11-17 05:59:32.866954	2020-11-17 05:59:32.866954
439	34	26	ajax 과제	ajax 과제 제출합니다.	https://github.com/hyeonjee/test_ajax	\N	\N	2	0	2020-11-10 08:43:54.108588	2020-11-17 14:46:20.363199
452	23	27	신주연 과제제출입니다.		https://github.com/juyeonshin/ajax_prac.git	\N	\N	1	0	2020-11-17 14:46:08.152235	2020-11-17 15:06:30.853419
\.


--
-- Name: submissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ubuntu
--

SELECT pg_catalog.setval('public.submissions_id_seq', 452, true);


--
-- Data for Name: taggings; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.taggings (id, tag_id, taggable_type, taggable_id, tagger_type, tagger_id, context, created_at) FROM stdin;
1	1	Gallery	1	\N	\N	tags	2020-04-13 12:32:07.930546
2	2	Gallery	1	\N	\N	tags	2020-04-13 12:32:07.936158
3	3	Gallery	1	\N	\N	tags	2020-04-13 12:32:07.939738
4	4	Gallery	1	\N	\N	tags	2020-04-13 12:32:07.943306
\.


--
-- Name: taggings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ubuntu
--

SELECT pg_catalog.setval('public.taggings_id_seq', 4, true);


--
-- Data for Name: tags; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.tags (id, name, created_at, updated_at, taggings_count) FROM stdin;
1	헤커톤	2020-04-13 12:32:07.910656	2020-04-13 12:32:07.910656	1
2	7기	2020-04-13 12:32:07.912742	2020-04-13 12:32:07.912742	1
3	멋사	2020-04-13 12:32:07.914183	2020-04-13 12:32:07.914183	1
4	동국대	2020-04-13 12:32:07.915683	2020-04-13 12:32:07.915683	1
\.


--
-- Name: tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ubuntu
--

SELECT pg_catalog.setval('public.tags_id_seq', 4, true);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.users (id, thumbnail, name, phone, gender, student_id, member_num, role, info, birth, vms_id, join_year, id_of_1365, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at, mentor_type) FROM stdin;
31	\N	장영동	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	altu1996@naver.com	$2a$11$IHzLDvcPtJ7Q3lv9dMyvEu4xl1cnGyhnLblXii4.fuBE2JlY/YQlO	\N	\N	2020-08-04 11:47:44.776879	12	2020-09-29 05:24:02.839228	2020-09-28 03:29:19.848275	175.113.188.103	175.113.188.103	2020-04-07 12:35:15.146807	2020-09-29 05:24:02.83972	\N
4	adbc4e3c-1eef-41f5-a8db-cf11bbcad01cdefault_profile.jpg.jpg	장성원	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	jsw209555@gmail.com	$2a$11$Vr5m4HPvyRPjJBcdS/IIduxXL9zpyMrm1Prhm6aVRcgvCQolbI5S.	\N	\N	2020-03-17 15:27:02.937376	1	2020-03-17 15:27:02.941339	2020-03-17 15:27:02.941339	115.161.96.66	115.161.96.66	2020-03-17 13:37:15.094581	2020-03-17 15:27:02.941524	1
13	\N	강협	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	kanghyeop@gmail.com	$2a$11$.hKNoYlwirU8eAwUK5g7LOodhxo3OIau4hLinI.LB8P4ISqp0IDmW	\N	\N	2020-05-07 04:26:00.200602	27	2020-11-17 05:59:21.885142	2020-11-12 04:27:38.921236	210.94.219.108	210.94.219.108	2020-04-07 12:28:27.840817	2020-11-17 05:59:21.885626	\N
3	\N	연제훈	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	dusgns01@naver.com	$2a$11$peoF/JGU7k7nO6crxiGIueGUD6ICmELRckXSxKJm2NNuFrbJkeYma	\N	\N	\N	33	2020-11-16 12:10:45.908183	2020-11-01 02:20:45.291619	182.216.192.62	121.133.61.157	2020-03-17 13:35:38.969579	2020-11-16 12:10:45.909131	2
9	\N	지선아	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	jisuna314@gmail.com	$2a$11$k6k0j/xfFr/.KJ3A6Urq6u11DniTPpsmsrHNoq9BgZEOf20QcxwZm	\N	\N	\N	2	2020-06-09 15:25:13.997623	2020-04-10 13:18:09.850432	1.228.3.159	1.228.3.159	2020-03-18 04:56:20.74818	2020-06-09 15:25:13.998033	2
10	\N	김연진	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	ygk313@naver.com	$2a$11$jDZJDqE5Qj8RPtxzDvE1KeYFOTiqAVYoOllVzE0Uf8ruxLpXBvpgK	\N	\N	\N	26	2020-11-10 14:57:16.475522	2020-10-06 12:31:37.486188	1.245.48.41	1.245.48.41	2020-03-18 07:48:05.966591	2020-11-10 14:57:16.476027	3
29	\N	이형석	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	lhs961021@naver.com	$2a$11$kKKtd274CXGdcQbZyEiq4.iKPQiml4VWZIOji82tgL7nBmerUXv7u	\N	\N	\N	30	2020-11-18 03:38:55.904039	2020-11-10 10:11:18.733249	116.34.186.3	61.83.248.40	2020-04-07 12:34:37.222419	2020-11-18 03:38:55.904536	\N
14	\N	고명기	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	30megapixels@naver.com	$2a$11$5Cwf/rHkvnEsNCIGEseBbOMxK9kWr1ND0vBhD0vyIupFXvbumVSEa	\N	\N	\N	41	2020-11-10 12:36:17.868832	2020-11-09 06:51:34.387718	61.73.11.156	221.147.103.173	2020-04-07 12:28:49.46543	2020-11-10 12:36:17.869333	\N
33	\N	주현이	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	hyeoneedyou@naver.com	$2a$11$ditHfstH4uAoA7uQJDOEUuHhGbvtyCa1h5i6ExM6tv9kWQhvvE7ty	\N	\N	2020-04-13 06:03:48.799385	33	2020-11-16 17:32:25.825614	2020-11-08 15:48:30.125428	121.129.110.165	121.129.110.165	2020-04-07 12:35:49.974552	2020-11-16 17:32:25.826099	\N
2	\N	박현준	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	hyeonjun7@naver.com	$2a$11$g3yHCRKu3UHIyxZmDxxqAeUpIhzU/G25YvCzQvLt5ELezhroJ38aq	\N	\N	\N	17	2020-09-03 19:30:10.028886	2020-08-25 07:51:04.757503	211.192.35.80	121.160.23.100	2020-03-17 13:26:45.704458	2020-09-03 19:30:10.029369	2
18	\N	김태연	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	xodus1349@naver.com	$2a$11$mb5l/uPZAhHPwzU/DSc3fu5c4l.FU.51SIYL/JzpgI4M7EdADiIdy	\N	\N	2020-04-19 06:09:36.925129	31	2020-11-17 03:34:38.754224	2020-11-09 15:57:29.469058	180.70.155.217	180.70.155.217	2020-04-07 12:30:11.105374	2020-11-17 03:34:38.754722	\N
27	\N	이소정	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	lsj8249@naver.com	$2a$11$tCm8weFWQC7CgvpQKErSbOx7rgv5EsFNBdQxN.Oz1Ex0TqrcwaEZK	\N	\N	\N	31	2020-11-16 16:24:16.009456	2020-11-12 14:10:10.056788	175.118.26.119	175.118.26.119	2020-04-07 12:33:47.472533	2020-11-16 16:24:16.00994	\N
8	eaa4723d-785b-4c37-a764-204e6ed837a0KakaoTalk_Photo_2020-03-16-12-08-01.png.png	박지수	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	qkrwltn8976@naver.com	$2a$11$qKtDIHu42.U9T0FVqM9REOZMiyG7YCgHb6L.uX7/.wYXWfB5WNk2K	\N	\N	\N	6	2020-06-10 04:47:29.523125	2020-05-20 10:46:51.120565	58.226.78.86	210.94.171.73	2020-03-17 15:38:14.627126	2020-06-10 04:47:29.523695	2
20	\N	라민정	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	juliejane@dgu.ac.kr	$2a$11$N.o2yYz0rL41nyCVzC8xoeEv4ldTr/O4WH2JbRfalEbqi7eE/yrWi	\N	\N	2020-04-16 04:13:56.680092	6	2020-05-16 06:02:49.524892	2020-05-04 09:28:21.12887	175.125.176.194	175.125.176.194	2020-04-07 12:30:53.964829	2020-05-16 06:02:49.525364	\N
21	\N	박채은	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	chaeun0618@naver.com	$2a$11$PaYzuCEOAqGTQV73p/B99uxSyk9e7NNyV6zjXdYg5VmdmfUjMbJG2	\N	\N	2020-04-17 19:39:16.370251	12	2020-07-21 06:05:14.145077	2020-07-14 12:27:58.230525	121.185.246.174	180.182.105.231	2020-04-07 12:31:19.19591	2020-07-21 06:05:14.145455	\N
28	\N	이예은	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	lee00096kr@gmail.com	$2a$11$OrJ./8v/Ac1oWpxXSf1nfej/RFjM9VxtSANJN2ZrFvR65RcDICGFq	\N	\N	2020-04-13 11:54:24.830435	28	2020-11-13 02:17:51.873813	2020-11-10 07:17:55.161244	211.202.18.2	120.142.129.155	2020-04-07 12:34:12.896427	2020-11-13 02:17:51.874182	\N
15	\N	김동연	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	dongyune0409@naver.com	$2a$11$6j1Fe9ypBr9Cd3D9fVGSSed/ROtzbNkdmGKj6fZF6J/h3fAIUSTbC	\N	\N	2020-04-17 08:41:51.596599	37	2020-11-09 12:17:18.088884	2020-10-28 14:13:17.940446	106.250.176.18	115.139.143.186	2020-04-07 12:29:09.614795	2020-11-09 12:17:18.089396	\N
26	\N	이가원	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	rainrain16@hanmail.net	$2a$11$Xz2HOtd7iDw48y7/vbk.dOiqOGX..HUw9ULq0qcF3pc1lA/JTxGk6	\N	\N	\N	3	2020-04-17 09:08:52.394752	2020-04-17 07:33:18.760104	58.140.10.245	210.94.171.73	2020-04-07 12:33:28.438166	2020-04-17 09:08:52.395166	\N
5	\N	양준혁	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	surfing2003@naver.com	$2a$11$sCyzJkQZTrmyisArNDmr4e7MF4.KmfaqjfkQPQF8WFHmaqsdDEP3a	\N	\N	2020-04-13 06:12:32.14926	26	2020-09-23 12:27:46.828074	2020-09-15 14:20:03.854903	14.40.89.162	211.212.80.6	2020-03-17 13:39:30.712745	2020-09-23 12:27:46.828932	3
22	\N	송요민	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	alsthd27@naver.com	$2a$11$F6XgnPk7IcI4lID3MfKcdulS.7TTkVqvIWxHOJn3Uvyg37/TmY8uO	\N	\N	2020-04-14 03:22:39.480941	18	2020-11-03 11:30:32.713216	2020-08-04 08:01:45.37325	223.62.11.81	58.227.254.39	2020-04-07 12:31:41.581143	2020-11-03 11:30:32.713748	\N
23	\N	신주연	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	sjy8738@naver.com	$2a$11$n6JrHyxnL38C/Kn0JeW4yuaetOaNkouPm0rQoR7BcYHpzzEXouh36	\N	\N	\N	27	2020-11-17 14:45:52.649812	2020-11-08 08:37:04.65921	223.38.8.30	27.117.189.38	2020-04-07 12:32:26.551818	2020-11-17 14:45:52.650305	\N
12	\N	강동희	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	dhk010111@gmail.com	$2a$11$C8Ows8UiRszy6tEBzQU7O.COoDUveESEAK9PCUY6kMWLi6umZQ9zK	\N	\N	2020-04-16 13:14:10.290408	50	2020-11-17 15:05:14.388075	2020-11-17 06:29:18.304847	223.131.217.23	121.128.137.213	2020-04-07 12:28:02.033981	2020-11-17 15:05:14.388554	\N
34	\N	최현지	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	dndbguswl@naver.com	$2a$11$MYAEH3yOpajmYtT5toBIN.sP0ylZTK6M5PcfrK1KUKD02IejAiKAq	\N	\N	2020-04-19 08:51:58.165869	38	2020-11-17 13:40:41.777775	2020-11-10 08:43:15.858758	182.209.119.187	218.144.50.2	2020-04-07 12:36:06.421079	2020-11-17 13:40:41.778121	\N
7	\N	배정수	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	bjsoo1123@naver.com	$2a$11$kVgb2bxYHBPDB2hwNAM63uivA2jRCn59aNCsRsYd4odbo9pCnUHza	\N	\N	\N	3	2020-06-09 14:54:57.888196	2020-03-18 17:21:03.16542	14.40.91.208	110.70.27.86	2020-03-17 15:23:30.98887	2020-06-09 14:54:57.888582	4
16	\N	김민지	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	minjiamy@naver.com	$2a$11$2F7vRk76/ZfD6f32l92m9.SZBLrRgc9zJ1p7JUgCFW7NumHsogmAm	\N	\N	\N	15	2020-06-02 15:00:42.196344	2020-06-02 14:59:30.228833	14.35.229.50	112.170.28.225	2020-04-07 12:29:31.488334	2020-06-02 15:00:42.196735	\N
25	\N	윤상우	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	awarduuu@gmail.com	$2a$11$shnNB079sHLbZj7BSBY8iuNN0jBdSHMmJqazHH12PA23OL8I8XJJC	\N	\N	2020-11-17 14:27:19.656191	39	2020-11-17 14:27:19.661329	2020-11-09 08:48:00.093425	223.62.163.239	110.12.33.130	2020-04-07 12:33:06.25165	2020-11-17 14:27:19.66154	\N
17	\N	김소은	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	kimsoeun0225@naver.com	$2a$11$H6OTdMvQeXZDcfA11tbKE.CZY8.o/iX.2R6.CnJAKiBZAuPxzCl22	\N	\N	\N	17	2020-07-08 06:47:41.384938	2020-06-09 13:06:38.849389	218.50.239.28	218.50.239.28	2020-04-07 12:29:52.35542	2020-07-08 06:47:41.385422	\N
32	\N	정광수	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	jeongks94@naver.com	$2a$11$xDs4TuV1JfxfvxjZ/1/aZO3tht5DDb3.Sgm9SmxLryVPbXNgmJDVa	\N	\N	\N	21	2020-11-03 11:48:47.46284	2020-09-27 08:03:21.326475	221.151.121.88	221.151.121.88	2020-04-07 12:35:31.894753	2020-11-03 11:48:47.463379	\N
30	\N	임도연	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	dlaehdus99@naver.com	$2a$11$9yoSBFyBr1/0cFugvPv3qeWIBaC1LBJ7y94THXvugckOA1GfnxTsK	\N	\N	2020-08-05 05:00:04.518545	57	2020-11-16 13:42:53.297373	2020-11-08 12:46:12.976573	121.165.193.182	14.32.231.34	2020-04-07 12:34:56.007814	2020-11-16 13:42:53.297911	\N
24	\N	양지우	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	didwldn3032@naver.com	$2a$11$P2FEpWWktvU9FMlEVYJDPOPDsGU3EeEeH1rIV6zIVTvSuVhan/LgS	\N	\N	\N	36	2020-11-17 13:10:31.289193	2020-11-10 08:40:39.667563	211.179.26.137	211.179.26.137	2020-04-07 12:32:47.538156	2020-11-17 13:10:31.289659	\N
6	b73c50a7-e014-48e3-840f-f4bc46e98a23FD1BB4D6-B9B2-4ED3-A8F2-A2024B9145DB.png.png	하윤영	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	hayunyun@naver.com	$2a$11$2WlnvyKu5c8k2/p9QdTorebDonfFDNCThdQ/0o8MJHe4OAwMhqNWq	\N	\N	2020-06-09 14:50:54.241578	17	2020-09-22 15:03:53.602241	2020-09-21 16:18:10.530967	112.161.147.149	121.130.212.97	2020-03-17 15:19:26.616775	2020-09-22 15:03:53.602943	5
1	7d7a65d5-ecfc-4573-a06f-60c28f4ff907profile.jpg.jpg	이주영	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	2jy22@naver.com	$2a$11$14UzAs6qjdDD/ckdu9wE7.4j0xFEPXABaNLlky/cbLghn2Gpefgmi	\N	\N	\N	14	2020-08-03 15:55:54.608776	2020-07-09 10:48:54.077128	122.34.10.26	122.34.10.26	2020-03-17 13:25:16.502134	2020-08-03 15:55:54.61015	0
19	\N	김태형	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	kthnote@naver.com	$2a$11$MaHYVq.EsXzSUaxdg7r4t.ty2EgudNjG/AkHmnnFzvj3cT7YbxMhG	\N	\N	2020-04-15 22:11:09.21184	56	2020-11-23 13:20:08.173191	2020-11-10 13:22:13.066087	220.118.194.181	220.118.194.181	2020-04-07 12:30:34.143289	2020-11-23 13:20:08.174114	\N
11	78deb9b5-f9b0-46bd-aa8d-d1f77ad53899저거사자.png.png	김효정	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	123gywjddl@naver.com	$2a$11$ksh6jizwcLFguQoSaEkcRetJHN1jg2EeB7xVoHD9Bl.oXkb0VkejG	\N	\N	2020-04-13 06:09:53.059885	28	2020-09-11 04:14:40.90178	2020-08-11 15:28:31.139549	210.221.73.11	14.47.57.209	2020-03-18 07:59:02.663948	2020-09-11 04:14:40.902523	3
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ubuntu
--

SELECT pg_catalog.setval('public.users_id_seq', 34, true);


--
-- Data for Name: wishes; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.wishes (id, user_id, submission_id, created_at, updated_at) FROM stdin;
\.


--
-- Name: wishes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ubuntu
--

SELECT pg_catalog.setval('public.wishes_id_seq', 1, false);


--
-- Name: action_text_rich_texts_pkey; Type: CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.action_text_rich_texts
    ADD CONSTRAINT action_text_rich_texts_pkey PRIMARY KEY (id);


--
-- Name: active_admin_comments_pkey; Type: CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.active_admin_comments
    ADD CONSTRAINT active_admin_comments_pkey PRIMARY KEY (id);


--
-- Name: active_storage_attachments_pkey; Type: CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT active_storage_attachments_pkey PRIMARY KEY (id);


--
-- Name: active_storage_blobs_pkey; Type: CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.active_storage_blobs
    ADD CONSTRAINT active_storage_blobs_pkey PRIMARY KEY (id);


--
-- Name: admin_users_pkey; Type: CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);


--
-- Name: applies_pkey; Type: CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.applies
    ADD CONSTRAINT applies_pkey PRIMARY KEY (id);


--
-- Name: ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: assignments_pkey; Type: CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.assignments
    ADD CONSTRAINT assignments_pkey PRIMARY KEY (id);


--
-- Name: comments_pkey; Type: CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);


--
-- Name: galleries_pkey; Type: CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.galleries
    ADD CONSTRAINT galleries_pkey PRIMARY KEY (id);


--
-- Name: lectures_pkey; Type: CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.lectures
    ADD CONSTRAINT lectures_pkey PRIMARY KEY (id);


--
-- Name: recruits_pkey; Type: CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.recruits
    ADD CONSTRAINT recruits_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: submissions_pkey; Type: CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.submissions
    ADD CONSTRAINT submissions_pkey PRIMARY KEY (id);


--
-- Name: taggings_pkey; Type: CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.taggings
    ADD CONSTRAINT taggings_pkey PRIMARY KEY (id);


--
-- Name: tags_pkey; Type: CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (id);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: wishes_pkey; Type: CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.wishes
    ADD CONSTRAINT wishes_pkey PRIMARY KEY (id);


--
-- Name: index_action_text_rich_texts_uniqueness; Type: INDEX; Schema: public; Owner: ubuntu
--

CREATE UNIQUE INDEX index_action_text_rich_texts_uniqueness ON public.action_text_rich_texts USING btree (record_type, record_id, name);


--
-- Name: index_active_admin_comments_on_author_type_and_author_id; Type: INDEX; Schema: public; Owner: ubuntu
--

CREATE INDEX index_active_admin_comments_on_author_type_and_author_id ON public.active_admin_comments USING btree (author_type, author_id);


--
-- Name: index_active_admin_comments_on_namespace; Type: INDEX; Schema: public; Owner: ubuntu
--

CREATE INDEX index_active_admin_comments_on_namespace ON public.active_admin_comments USING btree (namespace);


--
-- Name: index_active_admin_comments_on_resource_type_and_resource_id; Type: INDEX; Schema: public; Owner: ubuntu
--

CREATE INDEX index_active_admin_comments_on_resource_type_and_resource_id ON public.active_admin_comments USING btree (resource_type, resource_id);


--
-- Name: index_active_storage_attachments_on_blob_id; Type: INDEX; Schema: public; Owner: ubuntu
--

CREATE INDEX index_active_storage_attachments_on_blob_id ON public.active_storage_attachments USING btree (blob_id);


--
-- Name: index_active_storage_attachments_uniqueness; Type: INDEX; Schema: public; Owner: ubuntu
--

CREATE UNIQUE INDEX index_active_storage_attachments_uniqueness ON public.active_storage_attachments USING btree (record_type, record_id, name, blob_id);


--
-- Name: index_active_storage_blobs_on_key; Type: INDEX; Schema: public; Owner: ubuntu
--

CREATE UNIQUE INDEX index_active_storage_blobs_on_key ON public.active_storage_blobs USING btree (key);


--
-- Name: index_admin_users_on_email; Type: INDEX; Schema: public; Owner: ubuntu
--

CREATE UNIQUE INDEX index_admin_users_on_email ON public.admin_users USING btree (email);


--
-- Name: index_admin_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: ubuntu
--

CREATE UNIQUE INDEX index_admin_users_on_reset_password_token ON public.admin_users USING btree (reset_password_token);


--
-- Name: index_applies_on_recruit_id; Type: INDEX; Schema: public; Owner: ubuntu
--

CREATE INDEX index_applies_on_recruit_id ON public.applies USING btree (recruit_id);


--
-- Name: index_assignments_on_user_id; Type: INDEX; Schema: public; Owner: ubuntu
--

CREATE INDEX index_assignments_on_user_id ON public.assignments USING btree (user_id);


--
-- Name: index_comments_on_commentable_type_and_commentable_id; Type: INDEX; Schema: public; Owner: ubuntu
--

CREATE INDEX index_comments_on_commentable_type_and_commentable_id ON public.comments USING btree (commentable_type, commentable_id);


--
-- Name: index_comments_on_user_id; Type: INDEX; Schema: public; Owner: ubuntu
--

CREATE INDEX index_comments_on_user_id ON public.comments USING btree (user_id);


--
-- Name: index_galleries_on_user_id; Type: INDEX; Schema: public; Owner: ubuntu
--

CREATE INDEX index_galleries_on_user_id ON public.galleries USING btree (user_id);


--
-- Name: index_lectures_on_user_id; Type: INDEX; Schema: public; Owner: ubuntu
--

CREATE INDEX index_lectures_on_user_id ON public.lectures USING btree (user_id);


--
-- Name: index_submissions_on_assignment_id; Type: INDEX; Schema: public; Owner: ubuntu
--

CREATE INDEX index_submissions_on_assignment_id ON public.submissions USING btree (assignment_id);


--
-- Name: index_submissions_on_user_id; Type: INDEX; Schema: public; Owner: ubuntu
--

CREATE INDEX index_submissions_on_user_id ON public.submissions USING btree (user_id);


--
-- Name: index_taggings_on_context; Type: INDEX; Schema: public; Owner: ubuntu
--

CREATE INDEX index_taggings_on_context ON public.taggings USING btree (context);


--
-- Name: index_taggings_on_tag_id; Type: INDEX; Schema: public; Owner: ubuntu
--

CREATE INDEX index_taggings_on_tag_id ON public.taggings USING btree (tag_id);


--
-- Name: index_taggings_on_taggable_id; Type: INDEX; Schema: public; Owner: ubuntu
--

CREATE INDEX index_taggings_on_taggable_id ON public.taggings USING btree (taggable_id);


--
-- Name: index_taggings_on_taggable_type; Type: INDEX; Schema: public; Owner: ubuntu
--

CREATE INDEX index_taggings_on_taggable_type ON public.taggings USING btree (taggable_type);


--
-- Name: index_taggings_on_tagger_id; Type: INDEX; Schema: public; Owner: ubuntu
--

CREATE INDEX index_taggings_on_tagger_id ON public.taggings USING btree (tagger_id);


--
-- Name: index_taggings_on_tagger_id_and_tagger_type; Type: INDEX; Schema: public; Owner: ubuntu
--

CREATE INDEX index_taggings_on_tagger_id_and_tagger_type ON public.taggings USING btree (tagger_id, tagger_type);


--
-- Name: index_tags_on_name; Type: INDEX; Schema: public; Owner: ubuntu
--

CREATE UNIQUE INDEX index_tags_on_name ON public.tags USING btree (name);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: ubuntu
--

CREATE UNIQUE INDEX index_users_on_email ON public.users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: ubuntu
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON public.users USING btree (reset_password_token);


--
-- Name: index_wishes_on_submission_id; Type: INDEX; Schema: public; Owner: ubuntu
--

CREATE INDEX index_wishes_on_submission_id ON public.wishes USING btree (submission_id);


--
-- Name: index_wishes_on_user_id; Type: INDEX; Schema: public; Owner: ubuntu
--

CREATE INDEX index_wishes_on_user_id ON public.wishes USING btree (user_id);


--
-- Name: index_wishes_on_user_id_and_submission_id; Type: INDEX; Schema: public; Owner: ubuntu
--

CREATE UNIQUE INDEX index_wishes_on_user_id_and_submission_id ON public.wishes USING btree (user_id, submission_id);


--
-- Name: taggings_idx; Type: INDEX; Schema: public; Owner: ubuntu
--

CREATE UNIQUE INDEX taggings_idx ON public.taggings USING btree (tag_id, taggable_id, taggable_type, context, tagger_id, tagger_type);


--
-- Name: taggings_idy; Type: INDEX; Schema: public; Owner: ubuntu
--

CREATE INDEX taggings_idy ON public.taggings USING btree (taggable_id, taggable_type, tagger_id, context);


--
-- Name: taggings_taggable_context_idx; Type: INDEX; Schema: public; Owner: ubuntu
--

CREATE INDEX taggings_taggable_context_idx ON public.taggings USING btree (taggable_id, taggable_type, context);


--
-- Name: fk_rails_03de2dc08c; Type: FK CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT fk_rails_03de2dc08c FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: fk_rails_05f824a025; Type: FK CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.galleries
    ADD CONSTRAINT fk_rails_05f824a025 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: fk_rails_4c43160eae; Type: FK CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.wishes
    ADD CONSTRAINT fk_rails_4c43160eae FOREIGN KEY (submission_id) REFERENCES public.submissions(id);


--
-- Name: fk_rails_5a439a4e07; Type: FK CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.lectures
    ADD CONSTRAINT fk_rails_5a439a4e07 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: fk_rails_61cac0823d; Type: FK CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.submissions
    ADD CONSTRAINT fk_rails_61cac0823d FOREIGN KEY (assignment_id) REFERENCES public.assignments(id);


--
-- Name: fk_rails_80dc2ed976; Type: FK CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.wishes
    ADD CONSTRAINT fk_rails_80dc2ed976 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: fk_rails_8d85741475; Type: FK CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.submissions
    ADD CONSTRAINT fk_rails_8d85741475 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: fk_rails_9fcd2e236b; Type: FK CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.taggings
    ADD CONSTRAINT fk_rails_9fcd2e236b FOREIGN KEY (tag_id) REFERENCES public.tags(id);


--
-- Name: fk_rails_aa6b76dac2; Type: FK CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.assignments
    ADD CONSTRAINT fk_rails_aa6b76dac2 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: fk_rails_c3b3935057; Type: FK CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT fk_rails_c3b3935057 FOREIGN KEY (blob_id) REFERENCES public.active_storage_blobs(id);


--
-- Name: fk_rails_ee563b93f3; Type: FK CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.applies
    ADD CONSTRAINT fk_rails_ee563b93f3 FOREIGN KEY (recruit_id) REFERENCES public.recruits(id);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--
