--
-- PostgreSQL database dump
--

-- Dumped from database version 14.6 (Homebrew)
-- Dumped by pg_dump version 14.6 (Homebrew)

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
-- Name: SequelizeMeta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."SequelizeMeta" (
    name character varying(255) NOT NULL
);


ALTER TABLE public."SequelizeMeta" OWNER TO postgres;

--
-- Name: product_reviews; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_reviews (
    id integer NOT NULL,
    reviewer_id integer NOT NULL,
    product_id integer NOT NULL,
    title character varying(255) NOT NULL,
    body text NOT NULL,
    rating integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.product_reviews OWNER TO postgres;

--
-- Name: product_reviews_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.product_reviews_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_reviews_id_seq OWNER TO postgres;

--
-- Name: product_reviews_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.product_reviews_id_seq OWNED BY public.product_reviews.id;


--
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products (
    id integer NOT NULL,
    seller_id integer NOT NULL,
    name character varying(255) NOT NULL,
    price double precision NOT NULL,
    description text NOT NULL,
    image text,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.products OWNER TO postgres;

--
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_id_seq OWNER TO postgres;

--
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;


--
-- Name: user_reviews; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_reviews (
    id integer NOT NULL,
    reviewer_id integer NOT NULL,
    reviewee_id integer,
    title character varying(255) NOT NULL,
    body text NOT NULL,
    rating integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.user_reviews OWNER TO postgres;

--
-- Name: user_reviews_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_reviews_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_reviews_id_seq OWNER TO postgres;

--
-- Name: user_reviews_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_reviews_id_seq OWNED BY public.user_reviews.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    username character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: product_reviews id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_reviews ALTER COLUMN id SET DEFAULT nextval('public.product_reviews_id_seq'::regclass);


--
-- Name: products id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);


--
-- Name: user_reviews id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_reviews ALTER COLUMN id SET DEFAULT nextval('public.user_reviews_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: SequelizeMeta; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."SequelizeMeta" VALUES ('20220912190247-create-user.js');
INSERT INTO public."SequelizeMeta" VALUES ('20220912190951-create-product.js');
INSERT INTO public."SequelizeMeta" VALUES ('20220912192220-create-user-review.js');
INSERT INTO public."SequelizeMeta" VALUES ('20220912212127-create-product-review.js');


--
-- Data for Name: product_reviews; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.product_reviews VALUES (1, 5, 12, 'User-centric executive knowledge user', 'What a stupid attitude we have in this country to personal stories. Never refuse an assignment except when there is a conflict of interest, a potential of danger to you or your family, or you hold a strongly biased attitude about the subject under focus. My mother, she had a very good attitude toward money. I''m very grateful for the fact that we had to learn to save. I used to get like 50 pence a week, and I''d save it for like five months. And then I''d spend it on Christmas presents. I''d save up like eight pounds. It''s nothing, but we did that.', 3, '2022-09-13 10:31:41.97-04', '2022-09-13 10:31:41.97-04');
INSERT INTO public.product_reviews VALUES (2, 3, 19, 'Up-sized eco-centric pricing structure', 'What a stupid attitude we have in this country to personal stories. Never refuse an assignment except when there is a conflict of interest, a potential of danger to you or your family, or you hold a strongly biased attitude about the subject under focus. My mother, she had a very good attitude toward money. I''m very grateful for the fact that we had to learn to save. I used to get like 50 pence a week, and I''d save it for like five months. And then I''d spend it on Christmas presents. I''d save up like eight pounds. It''s nothing, but we did that.', 4, '2022-09-13 10:31:41.97-04', '2022-09-13 10:31:41.97-04');
INSERT INTO public.product_reviews VALUES (3, 4, 2, 'Operative bi-directional protocol', 'What a stupid attitude we have in this country to personal stories. Never refuse an assignment except when there is a conflict of interest, a potential of danger to you or your family, or you hold a strongly biased attitude about the subject under focus. My mother, she had a very good attitude toward money. I''m very grateful for the fact that we had to learn to save. I used to get like 50 pence a week, and I''d save it for like five months. And then I''d spend it on Christmas presents. I''d save up like eight pounds. It''s nothing, but we did that.', 3, '2022-09-13 10:31:41.97-04', '2022-09-13 10:31:41.97-04');
INSERT INTO public.product_reviews VALUES (4, 5, 4, 'Digitized attitude-oriented implementation', 'What a stupid attitude we have in this country to personal stories. Never refuse an assignment except when there is a conflict of interest, a potential of danger to you or your family, or you hold a strongly biased attitude about the subject under focus. My mother, she had a very good attitude toward money. I''m very grateful for the fact that we had to learn to save. I used to get like 50 pence a week, and I''d save it for like five months. And then I''d spend it on Christmas presents. I''d save up like eight pounds. It''s nothing, but we did that.', 4, '2022-09-13 10:31:41.971-04', '2022-09-13 10:31:41.971-04');
INSERT INTO public.product_reviews VALUES (5, 2, 11, 'Vision-oriented holistic protocol', 'What a stupid attitude we have in this country to personal stories. Never refuse an assignment except when there is a conflict of interest, a potential of danger to you or your family, or you hold a strongly biased attitude about the subject under focus. My mother, she had a very good attitude toward money. I''m very grateful for the fact that we had to learn to save. I used to get like 50 pence a week, and I''d save it for like five months. And then I''d spend it on Christmas presents. I''d save up like eight pounds. It''s nothing, but we did that.', 4, '2022-09-13 10:31:41.971-04', '2022-09-13 10:31:41.971-04');
INSERT INTO public.product_reviews VALUES (6, 3, 11, 'De-engineered full-range extranet', 'What a stupid attitude we have in this country to personal stories. Never refuse an assignment except when there is a conflict of interest, a potential of danger to you or your family, or you hold a strongly biased attitude about the subject under focus. My mother, she had a very good attitude toward money. I''m very grateful for the fact that we had to learn to save. I used to get like 50 pence a week, and I''d save it for like five months. And then I''d spend it on Christmas presents. I''d save up like eight pounds. It''s nothing, but we did that.', 4, '2022-09-13 10:31:41.971-04', '2022-09-13 10:31:41.971-04');
INSERT INTO public.product_reviews VALUES (7, 5, 21, 'Synchronised 24 hour emulation', 'What a stupid attitude we have in this country to personal stories. Never refuse an assignment except when there is a conflict of interest, a potential of danger to you or your family, or you hold a strongly biased attitude about the subject under focus. My mother, she had a very good attitude toward money. I''m very grateful for the fact that we had to learn to save. I used to get like 50 pence a week, and I''d save it for like five months. And then I''d spend it on Christmas presents. I''d save up like eight pounds. It''s nothing, but we did that.', 1, '2022-09-13 10:31:41.971-04', '2022-09-13 10:31:41.971-04');
INSERT INTO public.product_reviews VALUES (8, 1, 8, 'Quality-focused coherent groupware', 'What a stupid attitude we have in this country to personal stories. Never refuse an assignment except when there is a conflict of interest, a potential of danger to you or your family, or you hold a strongly biased attitude about the subject under focus. My mother, she had a very good attitude toward money. I''m very grateful for the fact that we had to learn to save. I used to get like 50 pence a week, and I''d save it for like five months. And then I''d spend it on Christmas presents. I''d save up like eight pounds. It''s nothing, but we did that.', 3, '2022-09-13 10:31:41.971-04', '2022-09-13 10:31:41.971-04');
INSERT INTO public.product_reviews VALUES (9, 2, 6, 'Right-sized client-driven firmware', 'What a stupid attitude we have in this country to personal stories. Never refuse an assignment except when there is a conflict of interest, a potential of danger to you or your family, or you hold a strongly biased attitude about the subject under focus. My mother, she had a very good attitude toward money. I''m very grateful for the fact that we had to learn to save. I used to get like 50 pence a week, and I''d save it for like five months. And then I''d spend it on Christmas presents. I''d save up like eight pounds. It''s nothing, but we did that.', 1, '2022-09-13 10:31:41.972-04', '2022-09-13 10:31:41.972-04');
INSERT INTO public.product_reviews VALUES (10, 5, 13, 'Fundamental client-server data-warehouse', 'What a stupid attitude we have in this country to personal stories. Never refuse an assignment except when there is a conflict of interest, a potential of danger to you or your family, or you hold a strongly biased attitude about the subject under focus. My mother, she had a very good attitude toward money. I''m very grateful for the fact that we had to learn to save. I used to get like 50 pence a week, and I''d save it for like five months. And then I''d spend it on Christmas presents. I''d save up like eight pounds. It''s nothing, but we did that.', 1, '2022-09-13 10:31:41.972-04', '2022-09-13 10:31:41.972-04');
INSERT INTO public.product_reviews VALUES (11, 5, 6, 'Reduced regional frame', 'What a stupid attitude we have in this country to personal stories. Never refuse an assignment except when there is a conflict of interest, a potential of danger to you or your family, or you hold a strongly biased attitude about the subject under focus. My mother, she had a very good attitude toward money. I''m very grateful for the fact that we had to learn to save. I used to get like 50 pence a week, and I''d save it for like five months. And then I''d spend it on Christmas presents. I''d save up like eight pounds. It''s nothing, but we did that.', 4, '2022-09-13 10:31:41.972-04', '2022-09-13 10:31:41.972-04');
INSERT INTO public.product_reviews VALUES (12, 1, 8, 'Enterprise-wide directional orchestration', 'What a stupid attitude we have in this country to personal stories. Never refuse an assignment except when there is a conflict of interest, a potential of danger to you or your family, or you hold a strongly biased attitude about the subject under focus. My mother, she had a very good attitude toward money. I''m very grateful for the fact that we had to learn to save. I used to get like 50 pence a week, and I''d save it for like five months. And then I''d spend it on Christmas presents. I''d save up like eight pounds. It''s nothing, but we did that.', 1, '2022-09-13 10:31:41.972-04', '2022-09-13 10:31:41.972-04');
INSERT INTO public.product_reviews VALUES (13, 2, 22, 'Enterprise-wide directional orchestration', 'What a stupid attitude we have in this country to personal stories. Never refuse an assignment except when there is a conflict of interest, a potential of danger to you or your family, or you hold a strongly biased attitude about the subject under focus. My mother, she had a very good attitude toward money. I''m very grateful for the fact that we had to learn to save. I used to get like 50 pence a week, and I''d save it for like five months. And then I''d spend it on Christmas presents. I''d save up like eight pounds. It''s nothing, but we did that.', 4, '2022-09-13 10:31:41.972-04', '2022-09-13 10:31:41.972-04');
INSERT INTO public.product_reviews VALUES (14, 4, 8, 'Profit-focused coherent application', 'What a stupid attitude we have in this country to personal stories. Never refuse an assignment except when there is a conflict of interest, a potential of danger to you or your family, or you hold a strongly biased attitude about the subject under focus. My mother, she had a very good attitude toward money. I''m very grateful for the fact that we had to learn to save. I used to get like 50 pence a week, and I''d save it for like five months. And then I''d spend it on Christmas presents. I''d save up like eight pounds. It''s nothing, but we did that.', 1, '2022-09-13 10:31:41.972-04', '2022-09-13 10:31:41.972-04');
INSERT INTO public.product_reviews VALUES (15, 5, 22, 'Re-engineered neutral database', 'What a stupid attitude we have in this country to personal stories. Never refuse an assignment except when there is a conflict of interest, a potential of danger to you or your family, or you hold a strongly biased attitude about the subject under focus. My mother, she had a very good attitude toward money. I''m very grateful for the fact that we had to learn to save. I used to get like 50 pence a week, and I''d save it for like five months. And then I''d spend it on Christmas presents. I''d save up like eight pounds. It''s nothing, but we did that.', 2, '2022-09-13 10:31:41.972-04', '2022-09-13 10:31:41.972-04');
INSERT INTO public.product_reviews VALUES (16, 1, 7, 'Compatible fresh-thinking success', 'What a stupid attitude we have in this country to personal stories. Never refuse an assignment except when there is a conflict of interest, a potential of danger to you or your family, or you hold a strongly biased attitude about the subject under focus. My mother, she had a very good attitude toward money. I''m very grateful for the fact that we had to learn to save. I used to get like 50 pence a week, and I''d save it for like five months. And then I''d spend it on Christmas presents. I''d save up like eight pounds. It''s nothing, but we did that.', 1, '2022-09-13 10:31:41.973-04', '2022-09-13 10:31:41.973-04');
INSERT INTO public.product_reviews VALUES (17, 3, 8, 'Synergized client-server architecture', 'What a stupid attitude we have in this country to personal stories. Never refuse an assignment except when there is a conflict of interest, a potential of danger to you or your family, or you hold a strongly biased attitude about the subject under focus. My mother, she had a very good attitude toward money. I''m very grateful for the fact that we had to learn to save. I used to get like 50 pence a week, and I''d save it for like five months. And then I''d spend it on Christmas presents. I''d save up like eight pounds. It''s nothing, but we did that.', 3, '2022-09-13 10:31:41.973-04', '2022-09-13 10:31:41.973-04');
INSERT INTO public.product_reviews VALUES (18, 1, 7, 'Operative bi-directional protocol', 'What a stupid attitude we have in this country to personal stories. Never refuse an assignment except when there is a conflict of interest, a potential of danger to you or your family, or you hold a strongly biased attitude about the subject under focus. My mother, she had a very good attitude toward money. I''m very grateful for the fact that we had to learn to save. I used to get like 50 pence a week, and I''d save it for like five months. And then I''d spend it on Christmas presents. I''d save up like eight pounds. It''s nothing, but we did that.', 3, '2022-09-13 10:31:41.973-04', '2022-09-13 10:31:41.973-04');
INSERT INTO public.product_reviews VALUES (19, 3, 9, 'Optimized contextually-based toolset', 'What a stupid attitude we have in this country to personal stories. Never refuse an assignment except when there is a conflict of interest, a potential of danger to you or your family, or you hold a strongly biased attitude about the subject under focus. My mother, she had a very good attitude toward money. I''m very grateful for the fact that we had to learn to save. I used to get like 50 pence a week, and I''d save it for like five months. And then I''d spend it on Christmas presents. I''d save up like eight pounds. It''s nothing, but we did that.', 5, '2022-09-13 10:31:41.973-04', '2022-09-13 10:31:41.973-04');
INSERT INTO public.product_reviews VALUES (20, 1, 4, 'De-engineered eco-centric installation', 'What a stupid attitude we have in this country to personal stories. Never refuse an assignment except when there is a conflict of interest, a potential of danger to you or your family, or you hold a strongly biased attitude about the subject under focus. My mother, she had a very good attitude toward money. I''m very grateful for the fact that we had to learn to save. I used to get like 50 pence a week, and I''d save it for like five months. And then I''d spend it on Christmas presents. I''d save up like eight pounds. It''s nothing, but we did that.', 1, '2022-09-13 10:31:41.974-04', '2022-09-13 10:31:41.974-04');
INSERT INTO public.product_reviews VALUES (21, 1, 4, 'Multi-channelled zero tolerance core', 'What a stupid attitude we have in this country to personal stories. Never refuse an assignment except when there is a conflict of interest, a potential of danger to you or your family, or you hold a strongly biased attitude about the subject under focus. My mother, she had a very good attitude toward money. I''m very grateful for the fact that we had to learn to save. I used to get like 50 pence a week, and I''d save it for like five months. And then I''d spend it on Christmas presents. I''d save up like eight pounds. It''s nothing, but we did that.', 5, '2022-09-13 10:31:41.973-04', '2022-09-13 10:31:41.973-04');
INSERT INTO public.product_reviews VALUES (22, 4, 18, 'Reactive 4th generation info-mediaries', 'What a stupid attitude we have in this country to personal stories. Never refuse an assignment except when there is a conflict of interest, a potential of danger to you or your family, or you hold a strongly biased attitude about the subject under focus. My mother, she had a very good attitude toward money. I''m very grateful for the fact that we had to learn to save. I used to get like 50 pence a week, and I''d save it for like five months. And then I''d spend it on Christmas presents. I''d save up like eight pounds. It''s nothing, but we did that.', 4, '2022-09-13 10:31:41.973-04', '2022-09-13 10:31:41.973-04');
INSERT INTO public.product_reviews VALUES (23, 5, 23, 'User-friendly disintermediate alliance', 'What a stupid attitude we have in this country to personal stories. Never refuse an assignment except when there is a conflict of interest, a potential of danger to you or your family, or you hold a strongly biased attitude about the subject under focus. My mother, she had a very good attitude toward money. I''m very grateful for the fact that we had to learn to save. I used to get like 50 pence a week, and I''d save it for like five months. And then I''d spend it on Christmas presents. I''d save up like eight pounds. It''s nothing, but we did that.', 3, '2022-09-13 10:31:41.973-04', '2022-09-13 10:31:41.973-04');
INSERT INTO public.product_reviews VALUES (24, 3, 8, 'User-friendly disintermediate alliance', 'What a stupid attitude we have in this country to personal stories. Never refuse an assignment except when there is a conflict of interest, a potential of danger to you or your family, or you hold a strongly biased attitude about the subject under focus. My mother, she had a very good attitude toward money. I''m very grateful for the fact that we had to learn to save. I used to get like 50 pence a week, and I''d save it for like five months. And then I''d spend it on Christmas presents. I''d save up like eight pounds. It''s nothing, but we did that.', 3, '2022-09-13 10:31:41.974-04', '2022-09-13 10:31:41.974-04');
INSERT INTO public.product_reviews VALUES (25, 5, 4, 'Enhanced responsive software', 'What a stupid attitude we have in this country to personal stories. Never refuse an assignment except when there is a conflict of interest, a potential of danger to you or your family, or you hold a strongly biased attitude about the subject under focus. My mother, she had a very good attitude toward money. I''m very grateful for the fact that we had to learn to save. I used to get like 50 pence a week, and I''d save it for like five months. And then I''d spend it on Christmas presents. I''d save up like eight pounds. It''s nothing, but we did that.', 1, '2022-09-13 10:31:41.974-04', '2022-09-13 10:31:41.974-04');


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.products VALUES (1, 1, 'Managed explicit installation', 1116.95, 'Possimus molestiae mollitia alias reprehenderit autem saepe est odio qui. Odit est quos. Corrupti similique harum reiciendis. Placeat est at aut quo. Laudantium qui voluptatem nemo accusamus minima. Perferendis quos architecto repellat sed id quae iusto.', 'https://i.imgur.com/XbFLYsp.jpg', '2022-09-13 10:31:41.916-04', '2022-09-13 10:31:41.916-04');
INSERT INTO public.products VALUES (2, 5, 'Upgradable cohesive knowledge user', 703.91, 'Veritatis officiis est occaecati sunt consequatur. Aut sapiente totam sed ad ad qui eum omnis deleniti. Quis blanditiis aperiam.', 'https://i.imgur.com/ksI7k23.jpg', '2022-09-13 10:31:41.917-04', '2022-09-13 10:31:41.917-04');
INSERT INTO public.products VALUES (3, 5, 'Inverse contextually-based portal', 4409.9, 'Asperiores labore tempore quam. Ut voluptatem unde tempore fuga non repellendus omnis maxime. Quia soluta quibusdam. Commodi animi eum dolorem placeat sit. Quam nihil doloremque eligendi rem quibusdam iusto consequatur quae. Modi quaerat labore laboriosam quaerat sint nulla.', 'https://i.imgur.com/4p58dyS.jpg', '2022-09-13 10:31:41.918-04', '2022-09-13 10:31:41.918-04');
INSERT INTO public.products VALUES (4, 4, 'De-engineered dynamic frame', 4562, 'Minima soluta sed sed et optio explicabo at distinctio repudiandae. Magnam deleniti a ea. Non velit accusamus veniam qui. Necessitatibus velit ad aut officiis in officiis quasi. Sunt nulla dolores voluptatem esse magnam ut.', 'https://i.imgur.com/Ynnsn8F.jpg', '2022-09-13 10:31:41.917-04', '2022-09-13 10:31:41.917-04');
INSERT INTO public.products VALUES (5, 1, 'Streamlined executive Graphic Interface', 2395.63, 'Provident cumque quos quam enim. Nihil aperiam nihil ut. Blanditiis enim officia omnis quo tenetur aliquid odio et. Perspiciatis unde officiis ea expedita id dolorem. Quam nihil et amet quos et fugit. Cum voluptatem tempora deserunt.', 'https://i.imgur.com/m6DkhpA.jpg', '2022-09-13 10:31:41.918-04', '2022-09-13 10:31:41.918-04');
INSERT INTO public.products VALUES (6, 5, 'Balanced radical archive', 5054.76, 'Accusantium aliquid non neque dicta eum. Molestias nesciunt odit. Quis rerum et cumque distinctio a pariatur vel ea dicta.', 'https://i.imgur.com/rrZdNEe.jpg', '2022-09-13 10:31:41.916-04', '2022-09-13 10:31:41.916-04');
INSERT INTO public.products VALUES (7, 2, 'Versatile national time-frame', 1795.69, 'Exercitationem similique magni voluptates. Amet et asperiores quidem error. Commodi nostrum hic suscipit fuga consequatur nobis veritatis sit.', 'https://i.imgur.com/iRxODR2.jpg', '2022-09-13 10:31:41.918-04', '2022-09-13 10:31:41.918-04');
INSERT INTO public.products VALUES (8, 2, 'Re-engineered 24/7 paradigm', 5502.72, 'Et ipsam distinctio quia quia ipsum dignissimos autem assumenda qui. Vel earum harum provident consequatur. Neque animi architecto ratione. Veniam porro possimus nisi voluptas.', 'https://i.imgur.com/5uRTgn7.jpg', '2022-09-13 10:31:41.919-04', '2022-09-13 10:31:41.919-04');
INSERT INTO public.products VALUES (9, 1, 'Multi-tiered exuding approach', 2790.04, 'Aut facilis qui. Cupiditate sit ratione eum sunt rerum impedit. Qui suscipit debitis et et voluptates voluptatem voluptatibus. Quas voluptatum quae corporis corporis possimus.', 'https://i.imgur.com/sj5U5Yg.jpg', '2022-09-13 10:31:41.919-04', '2022-09-13 10:31:41.919-04');
INSERT INTO public.products VALUES (10, 3, 'Re-engineered 24/7 paradigm', 5524.56, 'Incidunt accusamus vero. Ipsam reiciendis unde voluptatibus voluptates ab aliquam aut. Aut voluptas laudantium. Voluptatem beatae explicabo et eius. Commodi a autem omnis.', 'https://i.imgur.com/imElQNh.jpg', '2022-09-13 10:31:41.919-04', '2022-09-13 10:31:41.919-04');
INSERT INTO public.products VALUES (11, 4, 'Reduced regional frame', 441.75, 'Recusandae id nemo ut amet quas voluptas. Quas vero et molestiae esse. Eum qui quia nulla. Cum ipsa aut voluptate et iste ut porro adipisci. Quisquam error sed quasi voluptates ea nobis consequatur explicabo.', 'https://i.imgur.com/V8nuehm.jpg', '2022-09-13 10:31:41.92-04', '2022-09-13 10:31:41.92-04');
INSERT INTO public.products VALUES (12, 5, 'Enhanced responsive software', 9146.76, 'Consequuntur nihil a id. Consequatur est cum excepturi aut labore odit quo molestiae molestiae. Soluta voluptatem ducimus cupiditate. Dolorum eveniet aliquid aut repudiandae et illo et. Harum unde ut harum accusamus suscipit quia.', 'https://i.imgur.com/l8IufJU.jpg', '2022-09-13 10:31:41.92-04', '2022-09-13 10:31:41.92-04');
INSERT INTO public.products VALUES (13, 4, 'Focused logistical definition', 447.29, 'Et quod ad optio culpa dicta at eveniet. Deserunt perferendis debitis sunt aut. Laboriosam laboriosam aspernatur id corporis.', 'https://i.imgur.com/tpDypAu.jpg', '2022-09-13 10:31:41.92-04', '2022-09-13 10:31:41.92-04');
INSERT INTO public.products VALUES (14, 3, 'Operative bi-directional protocol', 5573.58, 'Labore corporis blanditiis dolorum nemo nam praesentium alias sequi inventore. Cupiditate rerum enim sint quis. Eum occaecati provident labore veniam deserunt vero sed soluta repellat. Cum sapiente pariatur et ea a recusandae et optio. Sequi doloribus reiciendis corrupti quidem accusamus est nesciunt. Excepturi accusamus consequatur est sed maiores excepturi autem.', 'https://i.imgur.com/kWEBnVI.jpg', '2022-09-13 10:31:41.92-04', '2022-09-13 10:31:41.92-04');
INSERT INTO public.products VALUES (15, 5, 'Mandatory regional complexity', 1810.67, 'Sint id odit. Tenetur sit in deserunt voluptatem corporis voluptatum culpa eligendi. Est quia reprehenderit atque modi. Ipsum quo eos deserunt nobis.', 'https://i.imgur.com/8qy1EXX.jpg', '2022-09-13 10:31:41.921-04', '2022-09-13 10:31:41.921-04');
INSERT INTO public.products VALUES (16, 2, 'Digitized clear-thinking firmware', 561.15, 'Aperiam autem non et aut illum ut nihil laborum omnis. Vitae et ab et. Cupiditate et est delectus. Mollitia qui qui dolores reiciendis perferendis voluptates maiores. Omnis corporis cumque sequi sequi excepturi velit laborum nobis. Neque id maiores voluptatem est debitis.', 'https://i.imgur.com/QR0lvbZ.jpg', '2022-09-13 10:31:41.921-04', '2022-09-13 10:31:41.921-04');
INSERT INTO public.products VALUES (17, 2, 'Synergistic responsive service-desk', 2984.33, 'Cupiditate voluptas cumque aspernatur. Adipisci voluptatibus vel eos. Doloremque commodi aliquid occaecati quia provident. Voluptatem tempore doloribus architecto rem quidem quaerat ipsam possimus. Laboriosam quisquam aut illo necessitatibus quo ducimus. Eum cupiditate sint a placeat dolores nemo.', 'https://i.imgur.com/H6RfTfS.jpg', '2022-09-13 10:31:41.921-04', '2022-09-13 10:31:41.921-04');
INSERT INTO public.products VALUES (18, 5, 'Mandatory regional complexity', 7451.13, 'Ut quidem et. Quo assumenda et cumque molestias atque sint qui modi. Velit qui dolore possimus totam qui blanditiis. Vel quia consequatur aliquid corrupti qui libero.', 'https://i.imgur.com/la5HlOJ.jpg', '2022-09-13 10:31:41.921-04', '2022-09-13 10:31:41.921-04');
INSERT INTO public.products VALUES (19, 3, 'Configurable global help-desk', 9753.12, 'Corrupti aspernatur minus eum. Nihil omnis fuga doloremque eius ipsam saepe impedit. Nobis odio omnis laboriosam similique nostrum voluptas magnam commodi at. Magnam quibusdam dolore. Dolorem minima neque est amet voluptate explicabo similique quos. Rerum esse pariatur.', 'https://i.imgur.com/ZBkaREQ.jpg', '2022-09-13 10:31:41.922-04', '2022-09-13 10:31:41.922-04');
INSERT INTO public.products VALUES (20, 2, 'Re-engineered neutral database', 9626.74, 'Pariatur ut dolor repellendus dolores ut debitis. Est iusto neque dicta voluptatibus quia nulla consequatur. Omnis aut sed dolores qui laborum a amet.', 'https://i.imgur.com/tomrM6W.jpg', '2022-09-13 10:31:41.921-04', '2022-09-13 10:31:41.921-04');
INSERT INTO public.products VALUES (21, 2, 'Re-engineered upward-trending standardization', 2024.3, 'In reprehenderit esse id ut quas cupiditate error sit. Eum nostrum libero facilis quis error consectetur. Totam porro ut similique aut sint enim amet enim. Harum quo est repudiandae doloribus.', 'https://i.imgur.com/GCZimHC.jpg', '2022-09-13 10:31:41.921-04', '2022-09-13 10:31:41.921-04');
INSERT INTO public.products VALUES (22, 2, 'Multi-channelled zero tolerance core', 3457.58, 'Non consequuntur ut voluptatum. Dicta omnis architecto iure perspiciatis veritatis itaque dolore. Quos necessitatibus dolor nam.', 'https://i.imgur.com/NspWEgF.jpg', '2022-09-13 10:31:41.922-04', '2022-09-13 10:31:41.922-04');
INSERT INTO public.products VALUES (23, 1, 'Compatible fresh-thinking success', 5134.57, 'Accusantium aliquid non neque dicta eum. Molestias nesciunt odit. Quis rerum et cumque distinctio a pariatur vel ea dicta.', 'https://i.imgur.com/QBzCDod.jpg', '2022-09-13 10:31:41.922-04', '2022-09-13 10:31:41.922-04');
INSERT INTO public.products VALUES (24, 2, 'Customizable global open system', 4041.05, 'Et veritatis rerum. Omnis repellat quo. Provident omnis consequatur provident tempore assumenda assumenda ducimus.', 'https://i.imgur.com/sNeB2Fu.jpg', '2022-09-13 10:31:41.922-04', '2022-09-13 10:31:41.922-04');
INSERT INTO public.products VALUES (25, 1, 'User-centric optimizing implementation', 4619.66, 'Est iste totam accusamus dolorem est. Quis non sit impedit similique incidunt odio aspernatur aut rem. Architecto est eum.', 'https://i.imgur.com/GhRcS7I.jpg', '2022-09-13 10:31:41.922-04', '2022-09-13 10:31:41.922-04');


--
-- Data for Name: user_reviews; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.user_reviews VALUES (1, 1, 1, 'Profit-focused executive core', 'My mother, she had a very good attitude toward money. I''m very grateful for the fact that we had to learn to save. I used to get like 50 pence a week, and I''d save it for like five months. And then I''d spend it on Christmas presents. I''d save up like eight pounds. It''s nothing, but we did that. I have always detested any departure from reality, an attitude which I relate to my mother''s poor mental health. Let us change our traditional attitude to the construction of programs. Instead of imagining that our main task is to instruct a computer what to do, let us concentrate rather on explaining to human beings what we want a computer to do.', 1, '2022-09-13 10:31:41.947-04', '2022-09-13 10:31:41.947-04');
INSERT INTO public.user_reviews VALUES (2, 4, 5, 'Reactive motivating data-warehouse', 'My mother, she had a very good attitude toward money. I''m very grateful for the fact that we had to learn to save. I used to get like 50 pence a week, and I''d save it for like five months. And then I''d spend it on Christmas presents. I''d save up like eight pounds. It''s nothing, but we did that. I have always detested any departure from reality, an attitude which I relate to my mother''s poor mental health. Let us change our traditional attitude to the construction of programs. Instead of imagining that our main task is to instruct a computer what to do, let us concentrate rather on explaining to human beings what we want a computer to do.', 2, '2022-09-13 10:31:41.947-04', '2022-09-13 10:31:41.947-04');
INSERT INTO public.user_reviews VALUES (3, 1, 1, 'Re-engineered upward-trending standardization', 'My mother, she had a very good attitude toward money. I''m very grateful for the fact that we had to learn to save. I used to get like 50 pence a week, and I''d save it for like five months. And then I''d spend it on Christmas presents. I''d save up like eight pounds. It''s nothing, but we did that. I have always detested any departure from reality, an attitude which I relate to my mother''s poor mental health. Let us change our traditional attitude to the construction of programs. Instead of imagining that our main task is to instruct a computer what to do, let us concentrate rather on explaining to human beings what we want a computer to do.', 3, '2022-09-13 10:31:41.947-04', '2022-09-13 10:31:41.947-04');
INSERT INTO public.user_reviews VALUES (4, 1, 5, 'Customizable global open system', 'My mother, she had a very good attitude toward money. I''m very grateful for the fact that we had to learn to save. I used to get like 50 pence a week, and I''d save it for like five months. And then I''d spend it on Christmas presents. I''d save up like eight pounds. It''s nothing, but we did that. I have always detested any departure from reality, an attitude which I relate to my mother''s poor mental health. Let us change our traditional attitude to the construction of programs. Instead of imagining that our main task is to instruct a computer what to do, let us concentrate rather on explaining to human beings what we want a computer to do.', 2, '2022-09-13 10:31:41.947-04', '2022-09-13 10:31:41.947-04');
INSERT INTO public.user_reviews VALUES (5, 5, 3, 'Customizable global open system', 'My mother, she had a very good attitude toward money. I''m very grateful for the fact that we had to learn to save. I used to get like 50 pence a week, and I''d save it for like five months. And then I''d spend it on Christmas presents. I''d save up like eight pounds. It''s nothing, but we did that. I have always detested any departure from reality, an attitude which I relate to my mother''s poor mental health. Let us change our traditional attitude to the construction of programs. Instead of imagining that our main task is to instruct a computer what to do, let us concentrate rather on explaining to human beings what we want a computer to do.', 1, '2022-09-13 10:31:41.948-04', '2022-09-13 10:31:41.948-04');
INSERT INTO public.user_reviews VALUES (6, 4, 3, 'Persevering encompassing middleware', 'My mother, she had a very good attitude toward money. I''m very grateful for the fact that we had to learn to save. I used to get like 50 pence a week, and I''d save it for like five months. And then I''d spend it on Christmas presents. I''d save up like eight pounds. It''s nothing, but we did that. I have always detested any departure from reality, an attitude which I relate to my mother''s poor mental health. Let us change our traditional attitude to the construction of programs. Instead of imagining that our main task is to instruct a computer what to do, let us concentrate rather on explaining to human beings what we want a computer to do.', 1, '2022-09-13 10:31:41.947-04', '2022-09-13 10:31:41.947-04');
INSERT INTO public.user_reviews VALUES (7, 2, 2, 'Organized contextually-based function', 'My mother, she had a very good attitude toward money. I''m very grateful for the fact that we had to learn to save. I used to get like 50 pence a week, and I''d save it for like five months. And then I''d spend it on Christmas presents. I''d save up like eight pounds. It''s nothing, but we did that. I have always detested any departure from reality, an attitude which I relate to my mother''s poor mental health. Let us change our traditional attitude to the construction of programs. Instead of imagining that our main task is to instruct a computer what to do, let us concentrate rather on explaining to human beings what we want a computer to do.', 4, '2022-09-13 10:31:41.949-04', '2022-09-13 10:31:41.949-04');
INSERT INTO public.user_reviews VALUES (8, 2, 1, 'Configurable zero administration projection', 'My mother, she had a very good attitude toward money. I''m very grateful for the fact that we had to learn to save. I used to get like 50 pence a week, and I''d save it for like five months. And then I''d spend it on Christmas presents. I''d save up like eight pounds. It''s nothing, but we did that. I have always detested any departure from reality, an attitude which I relate to my mother''s poor mental health. Let us change our traditional attitude to the construction of programs. Instead of imagining that our main task is to instruct a computer what to do, let us concentrate rather on explaining to human beings what we want a computer to do.', 3, '2022-09-13 10:31:41.948-04', '2022-09-13 10:31:41.948-04');
INSERT INTO public.user_reviews VALUES (9, 1, 1, 'Secured methodical frame', 'My mother, she had a very good attitude toward money. I''m very grateful for the fact that we had to learn to save. I used to get like 50 pence a week, and I''d save it for like five months. And then I''d spend it on Christmas presents. I''d save up like eight pounds. It''s nothing, but we did that. I have always detested any departure from reality, an attitude which I relate to my mother''s poor mental health. Let us change our traditional attitude to the construction of programs. Instead of imagining that our main task is to instruct a computer what to do, let us concentrate rather on explaining to human beings what we want a computer to do.', 5, '2022-09-13 10:31:41.948-04', '2022-09-13 10:31:41.948-04');
INSERT INTO public.user_reviews VALUES (10, 5, 3, 'Re-engineered upward-trending standardization', 'My mother, she had a very good attitude toward money. I''m very grateful for the fact that we had to learn to save. I used to get like 50 pence a week, and I''d save it for like five months. And then I''d spend it on Christmas presents. I''d save up like eight pounds. It''s nothing, but we did that. I have always detested any departure from reality, an attitude which I relate to my mother''s poor mental health. Let us change our traditional attitude to the construction of programs. Instead of imagining that our main task is to instruct a computer what to do, let us concentrate rather on explaining to human beings what we want a computer to do.', 3, '2022-09-13 10:31:41.948-04', '2022-09-13 10:31:41.948-04');
INSERT INTO public.user_reviews VALUES (11, 4, 3, 'De-engineered eco-centric installation', 'My mother, she had a very good attitude toward money. I''m very grateful for the fact that we had to learn to save. I used to get like 50 pence a week, and I''d save it for like five months. And then I''d spend it on Christmas presents. I''d save up like eight pounds. It''s nothing, but we did that. I have always detested any departure from reality, an attitude which I relate to my mother''s poor mental health. Let us change our traditional attitude to the construction of programs. Instead of imagining that our main task is to instruct a computer what to do, let us concentrate rather on explaining to human beings what we want a computer to do.', 2, '2022-09-13 10:31:41.949-04', '2022-09-13 10:31:41.949-04');
INSERT INTO public.user_reviews VALUES (12, 4, 4, 'Versatile national time-frame', 'My mother, she had a very good attitude toward money. I''m very grateful for the fact that we had to learn to save. I used to get like 50 pence a week, and I''d save it for like five months. And then I''d spend it on Christmas presents. I''d save up like eight pounds. It''s nothing, but we did that. I have always detested any departure from reality, an attitude which I relate to my mother''s poor mental health. Let us change our traditional attitude to the construction of programs. Instead of imagining that our main task is to instruct a computer what to do, let us concentrate rather on explaining to human beings what we want a computer to do.', 1, '2022-09-13 10:31:41.949-04', '2022-09-13 10:31:41.949-04');
INSERT INTO public.user_reviews VALUES (13, 3, 5, 'Visionary fresh-thinking instruction set', 'My mother, she had a very good attitude toward money. I''m very grateful for the fact that we had to learn to save. I used to get like 50 pence a week, and I''d save it for like five months. And then I''d spend it on Christmas presents. I''d save up like eight pounds. It''s nothing, but we did that. I have always detested any departure from reality, an attitude which I relate to my mother''s poor mental health. Let us change our traditional attitude to the construction of programs. Instead of imagining that our main task is to instruct a computer what to do, let us concentrate rather on explaining to human beings what we want a computer to do.', 1, '2022-09-13 10:31:41.949-04', '2022-09-13 10:31:41.949-04');
INSERT INTO public.user_reviews VALUES (14, 5, 4, 'Future-proofed leading edge secured line', 'My mother, she had a very good attitude toward money. I''m very grateful for the fact that we had to learn to save. I used to get like 50 pence a week, and I''d save it for like five months. And then I''d spend it on Christmas presents. I''d save up like eight pounds. It''s nothing, but we did that. I have always detested any departure from reality, an attitude which I relate to my mother''s poor mental health. Let us change our traditional attitude to the construction of programs. Instead of imagining that our main task is to instruct a computer what to do, let us concentrate rather on explaining to human beings what we want a computer to do.', 2, '2022-09-13 10:31:41.95-04', '2022-09-13 10:31:41.95-04');
INSERT INTO public.user_reviews VALUES (15, 3, 1, 'Switchable upward-trending array', 'My mother, she had a very good attitude toward money. I''m very grateful for the fact that we had to learn to save. I used to get like 50 pence a week, and I''d save it for like five months. And then I''d spend it on Christmas presents. I''d save up like eight pounds. It''s nothing, but we did that. I have always detested any departure from reality, an attitude which I relate to my mother''s poor mental health. Let us change our traditional attitude to the construction of programs. Instead of imagining that our main task is to instruct a computer what to do, let us concentrate rather on explaining to human beings what we want a computer to do.', 1, '2022-09-13 10:31:41.95-04', '2022-09-13 10:31:41.95-04');
INSERT INTO public.user_reviews VALUES (16, 3, 3, 'Organized contextually-based function', 'My mother, she had a very good attitude toward money. I''m very grateful for the fact that we had to learn to save. I used to get like 50 pence a week, and I''d save it for like five months. And then I''d spend it on Christmas presents. I''d save up like eight pounds. It''s nothing, but we did that. I have always detested any departure from reality, an attitude which I relate to my mother''s poor mental health. Let us change our traditional attitude to the construction of programs. Instead of imagining that our main task is to instruct a computer what to do, let us concentrate rather on explaining to human beings what we want a computer to do.', 2, '2022-09-13 10:31:41.95-04', '2022-09-13 10:31:41.95-04');
INSERT INTO public.user_reviews VALUES (17, 2, 4, 'Reduced regional frame', 'My mother, she had a very good attitude toward money. I''m very grateful for the fact that we had to learn to save. I used to get like 50 pence a week, and I''d save it for like five months. And then I''d spend it on Christmas presents. I''d save up like eight pounds. It''s nothing, but we did that. I have always detested any departure from reality, an attitude which I relate to my mother''s poor mental health. Let us change our traditional attitude to the construction of programs. Instead of imagining that our main task is to instruct a computer what to do, let us concentrate rather on explaining to human beings what we want a computer to do.', 4, '2022-09-13 10:31:41.95-04', '2022-09-13 10:31:41.95-04');
INSERT INTO public.user_reviews VALUES (18, 5, 3, 'Reduced regional frame', 'My mother, she had a very good attitude toward money. I''m very grateful for the fact that we had to learn to save. I used to get like 50 pence a week, and I''d save it for like five months. And then I''d spend it on Christmas presents. I''d save up like eight pounds. It''s nothing, but we did that. I have always detested any departure from reality, an attitude which I relate to my mother''s poor mental health. Let us change our traditional attitude to the construction of programs. Instead of imagining that our main task is to instruct a computer what to do, let us concentrate rather on explaining to human beings what we want a computer to do.', 3, '2022-09-13 10:31:41.951-04', '2022-09-13 10:31:41.951-04');
INSERT INTO public.user_reviews VALUES (19, 2, 2, 'Realigned empowering monitoring', 'My mother, she had a very good attitude toward money. I''m very grateful for the fact that we had to learn to save. I used to get like 50 pence a week, and I''d save it for like five months. And then I''d spend it on Christmas presents. I''d save up like eight pounds. It''s nothing, but we did that. I have always detested any departure from reality, an attitude which I relate to my mother''s poor mental health. Let us change our traditional attitude to the construction of programs. Instead of imagining that our main task is to instruct a computer what to do, let us concentrate rather on explaining to human beings what we want a computer to do.', 4, '2022-09-13 10:31:41.95-04', '2022-09-13 10:31:41.95-04');
INSERT INTO public.user_reviews VALUES (20, 2, 5, 'Robust heuristic installation', 'My mother, she had a very good attitude toward money. I''m very grateful for the fact that we had to learn to save. I used to get like 50 pence a week, and I''d save it for like five months. And then I''d spend it on Christmas presents. I''d save up like eight pounds. It''s nothing, but we did that. I have always detested any departure from reality, an attitude which I relate to my mother''s poor mental health. Let us change our traditional attitude to the construction of programs. Instead of imagining that our main task is to instruct a computer what to do, let us concentrate rather on explaining to human beings what we want a computer to do.', 4, '2022-09-13 10:31:41.95-04', '2022-09-13 10:31:41.95-04');
INSERT INTO public.user_reviews VALUES (21, 1, 5, 'User-centric executive knowledge user', 'My mother, she had a very good attitude toward money. I''m very grateful for the fact that we had to learn to save. I used to get like 50 pence a week, and I''d save it for like five months. And then I''d spend it on Christmas presents. I''d save up like eight pounds. It''s nothing, but we did that. I have always detested any departure from reality, an attitude which I relate to my mother''s poor mental health. Let us change our traditional attitude to the construction of programs. Instead of imagining that our main task is to instruct a computer what to do, let us concentrate rather on explaining to human beings what we want a computer to do.', 1, '2022-09-13 10:31:41.951-04', '2022-09-13 10:31:41.951-04');
INSERT INTO public.user_reviews VALUES (22, 1, 1, 'Up-sized eco-centric pricing structure', 'My mother, she had a very good attitude toward money. I''m very grateful for the fact that we had to learn to save. I used to get like 50 pence a week, and I''d save it for like five months. And then I''d spend it on Christmas presents. I''d save up like eight pounds. It''s nothing, but we did that. I have always detested any departure from reality, an attitude which I relate to my mother''s poor mental health. Let us change our traditional attitude to the construction of programs. Instead of imagining that our main task is to instruct a computer what to do, let us concentrate rather on explaining to human beings what we want a computer to do.', 3, '2022-09-13 10:31:41.951-04', '2022-09-13 10:31:41.951-04');
INSERT INTO public.user_reviews VALUES (23, 5, 1, 'Upgradable stable strategy', 'My mother, she had a very good attitude toward money. I''m very grateful for the fact that we had to learn to save. I used to get like 50 pence a week, and I''d save it for like five months. And then I''d spend it on Christmas presents. I''d save up like eight pounds. It''s nothing, but we did that. I have always detested any departure from reality, an attitude which I relate to my mother''s poor mental health. Let us change our traditional attitude to the construction of programs. Instead of imagining that our main task is to instruct a computer what to do, let us concentrate rather on explaining to human beings what we want a computer to do.', 1, '2022-09-13 10:31:41.951-04', '2022-09-13 10:31:41.951-04');
INSERT INTO public.user_reviews VALUES (24, 4, 4, 'User-centric executive knowledge user', 'My mother, she had a very good attitude toward money. I''m very grateful for the fact that we had to learn to save. I used to get like 50 pence a week, and I''d save it for like five months. And then I''d spend it on Christmas presents. I''d save up like eight pounds. It''s nothing, but we did that. I have always detested any departure from reality, an attitude which I relate to my mother''s poor mental health. Let us change our traditional attitude to the construction of programs. Instead of imagining that our main task is to instruct a computer what to do, let us concentrate rather on explaining to human beings what we want a computer to do.', 3, '2022-09-13 10:31:41.951-04', '2022-09-13 10:31:41.951-04');
INSERT INTO public.user_reviews VALUES (25, 5, 5, 'Extended asynchronous system engine', 'My mother, she had a very good attitude toward money. I''m very grateful for the fact that we had to learn to save. I used to get like 50 pence a week, and I''d save it for like five months. And then I''d spend it on Christmas presents. I''d save up like eight pounds. It''s nothing, but we did that. I have always detested any departure from reality, an attitude which I relate to my mother''s poor mental health. Let us change our traditional attitude to the construction of programs. Instead of imagining that our main task is to instruct a computer what to do, let us concentrate rather on explaining to human beings what we want a computer to do.', 4, '2022-09-13 10:31:41.951-04', '2022-09-13 10:31:41.951-04');


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.users VALUES (1, 'austintaylor', '1@mail.com', '$2b$12$T7i56QXpAWDsAln3eKq8kOFgIzoP3AHmQaVWoY9W0xVBBy0XDiTKO', '2022-09-13 10:31:41.832-04', '2022-09-13 10:31:41.832-04');
INSERT INTO public.users VALUES (2, 'oldgreg', '2@mail.com', '$2b$12$T7i56QXpAWDsAln3eKq8kOFgIzoP3AHmQaVWoY9W0xVBBy0XDiTKO', '2022-09-13 10:31:41.832-04', '2022-09-13 10:31:41.832-04');
INSERT INTO public.users VALUES (3, 'stevemartin', '3@mail.com', '$2b$12$T7i56QXpAWDsAln3eKq8kOFgIzoP3AHmQaVWoY9W0xVBBy0XDiTKO', '2022-09-13 10:31:41.832-04', '2022-09-13 10:31:41.832-04');
INSERT INTO public.users VALUES (4, 'hulkhogan', '4@mail.com', '$2b$12$T7i56QXpAWDsAln3eKq8kOFgIzoP3AHmQaVWoY9W0xVBBy0XDiTKO', '2022-09-13 10:31:41.832-04', '2022-09-13 10:31:41.832-04');
INSERT INTO public.users VALUES (5, 'rogerrabbit', '5@mail.com', '$2b$12$T7i56QXpAWDsAln3eKq8kOFgIzoP3AHmQaVWoY9W0xVBBy0XDiTKO', '2022-09-13 10:31:41.832-04', '2022-09-13 10:31:41.832-04');
INSERT INTO public.users VALUES (6, 'newaustin', '6@email.com', '$2b$12$uJt1OeVfghMQLLEoYX0jVuZGCZzDSrGEQ.2QPze.0LXoirxJF4wQS', '2022-09-13 11:49:21.059-04', '2022-09-13 11:49:21.059-04');
INSERT INTO public.users VALUES (7, 'newestaustin', '7@email.email', '$2b$12$XC0S.tRUxXwjBUjGdWPoI.R4q64YMdL/ZGm2MLuczPa0Y6WlKqJDu', '2022-09-13 16:07:53.015-04', '2022-09-13 16:07:53.015-04');
INSERT INTO public.users VALUES (8, 'bigguy', '8@email.com', '$2b$12$T7i56QXpAWDsAln3eKq8kOFgIzoP3AHmQaVWoY9W0xVBBy0XDiTKO', '2022-09-13 16:09:20.975-04', '2022-09-13 16:09:20.975-04');


--
-- Name: product_reviews_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_reviews_id_seq', 25, true);


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_id_seq', 34, true);


--
-- Name: user_reviews_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_reviews_id_seq', 25, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 8, true);


--
-- Name: SequelizeMeta SequelizeMeta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SequelizeMeta"
    ADD CONSTRAINT "SequelizeMeta_pkey" PRIMARY KEY (name);


--
-- Name: product_reviews product_reviews_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_reviews
    ADD CONSTRAINT product_reviews_pkey PRIMARY KEY (id);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- Name: user_reviews user_reviews_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_reviews
    ADD CONSTRAINT user_reviews_pkey PRIMARY KEY (id);


--
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: product_reviews product_reviews_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_reviews
    ADD CONSTRAINT product_reviews_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(id) ON DELETE CASCADE;


--
-- Name: product_reviews product_reviews_reviewer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_reviews
    ADD CONSTRAINT product_reviews_reviewer_id_fkey FOREIGN KEY (reviewer_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: products products_seller_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_seller_id_fkey FOREIGN KEY (seller_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: user_reviews user_reviews_reviewee_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_reviews
    ADD CONSTRAINT user_reviews_reviewee_id_fkey FOREIGN KEY (reviewee_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: user_reviews user_reviews_reviewer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_reviews
    ADD CONSTRAINT user_reviews_reviewer_id_fkey FOREIGN KEY (reviewer_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

