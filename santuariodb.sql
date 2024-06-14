--
-- PostgreSQL database dump
--

-- Dumped from database version 12.18 (Ubuntu 12.18-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 16.2

-- Started on 2024-06-14 12:15:18

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

--
-- TOC entry 6 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 202 (class 1259 OID 17212)
-- Name: admin_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.admin_permissions (
    id integer NOT NULL,
    action character varying(255),
    action_parameters jsonb,
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.admin_permissions OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 17218)
-- Name: admin_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.admin_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 3519 (class 0 OID 0)
-- Dependencies: 203
-- Name: admin_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.admin_permissions_id_seq OWNED BY public.admin_permissions.id;


--
-- TOC entry 204 (class 1259 OID 17220)
-- Name: admin_permissions_role_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.admin_permissions_role_links (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_order double precision
);


ALTER TABLE public.admin_permissions_role_links OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 17223)
-- Name: admin_permissions_role_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.admin_permissions_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_permissions_role_links_id_seq OWNER TO postgres;

--
-- TOC entry 3520 (class 0 OID 0)
-- Dependencies: 205
-- Name: admin_permissions_role_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.admin_permissions_role_links_id_seq OWNED BY public.admin_permissions_role_links.id;


--
-- TOC entry 206 (class 1259 OID 17225)
-- Name: admin_roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.admin_roles (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.admin_roles OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 17231)
-- Name: admin_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.admin_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_roles_id_seq OWNER TO postgres;

--
-- TOC entry 3521 (class 0 OID 0)
-- Dependencies: 207
-- Name: admin_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.admin_roles_id_seq OWNED BY public.admin_roles.id;


--
-- TOC entry 208 (class 1259 OID 17233)
-- Name: admin_users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.admin_users (
    id integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    registration_token character varying(255),
    is_active boolean,
    blocked boolean,
    prefered_language character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.admin_users OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 17239)
-- Name: admin_users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.admin_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_users_id_seq OWNER TO postgres;

--
-- TOC entry 3522 (class 0 OID 0)
-- Dependencies: 209
-- Name: admin_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.admin_users_id_seq OWNED BY public.admin_users.id;


--
-- TOC entry 210 (class 1259 OID 17241)
-- Name: admin_users_roles_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.admin_users_roles_links (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    role_order double precision,
    user_order double precision
);


ALTER TABLE public.admin_users_roles_links OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 17244)
-- Name: admin_users_roles_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.admin_users_roles_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_users_roles_links_id_seq OWNER TO postgres;

--
-- TOC entry 3523 (class 0 OID 0)
-- Dependencies: 211
-- Name: admin_users_roles_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.admin_users_roles_links_id_seq OWNED BY public.admin_users_roles_links.id;


--
-- TOC entry 212 (class 1259 OID 17246)
-- Name: categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categories (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    slug character varying(255)
);


ALTER TABLE public.categories OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 17252)
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.categories_id_seq OWNER TO postgres;

--
-- TOC entry 3524 (class 0 OID 0)
-- Dependencies: 213
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- TOC entry 214 (class 1259 OID 17254)
-- Name: events; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.events (
    id integer NOT NULL,
    title character varying(255),
    content text,
    date date,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    slug character varying(255),
    album character varying(255)
);


ALTER TABLE public.events OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 17260)
-- Name: events_category_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.events_category_links (
    id integer NOT NULL,
    event_id integer,
    category_id integer,
    event_order double precision
);


ALTER TABLE public.events_category_links OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 17263)
-- Name: events_category_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.events_category_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.events_category_links_id_seq OWNER TO postgres;

--
-- TOC entry 3525 (class 0 OID 0)
-- Dependencies: 216
-- Name: events_category_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.events_category_links_id_seq OWNED BY public.events_category_links.id;


--
-- TOC entry 217 (class 1259 OID 17265)
-- Name: events_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.events_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.events_id_seq OWNER TO postgres;

--
-- TOC entry 3526 (class 0 OID 0)
-- Dependencies: 217
-- Name: events_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.events_id_seq OWNED BY public.events.id;


--
-- TOC entry 218 (class 1259 OID 17267)
-- Name: files; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.files (
    id integer NOT NULL,
    name character varying(255),
    alternative_text character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255),
    ext character varying(255),
    mime character varying(255),
    size numeric(10,2),
    url character varying(255),
    preview_url character varying(255),
    provider character varying(255),
    provider_metadata jsonb,
    folder_path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.files OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 17273)
-- Name: files_folder_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.files_folder_links (
    id integer NOT NULL,
    file_id integer,
    folder_id integer,
    file_order double precision
);


ALTER TABLE public.files_folder_links OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 17276)
-- Name: files_folder_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.files_folder_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.files_folder_links_id_seq OWNER TO postgres;

--
-- TOC entry 3527 (class 0 OID 0)
-- Dependencies: 220
-- Name: files_folder_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.files_folder_links_id_seq OWNED BY public.files_folder_links.id;


--
-- TOC entry 221 (class 1259 OID 17278)
-- Name: files_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.files_id_seq OWNER TO postgres;

--
-- TOC entry 3528 (class 0 OID 0)
-- Dependencies: 221
-- Name: files_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.files_id_seq OWNED BY public.files.id;


--
-- TOC entry 222 (class 1259 OID 17280)
-- Name: files_related_morphs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.files_related_morphs (
    id integer NOT NULL,
    file_id integer,
    related_id integer,
    related_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.files_related_morphs OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 17286)
-- Name: files_related_morphs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.files_related_morphs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.files_related_morphs_id_seq OWNER TO postgres;

--
-- TOC entry 3529 (class 0 OID 0)
-- Dependencies: 223
-- Name: files_related_morphs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.files_related_morphs_id_seq OWNED BY public.files_related_morphs.id;


--
-- TOC entry 273 (class 1259 OID 24632)
-- Name: groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.groups (
    id integer NOT NULL,
    title character varying(255),
    description text,
    slug character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.groups OWNER TO postgres;

--
-- TOC entry 272 (class 1259 OID 24630)
-- Name: groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.groups_id_seq OWNER TO postgres;

--
-- TOC entry 3530 (class 0 OID 0)
-- Dependencies: 272
-- Name: groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.groups_id_seq OWNED BY public.groups.id;


--
-- TOC entry 224 (class 1259 OID 17288)
-- Name: i18n_locale; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.i18n_locale (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.i18n_locale OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 17294)
-- Name: i18n_locale_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.i18n_locale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.i18n_locale_id_seq OWNER TO postgres;

--
-- TOC entry 3531 (class 0 OID 0)
-- Dependencies: 225
-- Name: i18n_locale_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.i18n_locale_id_seq OWNED BY public.i18n_locale.id;


--
-- TOC entry 269 (class 1259 OID 24579)
-- Name: news; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.news (
    id integer NOT NULL,
    title character varying(255),
    content text,
    date date,
    slug character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.news OWNER TO postgres;

--
-- TOC entry 271 (class 1259 OID 24594)
-- Name: news_category_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.news_category_links (
    id integer NOT NULL,
    new_id integer,
    category_id integer,
    new_order double precision
);


ALTER TABLE public.news_category_links OWNER TO postgres;

--
-- TOC entry 270 (class 1259 OID 24592)
-- Name: news_category_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.news_category_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.news_category_links_id_seq OWNER TO postgres;

--
-- TOC entry 3532 (class 0 OID 0)
-- Dependencies: 270
-- Name: news_category_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.news_category_links_id_seq OWNED BY public.news_category_links.id;


--
-- TOC entry 268 (class 1259 OID 24577)
-- Name: news_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.news_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.news_id_seq OWNER TO postgres;

--
-- TOC entry 3533 (class 0 OID 0)
-- Dependencies: 268
-- Name: news_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.news_id_seq OWNED BY public.news.id;


--
-- TOC entry 226 (class 1259 OID 17317)
-- Name: slugs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.slugs (
    id integer NOT NULL,
    slug text,
    count integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.slugs OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 17323)
-- Name: slugs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.slugs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.slugs_id_seq OWNER TO postgres;

--
-- TOC entry 3534 (class 0 OID 0)
-- Dependencies: 227
-- Name: slugs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.slugs_id_seq OWNED BY public.slugs.id;


--
-- TOC entry 228 (class 1259 OID 17325)
-- Name: strapi_api_token_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_api_token_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_api_token_permissions OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 17328)
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_api_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_api_token_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 3535 (class 0 OID 0)
-- Dependencies: 229
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_api_token_permissions_id_seq OWNED BY public.strapi_api_token_permissions.id;


--
-- TOC entry 230 (class 1259 OID 17330)
-- Name: strapi_api_token_permissions_token_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_api_token_permissions_token_links (
    id integer NOT NULL,
    api_token_permission_id integer,
    api_token_id integer,
    api_token_permission_order double precision
);


ALTER TABLE public.strapi_api_token_permissions_token_links OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 17333)
-- Name: strapi_api_token_permissions_token_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_api_token_permissions_token_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_api_token_permissions_token_links_id_seq OWNER TO postgres;

--
-- TOC entry 3536 (class 0 OID 0)
-- Dependencies: 231
-- Name: strapi_api_token_permissions_token_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_api_token_permissions_token_links_id_seq OWNED BY public.strapi_api_token_permissions_token_links.id;


--
-- TOC entry 232 (class 1259 OID 17335)
-- Name: strapi_api_tokens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_api_tokens (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_api_tokens OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 17341)
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_api_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNER TO postgres;

--
-- TOC entry 3537 (class 0 OID 0)
-- Dependencies: 233
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNED BY public.strapi_api_tokens.id;


--
-- TOC entry 234 (class 1259 OID 17343)
-- Name: strapi_core_store_settings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_core_store_settings (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);


ALTER TABLE public.strapi_core_store_settings OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 17349)
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_core_store_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNER TO postgres;

--
-- TOC entry 3538 (class 0 OID 0)
-- Dependencies: 235
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNED BY public.strapi_core_store_settings.id;


--
-- TOC entry 236 (class 1259 OID 17351)
-- Name: strapi_database_schema; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_database_schema (
    id integer NOT NULL,
    schema json,
    "time" timestamp without time zone,
    hash character varying(255)
);


ALTER TABLE public.strapi_database_schema OWNER TO postgres;

--
-- TOC entry 237 (class 1259 OID 17357)
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_database_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_database_schema_id_seq OWNER TO postgres;

--
-- TOC entry 3539 (class 0 OID 0)
-- Dependencies: 237
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_database_schema_id_seq OWNED BY public.strapi_database_schema.id;


--
-- TOC entry 238 (class 1259 OID 17359)
-- Name: strapi_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_migrations (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);


ALTER TABLE public.strapi_migrations OWNER TO postgres;

--
-- TOC entry 239 (class 1259 OID 17362)
-- Name: strapi_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_migrations_id_seq OWNER TO postgres;

--
-- TOC entry 3540 (class 0 OID 0)
-- Dependencies: 239
-- Name: strapi_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_migrations_id_seq OWNED BY public.strapi_migrations.id;


--
-- TOC entry 240 (class 1259 OID 17364)
-- Name: strapi_release_actions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_release_actions (
    id integer NOT NULL,
    type character varying(255),
    target_id integer,
    target_type character varying(255),
    content_type character varying(255),
    locale character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    is_entry_valid boolean
);


ALTER TABLE public.strapi_release_actions OWNER TO postgres;

--
-- TOC entry 241 (class 1259 OID 17370)
-- Name: strapi_release_actions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_release_actions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_release_actions_id_seq OWNER TO postgres;

--
-- TOC entry 3541 (class 0 OID 0)
-- Dependencies: 241
-- Name: strapi_release_actions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_release_actions_id_seq OWNED BY public.strapi_release_actions.id;


--
-- TOC entry 242 (class 1259 OID 17372)
-- Name: strapi_release_actions_release_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_release_actions_release_links (
    id integer NOT NULL,
    release_action_id integer,
    release_id integer,
    release_action_order double precision
);


ALTER TABLE public.strapi_release_actions_release_links OWNER TO postgres;

--
-- TOC entry 243 (class 1259 OID 17375)
-- Name: strapi_release_actions_release_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_release_actions_release_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_release_actions_release_links_id_seq OWNER TO postgres;

--
-- TOC entry 3542 (class 0 OID 0)
-- Dependencies: 243
-- Name: strapi_release_actions_release_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_release_actions_release_links_id_seq OWNED BY public.strapi_release_actions_release_links.id;


--
-- TOC entry 244 (class 1259 OID 17377)
-- Name: strapi_releases; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_releases (
    id integer NOT NULL,
    name character varying(255),
    released_at timestamp(6) without time zone,
    scheduled_at timestamp(6) without time zone,
    timezone character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    status character varying(255)
);


ALTER TABLE public.strapi_releases OWNER TO postgres;

--
-- TOC entry 245 (class 1259 OID 17383)
-- Name: strapi_releases_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_releases_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_releases_id_seq OWNER TO postgres;

--
-- TOC entry 3543 (class 0 OID 0)
-- Dependencies: 245
-- Name: strapi_releases_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_releases_id_seq OWNED BY public.strapi_releases.id;


--
-- TOC entry 246 (class 1259 OID 17385)
-- Name: strapi_transfer_token_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_transfer_token_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_transfer_token_permissions OWNER TO postgres;

--
-- TOC entry 247 (class 1259 OID 17388)
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_transfer_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_transfer_token_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 3544 (class 0 OID 0)
-- Dependencies: 247
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_transfer_token_permissions_id_seq OWNED BY public.strapi_transfer_token_permissions.id;


--
-- TOC entry 248 (class 1259 OID 17390)
-- Name: strapi_transfer_token_permissions_token_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_transfer_token_permissions_token_links (
    id integer NOT NULL,
    transfer_token_permission_id integer,
    transfer_token_id integer,
    transfer_token_permission_order double precision
);


ALTER TABLE public.strapi_transfer_token_permissions_token_links OWNER TO postgres;

--
-- TOC entry 249 (class 1259 OID 17393)
-- Name: strapi_transfer_token_permissions_token_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq OWNER TO postgres;

--
-- TOC entry 3545 (class 0 OID 0)
-- Dependencies: 249
-- Name: strapi_transfer_token_permissions_token_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq OWNED BY public.strapi_transfer_token_permissions_token_links.id;


--
-- TOC entry 250 (class 1259 OID 17395)
-- Name: strapi_transfer_tokens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_transfer_tokens (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_transfer_tokens OWNER TO postgres;

--
-- TOC entry 251 (class 1259 OID 17401)
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_transfer_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_transfer_tokens_id_seq OWNER TO postgres;

--
-- TOC entry 3546 (class 0 OID 0)
-- Dependencies: 251
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_transfer_tokens_id_seq OWNED BY public.strapi_transfer_tokens.id;


--
-- TOC entry 252 (class 1259 OID 17403)
-- Name: strapi_webhooks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);


ALTER TABLE public.strapi_webhooks OWNER TO postgres;

--
-- TOC entry 253 (class 1259 OID 17409)
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_webhooks_id_seq OWNER TO postgres;

--
-- TOC entry 3547 (class 0 OID 0)
-- Dependencies: 253
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;


--
-- TOC entry 254 (class 1259 OID 17411)
-- Name: up_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.up_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.up_permissions OWNER TO postgres;

--
-- TOC entry 255 (class 1259 OID 17414)
-- Name: up_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.up_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 3548 (class 0 OID 0)
-- Dependencies: 255
-- Name: up_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.up_permissions_id_seq OWNED BY public.up_permissions.id;


--
-- TOC entry 256 (class 1259 OID 17416)
-- Name: up_permissions_role_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.up_permissions_role_links (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_order double precision
);


ALTER TABLE public.up_permissions_role_links OWNER TO postgres;

--
-- TOC entry 257 (class 1259 OID 17419)
-- Name: up_permissions_role_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.up_permissions_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_permissions_role_links_id_seq OWNER TO postgres;

--
-- TOC entry 3549 (class 0 OID 0)
-- Dependencies: 257
-- Name: up_permissions_role_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.up_permissions_role_links_id_seq OWNED BY public.up_permissions_role_links.id;


--
-- TOC entry 258 (class 1259 OID 17421)
-- Name: up_roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.up_roles (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.up_roles OWNER TO postgres;

--
-- TOC entry 259 (class 1259 OID 17427)
-- Name: up_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.up_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_roles_id_seq OWNER TO postgres;

--
-- TOC entry 3550 (class 0 OID 0)
-- Dependencies: 259
-- Name: up_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.up_roles_id_seq OWNED BY public.up_roles.id;


--
-- TOC entry 260 (class 1259 OID 17429)
-- Name: up_users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.up_users (
    id integer NOT NULL,
    username character varying(255),
    email character varying(255),
    provider character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    confirmation_token character varying(255),
    confirmed boolean,
    blocked boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.up_users OWNER TO postgres;

--
-- TOC entry 261 (class 1259 OID 17435)
-- Name: up_users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.up_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_users_id_seq OWNER TO postgres;

--
-- TOC entry 3551 (class 0 OID 0)
-- Dependencies: 261
-- Name: up_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.up_users_id_seq OWNED BY public.up_users.id;


--
-- TOC entry 262 (class 1259 OID 17437)
-- Name: up_users_role_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.up_users_role_links (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    user_order double precision
);


ALTER TABLE public.up_users_role_links OWNER TO postgres;

--
-- TOC entry 263 (class 1259 OID 17440)
-- Name: up_users_role_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.up_users_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_users_role_links_id_seq OWNER TO postgres;

--
-- TOC entry 3552 (class 0 OID 0)
-- Dependencies: 263
-- Name: up_users_role_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.up_users_role_links_id_seq OWNED BY public.up_users_role_links.id;


--
-- TOC entry 264 (class 1259 OID 17442)
-- Name: upload_folders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.upload_folders (
    id integer NOT NULL,
    name character varying(255),
    path_id integer,
    path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.upload_folders OWNER TO postgres;

--
-- TOC entry 265 (class 1259 OID 17448)
-- Name: upload_folders_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.upload_folders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.upload_folders_id_seq OWNER TO postgres;

--
-- TOC entry 3553 (class 0 OID 0)
-- Dependencies: 265
-- Name: upload_folders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.upload_folders_id_seq OWNED BY public.upload_folders.id;


--
-- TOC entry 266 (class 1259 OID 17450)
-- Name: upload_folders_parent_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.upload_folders_parent_links (
    id integer NOT NULL,
    folder_id integer,
    inv_folder_id integer,
    folder_order double precision
);


ALTER TABLE public.upload_folders_parent_links OWNER TO postgres;

--
-- TOC entry 267 (class 1259 OID 17453)
-- Name: upload_folders_parent_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.upload_folders_parent_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.upload_folders_parent_links_id_seq OWNER TO postgres;

--
-- TOC entry 3554 (class 0 OID 0)
-- Dependencies: 267
-- Name: upload_folders_parent_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.upload_folders_parent_links_id_seq OWNED BY public.upload_folders_parent_links.id;


--
-- TOC entry 3027 (class 2604 OID 17455)
-- Name: admin_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_id_seq'::regclass);


--
-- TOC entry 3028 (class 2604 OID 17456)
-- Name: admin_permissions_role_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_role_links_id_seq'::regclass);


--
-- TOC entry 3029 (class 2604 OID 17457)
-- Name: admin_roles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_roles ALTER COLUMN id SET DEFAULT nextval('public.admin_roles_id_seq'::regclass);


--
-- TOC entry 3030 (class 2604 OID 17458)
-- Name: admin_users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);


--
-- TOC entry 3031 (class 2604 OID 17459)
-- Name: admin_users_roles_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users_roles_links ALTER COLUMN id SET DEFAULT nextval('public.admin_users_roles_links_id_seq'::regclass);


--
-- TOC entry 3032 (class 2604 OID 17460)
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- TOC entry 3033 (class 2604 OID 17461)
-- Name: events id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.events ALTER COLUMN id SET DEFAULT nextval('public.events_id_seq'::regclass);


--
-- TOC entry 3034 (class 2604 OID 17462)
-- Name: events_category_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.events_category_links ALTER COLUMN id SET DEFAULT nextval('public.events_category_links_id_seq'::regclass);


--
-- TOC entry 3035 (class 2604 OID 17463)
-- Name: files id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);


--
-- TOC entry 3036 (class 2604 OID 17464)
-- Name: files_folder_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files_folder_links ALTER COLUMN id SET DEFAULT nextval('public.files_folder_links_id_seq'::regclass);


--
-- TOC entry 3037 (class 2604 OID 17465)
-- Name: files_related_morphs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files_related_morphs ALTER COLUMN id SET DEFAULT nextval('public.files_related_morphs_id_seq'::regclass);


--
-- TOC entry 3062 (class 2604 OID 24635)
-- Name: groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.groups ALTER COLUMN id SET DEFAULT nextval('public.groups_id_seq'::regclass);


--
-- TOC entry 3038 (class 2604 OID 17466)
-- Name: i18n_locale id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.i18n_locale ALTER COLUMN id SET DEFAULT nextval('public.i18n_locale_id_seq'::regclass);


--
-- TOC entry 3060 (class 2604 OID 24582)
-- Name: news id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.news ALTER COLUMN id SET DEFAULT nextval('public.news_id_seq'::regclass);


--
-- TOC entry 3061 (class 2604 OID 24597)
-- Name: news_category_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.news_category_links ALTER COLUMN id SET DEFAULT nextval('public.news_category_links_id_seq'::regclass);


--
-- TOC entry 3039 (class 2604 OID 17470)
-- Name: slugs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.slugs ALTER COLUMN id SET DEFAULT nextval('public.slugs_id_seq'::regclass);


--
-- TOC entry 3040 (class 2604 OID 17471)
-- Name: strapi_api_token_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_id_seq'::regclass);


--
-- TOC entry 3041 (class 2604 OID 17472)
-- Name: strapi_api_token_permissions_token_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_token_links_id_seq'::regclass);


--
-- TOC entry 3042 (class 2604 OID 17473)
-- Name: strapi_api_tokens id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_tokens_id_seq'::regclass);


--
-- TOC entry 3043 (class 2604 OID 17474)
-- Name: strapi_core_store_settings id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('public.strapi_core_store_settings_id_seq'::regclass);


--
-- TOC entry 3044 (class 2604 OID 17475)
-- Name: strapi_database_schema id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('public.strapi_database_schema_id_seq'::regclass);


--
-- TOC entry 3045 (class 2604 OID 17476)
-- Name: strapi_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_id_seq'::regclass);


--
-- TOC entry 3046 (class 2604 OID 17477)
-- Name: strapi_release_actions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_release_actions ALTER COLUMN id SET DEFAULT nextval('public.strapi_release_actions_id_seq'::regclass);


--
-- TOC entry 3047 (class 2604 OID 17478)
-- Name: strapi_release_actions_release_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_release_actions_release_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_release_actions_release_links_id_seq'::regclass);


--
-- TOC entry 3048 (class 2604 OID 17479)
-- Name: strapi_releases id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_releases ALTER COLUMN id SET DEFAULT nextval('public.strapi_releases_id_seq'::regclass);


--
-- TOC entry 3049 (class 2604 OID 17480)
-- Name: strapi_transfer_token_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_id_seq'::regclass);


--
-- TOC entry 3050 (class 2604 OID 17481)
-- Name: strapi_transfer_token_permissions_token_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_token_links_id_seq'::regclass);


--
-- TOC entry 3051 (class 2604 OID 17482)
-- Name: strapi_transfer_tokens id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_tokens_id_seq'::regclass);


--
-- TOC entry 3052 (class 2604 OID 17483)
-- Name: strapi_webhooks id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);


--
-- TOC entry 3053 (class 2604 OID 17484)
-- Name: up_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_id_seq'::regclass);


--
-- TOC entry 3054 (class 2604 OID 17485)
-- Name: up_permissions_role_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_role_links_id_seq'::regclass);


--
-- TOC entry 3055 (class 2604 OID 17486)
-- Name: up_roles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_roles ALTER COLUMN id SET DEFAULT nextval('public.up_roles_id_seq'::regclass);


--
-- TOC entry 3056 (class 2604 OID 17487)
-- Name: up_users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users ALTER COLUMN id SET DEFAULT nextval('public.up_users_id_seq'::regclass);


--
-- TOC entry 3057 (class 2604 OID 17488)
-- Name: up_users_role_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_users_role_links_id_seq'::regclass);


--
-- TOC entry 3058 (class 2604 OID 17489)
-- Name: upload_folders id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_id_seq'::regclass);


--
-- TOC entry 3059 (class 2604 OID 17490)
-- Name: upload_folders_parent_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders_parent_links ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_parent_links_id_seq'::regclass);


--
-- TOC entry 3441 (class 0 OID 17212)
-- Dependencies: 202
-- Data for Name: admin_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.admin_permissions (id, action, action_parameters, subject, properties, conditions, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	plugin::upload.read	{}	\N	{}	[]	2024-03-04 13:05:04.528	2024-03-04 13:05:04.528	\N	\N
2	plugin::upload.configure-view	{}	\N	{}	[]	2024-03-04 13:05:04.544	2024-03-04 13:05:04.544	\N	\N
3	plugin::upload.assets.create	{}	\N	{}	[]	2024-03-04 13:05:04.55	2024-03-04 13:05:04.55	\N	\N
4	plugin::upload.assets.update	{}	\N	{}	[]	2024-03-04 13:05:04.555	2024-03-04 13:05:04.555	\N	\N
5	plugin::upload.assets.download	{}	\N	{}	[]	2024-03-04 13:05:04.559	2024-03-04 13:05:04.559	\N	\N
6	plugin::upload.assets.copy-link	{}	\N	{}	[]	2024-03-04 13:05:04.563	2024-03-04 13:05:04.563	\N	\N
7	plugin::upload.read	{}	\N	{}	["admin::is-creator"]	2024-03-04 13:05:04.57	2024-03-04 13:05:04.57	\N	\N
8	plugin::upload.configure-view	{}	\N	{}	[]	2024-03-04 13:05:04.576	2024-03-04 13:05:04.576	\N	\N
9	plugin::upload.assets.create	{}	\N	{}	[]	2024-03-04 13:05:04.581	2024-03-04 13:05:04.581	\N	\N
10	plugin::upload.assets.update	{}	\N	{}	["admin::is-creator"]	2024-03-04 13:05:04.587	2024-03-04 13:05:04.587	\N	\N
11	plugin::upload.assets.download	{}	\N	{}	[]	2024-03-04 13:05:04.591	2024-03-04 13:05:04.591	\N	\N
12	plugin::upload.assets.copy-link	{}	\N	{}	[]	2024-03-04 13:05:04.595	2024-03-04 13:05:04.595	\N	\N
13	plugin::content-manager.explorer.create	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2024-03-04 13:05:04.637	2024-03-04 13:05:04.637	\N	\N
14	plugin::content-manager.explorer.read	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2024-03-04 13:05:04.643	2024-03-04 13:05:04.643	\N	\N
15	plugin::content-manager.explorer.update	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2024-03-04 13:05:04.647	2024-03-04 13:05:04.647	\N	\N
16	plugin::content-manager.explorer.delete	{}	plugin::users-permissions.user	{}	[]	2024-03-04 13:05:04.652	2024-03-04 13:05:04.652	\N	\N
17	plugin::content-manager.single-types.configure-view	{}	\N	{}	[]	2024-03-04 13:05:04.655	2024-03-04 13:05:04.655	\N	\N
18	plugin::content-manager.collection-types.configure-view	{}	\N	{}	[]	2024-03-04 13:05:04.659	2024-03-04 13:05:04.659	\N	\N
19	plugin::content-manager.components.configure-layout	{}	\N	{}	[]	2024-03-04 13:05:04.665	2024-03-04 13:05:04.665	\N	\N
20	plugin::content-type-builder.read	{}	\N	{}	[]	2024-03-04 13:05:04.67	2024-03-04 13:05:04.67	\N	\N
21	plugin::email.settings.read	{}	\N	{}	[]	2024-03-04 13:05:04.674	2024-03-04 13:05:04.674	\N	\N
22	plugin::upload.read	{}	\N	{}	[]	2024-03-04 13:05:04.678	2024-03-04 13:05:04.678	\N	\N
23	plugin::upload.assets.create	{}	\N	{}	[]	2024-03-04 13:05:04.682	2024-03-04 13:05:04.682	\N	\N
24	plugin::upload.assets.update	{}	\N	{}	[]	2024-03-04 13:05:04.686	2024-03-04 13:05:04.686	\N	\N
25	plugin::upload.assets.download	{}	\N	{}	[]	2024-03-04 13:05:04.689	2024-03-04 13:05:04.689	\N	\N
26	plugin::upload.assets.copy-link	{}	\N	{}	[]	2024-03-04 13:05:04.693	2024-03-04 13:05:04.693	\N	\N
27	plugin::upload.configure-view	{}	\N	{}	[]	2024-03-04 13:05:04.697	2024-03-04 13:05:04.697	\N	\N
28	plugin::upload.settings.read	{}	\N	{}	[]	2024-03-04 13:05:04.701	2024-03-04 13:05:04.701	\N	\N
29	plugin::users-permissions.roles.create	{}	\N	{}	[]	2024-03-04 13:05:04.705	2024-03-04 13:05:04.705	\N	\N
30	plugin::users-permissions.roles.read	{}	\N	{}	[]	2024-03-04 13:05:04.709	2024-03-04 13:05:04.709	\N	\N
31	plugin::users-permissions.roles.update	{}	\N	{}	[]	2024-03-04 13:05:04.712	2024-03-04 13:05:04.712	\N	\N
32	plugin::users-permissions.roles.delete	{}	\N	{}	[]	2024-03-04 13:05:04.718	2024-03-04 13:05:04.718	\N	\N
33	plugin::users-permissions.providers.read	{}	\N	{}	[]	2024-03-04 13:05:04.723	2024-03-04 13:05:04.723	\N	\N
34	plugin::users-permissions.providers.update	{}	\N	{}	[]	2024-03-04 13:05:04.727	2024-03-04 13:05:04.727	\N	\N
35	plugin::users-permissions.email-templates.read	{}	\N	{}	[]	2024-03-04 13:05:04.731	2024-03-04 13:05:04.731	\N	\N
36	plugin::users-permissions.email-templates.update	{}	\N	{}	[]	2024-03-04 13:05:04.735	2024-03-04 13:05:04.735	\N	\N
37	plugin::users-permissions.advanced-settings.read	{}	\N	{}	[]	2024-03-04 13:05:04.74	2024-03-04 13:05:04.74	\N	\N
38	plugin::users-permissions.advanced-settings.update	{}	\N	{}	[]	2024-03-04 13:05:04.744	2024-03-04 13:05:04.744	\N	\N
39	plugin::i18n.locale.create	{}	\N	{}	[]	2024-03-04 13:05:04.75	2024-03-04 13:05:04.75	\N	\N
40	plugin::i18n.locale.read	{}	\N	{}	[]	2024-03-04 13:05:04.754	2024-03-04 13:05:04.754	\N	\N
41	plugin::i18n.locale.update	{}	\N	{}	[]	2024-03-04 13:05:04.758	2024-03-04 13:05:04.758	\N	\N
42	plugin::i18n.locale.delete	{}	\N	{}	[]	2024-03-04 13:05:04.764	2024-03-04 13:05:04.764	\N	\N
43	admin::marketplace.read	{}	\N	{}	[]	2024-03-04 13:05:04.768	2024-03-04 13:05:04.768	\N	\N
44	admin::webhooks.create	{}	\N	{}	[]	2024-03-04 13:05:04.773	2024-03-04 13:05:04.773	\N	\N
45	admin::webhooks.read	{}	\N	{}	[]	2024-03-04 13:05:04.777	2024-03-04 13:05:04.777	\N	\N
46	admin::webhooks.update	{}	\N	{}	[]	2024-03-04 13:05:04.78	2024-03-04 13:05:04.78	\N	\N
47	admin::webhooks.delete	{}	\N	{}	[]	2024-03-04 13:05:04.785	2024-03-04 13:05:04.785	\N	\N
48	admin::users.create	{}	\N	{}	[]	2024-03-04 13:05:04.79	2024-03-04 13:05:04.79	\N	\N
49	admin::users.read	{}	\N	{}	[]	2024-03-04 13:05:04.794	2024-03-04 13:05:04.794	\N	\N
50	admin::users.update	{}	\N	{}	[]	2024-03-04 13:05:04.797	2024-03-04 13:05:04.797	\N	\N
51	admin::users.delete	{}	\N	{}	[]	2024-03-04 13:05:04.803	2024-03-04 13:05:04.803	\N	\N
52	admin::roles.create	{}	\N	{}	[]	2024-03-04 13:05:04.807	2024-03-04 13:05:04.807	\N	\N
53	admin::roles.read	{}	\N	{}	[]	2024-03-04 13:05:04.811	2024-03-04 13:05:04.811	\N	\N
54	admin::roles.update	{}	\N	{}	[]	2024-03-04 13:05:04.814	2024-03-04 13:05:04.814	\N	\N
55	admin::roles.delete	{}	\N	{}	[]	2024-03-04 13:05:04.819	2024-03-04 13:05:04.819	\N	\N
56	admin::api-tokens.access	{}	\N	{}	[]	2024-03-04 13:05:04.822	2024-03-04 13:05:04.822	\N	\N
57	admin::api-tokens.create	{}	\N	{}	[]	2024-03-04 13:05:04.825	2024-03-04 13:05:04.825	\N	\N
58	admin::api-tokens.read	{}	\N	{}	[]	2024-03-04 13:05:04.829	2024-03-04 13:05:04.829	\N	\N
59	admin::api-tokens.update	{}	\N	{}	[]	2024-03-04 13:05:04.833	2024-03-04 13:05:04.833	\N	\N
60	admin::api-tokens.regenerate	{}	\N	{}	[]	2024-03-04 13:05:04.837	2024-03-04 13:05:04.837	\N	\N
61	admin::api-tokens.delete	{}	\N	{}	[]	2024-03-04 13:05:04.84	2024-03-04 13:05:04.84	\N	\N
62	admin::project-settings.update	{}	\N	{}	[]	2024-03-04 13:05:04.844	2024-03-04 13:05:04.844	\N	\N
63	admin::project-settings.read	{}	\N	{}	[]	2024-03-04 13:05:04.848	2024-03-04 13:05:04.848	\N	\N
64	admin::transfer.tokens.access	{}	\N	{}	[]	2024-03-04 13:05:04.852	2024-03-04 13:05:04.852	\N	\N
65	admin::transfer.tokens.create	{}	\N	{}	[]	2024-03-04 13:05:04.855	2024-03-04 13:05:04.855	\N	\N
66	admin::transfer.tokens.read	{}	\N	{}	[]	2024-03-04 13:05:04.859	2024-03-04 13:05:04.859	\N	\N
67	admin::transfer.tokens.update	{}	\N	{}	[]	2024-03-04 13:05:04.862	2024-03-04 13:05:04.862	\N	\N
68	admin::transfer.tokens.regenerate	{}	\N	{}	[]	2024-03-04 13:05:04.869	2024-03-04 13:05:04.869	\N	\N
69	admin::transfer.tokens.delete	{}	\N	{}	[]	2024-03-04 13:05:04.874	2024-03-04 13:05:04.874	\N	\N
99	plugin::content-manager.explorer.delete	{}	api::category.category	{}	[]	2024-03-06 19:35:16.513	2024-03-06 19:35:16.513	\N	\N
110	plugin::content-manager.explorer.delete	{}	api::category.category	{}	[]	2024-03-06 21:04:03.181	2024-03-06 21:04:03.181	\N	\N
131	plugin::content-manager.explorer.delete	{}	api::event.event	{}	[]	2024-03-09 13:41:56.356	2024-03-09 13:41:56.356	\N	\N
146	plugin::content-manager.explorer.create	{}	api::new.new	{"fields": ["title", "content", "date", "cover", "category", "slug"]}	[]	2024-04-26 10:54:58.145	2024-04-26 10:54:58.145	\N	\N
148	plugin::content-manager.explorer.read	{}	api::new.new	{"fields": ["title", "content", "date", "cover", "category", "slug"]}	[]	2024-04-26 10:54:58.17	2024-04-26 10:54:58.17	\N	\N
150	plugin::content-manager.explorer.update	{}	api::new.new	{"fields": ["title", "content", "date", "cover", "category", "slug"]}	[]	2024-04-26 10:54:58.189	2024-04-26 10:54:58.189	\N	\N
151	plugin::content-manager.explorer.delete	{}	api::new.new	{}	[]	2024-04-26 10:54:58.197	2024-04-26 10:54:58.197	\N	\N
152	plugin::content-manager.explorer.create	{}	api::category.category	{"fields": ["name", "events", "slug", "news"]}	[]	2024-04-26 11:03:42.546	2024-04-26 11:03:42.546	\N	\N
153	plugin::content-manager.explorer.read	{}	api::category.category	{"fields": ["name", "events", "slug", "news"]}	[]	2024-04-26 11:03:42.558	2024-04-26 11:03:42.558	\N	\N
154	plugin::content-manager.explorer.update	{}	api::category.category	{"fields": ["name", "events", "slug", "news"]}	[]	2024-04-26 11:03:42.565	2024-04-26 11:03:42.565	\N	\N
155	plugin::content-manager.explorer.create	{}	api::group.group	{"fields": ["title", "description", "cover", "slug"]}	[]	2024-04-26 11:05:50.947	2024-04-26 11:05:50.947	\N	\N
156	plugin::content-manager.explorer.read	{}	api::group.group	{"fields": ["title", "description", "cover", "slug"]}	[]	2024-04-26 11:05:50.962	2024-04-26 11:05:50.962	\N	\N
157	plugin::content-manager.explorer.update	{}	api::group.group	{"fields": ["title", "description", "cover", "slug"]}	[]	2024-04-26 11:05:50.979	2024-04-26 11:05:50.979	\N	\N
158	plugin::content-manager.explorer.delete	{}	api::group.group	{}	[]	2024-04-26 11:05:50.992	2024-04-26 11:05:50.992	\N	\N
159	plugin::content-manager.explorer.create	{}	api::event.event	{"fields": ["title", "content", "date", "cover", "category", "slug", "album"]}	[]	2024-05-02 11:07:30.196	2024-05-02 11:07:30.196	\N	\N
160	plugin::content-manager.explorer.read	{}	api::event.event	{"fields": ["title", "content", "date", "cover", "category", "slug", "album"]}	[]	2024-05-02 11:07:30.217	2024-05-02 11:07:30.217	\N	\N
161	plugin::content-manager.explorer.update	{}	api::event.event	{"fields": ["title", "content", "date", "cover", "category", "slug", "album"]}	[]	2024-05-02 11:07:30.225	2024-05-02 11:07:30.225	\N	\N
107	plugin::content-manager.explorer.create	{}	api::category.category	{"fields": ["name", "slug"]}	[]	2024-03-06 21:04:03.169	2024-05-03 11:54:57.09	\N	\N
108	plugin::content-manager.explorer.read	{}	api::category.category	{"fields": ["name", "slug"]}	[]	2024-03-06 21:04:03.175	2024-05-03 11:54:57.09	\N	\N
109	plugin::content-manager.explorer.update	{}	api::category.category	{"fields": ["name", "slug"]}	[]	2024-03-06 21:04:03.178	2024-05-03 11:54:57.09	\N	\N
\.


--
-- TOC entry 3443 (class 0 OID 17220)
-- Dependencies: 204
-- Data for Name: admin_permissions_role_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.admin_permissions_role_links (id, permission_id, role_id, permission_order) FROM stdin;
1	1	2	1
2	2	2	2
3	3	2	3
4	4	2	4
5	5	2	5
6	6	2	6
7	7	3	1
8	8	3	2
9	9	3	3
10	10	3	4
11	11	3	5
12	12	3	6
13	13	1	1
14	14	1	2
15	15	1	3
16	16	1	4
17	17	1	5
18	18	1	6
19	19	1	7
20	20	1	8
21	21	1	9
22	22	1	10
23	23	1	11
24	24	1	12
25	25	1	13
26	26	1	14
27	27	1	15
28	28	1	16
29	29	1	17
30	30	1	18
31	31	1	19
32	32	1	20
33	33	1	21
34	34	1	22
35	35	1	23
36	36	1	24
37	37	1	25
38	38	1	26
39	39	1	27
40	40	1	28
41	41	1	29
42	42	1	30
43	43	1	31
44	44	1	32
45	45	1	33
46	46	1	34
47	47	1	35
48	48	1	36
49	49	1	37
50	50	1	38
51	51	1	39
52	52	1	40
53	53	1	41
54	54	1	42
55	55	1	43
56	56	1	44
57	57	1	45
58	58	1	46
59	59	1	47
60	60	1	48
61	61	1	49
62	62	1	50
63	63	1	51
64	64	1	52
65	65	1	53
66	66	1	54
67	67	1	55
68	68	1	56
69	69	1	57
99	99	1	66
107	107	2	7
108	108	2	8
109	109	2	9
110	110	2	10
131	131	1	82
146	146	1	97
148	148	1	99
150	150	1	101
151	151	1	102
152	152	1	103
153	153	1	104
154	154	1	105
155	155	1	106
156	156	1	107
157	157	1	108
158	158	1	109
159	159	1	110
160	160	1	111
161	161	1	112
\.


--
-- TOC entry 3445 (class 0 OID 17225)
-- Dependencies: 206
-- Data for Name: admin_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.admin_roles (id, name, code, description, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Super Admin	strapi-super-admin	Super Admins can access and manage all features and settings.	2024-03-04 13:05:04.504	2024-03-04 13:05:04.504	\N	\N
3	Author	strapi-author	Authors can manage the content they have created.	2024-03-04 13:05:04.523	2024-03-04 13:05:04.523	\N	\N
2	Editor	strapi-editor	Editors can manage and publish contents including those of other users.	2024-03-04 13:05:04.52	2024-03-06 21:04:05.087	\N	\N
\.


--
-- TOC entry 3447 (class 0 OID 17233)
-- Dependencies: 208
-- Data for Name: admin_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.admin_users (id, firstname, lastname, username, email, password, reset_password_token, registration_token, is_active, blocked, prefered_language, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Murilo	Destefani	\N	murilocorreiadestefani@gmail.com	$2a$10$viUxJUjT1sQVM/VNodlHCuXBzSjIPkATVnyxox3tjlwpAfI3Iv86O	\N	\N	t	f	\N	2024-03-04 13:05:59.998	2024-03-04 13:05:59.998	\N	\N
2	Julia	Destefani	\N	juliaribasdestefani@gmail.com	$2a$10$hWlqeupZKf5DUPiFeLdYNuXIHPfplvOuDuFndxFtywy.Au073jigO	\N	48d80bd62f8b7887d369681f4c22616442e02000	t	f	\N	2024-03-06 21:08:09.574	2024-03-09 15:10:58.142	\N	\N
\.


--
-- TOC entry 3449 (class 0 OID 17241)
-- Dependencies: 210
-- Data for Name: admin_users_roles_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.admin_users_roles_links (id, user_id, role_id, role_order, user_order) FROM stdin;
1	1	1	1	1
2	2	2	1	1
\.


--
-- TOC entry 3451 (class 0 OID 17246)
-- Dependencies: 212
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.categories (id, name, created_at, updated_at, created_by_id, updated_by_id, slug) FROM stdin;
15	Vaticano	2024-06-11 12:21:16.844	2024-06-11 12:21:16.844	1	1	vaticano
16	Jubileu	2024-06-11 12:35:00.689	2024-06-11 12:35:00.689	1	1	jubileu
17	Leigos	2024-06-11 12:38:38.619	2024-06-11 12:38:38.619	1	1	leigos
18	Luta	2024-06-11 12:45:27.292	2024-06-11 12:45:27.292	1	1	luta
19	Desenvolvimento	2024-06-11 12:47:19.197	2024-06-11 12:47:19.197	1	1	desenvolvimento
20	Economia	2024-06-11 12:50:59.515	2024-06-11 12:50:59.515	1	1	economia
21	Pentecostes	2024-06-11 12:53:13.209	2024-06-11 12:53:13.209	1	1	pentecostes
22	Matrimônio	2024-06-12 08:42:11.333	2024-06-12 08:42:11.333	1	1	matrimonio
23	Jovens	2024-06-12 08:48:12.826	2024-06-12 08:48:12.826	1	1	jovens
24	Igreja	2024-06-12 08:50:19.333	2024-06-12 08:50:19.333	1	1	igreja
25	Cultura	2024-06-12 08:51:53.469	2024-06-12 08:51:53.469	1	1	cultura
26	Caridade	2024-06-12 08:53:16.395	2024-06-12 08:53:16.395	1	1	caridade
27	Páscoa	2024-06-12 08:55:08.648	2024-06-12 08:55:08.648	1	1	pascoa
28	Papa	2024-06-12 08:56:46.913	2024-06-12 08:56:46.913	1	1	papa
29	Cultura	2024-06-13 10:54:47.892	2024-06-13 10:54:47.892	1	1	category
30	Ciência	2024-06-13 10:56:56.507	2024-06-13 10:56:59.976	1	1	ciencia
31	Conhecimento	2024-06-13 11:00:49.079	2024-06-13 11:00:49.079	1	1	conhecimento
32	Política	2024-06-13 11:03:21.652	2024-06-13 11:03:21.652	1	1	politica
33	Diálogo	2024-06-13 11:15:20.62	2024-06-13 11:15:20.62	1	1	dialogo
34	Jornada	2024-06-13 11:16:42.323	2024-06-13 11:16:42.323	1	1	jornada
\.


--
-- TOC entry 3453 (class 0 OID 17254)
-- Dependencies: 214
-- Data for Name: events; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.events (id, title, content, date, created_at, updated_at, created_by_id, updated_by_id, slug, album) FROM stdin;
27	O Papa: com os jovens casais gerar pequenas Igrejas domésticas	“Recomeçar a partir das novas gerações: gerar muitas pequenas Igrejas domésticas onde se vive um estilo de vida cristão, onde se sente familiarizado com Jesus”. É o pedido do Papa Francisco aos responsáveis do Movimento Internacional Équipes Notre-Dame que foram recebidos neste sábado (04) no Vaticano.\n\nCasamento com a presença de Cristo\nExplicando que “hoje em dia, acredita-se que o sucesso de um casamento depende apenas da força de vontade das pessoas. Não é assim” disse. Acrescentando que o casamento é um "passo de três vias", no qual “a presença de Cristo entre os cônjuges torna a jornada possível, e o jugo é transformado em um jogo de olhares: olhar entre os cônjuges, olhar entre os cônjuges e Cristo. É um jogo que dura a vida inteira, no qual todos ganham juntos se cuidarem de seu relacionamento, se o valorizarem como um tesouro precioso”.\n\nCasais recém-casados\nFrancisco disse que gostaria de deixá-los com duas breves reflexões: a primeira diz respeito aos casais recém-casados.  É importante que os recém-casados possam vivenciar uma mistagogia nupcial, que os ajude a experimentar a beleza de seu Sacramento e a espiritualidade como casal. Acrescentou que “muitos se casam sem entender o que a fé tem a ver com sua vida conjugal, talvez porque ninguém tenha testemunhado a eles antes do casamento”. Incentivou os presentes a ajudá-los “em um caminho 'catecumenal' de redescoberta da fé, tanto pessoalmente quanto como casal, para que, desde o início, eles possam aprender a dar espaço para Jesus e, com Ele, serem capazes de cuidar de seu casamento”.\n\nCônjuges e sacerdotes\nA segunda reflexão do Papa foi sobre a importância da corresponsabilidade entre cônjuges e sacerdotes dentro do Movimento. “Vocês compreenderam e vivem concretamente a complementaridade das duas vocações”, afirmou Francisco, “eu os encorajo a levá-la às paróquias, para que os leigos e os sacerdotes descubram sua riqueza e necessidade. Isso ajudará a superar o clericalismo que torna a Igreja menos frutífera: cuidado com o clericalismo... Também ajudará os cônjuges a descobrir que, por meio do matrimônio, são chamados a uma missão”. \n	2024-06-02	2024-06-12 08:43:59.505	2024-06-12 08:43:59.505	1	1	o-papa-com-os-jovens-casais-gerar-pequenas-igrejas-domesticas	72177720314810578
28	Semana Mundo Unido deste ano tem foco no Genfest 2024	Realizada desde 1995, a Semana Mundo Unido (SMU) é uma promoção do setor juvenil do Movimento dos Focolares cuja proposta é ser uma espécie de laboratório e mostra global de ideias, projetos e ações inspiradas na unidade na paz. Este ano – sob a temática “Abraçar a humanidade, despertar a mudança” – a SMU está diretamente voltada ao Genfest 2024, festival internacional a ser realizado no Brasil. Nesse sentido, uma das propostas dos organizadores da Semana é que sejam realizadas ações em favor das organizações sociais que irão receber os jovens durante a 1ª Fase do Genfest. Além disso, a SMU será uma oportunidade especial para divulgar e convidar os jovens para o evento de julho. \n\nA SMU acontece entre os dias 1º e 7 de maio ao redor do mundo. Embora protagonizada pelos jovens, a Semana costuma reunir também crianças e adultos em ações, manifestações, congressos e iniciativas culturais e sociais que não só como um testemunho do mundo unido, como serem uma forma de incidência junto à opinião pública a respeito dessa proposta. Participam dessas atividades não só membros dos Focolares, como organizações da sociedade civil e o público em geral.\n\nEm nível mundial, a SMU 2024 contará com um evento de abertura a ser transmitido via streaming da pequena cidade de Loppiano, na Itália, onde localiza-se um dos centros de difusão do Carisma do Movimento dos Focolares. Outra iniciativa global é TimeOut, momento de oração ou silêncio (a ser vivenciado conforme a convicção de cada pessoa) em favor da paz. Saiba mais sobre a programação global da SMU 2024 por meio do site www.unitedworldproject.org.\n\nAinda durante a Semana, acontece o Run4Unity2024 (a já tradicional corrida pela paz), especialmente voltado a crianças e adolescentes e que, neste ano, tem como tema central “Despertar pela Paz”. As ações do Run4Unity2024 estão especialmente conectadas ao projeto Living Peace Internacional (sobre educação para paz, também promovido por grupos ligados aos Focolares).\n\nNo Brasil\n \nA exemplo do deverá acontecer ao redor do mundo, no Brasil – especialmente por sediar a próxima edição internacional do Genfest – as diferentes comunidades dos Focolares presentes em todo o país deverão contar com uma programação própria, realizada conforme as características e exigências locais. Muitas delas, por se localizarem próximas ou contribuírem diretamente pela manutenção das organizações sociais da 1ª Fase do Genfest, deverão realizar atividades para ajudar essas entidades com recursos materiais.\n\nÉ o caso, por exemplo, da comunidade do Distrito Federal que fará uma gincana com as crianças e famílias assistidas pela Associação de Apoio à Família, ao Grupo e à Comunidade (Afago-DF), uma das instituições que participarão do Genfest na sua primeira fase. A gincana está programada para o dia 4 de maio, a partir das 8 horas, na sede da própria Afago-DF. Também a comunidade dos Focolares localizada no entorno da Mariápolis Glória (centro regional do Movimento, com sede em Benevides, no Pará) contará com uma programação especial para a SMU. Um dos destaques será a participação da musicista Thyrseane Andrade, compositora do hino oficial do Genfest 2024, que vai contar a experiência de ter feito essa composição, intitulada We can (Nós podemos).	2024-03-14	2024-06-12 08:49:01.047	2024-06-12 08:49:01.047	1	1	semana-mundo-unido-deste-ano-tem-foco-no-genfest-2024	72177720314810578
29	O Papa: ver o rosto de Jesus em quem vive na miséria por causa das injustiças sociais	"Com o coração repleto de esperança, dirijo-me a todos os participantes na VI Semana Social Brasileira, promovida pela Comissão Episcopal Pastoral para a Ação Sociotransformadora da CNBB sobre o tema “O Brasil que queremos, o Bem Viver dos Povos”. Quero assegurar-lhes minha proximidade e minhas orações pelo bom andamento do encontro e seus frutos", escreve o Papa.\n\nTerra, casa e trabalho\nFrancisco recorda que "desde sua primeira edição em 1991, a Semana Social Brasileira propôs-se como caminho para uma “Igreja em saída”, comprometida em derrubar os muros do descarte e da indiferença, acompanhando os mais pobres e carentes dos direitos básicos em sua luta por terra, moradia e trabalho".\n\nAlém disso, propõe uma nova economia, mais solidária, e a revitalização dos valores democráticos que auxiliam a construir uma sociedade onde haja verdadeira participação popular nos processos decisórios da Nação. "Agradeço-lhes vivamente por este compromisso e também pela promoção, junto com a juventude do Brasil, da Economia de Clara e Francisco", ressalta ainda o Pontífice.\n\n"Estou-lhes igualmente grato por promoverem o chamado, que dirigi aos participantes do Encontro Mundial dos Movimentos Populares, em 2014, para responder “a um anseio muito concreto, a algo que qualquer pai, qualquer mãe, deseja para os próprios filhos; um anseio que deveria estar ao alcance de todos, mas que hoje vemos, com tristeza, cada vez mais distante de se tornar realidade na vida da maioria das pessoas: terra, casa e trabalho", afirma o texto.\n\nUma sociedade mais justa\nO Papa espera "que o “Mutirão pela vida”, organicamente vinculado à Semana Social Brasileira, produza abundantes frutos em favor de uma sociedade mais justa, na qual, como diz a Campanha da Fraternidade deste ano, se vivam a fraternidade universal e a amizade social".\n\nFrancisco convida a "ver naqueles que são forçados a viver na miséria pelas injustiças sociais o rosto de Jesus que nos instiga a não permanecermos indiferentes, pois, como Ele próprio disse: “Todas as vezes que fizestes isso a um dos menores de meus irmãos, foi a Mim que o fizestes!”"\n\n"Confiando estes votos e preces à intercessão de Nossa Senhora Aparecida, Rainha e Padroeira do Brasil", o Papa concede de coração a sua bênção, pedindo ainda que não se esqueçam de rezar por ele.	2024-02-13	2024-06-12 08:51:04.371	2024-06-12 08:51:04.371	1	1	o-papa-ver-o-rosto-de-jesus-em-quem-vive-na-miseria-por-causa-das-injusticas-sociais	72177720314810578
30	Assinado acordo entre Santa Sé e instituição de ensino para promover a língua italiana	O italiano, língua de comunhão\nEm seu discurso, dom Peña Parra citou o falecido Franco Frattini que, no L'italiano nella Chiesa fra passato e presente - uma publicação promovida pela Embaixada da Itália junto à Santa Sé - escreveu que "como italianos, não podemos deixar de reconhecer o papel que a Igreja desempenhou na difusão de nossa língua, que [...] agora assumiu o status de 'língua franca' da Igreja". Isso, afirma o prelado, é ainda mais verdadeiro hoje, já que em todas as Nunciaturas, mesmo nas Conferências Episcopais, em numerosos Institutos de Vida Consagrada, nos Movimentos Eclesiais e nas Comunidades mais recentemente fundadas, o italiano é a língua veicular. De fato, sugere ainda o substituto, "em uma Igreja cada vez mais internacional e sinodal, onde já está em andamento um processo que visa uma inclusão mais participativa, o italiano desempenha um papel essencial: ela é, gostaria de dizer, língua de comunhão".\n\nItaliano, centelha da glória divina\nDe fato, freiras, religiosos, seminaristas e padres de todo o mundo falam esse idioma todos os dias, em seu trabalho pastoral, nas dioceses de toda a Itália, estudam-no profundamente nas universidades pontifícias e o utilizam em seus cargos de representação e nas interações formais entre a Santa Sé e o Estado italiano. Peña Parra menciona o que ele chama de "dois momentos genéticos" do idioma italiano: o Cântico das Criaturas de São Francisco de Assis e, é claro, o próprio Dante na Divina Comédia. No primeiro exemplo, o texto exalta uma fraternidade universal na qual a língua se torna um canal de louvor e esperança. No segundo, o italiano é invocado pelo autor para expressar e transmitir a "centelha" da glória divina. E, de fato, conclui o prelado venezuelano, a língua italiana, "com seu rico vocabulário que vem tanto da poética quanto da vida cotidiana, parece testemunhar, com um senso inato de naturalidade, a genuína adesão ao verdadeiro, ao bom e ao belo".	2024-01-08	2024-06-12 08:52:44.786	2024-06-12 08:52:44.786	1	1	assinado-acordo-entre-santa-se-e-instituicao-de-ensino-para-promover-a-lingua-italiana	72177720314810578
31	Com Deus Tem Jeito: evento começa nesta sexta-feira em Cachoeira Paulista	Mais de 400 carismas, grupos e movimentos, além de 2 mil moradores em situação de rua, estarão reunidos neste final de semana para a décima edição do encontro "Com Deus Tem Jeito". A previsão é que "cerca de 500 dessas pessoas sejam encaminhadas para entidades da Igreja Católica", disse o arcebispo da Arquidiocese de Fortaleza, dom Gregório Paixão. A iniciativa de evangelização de rua será realizada na Canção Nova de 24 a 26 de novembro.\n\n"Com Deus Tem Jeito": essa é a grande alegria e a grande certeza que trazemos no coração", afirmou em vídeo o arcebispo da Arquidiocese de Fortaleza, dom Gregório Paixão, num convite à iniciativa de evangelização de rua e acolhimento que começa nesta sexta-feira (24) na Canção Nova, em Cachoeira Paulista/SP. O encontro, já na sua décima edição, chegou a ganhar a bênção do Papa Francisco em 25 de outubro, ao final da Audiência Geral, quando uma delegação brasileira entregou o material do evento ao Pontífice. Tudo nasceu justamente da vontade de se unir "ao coração do Santo Padre" para proporcionar uma experiência pessoal e de misericórdia com Jesus a centenas de pessoas em situação de rua. \n\nEssa obra concreta de misericórdia no Brasil tem  reunido mais de 400 carismas, grupos e movimentos, além dos próprios moradores em situação de rua. Neste final de semana, por exemplo, o arcebispo disse que o "Com Deus Tem Jeito" deve receber 2 mil pessoas que vivem em condições precárias nas periferias do Brasil, muitas vezes envolvidas com tráfico de drogas e onde domina a violência. "Vão viver um acampamento, fazendo experiência com o amor de Deus, e aqueles que quiserem, não voltam mais para as ruas: todos que quiserem serão acolhidos!", comentou Edwin Costa, da Obra Lumen. E dom Gregório acrescentou:\n\n"De modo especial, após esse encontro, cerca de 500 dessas pessoas serão encaminhadas para entidades da Igreja Católica que atendem pessoas em situação de rua. Uma bênção especial para todos aqueles que fazem a Canção Nova, que fazem a missão Lumen, e de um modo especial a todos esses irmãos que serão acolhidos: sejam eles, portanto, muito bem-vindos ao coração do Altíssimo. Porque nós sabemos: 'Com Deus Tem Jeito'".\n\nO encontro já alcançou mais de 120 cidades de 18 estados do Brasil e já acolheu mais de 6 mil pessoas em situação de rua. Segundo os organizadores, uma mensagem assinada pelo Papa Francisco e dirigida aos participantes, carismas e movimentos, já chegou ao Brasil e será lida pelo bispo da diocese de Lorena, dom Wladimir Dias, na missa de encerramento do encontro, em 26 de novembro.	2024-02-15	2024-06-12 08:54:12.504	2024-06-12 08:54:12.504	1	1	com-deus-tem-jeito-evento-comeca-nesta-sexta-feira-em-cachoeira-paulista	72177720314810578
32	Charis e a “agenda” que prepara para o grande aniversário da humanidade	Nesta semana de Páscoa de 2023, começa a década que culminará em 2033 com os dois mil anos da morte e ressurreição de Jesus. Em vista deste evento epocal para a fé cristã, o Serviço Internacional para a Renovação Carismática Católica lança um vídeo que reúne as palavras do Papa Francisco e as reflexões de cardeais e líderes e Movimentos e comunidades.	2024-05-07	2024-06-12 08:55:49.862	2024-06-12 08:55:49.862	1	1	charis-e-a-agenda-que-prepara-para-o-grande-aniversario-da-humanidade	72177720314810578
33	Papa ao Movimento Equipes de Nossa Senhora: sejam jovens com asas e raízes	Jovens com asas para voar, sonhar, criar, e com raízes para receber dos mais idosos a sabedoria que eles dão”. No encontro o Papa refletiu sobre as três palavras que compõem o nome do grupo: Nossa Senhora e jovens. O encontro foi realizado neste sábado, 6 de agosto no Vaticano\n\nNa manhã deste sábado (06) o Papa Francisco recebeu as jovens do Movimento Católico “Equipes de Nossa Senhora” em audiência no Vaticano. O Papa iniciou afirmando: “Vocês queriam ouvir, dos meus lábios, que a santa Mãe Igreja ama e conta com cada um de vocês. E assim é! A Igreja ama o que Jesus amou". E disse que gostaria de refletir um pouco sobre as três palavras que compõem o nome do grupo: equipe, Nossa Senhora e jovens.\n\nEquipe\n“Vocês vivem a experiência de equipe, de grupo – disse o Pontífice -. Isto é um dom, não é um dado adquirido! Fazer parte de uma comunidade, de uma família de famílias que transmite uma fé vivida é um grande dom! Ninguém pode dizer: ‘Salvo-me sozinho’. Estamos todos em relação, para aprender a fazer equipe. Deus quis entrar nesta dinâmica de relações e atrai-nos a si em comunidade, dando à nossa vida um sentido pleno de identidade e de pertença”.\n\nO Papa recordou que embora existam abusos, mentiras e traições, o problema não é se defender dos outros, mas a preocupação deve ser a de defender as vítimas. “Neste tempo do virtual e da consequente solidão em que se deixam cair muitos dos seus coetâneos, vocês escolheram crescer em equipe. Sigam em frente, construam pontes, joguem em equipe!”\n\nNossa Senhora\nO segundo componente é Nossa Senhora. “Como se lê no Preâmbulo dos Estatutos,  - afirmou - vocês são jovens que ‘se caracterizam por uma forte devoção a Nossa Senhora, com o consequente desejo de, ao seguir o seu exemplo e colocando-se sob a sua maternal proteção, compreenderem o lugar privilegiado de Maria, no Mistério de Cristo e da Salvação’. E assim é!”.\n\n“Quando se acolhe Maria, a Mãe, na própria vida, nunca se perde o centro, que é o Senhor. Porque Maria nunca aponta para si mesma, mas para Jesus e para os irmãos”\n\n“Encorajo todos vocês a viver numa consagração diária à Virgem Maria e Ela ajudará a crescer em equipe, partilhando os dons recebidos em espírito de diálogo e mútuo acolhimento”.  Recordando a Jornada Mundial da Juventude de 2023, o Papa disse:\n“Aqui, entre vocês, há vários jovens portugueses! Levantar-se para servir, sair para cuidar dos outros e da criação: estes são valores típicos dos jovens. Exorto todos a praticá-los enquanto se preparam para a JMJ de Lisboa”.\n\nOs Jovens\nEm seguida ao falar sobre a terceira palavra: os jovens Francisco afirmou:\n\n“O futuro é dos jovens. Mas – atenção! – jovens com duas qualidades: jovens com asas e jovens com raízes. Jovens com asas para voar, sonhar, criar, e com raízes para receber dos mais idosos a sabedoria que eles dão”\n\nFrancisco recordou a todos para que se perguntem: “como estão as minhas asas? O meu olhar volta-se para baixo, dobra-se sobre mim mesmo, ou sei olhar para o alto, para o horizonte? No meu coração abundam sonhos, projetos, grandes desejos, ou abundam lamentações, pensamentos negativos, julgamentos e preconceitos?” E se referindo às raízes: “como estão as minhas raízes? Penso que o mundo começa comigo ou sinto-me parte de um grande rio que percorreu um longo caminho? Se tenho a felicidade de ainda ter avós, como me relaciono com eles? Falo com eles? Sei ouvi-los? Peço-lhes, por vezes, que me contem algo de importante sobre a sua vida? Valorizo a sua sabedoria?”.\n\nPor fim o Santo Padre saudou os adultos, casais e sacerdotes assistentes que estavam presentes:\n\n“Para os jovens presentes vocês são testemunhas, com humildade e simplicidade. Testemunhas do amor a Cristo e à Igreja, testemunhas da escuta e do diálogo, testemunhas do serviço desinteressado e generoso, testemunhas da oração”.\n	2024-06-09	2024-06-12 08:57:48.424	2024-06-12 08:57:48.424	1	1	papa-ao-movimento-equipes-de-nossa-senhora-sejam-jovens-com-asas-e-raizes	72177720314810578
34	Jubileu é cultura: música, filmes, exposições rumo ao Ano Santo 2025	Enquanto dia após dia registram-se novas inscrições para peregrinações diocesanas e nacionais em vista do Jubileu, os preparativos para os eventos culturais que serão disponibilizados gratuitamente durante todo o ano extraordinário de 2025 estão em pleno andamento e, em alguns casos, até mesmo para 2024. Na manhã de quinta-feira (04), na Sala de Imprensa da Santa Sé, foi apresentada a programação "Jubileu é Cultura". Estavam presentes Dom Rino Fisichella, Padre Alessio Geretti e Monsenhor Dario Viganò.\n\nTodos os eventos são gratuitos, programa detalhado em maio\nCom a esperança de que as iniciativas culturais para o Jubileu possam cumprir o desejo expresso pelo Papa Francisco de ser "um sinal de um renascimento renovado para o qual todos nós sentimos a urgência", Dom Rino Fisichella, pró-prefeito do Dicastério para a Evangelização, ilustrou os eventos nos quais a máquina do Jubileu está trabalhando e cujos detalhes serão divulgados em maio. “Todos eles serão sempre gratuitos", destacou o prelado, porque "a cultura não tem preço". É justo, afirma, que nesses anos, não seja cobrado por parte do Vaticano, nenhum custo para os usuários.  Em seguida anunciou os três concertos que marcarão os próximos meses.\n\nO primeiro será no dia 28 de abril, na igreja de Santo Inácio de Loyola, onde será apresentada, por inteiro, a famosa obra Messias de G. F. Handel. "É uma obra muito conhecida, mas nem sempre executada em sua totalidade. Handel a compôs em 1741 e uma de suas peças mais famosas, o Hallelujah, coincidirá com este tempo de Páscoa, permitindo realizar toda a jornada da vida de Jesus Cristo, desde seu nascimento até sua ressurreição". Uma obra prima única que será executada pelo Ensemble florentino dos "Musici del Gran Principe”, dirigida pelo jovem maestro Samuele Lastrucci.\n\nO segundo evento será dia 3 de novembro, no Auditório da Via della Conciliazione, com a participação da Academia Nacional de Santa Cecilia. A orquestra regida pelo maestro Jader Bignamini, atualmente diretor musical da Orquestra Sinfônica de Detroit, executará a Quinta Sinfonia de Dimitri Shostakovich, composta em 1937, "pouco conhecida do público em geral, mas marcante pela sua dramaticidade".\n\nPerto dos dias da abertura da Porta Santa, em 22 de dezembro, novamente na igreja romana de Santo Inácio, o coral da Capela Sistina apresentará várias composições polifônicas de Palestrina, Perosi e Bartolucci. "Com seus 1.500 anos de história", lembra Fisichella, "o coral da Capela Sistina, sob a direção do maestro Marcos Pavan, permitirá viver os dias que antecedem a abertura do Jubileu à luz de uma genuína contemplação do mistério da fé, cantada por um coro conhecido no mundo inteiro e que se apresentará excepcionalmente na cidade de Roma".\n\nUma exposição de ícones para uma mensagem de paz\nA exposição de ícones foi ilustrada pelo padre Alessio Geretti, colaborador externo do Dicastério para a Evangelização. A mostra será realizada no final de 2024 na Igreja de Sant'Agnese in Agone, no centro de Roma, na sacristia, "um lugar de grande acessibilidade para todos". Serão expostas cerca de vinte obras, das tradições russa, ucraniana e síria, com a colaboração especial do Dicastério para a Evangelização e dos Museus do Vaticano: os ícones no contexto da arte bizantina serão particularmente adequados para entrar no Ano Santo. Padre Geretti destaca seu valor precioso: "são imagens cheias de paz em um mundo cheio de guerra". E acrescenta: "Estamos em tempos de superabundância de imagens para um consumo rápido e superficial sem interiorização”. Portanto, os ícones devem ser considerados elementos que, de alguma forma, refreiam essa ‘violência’ e voracidade de fruição, porque eles "nos convidam a entrar em um simbolismo, e não apenas em uma motivação estética e emocional".\n\nHomenagens a Dali e Chagall\nNo início de 2025 (entre novembro de 2024 e janeiro de 2025) e nos próximos meses de 2024, serão realizados dois eventos sobre duas "figuras surpreendentes" em alguns aspectos: Salvador Dali e Marc Chagall. Chagall, que veio de uma tradição judaica e desenvolveu um misticismo do cotidiano, baseou-se fortemente nas Sagradas Escrituras, que foi uma sua grande fonte de inspiração. "Talvez ele tenha sido um dos poucos no mundo judaico que reconheceu explicitamente o fascínio de Cristo, que pôde sintetizar sua fé em seus olhos e que nos oferece uma chave importante para interpretá-la também nos dias de hoje", explica o padre Geretti. Recorrer a ele é uma maneira de encontrar aqueles que vêm a Roma de outras tradições religiosas ou aqueles que não têm o dom da fé, mas que, no entanto, estão ligados a uma dimensão transcendente: pessoas com as quais a Igreja precisa mostrar que é capaz de dialogar. Salvador Dali, "não exatamente um católico regular", pintou muitos temas cristãos. Portanto, ele é um artista importante também pelo seu percurso pessoal que o aproxima da fé. Padre Geretti aponta que a Guerra Civil Espanhola, a contemplação do Cristo Morto de Velásquez, o encontro com um carmelita que era um grande estudioso de São João da Cruz, despertaram algo em Dalí, que decidiu ir para Ávila, onde respirou a clima do Surrealismo primitivo, descobrindo assim a raiz transcendente dessa corrente que ele quis expurgar das ideologias céticas e niilistas. "Salvador Dali também achou religiosamente interessante a raiz da fé na ciência quântica: a matéria, argumentou ele, é o antecedente do Espírito. Em Dali, descobrimos que a beleza da forma desperta a tensão na direção da vida no Espírito". Portanto, serão criadas as condições para abrir solenemente a Porta Santa usando esse artista, que "encarna bem o tormento e o êxtase, que não deixa de derramar em cada seu gesto o anseio por Deus".\n\nO festival de cinema sobre os rostos da esperança\nMonsenhor Dario Edoardo Viganò, vice-chanceler da Pontifícia Academia de Ciências e Ciências Sociais, apresentou a mostra de cinema "Faces e contrafaces da esperança", que será aberta em 14 de abril no Cinema delle Province, em Roma, com o filme La porta del cielo (Vittorio De Sica e Cesare Zavattini, 1945), em uma cópia recentemente restaurada. La porta del cielo narra uma peregrinação de pessoas doentes ao santuário de Loreto. Filmado entre março e junho de 1944, durante a ocupação nazi-fascista da capital, as filmagens ocorreram em Roma, na Basílica de São Paulo Fora dos Muros. Giovanni Battista Montini, o futuro Papa Paulo VI, então substituto na Secretaria de Estado, também participou da produção do filme e visitou várias vezes o set das filmagens. "Um sinal de cuidado especial por parte da Santa Sé", especifica Viganò, acrescentando uma curiosidade da época: em seu diário, Zavattini observa: "Eles gostariam que [eu fizesse] um filme só meu, deixando-me totalmente livre, eu digo totalmente, desde que o filme seja baseado na moral cristã, mas quem não é cristão? Cristo está às portas”.\n\nViganò: filmes da programação nas Salas de Cinema Comunitárias \nConvidando os 500 Salas de Cinema comunitários da Itália a replicar a iniciativa da diocese de Roma, Viganò menciona os outros filmes selecionados pela Fundação Entidade do Espetáculo: On life (2023), de James Hawes, com o vencedor do Oscar Anthony Hopkins no papel do filantropo inglês Nicholas Winton, La chimera (2023), de Alice Rohrwacher, com Josh O'Connor e Isabella Rossellini, Perfect Days (2023), de Wim Wenders, Leaves in the wind (2023), de Aki Kaurismäki. Em seguida cita outros títulos lançados há alguns anos: L'intrepido (2013), de Gianni Amelio; Silence (2016), de Martin Scorzese; Chiara (2002), de Susanna Nicchiarelli; Il concerto (2009), de Radu Mihăileanu. Susanna Nicchiarelli e Radu Mihăileanu estarão presentes para dialogar com o público. O festival se encerra com o filme Cristo proibito (1951), de Curzio Malaparte.\n\nCompromisso também em vista do 1700º aniversário do Concílio de Niceia\nEm suma, a máquina do Jubileu não para; afinal, a Proclamação oficial é iminente e ocorrerá em 9 de maio, a Festa da Ascensão, com a publicação da Bula. As solicitações de órgãos institucionais para colaborar em eventos culturais são contínuas, afirma Dom Fisichella que, segundo ele, ontem mesmo, por exemplo, recebeu um articulado dossiê da Embaixada da França. Até o momento, o projeto "In Cammino", uma peregrinação moderna entre as 14 maiores abadias da Europa, idealizado e promovido por Livia Pomodoro, presidente da associação cultural "No'hma - In cammino", recorda ainda o pró-prefeito, está obtendo uma resposta muito positiva, redescobrindo o respeito pelo meio ambiente e sob a bandeira da esperança. “De nossa parte", acrescenta, "sempre pensamos no grande valor evangelizador que possuem os praeambula fidei, sinais e experiências que precedem a proposta de fé e que, por sua própria natureza, são capazes de estabelecer um diálogo sincero com aqueles que estão em busca de dar sentido às suas vidas". E conclui, respondendo a uma pergunta de um correspondente russo, sobre o que está sendo feito em vista do 1700º aniversário do Concílio de Nicéia: “Temos uma Comissão específica trabalhando", explica Fisichella, "estamos tentando criar duas situações, uma em Roma e outra em Niceia. Em Roma, há muitos remanescentes do Concílio, principalmente em São Silvestre e Martino ai Monti. A esse respeito, estamos em contato constante com a Conferência Episcopal Turca". 	2024-06-13	2024-06-13 10:55:46.27	2024-06-13 10:55:46.27	1	1	jubileu-e-cultura-musica-filmes-exposicoes-rumo-ao-ano-santo-2025	72177720314810578
35	Diálogo cristão-taoísta, juntos para curar o mundo fragmentado	Diálogo para cultivar uma sociedade harmoniosa\nO encontro, centrado no tema "Cultivar uma sociedade harmoniosa através do diálogo inter-religioso", conta com a presença de fiéis e estudiosos cristãos e taoístas de vários países, incluindo Hong Kong, República Popular da China, França, Itália, Taiwan, Coreia do Sul, Malásia, Filipinas, Vietnã e Cingapura. As autoridades locais também participam da sessão inaugural. Procurando contribuir para a construção de uma sociedade harmoniosa – lê-se no comunicado do Dicastério para o Diálogo Inter-religioso – os participantes refletem sobre os seguintes temas: “Fundamentos das escrituras cristãs e taoístas para cultivar uma sociedade harmoniosa”, “Cultivar a harmonia através do culto e da liturgia”, “Tao, o caminho da virtude no diálogo e na prática”, “Santidade no Taoísmo e no Cristianismo” e “Transmissão de valores e crenças religiosas num mundo globalizado”.	2024-04-09	2024-06-13 11:16:01.705	2024-06-13 11:16:01.705	1	1	dialogo-cristao-taoista-juntos-para-curar-o-mundo-fragmentado	72177720314810578
36	"Deus caminha com o seu povo" é o tema do Dia Mundial do Migrante e do Refugiado 2024	"Deus caminha com o seu povo" é o tema do 110º Dia Mundial do Migrante e do Refugiado que será celebrado no domingo 29 de setembro deste ano.\n\nUm comunicado divulgado pelo Dicastério para o Serviço do Desenvolvimento Humano Integral, nesta quinta-feira (22/02), afirma que "a mensagem se concentrará na dimensão itinerante da Igreja, com um olhar especial para os irmãos e irmãs migrantes, ícone contemporâneo da Igreja a caminho".\n\n"Trata-se de um caminho a ser feito sinodalmente para alcançarmos juntos, superando todo obstáculo e ameaça, a verdadeira pátria. Durante o trajeto, onde quer que estejamos, é essencial reconhecer a presença de Deus que caminha com o seu povo, garantindo-lhe orientação e proteção em cada passo; mas é igualmente fundamental reconhecer a presença do Senhor, Emanuel, Deus conosco, em cada migrante que bate à porta do nosso coração e se oferece ao encontro".\n\n	2024-01-04	2024-06-13 11:17:31.312	2024-06-13 11:17:31.312	1	1	deus-caminha-com-o-seu-povo-e-o-tema-do-dia-mundial-do-migrante-e-do-refugiado-2024	72177720314810578
\.


--
-- TOC entry 3454 (class 0 OID 17260)
-- Dependencies: 215
-- Data for Name: events_category_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.events_category_links (id, event_id, category_id, event_order) FROM stdin;
28	27	22	1
29	28	23	1
30	29	24	1
31	30	25	1
32	31	26	1
33	32	27	1
34	33	28	1
35	34	29	1
36	35	33	1
37	36	34	1
\.


--
-- TOC entry 3457 (class 0 OID 17267)
-- Dependencies: 218
-- Data for Name: files; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.files (id, name, alternative_text, caption, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, folder_path, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
76	phil-thep-4qb582F1pkg-unsplash.jpg	\N	\N	1800	1200	{"large": {"ext": ".jpg", "url": "/uploads/large_phil_thep_4qb582_F1pkg_unsplash_b855449e6a.jpg", "hash": "large_phil_thep_4qb582_F1pkg_unsplash_b855449e6a", "mime": "image/jpeg", "name": "large_phil-thep-4qb582F1pkg-unsplash.jpg", "path": null, "size": 105.24, "width": 1000, "height": 667, "sizeInBytes": 105244}, "small": {"ext": ".jpg", "url": "/uploads/small_phil_thep_4qb582_F1pkg_unsplash_b855449e6a.jpg", "hash": "small_phil_thep_4qb582_F1pkg_unsplash_b855449e6a", "mime": "image/jpeg", "name": "small_phil-thep-4qb582F1pkg-unsplash.jpg", "path": null, "size": 31.1, "width": 500, "height": 333, "sizeInBytes": 31096}, "medium": {"ext": ".jpg", "url": "/uploads/medium_phil_thep_4qb582_F1pkg_unsplash_b855449e6a.jpg", "hash": "medium_phil_thep_4qb582_F1pkg_unsplash_b855449e6a", "mime": "image/jpeg", "name": "medium_phil-thep-4qb582F1pkg-unsplash.jpg", "path": null, "size": 63.7, "width": 750, "height": 500, "sizeInBytes": 63701}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_phil_thep_4qb582_F1pkg_unsplash_b855449e6a.jpg", "hash": "thumbnail_phil_thep_4qb582_F1pkg_unsplash_b855449e6a", "mime": "image/jpeg", "name": "thumbnail_phil-thep-4qb582F1pkg-unsplash.jpg", "path": null, "size": 8.59, "width": 234, "height": 156, "sizeInBytes": 8593}}	phil_thep_4qb582_F1pkg_unsplash_b855449e6a	.jpg	image/jpeg	245.04	/uploads/phil_thep_4qb582_F1pkg_unsplash_b855449e6a.jpg	\N	local	\N	/	2024-06-12 08:42:34.705	2024-06-12 08:42:34.705	1	1
85	jon-tyson - 0o9dgxEu5Q-unsplash.jpg	\N	\N	1800	1200	{"large": {"ext": ".jpg", "url": "/uploads/large_jon_tyson_0o9dgx_Eu5_Q_unsplash_c77d6e6c5d.jpg", "hash": "large_jon_tyson_0o9dgx_Eu5_Q_unsplash_c77d6e6c5d", "mime": "image/jpeg", "name": "large_jon-tyson - 0o9dgxEu5Q-unsplash.jpg", "path": null, "size": 74.05, "width": 1000, "height": 667, "sizeInBytes": 74054}, "small": {"ext": ".jpg", "url": "/uploads/small_jon_tyson_0o9dgx_Eu5_Q_unsplash_c77d6e6c5d.jpg", "hash": "small_jon_tyson_0o9dgx_Eu5_Q_unsplash_c77d6e6c5d", "mime": "image/jpeg", "name": "small_jon-tyson - 0o9dgxEu5Q-unsplash.jpg", "path": null, "size": 15.5, "width": 500, "height": 333, "sizeInBytes": 15496}, "medium": {"ext": ".jpg", "url": "/uploads/medium_jon_tyson_0o9dgx_Eu5_Q_unsplash_c77d6e6c5d.jpg", "hash": "medium_jon_tyson_0o9dgx_Eu5_Q_unsplash_c77d6e6c5d", "mime": "image/jpeg", "name": "medium_jon-tyson - 0o9dgxEu5Q-unsplash.jpg", "path": null, "size": 37.4, "width": 750, "height": 500, "sizeInBytes": 37399}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_jon_tyson_0o9dgx_Eu5_Q_unsplash_c77d6e6c5d.jpg", "hash": "thumbnail_jon_tyson_0o9dgx_Eu5_Q_unsplash_c77d6e6c5d", "mime": "image/jpeg", "name": "thumbnail_jon-tyson - 0o9dgxEu5Q-unsplash.jpg", "path": null, "size": 4.23, "width": 234, "height": 156, "sizeInBytes": 4230}}	jon_tyson_0o9dgx_Eu5_Q_unsplash_c77d6e6c5d	.jpg	image/jpeg	239.85	/uploads/jon_tyson_0o9dgx_Eu5_Q_unsplash_c77d6e6c5d.jpg	\N	local	\N	/	2024-06-13 11:00:58.562	2024-06-13 11:00:58.562	1	1
37	bruno-van-der-kraan-v2HgNzRDfII-unsplash.jpg	\N	\N	1799	1195	{"large": {"ext": ".jpg", "url": "/uploads/large_bruno_van_der_kraan_v2_Hg_Nz_R_Df_II_unsplash_169beb6b60.jpg", "hash": "large_bruno_van_der_kraan_v2_Hg_Nz_R_Df_II_unsplash_169beb6b60", "mime": "image/jpeg", "name": "large_bruno-van-der-kraan-v2HgNzRDfII-unsplash.jpg", "path": null, "size": 47.62, "width": 1000, "height": 664, "sizeInBytes": 47616}, "small": {"ext": ".jpg", "url": "/uploads/small_bruno_van_der_kraan_v2_Hg_Nz_R_Df_II_unsplash_169beb6b60.jpg", "hash": "small_bruno_van_der_kraan_v2_Hg_Nz_R_Df_II_unsplash_169beb6b60", "mime": "image/jpeg", "name": "small_bruno-van-der-kraan-v2HgNzRDfII-unsplash.jpg", "path": null, "size": 13.68, "width": 500, "height": 332, "sizeInBytes": 13675}, "medium": {"ext": ".jpg", "url": "/uploads/medium_bruno_van_der_kraan_v2_Hg_Nz_R_Df_II_unsplash_169beb6b60.jpg", "hash": "medium_bruno_van_der_kraan_v2_Hg_Nz_R_Df_II_unsplash_169beb6b60", "mime": "image/jpeg", "name": "medium_bruno-van-der-kraan-v2HgNzRDfII-unsplash.jpg", "path": null, "size": 28.45, "width": 750, "height": 498, "sizeInBytes": 28451}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_bruno_van_der_kraan_v2_Hg_Nz_R_Df_II_unsplash_169beb6b60.jpg", "hash": "thumbnail_bruno_van_der_kraan_v2_Hg_Nz_R_Df_II_unsplash_169beb6b60", "mime": "image/jpeg", "name": "thumbnail_bruno-van-der-kraan-v2HgNzRDfII-unsplash.jpg", "path": null, "size": 3.8, "width": 235, "height": 156, "sizeInBytes": 3797}}	bruno_van_der_kraan_v2_Hg_Nz_R_Df_II_unsplash_169beb6b60	.jpg	image/jpeg	108.65	/uploads/bruno_van_der_kraan_v2_Hg_Nz_R_Df_II_unsplash_169beb6b60.jpg	\N	local	\N	/	2024-06-11 12:26:08.438	2024-06-11 12:26:08.438	1	1
38	daniel-tseng-QCjC1KpA4nA-unsplash.jpg	\N	\N	1800	1200	{"large": {"ext": ".jpg", "url": "/uploads/large_daniel_tseng_Q_Cj_C1_Kp_A4n_A_unsplash_2e74c3f759.jpg", "hash": "large_daniel_tseng_Q_Cj_C1_Kp_A4n_A_unsplash_2e74c3f759", "mime": "image/jpeg", "name": "large_daniel-tseng-QCjC1KpA4nA-unsplash.jpg", "path": null, "size": 99.56, "width": 1000, "height": 667, "sizeInBytes": 99556}, "small": {"ext": ".jpg", "url": "/uploads/small_daniel_tseng_Q_Cj_C1_Kp_A4n_A_unsplash_2e74c3f759.jpg", "hash": "small_daniel_tseng_Q_Cj_C1_Kp_A4n_A_unsplash_2e74c3f759", "mime": "image/jpeg", "name": "small_daniel-tseng-QCjC1KpA4nA-unsplash.jpg", "path": null, "size": 27.37, "width": 500, "height": 333, "sizeInBytes": 27367}, "medium": {"ext": ".jpg", "url": "/uploads/medium_daniel_tseng_Q_Cj_C1_Kp_A4n_A_unsplash_2e74c3f759.jpg", "hash": "medium_daniel_tseng_Q_Cj_C1_Kp_A4n_A_unsplash_2e74c3f759", "mime": "image/jpeg", "name": "medium_daniel-tseng-QCjC1KpA4nA-unsplash.jpg", "path": null, "size": 57.8, "width": 750, "height": 500, "sizeInBytes": 57797}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_daniel_tseng_Q_Cj_C1_Kp_A4n_A_unsplash_2e74c3f759.jpg", "hash": "thumbnail_daniel_tseng_Q_Cj_C1_Kp_A4n_A_unsplash_2e74c3f759", "mime": "image/jpeg", "name": "thumbnail_daniel-tseng-QCjC1KpA4nA-unsplash.jpg", "path": null, "size": 7.73, "width": 234, "height": 156, "sizeInBytes": 7729}}	daniel_tseng_Q_Cj_C1_Kp_A4n_A_unsplash_2e74c3f759	.jpg	image/jpeg	245.62	/uploads/daniel_tseng_Q_Cj_C1_Kp_A4n_A_unsplash_2e74c3f759.jpg	\N	local	\N	/	2024-06-11 12:37:05.253	2024-06-11 12:37:05.253	1	1
39	nathan-mullet-pmiW630yDPE-unsplash.jpg	\N	\N	1800	1200	{"large": {"ext": ".jpg", "url": "/uploads/large_nathan_mullet_pmi_W630y_DPE_unsplash_207091a665.jpg", "hash": "large_nathan_mullet_pmi_W630y_DPE_unsplash_207091a665", "mime": "image/jpeg", "name": "large_nathan-mullet-pmiW630yDPE-unsplash.jpg", "path": null, "size": 86.78, "width": 1000, "height": 667, "sizeInBytes": 86781}, "small": {"ext": ".jpg", "url": "/uploads/small_nathan_mullet_pmi_W630y_DPE_unsplash_207091a665.jpg", "hash": "small_nathan_mullet_pmi_W630y_DPE_unsplash_207091a665", "mime": "image/jpeg", "name": "small_nathan-mullet-pmiW630yDPE-unsplash.jpg", "path": null, "size": 31.39, "width": 500, "height": 333, "sizeInBytes": 31394}, "medium": {"ext": ".jpg", "url": "/uploads/medium_nathan_mullet_pmi_W630y_DPE_unsplash_207091a665.jpg", "hash": "medium_nathan_mullet_pmi_W630y_DPE_unsplash_207091a665", "mime": "image/jpeg", "name": "medium_nathan-mullet-pmiW630yDPE-unsplash.jpg", "path": null, "size": 56.56, "width": 750, "height": 500, "sizeInBytes": 56562}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_nathan_mullet_pmi_W630y_DPE_unsplash_207091a665.jpg", "hash": "thumbnail_nathan_mullet_pmi_W630y_DPE_unsplash_207091a665", "mime": "image/jpeg", "name": "thumbnail_nathan-mullet-pmiW630yDPE-unsplash.jpg", "path": null, "size": 10.4, "width": 234, "height": 156, "sizeInBytes": 10397}}	nathan_mullet_pmi_W630y_DPE_unsplash_207091a665	.jpg	image/jpeg	184.91	/uploads/nathan_mullet_pmi_W630y_DPE_unsplash_207091a665.jpg	\N	local	\N	/	2024-06-11 12:43:10.413	2024-06-11 12:43:10.413	1	1
40	jack-sharp-OptEsFuZwoQ-unsplash.jpg	\N	\N	1800	1200	{"large": {"ext": ".jpg", "url": "/uploads/large_jack_sharp_Opt_Es_Fu_Zwo_Q_unsplash_9051db35b5.jpg", "hash": "large_jack_sharp_Opt_Es_Fu_Zwo_Q_unsplash_9051db35b5", "mime": "image/jpeg", "name": "large_jack-sharp-OptEsFuZwoQ-unsplash.jpg", "path": null, "size": 39.74, "width": 1000, "height": 667, "sizeInBytes": 39738}, "small": {"ext": ".jpg", "url": "/uploads/small_jack_sharp_Opt_Es_Fu_Zwo_Q_unsplash_9051db35b5.jpg", "hash": "small_jack_sharp_Opt_Es_Fu_Zwo_Q_unsplash_9051db35b5", "mime": "image/jpeg", "name": "small_jack-sharp-OptEsFuZwoQ-unsplash.jpg", "path": null, "size": 13.62, "width": 500, "height": 333, "sizeInBytes": 13622}, "medium": {"ext": ".jpg", "url": "/uploads/medium_jack_sharp_Opt_Es_Fu_Zwo_Q_unsplash_9051db35b5.jpg", "hash": "medium_jack_sharp_Opt_Es_Fu_Zwo_Q_unsplash_9051db35b5", "mime": "image/jpeg", "name": "medium_jack-sharp-OptEsFuZwoQ-unsplash.jpg", "path": null, "size": 25.32, "width": 750, "height": 500, "sizeInBytes": 25319}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_jack_sharp_Opt_Es_Fu_Zwo_Q_unsplash_9051db35b5.jpg", "hash": "thumbnail_jack_sharp_Opt_Es_Fu_Zwo_Q_unsplash_9051db35b5", "mime": "image/jpeg", "name": "thumbnail_jack-sharp-OptEsFuZwoQ-unsplash.jpg", "path": null, "size": 4.57, "width": 234, "height": 156, "sizeInBytes": 4568}}	jack_sharp_Opt_Es_Fu_Zwo_Q_unsplash_9051db35b5	.jpg	image/jpeg	80.22	/uploads/jack_sharp_Opt_Es_Fu_Zwo_Q_unsplash_9051db35b5.jpg	\N	local	\N	/	2024-06-11 12:45:38.854	2024-06-11 12:45:38.854	1	1
41	hoch3media-hKKJnp-nWdQ-unsplash.jpg	\N	\N	1800	1200	{"large": {"ext": ".jpg", "url": "/uploads/large_hoch3media_h_KK_Jnp_n_Wd_Q_unsplash_6d66a533af.jpg", "hash": "large_hoch3media_h_KK_Jnp_n_Wd_Q_unsplash_6d66a533af", "mime": "image/jpeg", "name": "large_hoch3media-hKKJnp-nWdQ-unsplash.jpg", "path": null, "size": 80.33, "width": 1000, "height": 667, "sizeInBytes": 80327}, "small": {"ext": ".jpg", "url": "/uploads/small_hoch3media_h_KK_Jnp_n_Wd_Q_unsplash_6d66a533af.jpg", "hash": "small_hoch3media_h_KK_Jnp_n_Wd_Q_unsplash_6d66a533af", "mime": "image/jpeg", "name": "small_hoch3media-hKKJnp-nWdQ-unsplash.jpg", "path": null, "size": 23.71, "width": 500, "height": 333, "sizeInBytes": 23711}, "medium": {"ext": ".jpg", "url": "/uploads/medium_hoch3media_h_KK_Jnp_n_Wd_Q_unsplash_6d66a533af.jpg", "hash": "medium_hoch3media_h_KK_Jnp_n_Wd_Q_unsplash_6d66a533af", "mime": "image/jpeg", "name": "medium_hoch3media-hKKJnp-nWdQ-unsplash.jpg", "path": null, "size": 47.36, "width": 750, "height": 500, "sizeInBytes": 47364}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_hoch3media_h_KK_Jnp_n_Wd_Q_unsplash_6d66a533af.jpg", "hash": "thumbnail_hoch3media_h_KK_Jnp_n_Wd_Q_unsplash_6d66a533af", "mime": "image/jpeg", "name": "thumbnail_hoch3media-hKKJnp-nWdQ-unsplash.jpg", "path": null, "size": 7.03, "width": 234, "height": 156, "sizeInBytes": 7029}}	hoch3media_h_KK_Jnp_n_Wd_Q_unsplash_6d66a533af	.jpg	image/jpeg	198.00	/uploads/hoch3media_h_KK_Jnp_n_Wd_Q_unsplash_6d66a533af.jpg	\N	local	\N	/	2024-06-11 12:48:25.301	2024-06-11 12:48:25.301	1	1
42	thomas-vitali-OwHTRWWtpkU-unsplash.jpg	\N	\N	1800	1200	{"large": {"ext": ".jpg", "url": "/uploads/large_thomas_vitali_Ow_HTRW_Wtpk_U_unsplash_22a1ffb8ee.jpg", "hash": "large_thomas_vitali_Ow_HTRW_Wtpk_U_unsplash_22a1ffb8ee", "mime": "image/jpeg", "name": "large_thomas-vitali-OwHTRWWtpkU-unsplash.jpg", "path": null, "size": 83.52, "width": 1000, "height": 667, "sizeInBytes": 83519}, "small": {"ext": ".jpg", "url": "/uploads/small_thomas_vitali_Ow_HTRW_Wtpk_U_unsplash_22a1ffb8ee.jpg", "hash": "small_thomas_vitali_Ow_HTRW_Wtpk_U_unsplash_22a1ffb8ee", "mime": "image/jpeg", "name": "small_thomas-vitali-OwHTRWWtpkU-unsplash.jpg", "path": null, "size": 27.69, "width": 500, "height": 333, "sizeInBytes": 27688}, "medium": {"ext": ".jpg", "url": "/uploads/medium_thomas_vitali_Ow_HTRW_Wtpk_U_unsplash_22a1ffb8ee.jpg", "hash": "medium_thomas_vitali_Ow_HTRW_Wtpk_U_unsplash_22a1ffb8ee", "mime": "image/jpeg", "name": "medium_thomas-vitali-OwHTRWWtpkU-unsplash.jpg", "path": null, "size": 52.71, "width": 750, "height": 500, "sizeInBytes": 52712}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_thomas_vitali_Ow_HTRW_Wtpk_U_unsplash_22a1ffb8ee.jpg", "hash": "thumbnail_thomas_vitali_Ow_HTRW_Wtpk_U_unsplash_22a1ffb8ee", "mime": "image/jpeg", "name": "thumbnail_thomas-vitali-OwHTRWWtpkU-unsplash.jpg", "path": null, "size": 8.52, "width": 234, "height": 156, "sizeInBytes": 8520}}	thomas_vitali_Ow_HTRW_Wtpk_U_unsplash_22a1ffb8ee	.jpg	image/jpeg	179.63	/uploads/thomas_vitali_Ow_HTRW_Wtpk_U_unsplash_22a1ffb8ee.jpg	\N	local	\N	/	2024-06-11 12:51:28.905	2024-06-11 12:51:28.905	1	1
43	alicia-quan-kBybHJ3CEWI-unsplash.jpg	\N	\N	1800	1350	{"large": {"ext": ".jpg", "url": "/uploads/large_alicia_quan_k_Byb_HJ_3_CEWI_unsplash_714e077282.jpg", "hash": "large_alicia_quan_k_Byb_HJ_3_CEWI_unsplash_714e077282", "mime": "image/jpeg", "name": "large_alicia-quan-kBybHJ3CEWI-unsplash.jpg", "path": null, "size": 30.82, "width": 1000, "height": 750, "sizeInBytes": 30818}, "small": {"ext": ".jpg", "url": "/uploads/small_alicia_quan_k_Byb_HJ_3_CEWI_unsplash_714e077282.jpg", "hash": "small_alicia_quan_k_Byb_HJ_3_CEWI_unsplash_714e077282", "mime": "image/jpeg", "name": "small_alicia-quan-kBybHJ3CEWI-unsplash.jpg", "path": null, "size": 10.6, "width": 500, "height": 375, "sizeInBytes": 10602}, "medium": {"ext": ".jpg", "url": "/uploads/medium_alicia_quan_k_Byb_HJ_3_CEWI_unsplash_714e077282.jpg", "hash": "medium_alicia_quan_k_Byb_HJ_3_CEWI_unsplash_714e077282", "mime": "image/jpeg", "name": "medium_alicia-quan-kBybHJ3CEWI-unsplash.jpg", "path": null, "size": 19.65, "width": 750, "height": 563, "sizeInBytes": 19648}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_alicia_quan_k_Byb_HJ_3_CEWI_unsplash_714e077282.jpg", "hash": "thumbnail_alicia_quan_k_Byb_HJ_3_CEWI_unsplash_714e077282", "mime": "image/jpeg", "name": "thumbnail_alicia-quan-kBybHJ3CEWI-unsplash.jpg", "path": null, "size": 3.28, "width": 208, "height": 156, "sizeInBytes": 3275}}	alicia_quan_k_Byb_HJ_3_CEWI_unsplash_714e077282	.jpg	image/jpeg	63.66	/uploads/alicia_quan_k_Byb_HJ_3_CEWI_unsplash_714e077282.jpg	\N	local	\N	/	2024-06-11 12:55:34.3	2024-06-11 12:55:34.3	1	1
77	kelly-sikkema-YnRNdB-XTME-unsplash.jpg	\N	\N	1800	1200	{"large": {"ext": ".jpg", "url": "/uploads/large_kelly_sikkema_Yn_R_Nd_B_XTME_unsplash_bfaa9a946e.jpg", "hash": "large_kelly_sikkema_Yn_R_Nd_B_XTME_unsplash_bfaa9a946e", "mime": "image/jpeg", "name": "large_kelly-sikkema-YnRNdB-XTME-unsplash.jpg", "path": null, "size": 71.63, "width": 1000, "height": 667, "sizeInBytes": 71632}, "small": {"ext": ".jpg", "url": "/uploads/small_kelly_sikkema_Yn_R_Nd_B_XTME_unsplash_bfaa9a946e.jpg", "hash": "small_kelly_sikkema_Yn_R_Nd_B_XTME_unsplash_bfaa9a946e", "mime": "image/jpeg", "name": "small_kelly-sikkema-YnRNdB-XTME-unsplash.jpg", "path": null, "size": 22.72, "width": 500, "height": 333, "sizeInBytes": 22715}, "medium": {"ext": ".jpg", "url": "/uploads/medium_kelly_sikkema_Yn_R_Nd_B_XTME_unsplash_bfaa9a946e.jpg", "hash": "medium_kelly_sikkema_Yn_R_Nd_B_XTME_unsplash_bfaa9a946e", "mime": "image/jpeg", "name": "medium_kelly-sikkema-YnRNdB-XTME-unsplash.jpg", "path": null, "size": 44.52, "width": 750, "height": 500, "sizeInBytes": 44516}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_kelly_sikkema_Yn_R_Nd_B_XTME_unsplash_bfaa9a946e.jpg", "hash": "thumbnail_kelly_sikkema_Yn_R_Nd_B_XTME_unsplash_bfaa9a946e", "mime": "image/jpeg", "name": "thumbnail_kelly-sikkema-YnRNdB-XTME-unsplash.jpg", "path": null, "size": 6.41, "width": 234, "height": 156, "sizeInBytes": 6412}}	kelly_sikkema_Yn_R_Nd_B_XTME_unsplash_bfaa9a946e	.jpg	image/jpeg	162.70	/uploads/kelly_sikkema_Yn_R_Nd_B_XTME_unsplash_bfaa9a946e.jpg	\N	local	\N	/	2024-06-12 08:48:28.126	2024-06-12 08:48:28.126	1	1
78	christoph-schmid-yAUPOCqbHXE-unsplash.jpg	\N	\N	1800	1200	{"large": {"ext": ".jpg", "url": "/uploads/large_christoph_schmid_y_AUPO_Cqb_HXE_unsplash_01a06c3bc6.jpg", "hash": "large_christoph_schmid_y_AUPO_Cqb_HXE_unsplash_01a06c3bc6", "mime": "image/jpeg", "name": "large_christoph-schmid-yAUPOCqbHXE-unsplash.jpg", "path": null, "size": 66.81, "width": 1000, "height": 667, "sizeInBytes": 66811}, "small": {"ext": ".jpg", "url": "/uploads/small_christoph_schmid_y_AUPO_Cqb_HXE_unsplash_01a06c3bc6.jpg", "hash": "small_christoph_schmid_y_AUPO_Cqb_HXE_unsplash_01a06c3bc6", "mime": "image/jpeg", "name": "small_christoph-schmid-yAUPOCqbHXE-unsplash.jpg", "path": null, "size": 21.1, "width": 500, "height": 333, "sizeInBytes": 21100}, "medium": {"ext": ".jpg", "url": "/uploads/medium_christoph_schmid_y_AUPO_Cqb_HXE_unsplash_01a06c3bc6.jpg", "hash": "medium_christoph_schmid_y_AUPO_Cqb_HXE_unsplash_01a06c3bc6", "mime": "image/jpeg", "name": "medium_christoph-schmid-yAUPOCqbHXE-unsplash.jpg", "path": null, "size": 40.94, "width": 750, "height": 500, "sizeInBytes": 40941}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_christoph_schmid_y_AUPO_Cqb_HXE_unsplash_01a06c3bc6.jpg", "hash": "thumbnail_christoph_schmid_y_AUPO_Cqb_HXE_unsplash_01a06c3bc6", "mime": "image/jpeg", "name": "thumbnail_christoph-schmid-yAUPOCqbHXE-unsplash.jpg", "path": null, "size": 6.38, "width": 234, "height": 156, "sizeInBytes": 6378}}	christoph_schmid_y_AUPO_Cqb_HXE_unsplash_01a06c3bc6	.jpg	image/jpeg	162.87	/uploads/christoph_schmid_y_AUPO_Cqb_HXE_unsplash_01a06c3bc6.jpg	\N	local	\N	/	2024-06-12 08:50:39.014	2024-06-12 08:50:39.014	1	1
79	oskar-kadaksoo-Di8SlZo16EI-unsplash.jpg	\N	\N	1800	1201	{"large": {"ext": ".jpg", "url": "/uploads/large_oskar_kadaksoo_Di8_Sl_Zo16_EI_unsplash_bd7a51bc46.jpg", "hash": "large_oskar_kadaksoo_Di8_Sl_Zo16_EI_unsplash_bd7a51bc46", "mime": "image/jpeg", "name": "large_oskar-kadaksoo-Di8SlZo16EI-unsplash.jpg", "path": null, "size": 48.58, "width": 1000, "height": 667, "sizeInBytes": 48581}, "small": {"ext": ".jpg", "url": "/uploads/small_oskar_kadaksoo_Di8_Sl_Zo16_EI_unsplash_bd7a51bc46.jpg", "hash": "small_oskar_kadaksoo_Di8_Sl_Zo16_EI_unsplash_bd7a51bc46", "mime": "image/jpeg", "name": "small_oskar-kadaksoo-Di8SlZo16EI-unsplash.jpg", "path": null, "size": 16.79, "width": 500, "height": 333, "sizeInBytes": 16785}, "medium": {"ext": ".jpg", "url": "/uploads/medium_oskar_kadaksoo_Di8_Sl_Zo16_EI_unsplash_bd7a51bc46.jpg", "hash": "medium_oskar_kadaksoo_Di8_Sl_Zo16_EI_unsplash_bd7a51bc46", "mime": "image/jpeg", "name": "medium_oskar-kadaksoo-Di8SlZo16EI-unsplash.jpg", "path": null, "size": 31.58, "width": 750, "height": 500, "sizeInBytes": 31581}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_oskar_kadaksoo_Di8_Sl_Zo16_EI_unsplash_bd7a51bc46.jpg", "hash": "thumbnail_oskar_kadaksoo_Di8_Sl_Zo16_EI_unsplash_bd7a51bc46", "mime": "image/jpeg", "name": "thumbnail_oskar-kadaksoo-Di8SlZo16EI-unsplash.jpg", "path": null, "size": 5.31, "width": 234, "height": 156, "sizeInBytes": 5311}}	oskar_kadaksoo_Di8_Sl_Zo16_EI_unsplash_bd7a51bc46	.jpg	image/jpeg	94.65	/uploads/oskar_kadaksoo_Di8_Sl_Zo16_EI_unsplash_bd7a51bc46.jpg	\N	local	\N	/	2024-06-12 08:52:40.438	2024-06-12 08:52:40.438	1	1
80	josh-eckstein-S84mDHGATw0-unsplash.jpg	\N	\N	1800	1200	{"large": {"ext": ".jpg", "url": "/uploads/large_josh_eckstein_S84m_DHGA_Tw0_unsplash_bdfd57f9bd.jpg", "hash": "large_josh_eckstein_S84m_DHGA_Tw0_unsplash_bdfd57f9bd", "mime": "image/jpeg", "name": "large_josh-eckstein-S84mDHGATw0-unsplash.jpg", "path": null, "size": 136.8, "width": 1000, "height": 667, "sizeInBytes": 136800}, "small": {"ext": ".jpg", "url": "/uploads/small_josh_eckstein_S84m_DHGA_Tw0_unsplash_bdfd57f9bd.jpg", "hash": "small_josh_eckstein_S84m_DHGA_Tw0_unsplash_bdfd57f9bd", "mime": "image/jpeg", "name": "small_josh-eckstein-S84mDHGATw0-unsplash.jpg", "path": null, "size": 42.88, "width": 500, "height": 333, "sizeInBytes": 42880}, "medium": {"ext": ".jpg", "url": "/uploads/medium_josh_eckstein_S84m_DHGA_Tw0_unsplash_bdfd57f9bd.jpg", "hash": "medium_josh_eckstein_S84m_DHGA_Tw0_unsplash_bdfd57f9bd", "mime": "image/jpeg", "name": "medium_josh-eckstein-S84mDHGATw0-unsplash.jpg", "path": null, "size": 84.94, "width": 750, "height": 500, "sizeInBytes": 84942}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_josh_eckstein_S84m_DHGA_Tw0_unsplash_bdfd57f9bd.jpg", "hash": "thumbnail_josh_eckstein_S84m_DHGA_Tw0_unsplash_bdfd57f9bd", "mime": "image/jpeg", "name": "thumbnail_josh-eckstein-S84mDHGATw0-unsplash.jpg", "path": null, "size": 11.51, "width": 234, "height": 156, "sizeInBytes": 11511}}	josh_eckstein_S84m_DHGA_Tw0_unsplash_bdfd57f9bd	.jpg	image/jpeg	304.49	/uploads/josh_eckstein_S84m_DHGA_Tw0_unsplash_bdfd57f9bd.jpg	\N	local	\N	/	2024-06-12 08:53:50.965	2024-06-12 08:53:50.965	1	1
81	ilona-frey-hwuGYG9N5CY-unsplash.jpg	\N	\N	1800	1192	{"large": {"ext": ".jpg", "url": "/uploads/large_ilona_frey_hwu_GYG_9_N5_CY_unsplash_1331c78e3e.jpg", "hash": "large_ilona_frey_hwu_GYG_9_N5_CY_unsplash_1331c78e3e", "mime": "image/jpeg", "name": "large_ilona-frey-hwuGYG9N5CY-unsplash.jpg", "path": null, "size": 107.64, "width": 1000, "height": 662, "sizeInBytes": 107636}, "small": {"ext": ".jpg", "url": "/uploads/small_ilona_frey_hwu_GYG_9_N5_CY_unsplash_1331c78e3e.jpg", "hash": "small_ilona_frey_hwu_GYG_9_N5_CY_unsplash_1331c78e3e", "mime": "image/jpeg", "name": "small_ilona-frey-hwuGYG9N5CY-unsplash.jpg", "path": null, "size": 31.19, "width": 500, "height": 331, "sizeInBytes": 31192}, "medium": {"ext": ".jpg", "url": "/uploads/medium_ilona_frey_hwu_GYG_9_N5_CY_unsplash_1331c78e3e.jpg", "hash": "medium_ilona_frey_hwu_GYG_9_N5_CY_unsplash_1331c78e3e", "mime": "image/jpeg", "name": "medium_ilona-frey-hwuGYG9N5CY-unsplash.jpg", "path": null, "size": 64.23, "width": 750, "height": 497, "sizeInBytes": 64227}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_ilona_frey_hwu_GYG_9_N5_CY_unsplash_1331c78e3e.jpg", "hash": "thumbnail_ilona_frey_hwu_GYG_9_N5_CY_unsplash_1331c78e3e", "mime": "image/jpeg", "name": "thumbnail_ilona-frey-hwuGYG9N5CY-unsplash.jpg", "path": null, "size": 8.32, "width": 236, "height": 156, "sizeInBytes": 8320}}	ilona_frey_hwu_GYG_9_N5_CY_unsplash_1331c78e3e	.jpg	image/jpeg	266.45	/uploads/ilona_frey_hwu_GYG_9_N5_CY_unsplash_1331c78e3e.jpg	\N	local	\N	/	2024-06-12 08:55:47.85	2024-06-12 08:55:47.85	1	1
82	antoine-similon-4cJouuKX3kw-unsplash.jpg	\N	\N	1800	1014	{"large": {"ext": ".jpg", "url": "/uploads/large_antoine_similon_4c_Jouu_KX_3kw_unsplash_4a85ce77bf.jpg", "hash": "large_antoine_similon_4c_Jouu_KX_3kw_unsplash_4a85ce77bf", "mime": "image/jpeg", "name": "large_antoine-similon-4cJouuKX3kw-unsplash.jpg", "path": null, "size": 78.95, "width": 1000, "height": 563, "sizeInBytes": 78946}, "small": {"ext": ".jpg", "url": "/uploads/small_antoine_similon_4c_Jouu_KX_3kw_unsplash_4a85ce77bf.jpg", "hash": "small_antoine_similon_4c_Jouu_KX_3kw_unsplash_4a85ce77bf", "mime": "image/jpeg", "name": "small_antoine-similon-4cJouuKX3kw-unsplash.jpg", "path": null, "size": 22.58, "width": 500, "height": 282, "sizeInBytes": 22575}, "medium": {"ext": ".jpg", "url": "/uploads/medium_antoine_similon_4c_Jouu_KX_3kw_unsplash_4a85ce77bf.jpg", "hash": "medium_antoine_similon_4c_Jouu_KX_3kw_unsplash_4a85ce77bf", "mime": "image/jpeg", "name": "medium_antoine-similon-4cJouuKX3kw-unsplash.jpg", "path": null, "size": 47.02, "width": 750, "height": 423, "sizeInBytes": 47023}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_antoine_similon_4c_Jouu_KX_3kw_unsplash_4a85ce77bf.jpg", "hash": "thumbnail_antoine_similon_4c_Jouu_KX_3kw_unsplash_4a85ce77bf", "mime": "image/jpeg", "name": "thumbnail_antoine-similon-4cJouuKX3kw-unsplash.jpg", "path": null, "size": 6.43, "width": 245, "height": 138, "sizeInBytes": 6433}}	antoine_similon_4c_Jouu_KX_3kw_unsplash_4a85ce77bf	.jpg	image/jpeg	188.72	/uploads/antoine_similon_4c_Jouu_KX_3kw_unsplash_4a85ce77bf.jpg	\N	local	\N	/	2024-06-12 08:57:20.233	2024-06-12 08:57:20.233	1	1
83	guilherme-stecanella-smCn7Cbhk_c-unsplash.jpg	\N	\N	1800	1200	{"large": {"ext": ".jpg", "url": "/uploads/large_guilherme_stecanella_sm_Cn7_Cbhk_c_unsplash_8d9cc8dd3b.jpg", "hash": "large_guilherme_stecanella_sm_Cn7_Cbhk_c_unsplash_8d9cc8dd3b", "mime": "image/jpeg", "name": "large_guilherme-stecanella-smCn7Cbhk_c-unsplash.jpg", "path": null, "size": 89.64, "width": 1000, "height": 667, "sizeInBytes": 89643}, "small": {"ext": ".jpg", "url": "/uploads/small_guilherme_stecanella_sm_Cn7_Cbhk_c_unsplash_8d9cc8dd3b.jpg", "hash": "small_guilherme_stecanella_sm_Cn7_Cbhk_c_unsplash_8d9cc8dd3b", "mime": "image/jpeg", "name": "small_guilherme-stecanella-smCn7Cbhk_c-unsplash.jpg", "path": null, "size": 27.37, "width": 500, "height": 333, "sizeInBytes": 27367}, "medium": {"ext": ".jpg", "url": "/uploads/medium_guilherme_stecanella_sm_Cn7_Cbhk_c_unsplash_8d9cc8dd3b.jpg", "hash": "medium_guilherme_stecanella_sm_Cn7_Cbhk_c_unsplash_8d9cc8dd3b", "mime": "image/jpeg", "name": "medium_guilherme-stecanella-smCn7Cbhk_c-unsplash.jpg", "path": null, "size": 54.83, "width": 750, "height": 500, "sizeInBytes": 54830}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_guilherme_stecanella_sm_Cn7_Cbhk_c_unsplash_8d9cc8dd3b.jpg", "hash": "thumbnail_guilherme_stecanella_sm_Cn7_Cbhk_c_unsplash_8d9cc8dd3b", "mime": "image/jpeg", "name": "thumbnail_guilherme-stecanella-smCn7Cbhk_c-unsplash.jpg", "path": null, "size": 7.76, "width": 234, "height": 156, "sizeInBytes": 7758}}	guilherme_stecanella_sm_Cn7_Cbhk_c_unsplash_8d9cc8dd3b	.jpg	image/jpeg	202.94	/uploads/guilherme_stecanella_sm_Cn7_Cbhk_c_unsplash_8d9cc8dd3b.jpg	\N	local	\N	/	2024-06-13 10:55:22.466	2024-06-13 10:55:22.466	1	1
84	diana-simumpande-ABrC7X4_gLY-unsplash.jpg	\N	\N	1800	1350	{"large": {"ext": ".jpg", "url": "/uploads/large_diana_simumpande_A_Br_C7_X4_g_LY_unsplash_bc79b5808f.jpg", "hash": "large_diana_simumpande_A_Br_C7_X4_g_LY_unsplash_bc79b5808f", "mime": "image/jpeg", "name": "large_diana-simumpande-ABrC7X4_gLY-unsplash.jpg", "path": null, "size": 46.39, "width": 1000, "height": 750, "sizeInBytes": 46387}, "small": {"ext": ".jpg", "url": "/uploads/small_diana_simumpande_A_Br_C7_X4_g_LY_unsplash_bc79b5808f.jpg", "hash": "small_diana_simumpande_A_Br_C7_X4_g_LY_unsplash_bc79b5808f", "mime": "image/jpeg", "name": "small_diana-simumpande-ABrC7X4_gLY-unsplash.jpg", "path": null, "size": 16.15, "width": 500, "height": 375, "sizeInBytes": 16152}, "medium": {"ext": ".jpg", "url": "/uploads/medium_diana_simumpande_A_Br_C7_X4_g_LY_unsplash_bc79b5808f.jpg", "hash": "medium_diana_simumpande_A_Br_C7_X4_g_LY_unsplash_bc79b5808f", "mime": "image/jpeg", "name": "medium_diana-simumpande-ABrC7X4_gLY-unsplash.jpg", "path": null, "size": 30.16, "width": 750, "height": 563, "sizeInBytes": 30158}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_diana_simumpande_A_Br_C7_X4_g_LY_unsplash_bc79b5808f.jpg", "hash": "thumbnail_diana_simumpande_A_Br_C7_X4_g_LY_unsplash_bc79b5808f", "mime": "image/jpeg", "name": "thumbnail_diana-simumpande-ABrC7X4_gLY-unsplash.jpg", "path": null, "size": 4.38, "width": 208, "height": 156, "sizeInBytes": 4384}}	diana_simumpande_A_Br_C7_X4_g_LY_unsplash_bc79b5808f	.jpg	image/jpeg	92.34	/uploads/diana_simumpande_A_Br_C7_X4_g_LY_unsplash_bc79b5808f.jpg	\N	local	\N	/	2024-06-13 10:58:46.71	2024-06-13 10:58:46.71	1	1
86	samuel-lopes-pzFMIS28csM-unsplash.jpg	\N	\N	1800	1200	{"large": {"ext": ".jpg", "url": "/uploads/large_samuel_lopes_pz_FMIS_28cs_M_unsplash_317b9b6dea.jpg", "hash": "large_samuel_lopes_pz_FMIS_28cs_M_unsplash_317b9b6dea", "mime": "image/jpeg", "name": "large_samuel-lopes-pzFMIS28csM-unsplash.jpg", "path": null, "size": 123.78, "width": 1000, "height": 667, "sizeInBytes": 123776}, "small": {"ext": ".jpg", "url": "/uploads/small_samuel_lopes_pz_FMIS_28cs_M_unsplash_317b9b6dea.jpg", "hash": "small_samuel_lopes_pz_FMIS_28cs_M_unsplash_317b9b6dea", "mime": "image/jpeg", "name": "small_samuel-lopes-pzFMIS28csM-unsplash.jpg", "path": null, "size": 39.86, "width": 500, "height": 333, "sizeInBytes": 39859}, "medium": {"ext": ".jpg", "url": "/uploads/medium_samuel_lopes_pz_FMIS_28cs_M_unsplash_317b9b6dea.jpg", "hash": "medium_samuel_lopes_pz_FMIS_28cs_M_unsplash_317b9b6dea", "mime": "image/jpeg", "name": "medium_samuel-lopes-pzFMIS28csM-unsplash.jpg", "path": null, "size": 78.25, "width": 750, "height": 500, "sizeInBytes": 78245}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_samuel_lopes_pz_FMIS_28cs_M_unsplash_317b9b6dea.jpg", "hash": "thumbnail_samuel_lopes_pz_FMIS_28cs_M_unsplash_317b9b6dea", "mime": "image/jpeg", "name": "thumbnail_samuel-lopes-pzFMIS28csM-unsplash.jpg", "path": null, "size": 10.06, "width": 234, "height": 156, "sizeInBytes": 10059}}	samuel_lopes_pz_FMIS_28cs_M_unsplash_317b9b6dea	.jpg	image/jpeg	264.50	/uploads/samuel_lopes_pz_FMIS_28cs_M_unsplash_317b9b6dea.jpg	\N	local	\N	/	2024-06-13 11:03:34.273	2024-06-13 11:03:34.273	1	1
87	ben-white-ReEqHw2GyeI-unsplash.jpg	\N	\N	1800	1202	{"large": {"ext": ".jpg", "url": "/uploads/large_ben_white_Re_Eq_Hw2_Gye_I_unsplash_acfc3ed505.jpg", "hash": "large_ben_white_Re_Eq_Hw2_Gye_I_unsplash_acfc3ed505", "mime": "image/jpeg", "name": "large_ben-white-ReEqHw2GyeI-unsplash.jpg", "path": null, "size": 77.57, "width": 1000, "height": 668, "sizeInBytes": 77565}, "small": {"ext": ".jpg", "url": "/uploads/small_ben_white_Re_Eq_Hw2_Gye_I_unsplash_acfc3ed505.jpg", "hash": "small_ben_white_Re_Eq_Hw2_Gye_I_unsplash_acfc3ed505", "mime": "image/jpeg", "name": "small_ben-white-ReEqHw2GyeI-unsplash.jpg", "path": null, "size": 26.66, "width": 500, "height": 334, "sizeInBytes": 26659}, "medium": {"ext": ".jpg", "url": "/uploads/medium_ben_white_Re_Eq_Hw2_Gye_I_unsplash_acfc3ed505.jpg", "hash": "medium_ben_white_Re_Eq_Hw2_Gye_I_unsplash_acfc3ed505", "mime": "image/jpeg", "name": "medium_ben-white-ReEqHw2GyeI-unsplash.jpg", "path": null, "size": 49.52, "width": 750, "height": 501, "sizeInBytes": 49520}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_ben_white_Re_Eq_Hw2_Gye_I_unsplash_acfc3ed505.jpg", "hash": "thumbnail_ben_white_Re_Eq_Hw2_Gye_I_unsplash_acfc3ed505", "mime": "image/jpeg", "name": "thumbnail_ben-white-ReEqHw2GyeI-unsplash.jpg", "path": null, "size": 8.57, "width": 234, "height": 156, "sizeInBytes": 8570}}	ben_white_Re_Eq_Hw2_Gye_I_unsplash_acfc3ed505	.jpg	image/jpeg	168.63	/uploads/ben_white_Re_Eq_Hw2_Gye_I_unsplash_acfc3ed505.jpg	\N	local	\N	/	2024-06-13 11:15:37.788	2024-06-13 11:15:37.788	1	1
88	myriam-zilles-01Dz2QxZGOI-unsplash.jpg	\N	\N	1800	1200	{"large": {"ext": ".jpg", "url": "/uploads/large_myriam_zilles_01_Dz2_Qx_ZGOI_unsplash_e1b78927b9.jpg", "hash": "large_myriam_zilles_01_Dz2_Qx_ZGOI_unsplash_e1b78927b9", "mime": "image/jpeg", "name": "large_myriam-zilles-01Dz2QxZGOI-unsplash.jpg", "path": null, "size": 72.51, "width": 1000, "height": 667, "sizeInBytes": 72509}, "small": {"ext": ".jpg", "url": "/uploads/small_myriam_zilles_01_Dz2_Qx_ZGOI_unsplash_e1b78927b9.jpg", "hash": "small_myriam_zilles_01_Dz2_Qx_ZGOI_unsplash_e1b78927b9", "mime": "image/jpeg", "name": "small_myriam-zilles-01Dz2QxZGOI-unsplash.jpg", "path": null, "size": 21.51, "width": 500, "height": 333, "sizeInBytes": 21506}, "medium": {"ext": ".jpg", "url": "/uploads/medium_myriam_zilles_01_Dz2_Qx_ZGOI_unsplash_e1b78927b9.jpg", "hash": "medium_myriam_zilles_01_Dz2_Qx_ZGOI_unsplash_e1b78927b9", "mime": "image/jpeg", "name": "medium_myriam-zilles-01Dz2QxZGOI-unsplash.jpg", "path": null, "size": 43.13, "width": 750, "height": 500, "sizeInBytes": 43125}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_myriam_zilles_01_Dz2_Qx_ZGOI_unsplash_e1b78927b9.jpg", "hash": "thumbnail_myriam_zilles_01_Dz2_Qx_ZGOI_unsplash_e1b78927b9", "mime": "image/jpeg", "name": "thumbnail_myriam-zilles-01Dz2QxZGOI-unsplash.jpg", "path": null, "size": 6.4, "width": 234, "height": 156, "sizeInBytes": 6400}}	myriam_zilles_01_Dz2_Qx_ZGOI_unsplash_e1b78927b9	.jpg	image/jpeg	184.80	/uploads/myriam_zilles_01_Dz2_Qx_ZGOI_unsplash_e1b78927b9.jpg	\N	local	\N	/	2024-06-13 11:16:57.602	2024-06-13 11:16:57.602	1	1
89	lina-trochez-ktPKyUs3Qjs-unsplash.jpg	\N	\N	1800	1202	{"large": {"ext": ".jpg", "url": "/uploads/large_lina_trochez_kt_P_Ky_Us3_Qjs_unsplash_45f7a678ae.jpg", "hash": "large_lina_trochez_kt_P_Ky_Us3_Qjs_unsplash_45f7a678ae", "mime": "image/jpeg", "name": "large_lina-trochez-ktPKyUs3Qjs-unsplash.jpg", "path": null, "size": 36.39, "width": 1000, "height": 668, "sizeInBytes": 36392}, "small": {"ext": ".jpg", "url": "/uploads/small_lina_trochez_kt_P_Ky_Us3_Qjs_unsplash_45f7a678ae.jpg", "hash": "small_lina_trochez_kt_P_Ky_Us3_Qjs_unsplash_45f7a678ae", "mime": "image/jpeg", "name": "small_lina-trochez-ktPKyUs3Qjs-unsplash.jpg", "path": null, "size": 13.59, "width": 500, "height": 334, "sizeInBytes": 13590}, "medium": {"ext": ".jpg", "url": "/uploads/medium_lina_trochez_kt_P_Ky_Us3_Qjs_unsplash_45f7a678ae.jpg", "hash": "medium_lina_trochez_kt_P_Ky_Us3_Qjs_unsplash_45f7a678ae", "mime": "image/jpeg", "name": "medium_lina-trochez-ktPKyUs3Qjs-unsplash.jpg", "path": null, "size": 23.99, "width": 750, "height": 501, "sizeInBytes": 23987}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_lina_trochez_kt_P_Ky_Us3_Qjs_unsplash_45f7a678ae.jpg", "hash": "thumbnail_lina_trochez_kt_P_Ky_Us3_Qjs_unsplash_45f7a678ae", "mime": "image/jpeg", "name": "thumbnail_lina-trochez-ktPKyUs3Qjs-unsplash.jpg", "path": null, "size": 4.95, "width": 234, "height": 156, "sizeInBytes": 4952}}	lina_trochez_kt_P_Ky_Us3_Qjs_unsplash_45f7a678ae	.jpg	image/jpeg	71.10	/uploads/lina_trochez_kt_P_Ky_Us3_Qjs_unsplash_45f7a678ae.jpg	\N	local	\N	/	2024-06-13 12:10:53.717	2024-06-13 12:10:53.717	1	1
90	james-coleman-QHRZv6PIW4s-unsplash.jpg	\N	\N	1800	1200	{"large": {"ext": ".jpg", "url": "/uploads/large_james_coleman_QHR_Zv6_PIW_4s_unsplash_e450427d2d.jpg", "hash": "large_james_coleman_QHR_Zv6_PIW_4s_unsplash_e450427d2d", "mime": "image/jpeg", "name": "large_james-coleman-QHRZv6PIW4s-unsplash.jpg", "path": null, "size": 79.16, "width": 1000, "height": 667, "sizeInBytes": 79156}, "small": {"ext": ".jpg", "url": "/uploads/small_james_coleman_QHR_Zv6_PIW_4s_unsplash_e450427d2d.jpg", "hash": "small_james_coleman_QHR_Zv6_PIW_4s_unsplash_e450427d2d", "mime": "image/jpeg", "name": "small_james-coleman-QHRZv6PIW4s-unsplash.jpg", "path": null, "size": 26.48, "width": 500, "height": 333, "sizeInBytes": 26483}, "medium": {"ext": ".jpg", "url": "/uploads/medium_james_coleman_QHR_Zv6_PIW_4s_unsplash_e450427d2d.jpg", "hash": "medium_james_coleman_QHR_Zv6_PIW_4s_unsplash_e450427d2d", "mime": "image/jpeg", "name": "medium_james-coleman-QHRZv6PIW4s-unsplash.jpg", "path": null, "size": 49.8, "width": 750, "height": 500, "sizeInBytes": 49803}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_james_coleman_QHR_Zv6_PIW_4s_unsplash_e450427d2d.jpg", "hash": "thumbnail_james_coleman_QHR_Zv6_PIW_4s_unsplash_e450427d2d", "mime": "image/jpeg", "name": "thumbnail_james-coleman-QHRZv6PIW4s-unsplash.jpg", "path": null, "size": 8.58, "width": 234, "height": 156, "sizeInBytes": 8581}}	james_coleman_QHR_Zv6_PIW_4s_unsplash_e450427d2d	.jpg	image/jpeg	173.79	/uploads/james_coleman_QHR_Zv6_PIW_4s_unsplash_e450427d2d.jpg	\N	local	\N	/	2024-06-13 12:10:53.812	2024-06-13 12:10:53.812	1	1
91	guillaume-de-germain-rEVQCk1dqrA-unsplash.jpg	\N	\N	1800	1202	{"large": {"ext": ".jpg", "url": "/uploads/large_guillaume_de_germain_r_EVQ_Ck1dqr_A_unsplash_648f33b8b6.jpg", "hash": "large_guillaume_de_germain_r_EVQ_Ck1dqr_A_unsplash_648f33b8b6", "mime": "image/jpeg", "name": "large_guillaume-de-germain-rEVQCk1dqrA-unsplash.jpg", "path": null, "size": 70.06, "width": 1000, "height": 668, "sizeInBytes": 70061}, "small": {"ext": ".jpg", "url": "/uploads/small_guillaume_de_germain_r_EVQ_Ck1dqr_A_unsplash_648f33b8b6.jpg", "hash": "small_guillaume_de_germain_r_EVQ_Ck1dqr_A_unsplash_648f33b8b6", "mime": "image/jpeg", "name": "small_guillaume-de-germain-rEVQCk1dqrA-unsplash.jpg", "path": null, "size": 22.25, "width": 500, "height": 334, "sizeInBytes": 22245}, "medium": {"ext": ".jpg", "url": "/uploads/medium_guillaume_de_germain_r_EVQ_Ck1dqr_A_unsplash_648f33b8b6.jpg", "hash": "medium_guillaume_de_germain_r_EVQ_Ck1dqr_A_unsplash_648f33b8b6", "mime": "image/jpeg", "name": "medium_guillaume-de-germain-rEVQCk1dqrA-unsplash.jpg", "path": null, "size": 43.67, "width": 750, "height": 501, "sizeInBytes": 43666}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_guillaume_de_germain_r_EVQ_Ck1dqr_A_unsplash_648f33b8b6.jpg", "hash": "thumbnail_guillaume_de_germain_r_EVQ_Ck1dqr_A_unsplash_648f33b8b6", "mime": "image/jpeg", "name": "thumbnail_guillaume-de-germain-rEVQCk1dqrA-unsplash.jpg", "path": null, "size": 6.51, "width": 234, "height": 156, "sizeInBytes": 6507}}	guillaume_de_germain_r_EVQ_Ck1dqr_A_unsplash_648f33b8b6	.jpg	image/jpeg	151.82	/uploads/guillaume_de_germain_r_EVQ_Ck1dqr_A_unsplash_648f33b8b6.jpg	\N	local	\N	/	2024-06-13 12:10:53.827	2024-06-13 12:10:53.827	1	1
92	hannah-busing-Zyx1bK9mqmA-unsplash.jpg	\N	\N	1800	1200	{"large": {"ext": ".jpg", "url": "/uploads/large_hannah_busing_Zyx1b_K9mqm_A_unsplash_fc5a627d12.jpg", "hash": "large_hannah_busing_Zyx1b_K9mqm_A_unsplash_fc5a627d12", "mime": "image/jpeg", "name": "large_hannah-busing-Zyx1bK9mqmA-unsplash.jpg", "path": null, "size": 91.82, "width": 1000, "height": 667, "sizeInBytes": 91818}, "small": {"ext": ".jpg", "url": "/uploads/small_hannah_busing_Zyx1b_K9mqm_A_unsplash_fc5a627d12.jpg", "hash": "small_hannah_busing_Zyx1b_K9mqm_A_unsplash_fc5a627d12", "mime": "image/jpeg", "name": "small_hannah-busing-Zyx1bK9mqmA-unsplash.jpg", "path": null, "size": 29.71, "width": 500, "height": 333, "sizeInBytes": 29712}, "medium": {"ext": ".jpg", "url": "/uploads/medium_hannah_busing_Zyx1b_K9mqm_A_unsplash_fc5a627d12.jpg", "hash": "medium_hannah_busing_Zyx1b_K9mqm_A_unsplash_fc5a627d12", "mime": "image/jpeg", "name": "medium_hannah-busing-Zyx1bK9mqmA-unsplash.jpg", "path": null, "size": 57.25, "width": 750, "height": 500, "sizeInBytes": 57250}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_hannah_busing_Zyx1b_K9mqm_A_unsplash_fc5a627d12.jpg", "hash": "thumbnail_hannah_busing_Zyx1b_K9mqm_A_unsplash_fc5a627d12", "mime": "image/jpeg", "name": "thumbnail_hannah-busing-Zyx1bK9mqmA-unsplash.jpg", "path": null, "size": 8.89, "width": 234, "height": 156, "sizeInBytes": 8888}}	hannah_busing_Zyx1b_K9mqm_A_unsplash_fc5a627d12	.jpg	image/jpeg	205.88	/uploads/hannah_busing_Zyx1b_K9mqm_A_unsplash_fc5a627d12.jpg	\N	local	\N	/	2024-06-13 12:10:53.847	2024-06-13 12:10:53.847	1	1
93	ben-white-1urNubNAQbI-unsplash.jpg	\N	\N	1800	1202	{"large": {"ext": ".jpg", "url": "/uploads/large_ben_white_1ur_Nub_NA_Qb_I_unsplash_532f1eb48c.jpg", "hash": "large_ben_white_1ur_Nub_NA_Qb_I_unsplash_532f1eb48c", "mime": "image/jpeg", "name": "large_ben-white-1urNubNAQbI-unsplash.jpg", "path": null, "size": 69.99, "width": 1000, "height": 668, "sizeInBytes": 69986}, "small": {"ext": ".jpg", "url": "/uploads/small_ben_white_1ur_Nub_NA_Qb_I_unsplash_532f1eb48c.jpg", "hash": "small_ben_white_1ur_Nub_NA_Qb_I_unsplash_532f1eb48c", "mime": "image/jpeg", "name": "small_ben-white-1urNubNAQbI-unsplash.jpg", "path": null, "size": 23.07, "width": 500, "height": 334, "sizeInBytes": 23073}, "medium": {"ext": ".jpg", "url": "/uploads/medium_ben_white_1ur_Nub_NA_Qb_I_unsplash_532f1eb48c.jpg", "hash": "medium_ben_white_1ur_Nub_NA_Qb_I_unsplash_532f1eb48c", "mime": "image/jpeg", "name": "medium_ben-white-1urNubNAQbI-unsplash.jpg", "path": null, "size": 43.39, "width": 750, "height": 501, "sizeInBytes": 43390}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_ben_white_1ur_Nub_NA_Qb_I_unsplash_532f1eb48c.jpg", "hash": "thumbnail_ben_white_1ur_Nub_NA_Qb_I_unsplash_532f1eb48c", "mime": "image/jpeg", "name": "thumbnail_ben-white-1urNubNAQbI-unsplash.jpg", "path": null, "size": 7.37, "width": 234, "height": 156, "sizeInBytes": 7367}}	ben_white_1ur_Nub_NA_Qb_I_unsplash_532f1eb48c	.jpg	image/jpeg	163.65	/uploads/ben_white_1ur_Nub_NA_Qb_I_unsplash_532f1eb48c.jpg	\N	local	\N	/	2024-06-13 12:10:54.245	2024-06-13 12:10:54.245	1	1
94	ben-white-08swtCO0Syg-unsplash.jpg	\N	\N	1800	1202	{"large": {"ext": ".jpg", "url": "/uploads/large_ben_white_08swt_CO_0_Syg_unsplash_beb3e80448.jpg", "hash": "large_ben_white_08swt_CO_0_Syg_unsplash_beb3e80448", "mime": "image/jpeg", "name": "large_ben-white-08swtCO0Syg-unsplash.jpg", "path": null, "size": 105.44, "width": 1000, "height": 668, "sizeInBytes": 105439}, "small": {"ext": ".jpg", "url": "/uploads/small_ben_white_08swt_CO_0_Syg_unsplash_beb3e80448.jpg", "hash": "small_ben_white_08swt_CO_0_Syg_unsplash_beb3e80448", "mime": "image/jpeg", "name": "small_ben-white-08swtCO0Syg-unsplash.jpg", "path": null, "size": 36.31, "width": 500, "height": 334, "sizeInBytes": 36308}, "medium": {"ext": ".jpg", "url": "/uploads/medium_ben_white_08swt_CO_0_Syg_unsplash_beb3e80448.jpg", "hash": "medium_ben_white_08swt_CO_0_Syg_unsplash_beb3e80448", "mime": "image/jpeg", "name": "medium_ben-white-08swtCO0Syg-unsplash.jpg", "path": null, "size": 68.09, "width": 750, "height": 501, "sizeInBytes": 68094}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_ben_white_08swt_CO_0_Syg_unsplash_beb3e80448.jpg", "hash": "thumbnail_ben_white_08swt_CO_0_Syg_unsplash_beb3e80448", "mime": "image/jpeg", "name": "thumbnail_ben-white-08swtCO0Syg-unsplash.jpg", "path": null, "size": 11.29, "width": 234, "height": 156, "sizeInBytes": 11291}}	ben_white_08swt_CO_0_Syg_unsplash_beb3e80448	.jpg	image/jpeg	222.57	/uploads/ben_white_08swt_CO_0_Syg_unsplash_beb3e80448.jpg	\N	local	\N	/	2024-06-13 12:10:54.294	2024-06-13 12:15:42.791	1	1
\.


--
-- TOC entry 3458 (class 0 OID 17273)
-- Dependencies: 219
-- Data for Name: files_folder_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.files_folder_links (id, file_id, folder_id, file_order) FROM stdin;
\.


--
-- TOC entry 3461 (class 0 OID 17280)
-- Dependencies: 222
-- Data for Name: files_related_morphs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.files_related_morphs (id, file_id, related_id, related_type, field, "order") FROM stdin;
76	37	11	api::new.new	cover	1
77	38	12	api::new.new	cover	1
78	39	13	api::new.new	cover	1
79	40	14	api::new.new	cover	1
80	41	15	api::new.new	cover	1
81	42	16	api::new.new	cover	1
82	43	17	api::new.new	cover	1
115	76	27	api::event.event	cover	1
116	77	28	api::event.event	cover	1
117	78	29	api::event.event	cover	1
118	79	30	api::event.event	cover	1
119	80	31	api::event.event	cover	1
120	81	32	api::event.event	cover	1
121	82	33	api::event.event	cover	1
122	83	34	api::event.event	cover	1
123	84	50	api::new.new	cover	1
124	85	51	api::new.new	cover	1
125	86	52	api::new.new	cover	1
126	87	35	api::event.event	cover	1
127	88	36	api::event.event	cover	1
128	94	2	api::group.group	cover	1
131	89	5	api::group.group	cover	1
132	92	6	api::group.group	cover	1
134	91	4	api::group.group	cover	1
136	93	3	api::group.group	cover	1
138	90	7	api::group.group	cover	1
\.


--
-- TOC entry 3512 (class 0 OID 24632)
-- Dependencies: 273
-- Data for Name: groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.groups (id, title, description, slug, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
2	Legião de Maria	A Legião de Maria é um grupo de leigos devotos que se dedicam à evangelização e ao serviço na comunidade, inspirados pela Virgem Maria. Reúnem-se regularmente para oração, estudo e apoio mútuo na vivência da fé católica.	legiao-de-maria	2024-06-13 12:15:48.618	2024-06-13 12:15:48.618	1	1
5	Comunidade Shalom	A Comunidade Shalom é uma comunidade católica de vida consagrada que se dedica à evangelização, educação e promoção da paz. Seus membros vivem em comunidade, compartilhando a vida em oração, serviço aos necessitados e formação espiritual.	comunidade-shalom	2024-06-13 12:16:57.325	2024-06-13 12:16:57.325	1	1
6	Opus Dei	O Opus Dei é uma prelazia pessoal da Igreja Católica que promove a busca da santidade através do trabalho diário e da vida ordinária. Seus membros são leigos e sacerdotes que buscam integrar sua vida profissional e familiar com a fé católica.	opus-dei	2024-06-13 12:17:21.572	2024-06-13 12:17:21.572	1	1
4	Cristandade	Os Cursilhos de Cristandade são encontros de formação espiritual que buscam fortalecer a fé dos participantes e capacitá-los para serem líderes cristãos ativos em suas comunidades. O movimento promove a espiritualidade através de palestras, partilhas e momentos de oração intensa.	cristandade	2024-06-13 12:16:39.69	2024-06-13 12:47:42.045	1	1
3	Renovação Carismática	A Renovação Carismática Católica é um movimento dentro da Igreja que enfatiza a experiência pessoal do Espírito Santo e a renovação espiritual através dos dons carismáticos. Seus membros participam de retiros, grupos de oração e eventos de evangelização.	renovacao-carismatica	2024-06-13 12:16:19.711	2024-06-13 12:48:26.055	1	1
7	Fraternidade Jesus	A Fraternidade Sacerdotal Jesus Cristo Sacerdote é uma associação de padres diocesanos que se dedicam à formação espiritual e ao apostolado. Eles vivem em fraternidade e colaboram estreitamente com os fiéis em suas paróquias e dioceses.	fraternidade-jesus	2024-06-13 12:17:38.279	2024-06-13 12:49:11.059	1	1
\.


--
-- TOC entry 3463 (class 0 OID 17288)
-- Dependencies: 224
-- Data for Name: i18n_locale; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.i18n_locale (id, name, code, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	English (en)	en	2024-03-04 13:05:04.456	2024-03-04 13:05:04.456	\N	\N
2	Portuguese (Brazil) (pt-BR)	pt-BR	2024-03-05 07:00:02.774	2024-03-05 07:00:02.774	1	1
\.


--
-- TOC entry 3508 (class 0 OID 24579)
-- Dependencies: 269
-- Data for Name: news; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.news (id, title, content, date, slug, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
11	Sínodo, iniciam-se os trabalhos para o Instrumentum laboris 2	Com o documento Rumo a outubro de 2024, enviado em dezembro do ano passado a todos os bispos do mundo, a Secretaria Geral do Sínodo pediu às Igrejas locais e aos grupos de Igrejas que aprofundassem alguns aspectos do Relatório Síntese que são fundamentais para o tema do Sínodo, partindo de uma pergunta orientadora de todo o processo sinodal: «COMO ser uma Igreja sinodal em missão?» Nos últimos meses, as Igrejas locais individuais realizaram seu trabalho enviando suas contribuições por meio das Conferências Episcopais, das Igrejas Católicas Orientais e das Reuniões Internacionais das Conferências Episcopais.\n\n**Grech: Igreja sinodal realidade viva**\n“Estou particularmente impressionado ao ver o envolvimento de toda a comunidade da Igreja nesse longo processo de discernimento”, disse o cardeal Mario Grech, secretário geral da Secretaria Geral do Sínodo. “Além das reflexões decorrentes do trabalho sobre o Relatório Síntese da Primeira Sessão, o material recebido frequentemente acrescenta verdadeiros testemunhos sobre como as Igrejas particulares não apenas entendem a sinodalidade, mas já a estão colocando em prática. A Igreja sinodal não é um sonho a ser realizado, mas já é uma realidade viva que gera criatividade e novos modelos relacionais dentro da mesma comunidade local ou entre diferentes Igrejas ou grupos de Igrejas”.\n\n**Contribuições de USG e UISG e dos párocos**\nA Secretaria Geral do Sínodo também recebeu contribuições da USG-UISG e um número congruente de comentários de realidades internacionais, faculdades universitárias, associações de fiéis ou de comunidades singulares e indivíduos. Outra fonte significativa de reflexão serão as reflexões apresentadas pelos párocos durante a sessão de trabalho de três dias da recente reunião dos Párocos para o Sínodo.\nA partir de terça-feira, 4 de junho de 2024, o grupo de teólogos, especialistas de várias disciplinas (dogmática, eclesiologia, teologia pastoral, direito canônico, etc.), analisará todo esse material. “Não estamos deixando nada ao acaso. Cada documento será lido cuidadosamente com o objetivo de propor um texto no final do processo que reflita o trabalho, as perguntas e as intuições recebidas das bases”, diz o cardeal Grech.\n\n**Análise inicial**\nPapa promove grupos de estudo sobre temas levantados no Sínodo\nPor sua vez, o padre Giacomo Costa, secretário especial da XVI Assembleia, especifica: “Ainda não se trata de redigir o Instrumentum laboris para a Segunda Sessão do Sínodo sobre a Sinodalidade, mas sim de realizar uma análise inicial dos relatórios e das boas práticas implementadas pelas comunidades locais, e um discernimento em comum sobre as questões e as reflexões teológicas, a fim de preparar o caminho para a redação do Instrumentum laboris”\n\nO trabalho dessa equipe internacional, que está sendo realizado a portas fechadas, começou com um retiro espiritual de meio dia e continuará até o próximo dia 13 de junho. Os dias serão marcados por diferentes momentos de trabalho (individual, em sessão plenária e em grupos). A celebração diária da Eucaristia e os momentos de oração pessoal garantirão que o trabalho ocorra na atmosfera necessária para o discernimento.\n\n**Próximas etapas**\nO processo de redação do Instrumentum Laboris continuará em outras etapas: uma vez que a estrutura do futuro documento tenha sido identificada por meio da articulação do material recebido pelos teólogos, o Conselho Ordinário realizará um discernimento inicial do que foi redigido. Em seguida, haverá as etapas de redação do documento propriamente dito e um sistema de verificação abrangente até a aprovação pelo Conselho Ordinário do documento a ser apresentado ao Santo Padre para aprovação final.\n\nEspera-se que o texto seja publicado nos primeiros dez dias de julho. Informações sobre isso serão fornecidas em tempo oportuno.	2024-06-06	sinodo-iniciam-se-os-trabalhos-para-o-instrumentum-laboris-2	2024-06-11 12:28:11.259	2024-06-11 12:28:11.259	1	1
12	África Central, quando uma Porta Santa se abriu para o mundo	É tarde e a noite se prepara lentamente para chegar, tingindo o céu de rosa e dourado. A porta da Catedral de Notre-Dame em Bangui se abre, empurrada por duas mãos firmes. A figura de Francisco está de pé, vigorosa. Muitos anos se passaram desde aquele 29 de novembro de 2015, o primeiro dia do Advento e a data de início do Jubileu Extraordinário da Misericórdia, que foi inaugurado, antecipadamente, em um lugar igualmente extraordinário, na capital da África Central. Pela primeira vez na história, a abertura da Porta Santa não se realiza na Basílica de São Pedro, no túmulo do Apóstolo, no centro do mundo cristão, mas em um lugar remoto, para muitos desconhecido.\nCapital espiritual\nA África Central é um dos países mais sangrentos e divididos do mundo. O Papa o escolheu justamente por esse motivo, para levar misericórdia e uma mensagem de paz a uma “terra que está sofrendo há vários anos com a guerra e o ódio, a incompreensão e a falta de paz. Mas nessa terra sofrida há também todos os países que estão passando através da cruz da guerra. Bangui se torna a capital espiritual da oração pela misericórdia do Pai. Todos nós pedimos paz, misericórdia, reconciliação, perdão, amor. Por Bangui, por toda a República Centro-Africana, por todo o mundo, pelos países que estão sofrendo com a guerra, pedimos paz!", disse o Papa na praça da igreja, depois de sair de um papamóvel, desprovido de qualquer proteção contra possíveis perigos, onde o imã também concordou em se sentar.\nUm gesto universal compreendido por todos\nUma tradição antiga é transferida para um país jovem. O significado de abrir a Porta Santa e cruzar o limiar está enraizado em um simbolismo ancestral que, em Bangui, se ramifica e dá novos frutos. Ele está revestido de futuro. O gesto do Papa Francisco foi revolucionário porque, em um lugar fechado, cheio de barreiras, ele abre uma porta para a esperança, convida as pessoas a entrarem para encontrar misericórdia e paz, para encontrar Cristo e serem transformadas. Ele traduz de forma cristã uma metáfora compreensível para todos, em qualquer lugar do mundo, de qualquer tradição, religião, experiência e história. Todos entendem que se trata de um rito de passagem fundamental e sagrado.\n\nA linha de fronteira, o limes latim, ponto final, fechamento, é transformada em limen, limiar, abertura. Talvez não seja coincidência o fato de duas palavras opostas conterem a mesma raiz, mas é interessante lembrar o fato de que, na linguagem eclesiástica, a “visitatio ad limina apostolorum” é a visita dos peregrinos aos túmulos dos apóstolos Pedro e Paulo, que remonta aos primeiros séculos da Igreja, mais tarde estendida aos bispos. Tudo fala de Jubileu.\n\nPortas Santas em toda parte\nNaquele ano de Misericórdia, muitas Portas Santas foram abertas em todo o mundo, quase um sistema solar composto por milhares de estrelas brilhantes espalhadas pela Terra, mesmo nos lugares mais remotos. Foi uma grande oportunidade, um presente dado a todos, mesmo àqueles que, por vários motivos, não podiam se locomover e viajar. Foi um jubileu extraordinário que pôde ser vivenciado em todas as igrejas locais, permitindo que aqueles que quisessem vivenciar plenamente o evento, fazer a peregrinação e atravessar a Porta da Misericórdia em sua própria diocese.\n\nUma esperança que vem de Roma\nO cardeal Dieudonné Nzapalainga, então arcebispo de Bangui, é um dos intérpretes nodais de seu país. Sua história é de fé e de uma árdua “luta pela paz”, lembrando o título de seu livro na versão italiana, publicado pela Livraria Editora Vaticana em 2022. O cardeal centro-africano compartilhou com a mídia vaticana, aos microfones de Jean Charles Putzolu, a memória daqueles dias e as consequências benéficas da visita do Papa à África Central.\nGostaria de levá-los de volta ao dia 29 de novembro de 2015, o primeiro domingo do Advento, quando o Papa Francisco abriu a Porta Santa do Jubileu da Misericórdia. Foi em Bangui, na República Centro-Africana, portanto, em seu país: uma tradição muito antiga chegando a um país jovem. Em sua opinião, qual foi o significado desse gesto para todos os centro-africanos?\nÉ um gesto único na história não apenas da Igreja universal, mas também da nossa Igreja.\n\nPorque nós, centro-africanos, diante da violência, do sofrimento e da morte, encontrando-nos vivendo em um estado de absurdo, sentimos a esperança que veio de Roma por meio do homem de Deus, o Papa, que veio para aplacar, para trazer paz, tranquilidade e perdão, para trazer reconciliação, convidando nós, centro-africanos, a abrir as portas de nossos corações, cheios de ódio, rancor e vingança, para que pudéssemos nos enfrentar. É por isso que ele mesmo disse para depormos nossas armas: “leve a justiça, leve o amor”. Acredito que seu gesto será sempre lembrado aqui na República Centro-Africana. Muçulmanos, protestantes, católicos, todos nós somos unânimes em dizer que sua chegada foi salutar.\n\nE o Papa de fato chegou. Ela se lembrou dessa mensagem, desse chamado para depor as armas. Havia uma enorme tensão até quase dois dias antes de sua chegada a Bangui. Houve mais tensão desde então? Essa mensagem foi ouvida? A mensagem do Papa foi ouvida e atendida? As armas ficaram em silêncio?\nAcho que a mensagem foi ouvida. Passamos seis meses desde a partida do Papa como se estivéssemos em um país normal, algo impensável até dois dias antes de sua chegada. Sua chegada aliviou a pressão. Vimos muçulmanos saindo de seus enclaves para se juntarem a seus irmãos e irmãs católicos no estádio, para participar da grande celebração. As pessoas iam e vinham. O Km 5 [marco 5] era considerado um local onde havia muitas armas e, portanto, não se podia entrar. Mas fui até lá com os cristãos para acompanhar o Papa, dizendo aos muçulmanos: “vamos caminhar juntos!”\n\nO Papa veio de Roma para a República Centro-Africana, os cristãos de Bangui deixaram nossos bairros para ir ao encontro de nossos irmãos, caminhando pela paz. Bem, nós marchamos e continuamos a fazê-lo desde aquele dia. Um líder rebelde nos disse que deveríamos conversar sobre espiritualidade com os imãs. Os imãs organizaram uma grande reunião para pedir aos líderes rebeldes que depusessem suas armas e muita coisa mudou desde então. Isso também foi resultado da visita do Papa.\n\nOs imãs realizaram um grande encontro para pedir aos líderes rebeldes que deponham as armas e isso mudou muito. Esse também foi o resultado da visita do Papa, que nos deu um empurrão, nos fez recomeçar e agora estamos vendo os resultados. Hoje as armas não circulam mais como antes.\n\nEm sua opinião, quais foram os outros frutos desse evento?\nForam os encontros entre jovens muçulmanos e jovens cristãos. Encontros bastante regulares entre mulheres muçulmanas e mulheres cristãs, e entre nós, líderes. Há pouco tempo, em março, uma mesquita a 250 quilômetros daqui foi vandalizada. O imã, o pastor protestante e eu falamos ao coração de nossos fiéis para desarmá-los e convidá-los a cooperar, respeitar, valorizar e respeitar o local. Esse, em minha opinião, é o fruto dessa passagem. Agora também pedimos que a justiça seja feita. Isso significa que aqueles que perderam suas casas devem poder recuperá-las, o que significa que aqueles que moram na casa do vizinho há muito tempo devem ter a gentileza de sair. E nós, líderes religiosos, trabalhamos com o coração. Há alguns que saem para deixar a casa para os proprietários sem passar pelos tribunais ou pelo Estado. Portanto, acho que isso também é proveitoso. Agora os corações estão dispostos e podemos conversar, podemos imaginar um futuro comum.\nQuando o senhor diz que eles saem de casa, é porque eles realmente a devolvem ao seu legítimo proprietário, certo?\nExatamente isso.\n\nEm um nível mais pessoal, Vossa Eminência, quais são suas lembranças mais fortes e talvez mais vívidas daquele período?\n\nA lembrança mais vívida é a de entrar no quilômetro 5 dois dias antes: era impossível atravessar o posto de controle. Eu estava lá. Vi com meus próprios olhos: o Papa escolheu ir em um veículo não blindado, mas em campo aberto. Todos sabiam que havia muitas armas no local. Francisco teve a coragem de ir até lá e vimos que o imã também concordou em ir no papamóvel. Essa é a imagem mais forte. Quando saí para ir ao estádio, vi muçulmanos saindo em massa, arriscando suas vidas. Foi sua fé que os levou a sair. Um imã nos disse: 'O Papa não veio para vocês, cristãos, mas para nós, muçulmanos. Estávamos no enclave, estávamos na escravidão. Ele nos libertou!”\n\nEminência, uma última pergunta: o senhor se tornou inseparável do Imã... entre cristãos e muçulmanos e também com os protestantes. Vocês realizam iniciativas juntos quase diariamente. Esse é outro fruto. É claro que é o resultado de seu trabalho, mas também é o resultado da visita do Papa...\n\nA visita do papa nos confortou, incentivou e apoiou nesse trabalho. E fomos nós três que pedimos a ele que viesse à República Centro-Africana. Acho que todos nós somos gratos a ele. Esse é o fruto de sua passagem.\n\nO Jubileu de 2025. Como estão se preparando para ele?\nO Jubileu de 2025 é um momento importante para a Igreja. Bem, já estão sendo criados grupos aqui para refletir, orar, reunir-se e também para ver como, localmente, viveremos esse momento. Este ano celebraremos 130 anos de evangelização na República Centro-Africana e, ao mesmo tempo, estaremos caminhando para 2025, que está logo ali, e estamos trabalhando em ambos. Portanto, acho que há muito entusiasmo. Eu estava com um grupo de jovens que se encontrava na igreja em massa e dissemos uns aos outros: este é um momento importante porque é um momento de graça, mas também é um momento complicado e elevado. Não podemos deixar passar esse momento favorável.	2024-06-04	africa-central-quando-uma-porta-santa-se-abriu-para-o-mundo	2024-06-11 12:37:53.067	2024-06-11 12:37:53.067	1	1
13	Encontro anual com Moderadores das associações de fiéis, movimentos eclesiais e novas comunidades	O Dicastério para os Leigos, a Família e a Vida comunicou nesta terça-feira, 11, o Encontro anual com os Moderadores das associações de fiéis, movimentos eclesiais e novas comunidades, reunindo 200 participantes, será realizado no dia 13 de junho de 2024 na Sala Nova do Sínodo, no Vaticano. \n\nO tema do Encontro será “O desafio da sinodalidade para a missão”. Pelo do Sínodo sobre a Sinodalidade, a Igreja tem vivido um tempo de consulta, reflexão e diálogo para implementar plenamente a sua dimensão sinodal, que faz parte da sua natureza de mistério de comunhão, à imagem da comunhão trinitária.\n\nO Encontro deste ano com os Moderadores de associações internacionais visa destacar alguns exemplos de estruturas e práticas sinodais já experimentadas em associações e movimentos que podem servir de exemplo e estímulo para toda a Igreja. Entre eles, constam a partilha da vida de fé em pequenos grupos ou pequenas comunidades, o discernimento comunitário, a corresponsabilidade de leigos e ministros ordenados no exercício de funções de governo, o envolvimento de casais casados e jovens na evangelização, na ação caritativa e social, etc.\n\nOs participantes do Encontro Anual com os Moderadores também serão convidados a refletir sobre todas as dimensões sinodais que apresentam novos desafios ao crescimento das associações e movimentos.\n\nO tema insere-se no propósito eclesial último, que é sempre o da missão, o único capaz de dar pleno sentido, concretude e eficácia ao caminho sinodal.\n\nO dia terá início com a celebração da Santa Missa na Basílica de São Pedro, presidida pelo cardeal Kevin Farrell, prefeito do Dicastério para os Leigos, a Família e a Vida. Os participantes serão, a seguir, recebidos em audiência pelo Santo Padre Francisco.\n\nApós as boas-vindas do cardeal Kevin Farrell, o programa incluirá duas palestras principais. O Prof. Dr. Rafael Luciani, professor da Universidade Católica Andrés Bello (Venezuela), apresentará o tema "Missão como o fim da sinodalidade", e a Dr.ª Elisa Lisiero, funcionária do Dicastério, convidará os participantes a refletir sobre a sinodalidade na experiência dos movimentos.\n\nAmplos momentos de partilha e espaços para perguntas e intervenções livres dos participantes caracterizarão, como sempre, o Encontro.\n\nComo nos anos anteriores, estão convidadas para o Encontro Anual com os Moderadores todas e apenas as cento e dezessete associações internacionais de fiéis, privadas e públicas, e outras entidades com personalidade jurídica, sobre as quais o Dicastério tem competência direta, e cuja vida e desenvolvimento acompanha (cf. PE, n. 134). \n\nNo site do Dicastério (www.laityfamilylife.va), está disponível o Repertório atualizado com a lista e os contatos de associações, movimentos eclesiais e novas comunidades.\n\nModalidades de credenciamento e participação\n \nOs jornalistas e profissionais da comunicação que desejarem participar dos eventos abertos à imprensa devem enviar solicitação, até às 12h do dia 12 de junho, exclusivamente por meio do sistema de credenciamento on-line da Sala de Imprensa da Santa Sé, para: https://press.vatican.va/accreditamenti\n\nOs jornalistas e profissionais de comunicação que receberem a confirmação de participação poderão:\n\n- acompanhar a sessão de abertura do dia 13 de junho, das 11h às 13h15. (Ao chegar na Aula Nova do Sínodo, dirigir-se à recepção e solicitar para serem recebidos pela equipe do DLFV);\n- entrevistar os participantes que se disponibilizarem, exclusivamente nos intervalos previstos pelo programa. 	2024-05-15	encontro-anual-com-moderadores-das-associacoes-de-fieis-movimentos-eclesiais-e-novas-comunidades	2024-06-11 12:43:13.88	2024-06-11 12:43:13.88	1	1
14	Paglia: a Igreja profética na luta contra a pena de morte no mundo	A esperança é que o exemplo se espalhe e que os países que abandonaram a pena de morte, seja por meio da abolição ou de uma moratória, possam inspirar aqueles que ainda a praticam. O arcebispo Vincenzo Paglia, presidente da Pontifícia Academia para a Vida, comenta assim os dados do relatório 2023 da Anistia Internacional sobre a pena capital no mundo, que destaca como o grande número de execuções é, na verdade, produzido por um pequeno grupo de países. No ano passado, foram registradas 1.153 execuções conhecidas, um número que marca um aumento de 30% em relação a 2022, um número tão alto como nunca antes nos últimos dez anos, atribuível, no entanto, a um pequeno número de países em comparação com o passado, 16 no total, decididamente o menor até agora registrado, explica a Anistia. Mais uma vez, este ano, o ranking mostra o Irã e a Arábia Saudita no topo da lista, com 89% do número total de execuções, mas faltam os números de países como China, Coreia do Norte e Vietnã, que não divulgam dados.\n\nDom Paglia, o Relatório 2023 da Anistia Internacional indica que ainda há grandes números sobre a pena de morte, mas que, na realidade, apenas uma pequena minoria de países a aplica. A esperança da organização é que esses países acompanhem a evolução dos tempos e possam abolir essa punição de uma vez por todas...\nÉ claro que acredito que o que o relatório diz mostra um aspecto positivo no sentido de que o número de países que suspendem a punição, que a abolem, está aumentando, o problema é que alguns desses estados infelizmente intensificam essa crueldade e espero que o exemplo que está se espalhando, também possa ajudar a derrotar esse flagelo, por exemplo, em alguns países como a República Democrática do Congo, onde ela também foi reintroduzida recentemente. Eu realmente espero que essa ferramenta, que está cada vez mais emergindo em sua crueldade, seja abolida. E estou convencido de que o progresso nos ajudará nesse sentido. Minha preocupação está em outra perspectiva, e é sobre a liberação, se assim posso dizer, da guerra, das armas, de uma sensibilidade que confia precisamente às armas o que a política deve fazer. Essa é a preocupação mais séria que sinto neste momento de fazer vincular em vez disso, a um progresso positivo que existe em outra perspectiva.\n\nTrata-se de um progresso que a Igreja sempre olhou com muita atenção e com auspícios: a Igreja ensina que a pena de morte é inadmissível sob qualquer ponto de vista...\nÉ uma bela profecia, já que nos lembramos de São João Paulo II na década de 1990, quando ele intercedia sempre que havia a necessidade de bloquear, restringir, adiar ou abolir. Até a declaração muito lúcida do Papa Francisco, que chegou ao ponto de transformar o Catecismo, reiterado agora no último documento Dignitas Infinita com grande clareza. E posso dar um pequeno testemunho meu. Lembro-me de quando, na década de 1990, tentamos, com a Comunidade de Santo Egídio, instar o episcopado estadunidense a se envolver nesse campo e fomos cautelosamente contidos. Na semana passada, estive nos Estados Unidos, e há um movimento de cristãos contra a pena de morte, apoiado pelo episcopado, e esse é um pequeno grande exemplo de como essa perspectiva da Igreja Católica está realmente a serviço de um novo humanismo em que dignidade significa respeito e proteção a todas as vidas humanas.\n\nÉ como disse Bento XVI quando chamou a atenção de todos os líderes das sociedades para a necessidade de fazer todo o possível para eliminar a pena de morte. Ratzinger, antes ainda João Paulo II, depois o Papa Francisco, uma única voz contra a pena capital...\nSim, parece-me que o Magistério da Igreja está agora claramente expresso nessa perspectiva, e isso obviamente dá esperança: a concordância e a força em enfatizar a oposição da Igreja a essa incrível crueldade, que as Escrituras já haviam interditado desde o tempo de Caim. Essa profecia de todo o Magistério, o Papa Bento XVI também fez bem em nos lembrar, creio que é realmente como está escrito no Evangelho, aquela semente colocada na terra e, eu diria, quer o agricultor durma ou vigie, essa semente certamente produzirá seu fruto. É uma grande esperança, porque é uma verdade tão bela, uma verdade tão forte que, em minha opinião, é realmente incontrolável.	2024-04-24	paglia-a-igreja-profetica-na-luta-contra-a-pena-de-morte-no-mundo	2024-06-11 12:46:23.435	2024-06-11 12:46:23.435	1	1
15	Santa Sé defende cancelamento da dívida de pequenos Estados insulares	O discurso do chefe da delegação da Santa Sé, dom Robert Murphy, por ocasião do debate geral da 4ª Conferência Internacional sobre Pequenos Estados Insulares em Desenvolvimento que termina hoje, 30 de maio, em Saint John's, Antígua.\nL'Osservatore Romano\n"Exortamos os Estados desenvolvidos a considerarem o cancelamento da dívida como um fator de «prosperidade resiliente»". Foi o que destacou em seu discurso dom Robert Murphy, chefe da delegação da Santa Sé, por ocasião do debate geral da 4ª Conferência Internacional sobre Pequenos Estados Insulares em Desenvolvimento (SIDS4), que se realiza de 27 a 30 de maio de 2024 em Antígua e Barbuda, sob o tema “Traçando o rumo para uma prosperidade resiliente”.\n\n“A busca do desenvolvimento sustentável é essencial para a prosperidade futura de todos os Sids”, afirmou o prelado; no entanto, estes deparam-se com "o crescente peso da dívida", que "os força a fazerem escolhas insustentáveis ​​entre os crescentes pagamentos de juros ou a alocação de recursos para investir em saúde, educação, sistemas de proteção social e infra-estruturas", com adicionais dificuldades diante de "problemas urgentes como a erradicação da pobreza e as alterações climáticas".\n\nImperativo moral\n \nNa defesa, portanto, de “uma abordagem corajosa da dívida”, dom Murphy reiterou, na esteira do Papa Francisco, que o seu cancelamento “não é apenas uma questão de política econômica ou de desenvolvimento, mas sim um imperativo moral fundado nos princípios da justiça e solidariedade."\n\nPor último, o representante da Santa Sé sublinha que “as alterações climáticas, a erosão costeira e a perda de biodiversidade” dificultam o desenvolvimento dos Sids, representando para eles também “uma ameaça existencial”.\n\nNeste sentido, os votos de que seja implementado em tempo hábil um “índice de vulnerabilidade multidimensional”, de modo a “fortalecer a ação no caminho para um futuro sustentável para todos”.	2024-03-16	santa-se-defende-cancelamento-da-divida-de-pequenos-estados-insulares	2024-06-11 12:49:09.477	2024-06-11 12:49:09.477	1	1
16	Comunicado da Sala de Imprensa da Santa Sé sobre Plenária do Comitê Moneyval	Como é de conhecimento, o resultado desse Relatório foi amplamente positivo e, portanto, a Santa Sé (incluindo o Estado da Cidade do Vaticano) foi submetida a um processo de controle sucessivo em tempos não reduzidos (“regular follow-up”), que agora produziu um relatório de “follow-up” (acompanhamento). Em particular, de acordo com os procedimentos do Comitê Moneyval, as regulamentações atuais da Santa Sé e do Estado da Cidade do Vaticano foram analisadas quanto à conformidade técnica com determinadas recomendações do Grupo de Ação Financeira Internacional (“GAFI”) sobre as quais a jurisdição havia solicitado uma revisão da avaliação atribuída no Relatório de Avaliação Mútua de 2021.\nO Comitê MONEYVAL reconheceu os ulteriores progressos realizados pela jurisdição ao longo da linha indicada pelo Relatório de 2021. Como pode ser visto no texto do Relatório publicado no site institucional do Comitê MONEYVAL na data de hoje, o progresso feito pela Santa Sé e pelo Estado da Cidade do Vaticano na área de prevenção e combate à lavagem de dinheiro, ao financiamento do terrorismo e ao financiamento da proliferação de armas de destruição em massa, foi confirmado. Foi dada uma classificação melhorada para todas as recomendações solicitadas.\nDessa forma, a próxima avaliação sobre conformidade técnica foi programada para ocorrer daqui a quatro anos, quando provavelmente será incluída no contexto mais amplo da “6° round of mutual evaluation” (6ª rodada de avaliação mútua) das jurisdições membros do Comitê MONEYVAL. O resultado do Regular Follow-up Report  (Relatório de Acompanhamento Regular) foi amplamente positivo, refletindo o trabalho conjunto de todas as autoridades da jurisdição e em continuidade com o processo de transparência financeira total no qual a jurisdição da Santa Sé (incluindo o Estado da Cidade do Vaticano) está envolvida.	2024-02-01	comunicado-da-sala-de-imprensa-da-santa-se-sobre-plenaria-do-comite-moneyval	2024-06-11 12:51:53.831	2024-06-11 12:51:53.831	1	1
17	A semana entre Pentecostes e a Santíssima Trindade	Em 3 de março de 2018, com um decreto da então Congregação do Culto Divino e da Disciplina dos Sacramentos (hoje Dicastério, ndr), o Papa Francisco determinou a inscrição da Memória da "Bem-aventurada Virgem, Mãe da Igreja" no Calendário Romano Geral, a ser celebrada todos os anos na segunda-feira depois de Pentecostes. “Esta celebração - explicava o então prefeito,  cardeal Robert Sarah, ajudará a lembrar que a vida cristã, para crescer, deve ser ancorada no mistério da Cruz, na oblação de Cristo no convite eucarístico e na Virgem oferente, Mãe do Redentor e dos redimidos”.\n\nComo descrito no Decreto "Ecclesia Mater", o motivo da celebração é favorecer o crescimento do sentido materno da Igreja nos pastores, nos religiosos e nos fiéis, bem como, da genuína piedade mariana.\n\nA Solenidade de Pentecostes, festejada no último domingo, marcou a conclusão do Tempo Pascal, e no domingo que segue, a Igreja festeja a Santíssima Trindade. "A semana entre Pentecostes e a Santíssima Trindade", é o tema da reflexão de hoje do Pe. Gerson Schmidt*:\n\n "Com a nova reforma da liturgia proposta pelo Concílio, o Tempo Pascal terminou com a celebração de Festa de Pentecostes. A oitava de Pentecostes, acrescentada à cinquentena pascal no século VI, é abolida. Por isso, voltamos a celebrar o Tempo Comum, transcorridos os 50 dias pascais, vividos como um único dia vitorioso.\n\nO monsenhor Annibale Bugnini, em seu livro “A Reforma Litúrgica”, comenta as discussões em relação a essa mudança e diz que “talvez o mal-estar tenha sido pela passagem brusca da solenidade de Pentecostes para o tempo comum. Em algumas regiões Pentecostes continua com o dia sucessivo, que é festivo, fazendo com que se perceba menos o salto”. O liturgista, responsável por muitas adaptações e renovações sugeridas pela Sacrosanctum Concilium, ainda comenta assim a pé da página: “A abolição da oitava de Pentecostes deriva logicamente da consideração da estrutura nativa do Tempo Pascal. Pentecostes é o oitavo Domingo da Páscoa. Não tem lógica outra oitava. A coisa era admitida pacificamente”.\n\nCom a introdução da festa da Santíssima Trindade, completada a obra das três pessoas divinas, o verdadeiro oitavo dia veio a faltar. A festa da Trindade que celebramos tem sentido depois de Pentecostes porque salienta, na liturgia celebrativa, o tempo de ação das pessoas da Trindade. O Pai criou o universo e não o deixou à deriva. Envia seu Filho Unigênito para resgatar a obra da criação por meio da Redenção. Jesus Ressuscitado ascende aos céus depois de 40 dias, festa que no Brasil se celebra no final de semana seguinte aos 40 dias, para melhor celebração do povo de Deus. Depois que Jesus sobe aos céus, envia, com o Pai, o Divino Espírito Santo prometido, festa celebrada há pouco. Depois da ação da Terceira pessoa da Trindade, na Igreja nascente, junto com Maria no cenáculo, se plenifica a obra da Trindade, festa que é celebrada em seguida de Pentecostes. Tudo segue uma lógica favorável ao povo para rezar e contemplar a ação salvífica de Deus.\n\nA introdução do título de Maria Mãe da Igreja logo depois do dia de Pentecostes também tem sua razão. Maria estava como discípula primeira, junto com os apóstolos no Cenáculo. A Mariologia insere-se na eclesiologia do Vaticano II, para apontar um ideal a ser perseguido pela Igreja. Maria, a Mãe de Deus, é, assim, modelo para a Igreja e mãe da Igreja. O título atribuído à Nossa Senhora como Mãe da Igreja – Mater Ecclesia - se deve justamente ao teor teológico sintetizado pelo Concilio Vaticano II a partir de expressão utilizada pelo Papa Paulo VI no decorrer do Concílio. O título foi utilizado pela primeira vez por Santo Ambrósio de Milão, no Século IV e redescoberto por Hugo Rahner, um jesuíta irmão do grande teólogo Karl Rahner. A Mariologia de Rahner segue a doutrina de Ambrósio, sobre o papel de Maria Santíssima na Igreja. Sua interpretação, fundamentada exclusivamente em Ambrósio, influenciou grandemente o Concílio Vaticano II, sendo que na constituição Dogmática Lumen Gentium declara que Maria é Mãe da Igreja, uma perspectiva continuada pelos próximos Papas, João Paulo II que utiliza o termo em sua encíclica Redemptoris Mater e Bento XVI que credita aos Rahner especificamente essa atribuição.\n\nMaria é vista como mãe da Igreja e de todos os cristãos, membros da Igreja e parte do Corpo místico de Cristo. Os membros do Corpo de Cristo compartilham da paternidade de Deus e também da maternidade de Maria. O Catecismo da Igreja católica afirma assim: “A Virgem Maria é reconhecida e honrada como sendo verdadeiramente a Mãe de Deus e do Redentor... Ela é claramente a mãe dos membros de Cristo... Maria, Mãe de Cristo, Mãe da Igreja” (CIC, 963).\n\nA memória litúrgica da bem-aventurada Virgem Maria, com o título de Mãe da Igreja, foi instituída no calendário Romano na segunda-feira depois da solenidade de Pentecostes, para lembrar que Maria, presente no cenáculo, é mãe e cristã que mergulha nas ações da comunidade da Igreja primitiva, na descida do Espírito Santo no dia de Pentecostes. Foi em 2018 que se afirmou essa data litúrgica que foi firmada pelo Decreto da Congregação para o culto Divino e disciplina dos Sacramentos, chancelada pelo Papa Francisco, aparecendo nos livros litúrgicos para a celebração da Missa e da Liturgia das Horas.\n\nO Tempo Comum, já iniciado após a Festa de Pentecostes, segue na sétima semana, porque foi iniciado depois da festa do Batismo de Jesus.  O Tempo Comum é o tempo litúrgico mais extenso, sendo 34 semanas, divididas em duas partes. A primeira parte inicia após a Festa do Batismo do Senhor e vai até a terça-feira, antes da quarta-feira de cinzas. A segunda parte inicia após a festa de Pentecostes. O Tempo Comum culminará com a Festa de Cristo Rei."	2024-01-26	a-semana-entre-pentecostes-e-a-santissima-trindade	2024-06-11 12:55:38.899	2024-06-11 12:55:38.899	1	1
50	O Criador e as hipóteses da Ciência	O primeiro fato indubitável é o interesse que desperta a pergunta sobre a origem do universo e a hipótese do Deus criador. Isto é atestado pelas vendas do volume de Michel-Yves Bolloré e Olivier Bonnassies (Deus, ciência, as provas, Edições Sonda, 610 páginas, 24,90 euros) que, depois de ter sido lançado, na França, em 2021, tornando-se um best-seller, está agora subindo na classificação também na Itália, onde acabou de ser impresso. Os dois autores pretendem apresentar as provas científicas da existência de Deus e de um desenho inteligente na origem do universo, alinhando uma série de descobertas recentes. São teorias, corroboradas por cálculos e observações, que abalam muitas supostas certezas daqueles que em nome da ciência pretenderam desmentir a existência do Criador. Pode-se discutir a opção de misturar, num mesmo volume com declarada intenção apologética, o tema da origem do universo e das aparições de Fátima (tema ao qual são dedicadas 44 páginas), bem como outras reflexões sobre a historicidade de Jesus e seus milagres. Mas a questão colocada – o mistério na origem do universo e da vida – é fascinante.\n\nDe fato, muitas páginas do livro ajudam a entender a sabedoria das palavras contidas na Constituição Dogmática Dei Filius do Concílio Vaticano I: "Não pode haver desacordo real entre fé e razão". Esse concílio, àqueles que alegavam incompatibilidade entre as verdades da fé e o conhecimento racional confiado à razão natural, respondia afirmando, em palavras ainda relevantes hoje, que há duas ordens diferentes de conhecimento, distintas em princípio e objeto, que não entram em conflito uma com a outra. Mas ele também explicava que há uma inteligência mais ampla, aquela que liga todas as coisas criadas ao seu Criador, capaz de abranger o que a inteligência humana, com seus meios, pode saber sobre a realidade empírica. Essa é a ideia de razão da qual Bento XVI falou em seu memorável discurso no Bundestag em setembro de 2011: depois de afirmar que "a visão positivista do mundo é, em sua totalidade, uma parte grandiosa do conhecimento humano e da capacidade humana, à qual absolutamente não devemos renunciar", o Papa Ratzinger descreveu os riscos de uma certa razão positivista, "que se apresenta de maneira exclusivista e é incapaz de perceber qualquer coisa além do que é funcional". Ele a comparou a "edifícios de concreto armado sem janelas, nos quais nos damos clima e luz por nós mesmos e não queremos mais receber ambos do vasto mundo de Deus". No entanto, as palavras do Vaticano I e as de Bento também são úteis para nos mantermos atentos contra uma tentação especular e oposta, a de forçar a questão de Deus para a esfera restrita da razão científica, que acaba assim por ser implicitamente reconhecida como a única fonte crível de conhecimento. O ensaio dos dois autores franceses não está isento deste risco.\n\nQue não há conflito entre ciência e fé também é atestado pela longa linhagem de cientistas crentes, autores de grandes descobertas. Basta aqui mencionar apenas dois nomes: o de um contemporâneo de Darwin, o frade agostiniano morávio Gregor Mendel, hoje considerado o pai da genética; ou a do padre Georges Edouard Lemaître, definido como o pai da cosmologia moderna, que em 1927 foi o primeiro a notar a expansão do universo, descoberta que está na origem da Teoria do Big Bang.\n\nNo livro de Bolloré e Bonnassies, dois argumentos cosmológicos são amplamente descritos em apoio à existência de Deus: em primeiro lugar, a evidência, confirmada por várias provas científicas, de que o universo está em expansão e que teve início por volta de 13,8 bilhões de anos atrás. Se não foi possível observar o momento inicial, foi encontrado um vestígio de uma fase posterior, quando o universo tinha 0,003% da sua idade atual. Esta evidência faz com que os autores digam que, visto que a ciência demonstrou o início dos tempos, isto postula a existência de um Criador. Até algumas décadas atrás, os astrofísicos tinham muito mais certezas do que hoje. Agora, os cientistas nos dizem que conhecemos apenas 5% do nosso universo. Apenas esta quantidade de 5 por cento é composta de matéria “comum” e visível (galáxias, estrelas, planetas, luas, gás...). O “resto” desconhecido de 95% consiste em 27% de matéria escura e 68% de energia escura. O que realmente são esta matéria escura e essa energia escura, como estão interligadas na estrutura geral do cosmos, ainda deve ser descoberto. É claro que a ignorância consciente sobre o tema representa mais uma razão para evitar ancorar uma questão séria como a existência de Deus num modelo cosmológico que ainda é incompleto do ponto de vista científico. Seria melhor reconhecer que «a ciência não pode demonstrar a existência de Deus simplesmente porque Deus não é o “tipo de coisa” que a ciência é capaz de investigar com os seus métodos. Naturalmente, o oposto também se aplica: aquelas posições que afirmam usar a ciência para excluir a fé em Deus estão completamente fora de lugar”, observou o astrofísico Marco Bersanelli ao escrever sobre o livro de Bolloré e Bonnassies no jornal Il Foglio.\n\nO segundo argumento proposto no ensaio recentemente publicado diz respeito a outra evidência científica, ou seja, o fato de as leis reguladoras do nosso universo estarem predispostas a produzir as condições para o aparecimento da vida. A vida na Terra é, na verdade, possível graças a uma série de circunstâncias precisas (por exemplo, a inclinação do eixo estável da Terra graças à Lua em 23,5 graus, a distância certa entre a Terra e o Sol, a existência da molécula de água tão atípica que parece ter sido criada precisamente para que haja a vida: se de fato a água se comportasse como outras substâncias, seria mais densa à medida que esfria, o gelo afundaria em vez de flutuar e os mares congelariam, etc). O universo, em suma, foi feito para nos permitir existir. A harmonia com a existência da vida é tão precisa que se todo o universo não fosse exatamente como é, não existiríamos hoje.\n\nExistem, portanto, constantes físicas fundamentais cujo valor permite a existência do universo tal como o vemos e da vida tal como ela é. Essas constantes não são muitas e não há atualmente nenhuma razão conhecida para que sejam assim. Se houvesse mais matéria do que existe agora, o Universo entraria em colapso: já o teria feito, não teria atingido a marca dos mais de 13 bilhões de anos. Se houvesse um pouco menos de matéria, o universo teria se expandido mais rapidamente e não existiriam estrelas, fundamentais para a vida. Se a matéria não se agregar para formar estrelas, a vida não existe.\n\nDiante dessas evidências, há quem fale do acaso como um elemento que está na origem do nosso universo, levantando a hipótese da presença de universos infinitos - a teoria do multiverso - que teriam casualmente se desenvolvido de uma forma completamente diferente da nossa e que para nós eles são desconhecidos. Uma afirmação um tanto “metafísica” (do ponto de vista científico, no sentido de além da física, a Ciência no sentido galileu do termo): esses infinitos outros universos podem de fato ser levantados como hipóteses para justificar a existência casual do nosso, mas não são observáveis​​e, portanto, não podem ser experimentados. Como podemos ver, a hipótese - para quem tem o dom da fé não é hipótese, mas certeza - de que Alguém pensou e está na origem dos céus e da terra, de que Alguém pensou em nós, nos quis e nos desenvolveu como somos, que nos amou e continua nos amando, dando-nos vida a cada momento, não pode ser demonstrada “cientificamente”, mas não é menos plausível do que outras hipóteses igualmente metafísicas.\n\nA superação de barreiras é, portanto, positiva, assim como o desaparecimento de antigos axiomas segundo os quais a ciência, em particular aquela que trata da origem do universo, seria capaz de demonstrar que Deus não existe. Porém, ao mesmo tempo, a tentativa de comprovar cientificamente a sua existência também deve ser evitada.\n\nA este respeito, é interessante ler Antes do Big Bang (Rizzoli editore, pp. 249, 19 euros), o livro do diretor do Departamento de Física Teórica da Organização Europeia para a Investigação Nuclear (CERN), Gian Francesco Giudice, publicado em setembro passado. Este também é um ensaio cuja origem se deve à pergunta de uma menina que viajava de trem sentada em frente ao cientista com a intenção de ler um artigo sobre cosmologia quântica. A menina perguntou o que ele estava lendo e ao ouvir a resposta: “É a história do universo”, ela lhe disse: “Se conta toda a história do universo, fala também de mim?”. Uma pergunta que surpreendeu Giudice, deixando-o momentaneamente sem palavras, que a seguir respondeu incerto: «Não, penso que não. Mas ainda não li tudo".\n\nTambém neste livro falamos sobre o Big Bang; da expansão do universo comprovada pela descoberta casual de dois radioastrônomos da companhia telefônica Bell que em 1965 detectaram a energia cósmica de fundo, considerada prova irrefutável de que o universo não está apenas se expandindo hoje, mas que no passado atingiu níveis muito elevados temperaturas; da uniformidade quase perfeita do universo mesmo em lugares do espaço que nunca conseguiram se comunicar entre si; do estado de um universo incompreensivelmente ordenado após o Big Bang. Até chegar à teoria do “multiverso” segundo a qual toda história cósmica possível acontece em algum universo paralelo e se repete em infinitos outros universos paralelos. O cientista do CERN comenta esta última teoria: «É inegável que hoje a verificabilidade do multiverso parece extremamente árdua...». Giudice, que também critica o excesso de entusiasmo demonstrado pelos que creem diante da descoberta do Big Bang, também destrói o uso mais recente da mesma descoberta para justificar o ateísmo por aqueles que afirmam que a criação cósmica ocorre a partir do Nada.\n\nEis que o espetáculo do nascimento do universo e o estupor com que o cientista o relata falam mais aos que creem do que as tentativas de provar Deus com equações e experimentos de laboratório. É o mesmo estupor presente no comunicado da Specola Vaticana, que há algumas semanas relatou a descoberta do padre Gabriele Gionti e do padre Matteo Galaverni, o desenvolvimento de um novo método matemático útil para entender os primeiros instantes do universo, mostrando como há uma conexão entre as teorias alternativas da gravidade e uma teoria particular da gravidade chamada "anti-Newtoniana" ou "antigravidade".\n\nAceitamos, portanto, livros que nos permitam penetrar um pouco mais nos mistérios da formação do universo. Mas muita cautela para evitar confiar na ciência e nos seus métodos para “provar” a existência do Criador. Recordemos sempre as declarações de João Paulo II, que durante uma Audiência Geral em julho de 1985 disse: «Quando falamos de provas da existência de Deus, devemos sublinhar que não se trata de provas científico-experimentais. As provas científicas, no sentido moderno da palavra, são válidas apenas para as coisas perceptíveis aos sentidos, pois só sobre estas podem ser exercidos os instrumentos de investigação e verificação, que a ciência utiliza. Querer prova científica de Deus significaria rebaixar Deus à categoria de seres do nosso mundo e, portanto, já estar metodologicamente errado sobre o que Deus é. A ciência deve reconhecer os seus limites e a sua impotência para alcançar a existência de Deus: ela não pode afirmar nem negar esta existência. No entanto, não se deve tirar disso a conclusão de que os cientistas são incapazes de encontrar, nos seus estudos científicos, razões válidas para admitir a existência de Deus. Se a ciência, como tal, não pode chegar a Deus, o cientista, que possui inteligência cujo objeto não é limitando às coisas sensíveis, pode descobrir no mundo as razões para afirmar um ser que o supera. Muitos cientistas fizeram e estão fazendo esta descoberta”.\n\nPalavras que ecoam as do pioneiro do Big Bang, padre Lemaître, que, no final de uma conferência pública, quando questionado se o átomo primitivo deveria ser identificado com Deus, respondeu sorrindo: «Tenho muito respeito por Deus para fazer disso uma hipótese científica”.	2024-06-07	o-criador-e-as-hipoteses-da-ciencia	2024-06-13 10:58:48.781	2024-06-13 10:58:48.781	1	1
51	Acordo de Cooperação entre as Bibliotecas do Brasil e do Vaticano	A Biblioteca Apostólica Vaticana e a Fundação da Biblioteca Nacional do Brasil assinaram um memorando de entendimento sobre cooperação técnica e científica que prevê, entre outros pontos, o desenvolvimento de projetos conjuntos na conservação de seus respectivos acervos.\n\nA cerimônia, realizada nesta segunda-feira, dia 18 de março, no Vaticano, contou com a presença do Arquivista e Bibliotecário da Santa Igreja Romana, dom Angelo Vincenzo Zani, do Presidente da Fundação da Biblioteca Nacional do Brasil, Marco Lucchesi, e do Embaixador do Brasil junto à Santa Sé, Everton Vieira Vargas.\n\nGraças ao memorando - que terá duração de três anos e poderá ser prorrogado - as duas instituições poderão organizar conferências, seminários, workshops, cursos, exposições e outros eventos culturais e científicos; promover missões com o objetivo de trocar informações sobre práticas científicas e técnicas inovadoras de conservação; apoiar programas e projetos para a digitalização de suas coleções; receber visitas de técnicos e especialistas; e incentivar o intercâmbio de publicações e materiais multimídia com o objetivo de enriquecer as coleções de cada instituição.\n\n"É um dia histórico para o futuro de um elo sensível para a cultura da paz e das relações ecumênicas", disse Lucchesi ao comentar a iniciativa.	2024-03-28	acordo-de-cooperacao-entre-as-bibliotecas-do-brasil-e-do-vaticano	2024-06-13 11:01:23.577	2024-06-13 11:01:23.577	1	1
52	Amazônia: é preciso olhar além das copas das árvores, ali habitam pessoas	Na manhã desta quinta-feira, o Papa Francisco recebeu em audiência os participantes do workshop "Conhecimento dos povos indígenas e as ciências: Combinando conhecimento e ciência sobre vulnerabilidades e soluções para a resiliência", promovido pelas Pontifícias Academias de Ciências e Ciências Sociais. O evento teve início logo após o encontro com o Pontífice, na Casina Pio IV. Entre os participantes, a ministra do governo brasileiro para os povos indígenas, Sônia Guajajara.\nEm conversa com a mídia do Vaticano, a líder política, que se destaca por sua luta histórica pelos direitos dos povos originários e pelo meio ambiente, comentou a importância deste momento e do encontro com o Papa Francisco, o discurso no workshop, a situação dos povos atuais na região amazônica, os desafios de sua atuação como ministra, e como é possível enxergar o futuro diante dos desafios da atualidade.\n\nComo foi o encontro com o Santo Padre?\nÉ um encontro histórico, eu diria. É um momento em que os conhecimentos se encontram, o conhecimento tradicional se encontra com o conhecimento religioso e científico. Estamos aqui na Academia Pontifícia de Ciências do Vaticano. Para nós, é uma troca muito especial e importante para a valorização dos povos indígenas. Estamos vivendo um momento muito especial no Brasil, com a criação do Ministério dos Povos Indígenas e, aqui, este momento de troca entre sociedade civil, governo, cientistas e várias autoridades que debatem o futuro.\nA senhora também tomou a palavra no workshop “Conhecimento dos povos indígenas e as ciências". Qual foi o tema abordado?\nComo o tema deste seminário é sobre o conhecimento dos povos indígenas, é muito importante que os acordos firmados, como o Acordo de Paris, por exemplo, que reconhece o conhecimento tradicional dos povos indígenas como conhecimento científico, possam ser implementados nas várias instâncias, seja nas próprias Conferências do Clima das Nações Unidas, seja nos governos nacionais. Então, aqui, falei um pouco sobre isso. Como é importante que o mundo reconheça o papel dos povos e dos territórios indígenas, o respeito aos modos de vida e aos saberes tradicionais para conter essa crise climática.\n\nO Papa Francisco, em seu discurso desta manhã, falou que esse encontro tem o objetivo de convocar governos, mas também grandes organizações, para reconhecer e respeitar a diversidade dentro da grande família humana. No Brasil, como está o respeito por essa diversidade?\nEstamos num momento em que há um reconhecimento do Poder Executivo. A criação do ministério favorece esse protagonismo dos povos indígenas, colocando a pauta indígena no centro do debate político. Por outro lado, é uma novidade essa presença indígena na mesa de tomada de decisões, o que acaba provocando muitos incômodos por parte daqueles que querem expropriar os territórios, explorar os territórios indígenas, e que não conseguem compreender o meio ambiente como uma pauta prioritária neste momento tão urgente das emergências climáticas.\nQuanto é difícil ser ministra em uma pasta como essa?\nÉ muito difícil. São muitos desafios, muitas demandas reprimidas. Foram cinco séculos para que pudéssemos ter o primeiro Ministério dos Povos Indígenas, a primeira ministra indígena, mulher indígena. E quando nos articulamos e o presidente determina que os povos indígenas têm que ser uma prioridade para este governo, as forças contrárias também se articulam, se organizam para impedir o avanço dessas ações em defesa dos povos indígenas. Mas estamos muito confiantes, estamos em um momento muito oportuno. Muitas ações já estão acontecendo. Acho que é uma oportunidade também para criar novas consciências sobre essa presença indígena no Brasil, sobre a valorização dos povos e dos territórios. Então, é difícil, mas é necessário. Estamos aí de pé e vamos nos manter firmes, crescendo cada vez mais com a ocupação de cargos estratégicos por povos indígenas.\n\nO Papa, em seu discurso, disse uma coisa muito bonita: "Deus nos fez guardiões e não senhores do planeta. Somos todos chamados a uma conversão ecológica, comprometidos em salvar a nossa casa comum". Essa conversão ecológica está ocorrendo no Brasil?\nA criação do ministério é um primeiro passo. Temos pela primeira vez toda a presidência da Funai composta por povos indígenas. Acredito que esses são passos importantes para que possamos estruturar e consolidar essa presença indígena nos espaços de tomada de decisão. É claro que a nossa presença ainda gera esses incômodos e reações adversas, mas temos que continuar acreditando que é possível conscientizar a humanidade. Esse protagonismo indígena que estamos assumindo neste momento, com indígenas no Parlamento, no Poder Executivo, em vários espaços do Judiciário, já é um bom caminho a seguir. Acredito que essa mudança ainda vai demorar muito tempo, mas é uma abertura de portas para que essa continuidade de ocupação de espaços possa ser preenchida por vários outros indígenas, não só no Brasil, mas em toda a América Latina e no mundo. Afinal de contas, estamos falando de um momento, de um mundo em emergência. Temos a crise climática, a crise social, a crise civilizatória. E apresentamos a pauta indígena como uma pauta humanitária e civilizatória para o planeta.\nMuitos no exterior nos perguntam: como está a Amazônia? O que vocês estão fazendo com a Amazônia e os nossos indígenas? O que vocês estão fazendo pelos indígenas?\nOs indígenas, naturalmente, são parte da Amazônia. É preciso pensar na Amazônia sempre como uma diversidade de árvores, de animais, mas também de pessoas e muitas culturas. A Amazônia é esse lugar muito cobiçado tanto por quem quer proteger quanto por quem quer explorar. Infelizmente, com toda essa cobiça, os indígenas, as comunidades tradicionais e a comunidade local acabam pagando com a própria vida para proteger a Amazônia que serve a todo o mundo. É preciso não só o governo local, mas o mundo inteiro olhar para essa diversidade de cultura, de povos, e juntos proteger os direitos e proteger essas pessoas que são, de fato, as protetoras. É preciso olhar a Amazônia para além das copas das árvores e enxergar quem está ali fazendo toda essa proteção. E somos nós, povos indígenas e as comunidades locais.	2024-02-11	amazonia-e-preciso-olhar-alem-das-copas-das-arvores-ali-habitam-pessoas	2024-06-13 11:04:29.847	2024-06-13 11:04:29.847	1	1
\.


--
-- TOC entry 3510 (class 0 OID 24594)
-- Dependencies: 271
-- Data for Name: news_category_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.news_category_links (id, new_id, category_id, new_order) FROM stdin;
11	11	15	1
12	12	16	1
13	13	17	1
14	14	18	1
15	15	19	1
16	16	20	1
17	17	21	1
50	50	30	1
51	51	31	1
52	52	32	1
\.


--
-- TOC entry 3465 (class 0 OID 17317)
-- Dependencies: 226
-- Data for Name: slugs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.slugs (id, slug, count, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- TOC entry 3467 (class 0 OID 17325)
-- Dependencies: 228
-- Data for Name: strapi_api_token_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_api_token_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- TOC entry 3469 (class 0 OID 17330)
-- Dependencies: 230
-- Data for Name: strapi_api_token_permissions_token_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_api_token_permissions_token_links (id, api_token_permission_id, api_token_id, api_token_permission_order) FROM stdin;
\.


--
-- TOC entry 3471 (class 0 OID 17335)
-- Dependencies: 232
-- Data for Name: strapi_api_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_api_tokens (id, name, description, type, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- TOC entry 3473 (class 0 OID 17343)
-- Dependencies: 234
-- Data for Name: strapi_core_store_settings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_core_store_settings (id, key, value, type, environment, tag) FROM stdin;
2	plugin_content_manager_configuration_content_types::admin::permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"actionParameters":{"edit":{"label":"actionParameters","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"actionParameters","searchable":false,"sortable":false}},"subject":{"edit":{"label":"subject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subject","searchable":true,"sortable":true}},"properties":{"edit":{"label":"properties","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"properties","searchable":false,"sortable":false}},"conditions":{"edit":{"label":"conditions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"conditions","searchable":false,"sortable":false}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","subject","role"],"edit":[[{"name":"action","size":6}],[{"name":"actionParameters","size":12}],[{"name":"subject","size":6}],[{"name":"properties","size":12}],[{"name":"conditions","size":12}],[{"name":"role","size":6}]]},"uid":"admin::permission"}	object	\N	\N
3	plugin_content_manager_configuration_content_types::admin::role	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"users","searchable":false,"sortable":false}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","description"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}],[{"name":"description","size":6},{"name":"users","size":6}],[{"name":"permissions","size":6}]]},"uid":"admin::role"}	object	\N	\N
4	plugin_content_manager_configuration_content_types::admin::api-token	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"accessKey","size":6}],[{"name":"lastUsedAt","size":6},{"name":"permissions","size":6}],[{"name":"expiresAt","size":6},{"name":"lifespan","size":4}]]},"uid":"admin::api-token"}	object	\N	\N
5	plugin_content_manager_configuration_content_types::admin::api-token-permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]},"uid":"admin::api-token-permission"}	object	\N	\N
6	plugin_content_manager_configuration_content_types::admin::transfer-token	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","accessKey"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"accessKey","size":6},{"name":"lastUsedAt","size":6}],[{"name":"permissions","size":6},{"name":"expiresAt","size":6}],[{"name":"lifespan","size":4}]]},"uid":"admin::transfer-token"}	object	\N	\N
7	plugin_content_manager_configuration_content_types::admin::transfer-token-permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]},"uid":"admin::transfer-token-permission"}	object	\N	\N
8	plugin_content_manager_configuration_content_types::plugin::upload.file	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"alternativeText":{"edit":{"label":"alternativeText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"alternativeText","searchable":true,"sortable":true}},"caption":{"edit":{"label":"caption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"caption","searchable":true,"sortable":true}},"width":{"edit":{"label":"width","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"width","searchable":true,"sortable":true}},"height":{"edit":{"label":"height","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"height","searchable":true,"sortable":true}},"formats":{"edit":{"label":"formats","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"formats","searchable":false,"sortable":false}},"hash":{"edit":{"label":"hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"hash","searchable":true,"sortable":true}},"ext":{"edit":{"label":"ext","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ext","searchable":true,"sortable":true}},"mime":{"edit":{"label":"mime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"mime","searchable":true,"sortable":true}},"size":{"edit":{"label":"size","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"size","searchable":true,"sortable":true}},"url":{"edit":{"label":"url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"url","searchable":true,"sortable":true}},"previewUrl":{"edit":{"label":"previewUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"previewUrl","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"provider_metadata":{"edit":{"label":"provider_metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider_metadata","searchable":false,"sortable":false}},"folder":{"edit":{"label":"folder","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"folder","searchable":true,"sortable":true}},"folderPath":{"edit":{"label":"folderPath","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"folderPath","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","alternativeText","caption"],"edit":[[{"name":"name","size":6},{"name":"alternativeText","size":6}],[{"name":"caption","size":6},{"name":"width","size":4}],[{"name":"height","size":4}],[{"name":"formats","size":12}],[{"name":"hash","size":6},{"name":"ext","size":6}],[{"name":"mime","size":6},{"name":"size","size":4}],[{"name":"url","size":6},{"name":"previewUrl","size":6}],[{"name":"provider","size":6}],[{"name":"provider_metadata","size":12}],[{"name":"folder","size":6},{"name":"folderPath","size":6}]]},"uid":"plugin::upload.file"}	object	\N	\N
9	plugin_content_manager_configuration_content_types::plugin::upload.folder	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"pathId":{"edit":{"label":"pathId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"pathId","searchable":true,"sortable":true}},"parent":{"edit":{"label":"parent","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"parent","searchable":true,"sortable":true}},"children":{"edit":{"label":"children","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"children","searchable":false,"sortable":false}},"files":{"edit":{"label":"files","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"files","searchable":false,"sortable":false}},"path":{"edit":{"label":"path","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"path","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","pathId","parent"],"edit":[[{"name":"name","size":6},{"name":"pathId","size":4}],[{"name":"parent","size":6},{"name":"children","size":6}],[{"name":"files","size":6},{"name":"path","size":6}]]},"uid":"plugin::upload.folder"}	object	\N	\N
1	strapi_content_types_schema	{"admin::permission":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"actionParameters":{"type":"json","configurable":false,"required":false,"default":{}},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"actionParameters":{"type":"json","configurable":false,"required":false,"default":{}},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"}},"kind":"collectionType"},"modelType":"contentType","modelName":"permission","connection":"default","uid":"admin::permission","plugin":"admin","globalId":"AdminPermission"},"admin::user":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"registrationToken":{"hidden":true}}},"kind":"collectionType","__schema__":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"user","connection":"default","uid":"admin::user","plugin":"admin","globalId":"AdminUser"},"admin::role":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"}},"kind":"collectionType"},"modelType":"contentType","modelName":"role","connection":"default","uid":"admin::role","plugin":"admin","globalId":"AdminRole"},"admin::api-token":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"api-token","connection":"default","uid":"admin::api-token","plugin":"admin","globalId":"AdminApiToken"},"admin::api-token-permission":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"}},"kind":"collectionType"},"modelType":"contentType","modelName":"api-token-permission","connection":"default","uid":"admin::api-token-permission","plugin":"admin","globalId":"AdminApiTokenPermission"},"admin::transfer-token":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"transfer-token","connection":"default","uid":"admin::transfer-token","plugin":"admin","globalId":"AdminTransferToken"},"admin::transfer-token-permission":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"}},"kind":"collectionType"},"modelType":"contentType","modelName":"transfer-token-permission","connection":"default","uid":"admin::transfer-token-permission","plugin":"admin","globalId":"AdminTransferTokenPermission"},"plugin::upload.file":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","min":1,"required":true,"private":true,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null}],"kind":"collectionType","__schema__":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","min":1,"required":true,"private":true,"searchable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"file","connection":"default","uid":"plugin::upload.file","plugin":"upload","globalId":"UploadFile"},"plugin::upload.folder":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","min":1,"required":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"}],"kind":"collectionType","__schema__":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","min":1,"required":true}},"kind":"collectionType"},"modelType":"contentType","modelName":"folder","connection":"default","uid":"plugin::upload.folder","plugin":"upload","globalId":"UploadFolder"},"plugin::content-releases.release":{"collectionName":"strapi_releases","info":{"singularName":"release","pluralName":"releases","displayName":"Release"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true},"releasedAt":{"type":"datetime"},"scheduledAt":{"type":"datetime"},"timezone":{"type":"string"},"status":{"type":"enumeration","enum":["ready","blocked","failed","done","empty"],"required":true},"actions":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","mappedBy":"release"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_releases","info":{"singularName":"release","pluralName":"releases","displayName":"Release"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true},"releasedAt":{"type":"datetime"},"scheduledAt":{"type":"datetime"},"timezone":{"type":"string"},"status":{"type":"enumeration","enum":["ready","blocked","failed","done","empty"],"required":true},"actions":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","mappedBy":"release"}},"kind":"collectionType"},"modelType":"contentType","modelName":"release","connection":"default","uid":"plugin::content-releases.release","plugin":"content-releases","globalId":"ContentReleasesRelease"},"plugin::content-releases.release-action":{"collectionName":"strapi_release_actions","info":{"singularName":"release-action","pluralName":"release-actions","displayName":"Release Action"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"type":{"type":"enumeration","enum":["publish","unpublish"],"required":true},"entry":{"type":"relation","relation":"morphToOne","configurable":false},"contentType":{"type":"string","required":true},"locale":{"type":"string"},"release":{"type":"relation","relation":"manyToOne","target":"plugin::content-releases.release","inversedBy":"actions"},"isEntryValid":{"type":"boolean"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_release_actions","info":{"singularName":"release-action","pluralName":"release-actions","displayName":"Release Action"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"type":{"type":"enumeration","enum":["publish","unpublish"],"required":true},"entry":{"type":"relation","relation":"morphToOne","configurable":false},"contentType":{"type":"string","required":true},"locale":{"type":"string"},"release":{"type":"relation","relation":"manyToOne","target":"plugin::content-releases.release","inversedBy":"actions"},"isEntryValid":{"type":"boolean"}},"kind":"collectionType"},"modelType":"contentType","modelName":"release-action","connection":"default","uid":"plugin::content-releases.release-action","plugin":"content-releases","globalId":"ContentReleasesReleaseAction"},"plugin::i18n.locale":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"locale","connection":"default","uid":"plugin::i18n.locale","plugin":"i18n","collectionName":"i18n_locale","globalId":"I18NLocale"},"plugin::users-permissions.permission":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"permission","connection":"default","uid":"plugin::users-permissions.permission","plugin":"users-permissions","globalId":"UsersPermissionsPermission"},"plugin::users-permissions.role":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"role","connection":"default","uid":"plugin::users-permissions.role","plugin":"users-permissions","globalId":"UsersPermissionsRole"},"plugin::users-permissions.user":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"draftAndPublish":false,"timestamps":true},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"confirmationToken":{"hidden":true},"provider":{"hidden":true}}},"kind":"collectionType","__schema__":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"draftAndPublish":false,"timestamps":true},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"user","connection":"default","uid":"plugin::users-permissions.user","plugin":"users-permissions","globalId":"UsersPermissionsUser"},"plugin::slugify.slug":{"kind":"collectionType","collectionName":"slugs","info":{"singularName":"slug","pluralName":"slugs","displayName":"slug"},"options":{"draftAndPublish":false,"comment":""},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"slug":{"type":"text"},"count":{"type":"integer"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"slugs","info":{"singularName":"slug","pluralName":"slugs","displayName":"slug"},"options":{"draftAndPublish":false,"comment":""},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"slug":{"type":"text"},"count":{"type":"integer"}},"kind":"collectionType"},"modelType":"contentType","modelName":"slug","connection":"default","uid":"plugin::slugify.slug","plugin":"slugify","globalId":"SlugifySlug"},"api::category.category":{"kind":"collectionType","collectionName":"categories","info":{"singularName":"category","pluralName":"categories","displayName":"category","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"name":{"type":"string","required":true},"events":{"type":"relation","relation":"oneToMany","target":"api::event.event","mappedBy":"category"},"slug":{"type":"uid","targetField":"name","required":true},"news":{"type":"relation","relation":"oneToMany","target":"api::new.new","mappedBy":"category"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"categories","info":{"singularName":"category","pluralName":"categories","displayName":"category","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"name":{"type":"string","required":true},"events":{"type":"relation","relation":"oneToMany","target":"api::event.event","mappedBy":"category"},"slug":{"type":"uid","targetField":"name","required":true},"news":{"type":"relation","relation":"oneToMany","target":"api::new.new","mappedBy":"category"}},"kind":"collectionType"},"modelType":"contentType","modelName":"category","connection":"default","uid":"api::category.category","apiName":"category","globalId":"Category","actions":{},"lifecycles":{}},"api::event.event":{"kind":"collectionType","collectionName":"events","info":{"singularName":"event","pluralName":"events","displayName":"Event","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"title":{"type":"string","required":true},"content":{"type":"richtext","required":true},"date":{"type":"date","required":true},"cover":{"type":"media","multiple":false,"required":true,"allowedTypes":["images"]},"category":{"type":"relation","relation":"manyToOne","target":"api::category.category","inversedBy":"events"},"slug":{"type":"uid","targetField":"title","required":true},"album":{"type":"string","required":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"events","info":{"singularName":"event","pluralName":"events","displayName":"Event","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"title":{"type":"string","required":true},"content":{"type":"richtext","required":true},"date":{"type":"date","required":true},"cover":{"type":"media","multiple":false,"required":true,"allowedTypes":["images"]},"category":{"type":"relation","relation":"manyToOne","target":"api::category.category","inversedBy":"events"},"slug":{"type":"uid","targetField":"title","required":true},"album":{"type":"string","required":true}},"kind":"collectionType"},"modelType":"contentType","modelName":"event","connection":"default","uid":"api::event.event","apiName":"event","globalId":"Event","actions":{},"lifecycles":{}},"api::group.group":{"kind":"collectionType","collectionName":"groups","info":{"singularName":"group","pluralName":"groups","displayName":"Group"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"title":{"type":"string","required":true},"description":{"type":"richtext","required":true},"cover":{"allowedTypes":["images"],"type":"media","multiple":false},"slug":{"type":"uid","targetField":"title","required":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"groups","info":{"singularName":"group","pluralName":"groups","displayName":"Group"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"title":{"type":"string","required":true},"description":{"type":"richtext","required":true},"cover":{"allowedTypes":["images"],"type":"media","multiple":false},"slug":{"type":"uid","targetField":"title","required":true}},"kind":"collectionType"},"modelType":"contentType","modelName":"group","connection":"default","uid":"api::group.group","apiName":"group","globalId":"Group","actions":{},"lifecycles":{}},"api::new.new":{"kind":"collectionType","collectionName":"news","info":{"singularName":"new","pluralName":"news","displayName":"New","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"title":{"type":"string","required":true},"content":{"type":"richtext","required":true},"date":{"type":"date","required":true},"cover":{"type":"media","multiple":false,"required":true,"allowedTypes":["images"]},"category":{"type":"relation","relation":"manyToOne","target":"api::category.category","inversedBy":"news"},"slug":{"type":"uid","required":true,"targetField":"title"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"news","info":{"singularName":"new","pluralName":"news","displayName":"New","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"title":{"type":"string","required":true},"content":{"type":"richtext","required":true},"date":{"type":"date","required":true},"cover":{"type":"media","multiple":false,"required":true,"allowedTypes":["images"]},"category":{"type":"relation","relation":"manyToOne","target":"api::category.category","inversedBy":"news"},"slug":{"type":"uid","required":true,"targetField":"title"}},"kind":"collectionType"},"modelType":"contentType","modelName":"new","connection":"default","uid":"api::new.new","apiName":"new","globalId":"New","actions":{},"lifecycles":{}}}	object	\N	\N
10	plugin_content_manager_configuration_content_types::admin::user	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"firstname","defaultSortBy":"firstname","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"firstname":{"edit":{"label":"firstname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"firstname","searchable":true,"sortable":true}},"lastname":{"edit":{"label":"lastname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastname","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"registrationToken":{"edit":{"label":"registrationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"registrationToken","searchable":true,"sortable":true}},"isActive":{"edit":{"label":"isActive","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isActive","searchable":true,"sortable":true}},"roles":{"edit":{"label":"roles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"roles","searchable":false,"sortable":false}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"preferedLanguage":{"edit":{"label":"preferedLanguage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"preferedLanguage","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","firstname","lastname","username"],"edit":[[{"name":"firstname","size":6},{"name":"lastname","size":6}],[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"isActive","size":4}],[{"name":"roles","size":6},{"name":"blocked","size":4}],[{"name":"preferedLanguage","size":6}]]},"uid":"admin::user"}	object	\N	\N
13	plugin_content_manager_configuration_content_types::plugin::users-permissions.permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","role","createdAt"],"edit":[[{"name":"action","size":6},{"name":"role","size":6}]]},"uid":"plugin::users-permissions.permission"}	object	\N	\N
23	plugin_i18n_default_locale	"pt-BR"	string	\N	\N
14	plugin_content_manager_configuration_content_types::plugin::users-permissions.role	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"users","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"permissions","size":6}],[{"name":"users","size":6}]]},"uid":"plugin::users-permissions.role"}	object	\N	\N
15	plugin_content_manager_configuration_content_types::plugin::users-permissions.user	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"username","defaultSortBy":"username","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"confirmationToken":{"edit":{"label":"confirmationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"confirmationToken","searchable":true,"sortable":true}},"confirmed":{"edit":{"label":"confirmed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"confirmed","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","username","email","confirmed"],"edit":[[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"confirmed","size":4}],[{"name":"blocked","size":4},{"name":"role","size":6}]]},"uid":"plugin::users-permissions.user"}	object	\N	\N
11	plugin_content_manager_configuration_content_types::plugin::content-releases.release	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"releasedAt":{"edit":{"label":"releasedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"releasedAt","searchable":true,"sortable":true}},"scheduledAt":{"edit":{"label":"scheduledAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"scheduledAt","searchable":true,"sortable":true}},"timezone":{"edit":{"label":"timezone","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"timezone","searchable":true,"sortable":true}},"status":{"edit":{"label":"status","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"status","searchable":true,"sortable":true}},"actions":{"edit":{"label":"actions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"contentType"},"list":{"label":"actions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","releasedAt","scheduledAt"],"edit":[[{"name":"name","size":6},{"name":"releasedAt","size":6}],[{"name":"scheduledAt","size":6},{"name":"timezone","size":6}],[{"name":"actions","size":6},{"name":"status","size":6}]]},"uid":"plugin::content-releases.release"}	object	\N	\N
12	plugin_content_manager_configuration_content_types::plugin::content-releases.release-action	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"contentType","defaultSortBy":"contentType","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"contentType":{"edit":{"label":"contentType","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"contentType","searchable":true,"sortable":true}},"locale":{"edit":{"label":"locale","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"locale","searchable":true,"sortable":true}},"release":{"edit":{"label":"release","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"release","searchable":true,"sortable":true}},"isEntryValid":{"edit":{"label":"isEntryValid","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isEntryValid","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","type","contentType","locale"],"edit":[[{"name":"type","size":6},{"name":"contentType","size":6}],[{"name":"locale","size":6},{"name":"release","size":6}],[{"name":"isEntryValid","size":4}]]},"uid":"plugin::content-releases.release-action"}	object	\N	\N
16	plugin_content_manager_configuration_content_types::plugin::i18n.locale	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","createdAt"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}]]},"uid":"plugin::i18n.locale"}	object	\N	\N
17	plugin_upload_settings	{"sizeOptimization":true,"responsiveDimensions":true,"autoOrientation":false}	object	\N	\N
18	plugin_upload_view_configuration	{"pageSize":10,"sort":"createdAt:DESC"}	object	\N	\N
24	core_admin_auth	{"providers":{"autoRegister":false,"defaultRole":null,"ssoLockedRoles":null}}	object	\N	\N
21	plugin_users-permissions_email	{"reset_password":{"display":"Email.template.reset_password","icon":"sync","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Reset password","message":"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>"}},"email_confirmation":{"display":"Email.template.email_confirmation","icon":"check-square","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Account confirmation","message":"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>"}}}	object	\N	\N
22	plugin_users-permissions_advanced	{"unique_email":true,"allow_register":true,"email_confirmation":false,"email_reset_password":null,"email_confirmation_redirection":null,"default_role":"authenticated"}	object	\N	\N
19	plugin_upload_metrics	{"weeklySchedule":"8 58 9 * * 2","lastWeeklyUpdate":1718114288051}	object	\N	\N
32	plugin_content_manager_configuration_content_types::api::event.event	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"date","defaultSortOrder":"DESC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"title":{"edit":{"label":"Titulo","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Titulo","searchable":true,"sortable":true}},"content":{"edit":{"label":"Conteudo","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"content","searchable":false,"sortable":false}},"date":{"edit":{"label":"Data","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Data","searchable":true,"sortable":true}},"cover":{"edit":{"label":"Capa","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Capa","searchable":false,"sortable":false}},"category":{"edit":{"label":"Categoria","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"category","searchable":true,"sortable":true}},"slug":{"edit":{"label":"Slug","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"slug","searchable":true,"sortable":true}},"album":{"edit":{"label":"Album ID","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"album","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"cover","size":12}],[{"name":"title","size":6},{"name":"slug","size":6}],[{"name":"date","size":4},{"name":"category","size":4},{"name":"album","size":4}],[{"name":"content","size":12}]],"list":["id","cover","title","date"]},"uid":"api::event.event"}	object	\N	\N
30	plugin_content_manager_configuration_content_types::api::category.category	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"ID","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Nome","searchable":true,"sortable":true}},"events":{"edit":{"label":"events","description":"","placeholder":"","visible":true,"editable":true,"mainField":"title"},"list":{"label":"events","searchable":false,"sortable":false}},"slug":{"edit":{"label":"slug","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Slug","searchable":true,"sortable":true}},"news":{"edit":{"label":"news","description":"","placeholder":"","visible":true,"editable":true,"mainField":"title"},"list":{"label":"news","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"name","size":6}],[{"name":"events","size":6},{"name":"slug","size":6}],[{"name":"news","size":6}]],"list":["id","name","slug"]},"uid":"api::category.category"}	object	\N	\N
25	core_admin_project-settings	{"authLogo":{"name":"logo-sao-bento.svg","hash":"logo_sao_bento_26ea69cfe5","url":"/uploads/logo_sao_bento_26ea69cfe5.svg","width":492,"height":492,"ext":".svg","size":35.02,"provider":"local"},"menuLogo":{"name":"logo-sao-bento.svg","hash":"logo_sao_bento_184a0f7eca","url":"/uploads/logo_sao_bento_184a0f7eca.svg","width":492,"height":492,"ext":".svg","size":35.02,"provider":"local"}}	object	\N	\N
34	plugin_content_manager_configuration_content_types::plugin::slugify.slug	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"slug":{"edit":{"label":"slug","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"slug","searchable":true,"sortable":true}},"count":{"edit":{"label":"count","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"count","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","slug","count","createdAt"],"edit":[[{"name":"slug","size":6},{"name":"count","size":4}]]},"uid":"plugin::slugify.slug"}	object	\N	\N
20	plugin_users-permissions_grant	{"email":{"enabled":true,"icon":"envelope"},"discord":{"enabled":false,"icon":"discord","key":"","secret":"","callback":"api/auth/discord/callback","scope":["identify","email"]},"facebook":{"enabled":false,"icon":"facebook-square","key":"","secret":"","callback":"api/auth/facebook/callback","scope":["email"]},"google":{"enabled":false,"icon":"google","key":"","secret":"","callback":"api/auth/google/callback","scope":["email"]},"github":{"enabled":false,"icon":"github","key":"","secret":"","callback":"api/auth/github/callback","scope":["user","user:email"]},"microsoft":{"enabled":false,"icon":"windows","key":"","secret":"","callback":"api/auth/microsoft/callback","scope":["user.read"]},"twitter":{"enabled":false,"icon":"twitter","key":"","secret":"","callback":"api/auth/twitter/callback"},"instagram":{"enabled":false,"icon":"instagram","key":"","secret":"","callback":"api/auth/instagram/callback","scope":["user_profile"]},"vk":{"enabled":false,"icon":"vk","key":"","secret":"","callback":"api/auth/vk/callback","scope":["email"]},"twitch":{"enabled":false,"icon":"twitch","key":"","secret":"","callback":"api/auth/twitch/callback","scope":["user:read:email"]},"linkedin":{"enabled":false,"icon":"linkedin","key":"","secret":"","callback":"api/auth/linkedin/callback","scope":["r_liteprofile","r_emailaddress"]},"cognito":{"enabled":false,"icon":"aws","key":"","secret":"","subdomain":"my.subdomain.com","callback":"api/auth/cognito/callback","scope":["email","openid","profile"]},"reddit":{"enabled":false,"icon":"reddit","key":"","secret":"","state":true,"callback":"api/auth/reddit/callback","scope":["identity"]},"auth0":{"enabled":false,"icon":"","key":"","secret":"","subdomain":"my-tenant.eu","callback":"api/auth/auth0/callback","scope":["openid","email","profile"]},"cas":{"enabled":false,"icon":"book","key":"","secret":"","callback":"api/auth/cas/callback","scope":["openid email"],"subdomain":"my.subdomain.com/cas"},"patreon":{"enabled":false,"icon":"","key":"","secret":"","callback":"api/auth/patreon/callback","scope":["identity","identity[email]"]},"keycloak":{"enabled":false,"icon":"","key":"","secret":"","subdomain":"myKeycloakProvider.com/realms/myrealm","callback":"api/auth/keycloak/callback","scope":["openid","email","profile"]}}	object	\N	\N
35	plugin_content_manager_configuration_content_types::api::new.new	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"date","defaultSortOrder":"DESC"},"metadatas":{"id":{"edit":{},"list":{"label":"ID","searchable":true,"sortable":true}},"title":{"edit":{"label":"Titulo","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Titulo","searchable":true,"sortable":true}},"content":{"edit":{"label":"Conteudo","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"content","searchable":false,"sortable":false}},"date":{"edit":{"label":"Data","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Data","searchable":true,"sortable":true}},"cover":{"edit":{"label":"Capa","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Capa","searchable":false,"sortable":false}},"category":{"edit":{"label":"category","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"category","searchable":true,"sortable":true}},"slug":{"edit":{"label":"Slug","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"slug","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"cover","size":12}],[{"name":"title","size":6},{"name":"slug","size":6}],[{"name":"date","size":6},{"name":"category","size":6}],[{"name":"content","size":12}]],"list":["id","cover","title","date"]},"uid":"api::new.new"}	object	\N	\N
36	plugin_content_manager_configuration_content_types::api::group.group	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"ID","searchable":true,"sortable":true}},"title":{"edit":{"label":"Titulo","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Titulo","searchable":true,"sortable":true}},"description":{"edit":{"label":"Descricao","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":false,"sortable":false}},"cover":{"edit":{"label":"Capa","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Capa","searchable":false,"sortable":false}},"slug":{"edit":{"label":"Slug","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Slug","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"cover","size":12}],[{"name":"title","size":6},{"name":"slug","size":6}],[{"name":"description","size":12}]],"list":["id","cover","title","slug"]},"uid":"api::group.group"}	object	\N	\N
\.


--
-- TOC entry 3475 (class 0 OID 17351)
-- Dependencies: 236
-- Data for Name: strapi_database_schema; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_database_schema (id, schema, "time", hash) FROM stdin;
29	{"tables":[{"name":"strapi_core_store_settings","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"value","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"environment","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"tag","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_webhooks","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"headers","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"events","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"enabled","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_permissions","indexes":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action_parameters","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subject","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"properties","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"conditions","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users","indexes":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"firstname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lastname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"registration_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_active","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"prefered_language","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_roles","indexes":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_tokens","indexes":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_token_permissions","indexes":[{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_tokens","indexes":[{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_token_permissions","indexes":[{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files","indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null},{"name":"files_created_by_id_fk","columns":["created_by_id"]},{"name":"files_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"files_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"files_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"alternative_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"caption","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"width","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"height","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"formats","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hash","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"ext","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"mime","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"size","type":"decimal","args":[10,2],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"preview_url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider_metadata","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"folder_path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"upload_folders","indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"},{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"]},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_releases","indexes":[{"name":"strapi_releases_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_releases_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_releases_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_releases_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"released_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"scheduled_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"timezone","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_release_actions","indexes":[{"name":"strapi_release_actions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_release_actions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_release_actions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_release_actions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"target_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"target_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"content_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_entry_valid","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"i18n_locale","indexes":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"]},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions","indexes":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_roles","indexes":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users","indexes":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"]},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmation_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmed","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"slugs","indexes":[{"name":"slugs_created_by_id_fk","columns":["created_by_id"]},{"name":"slugs_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"slugs_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"slugs_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"slug","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"count","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"categories","indexes":[{"type":"unique","name":"categories_slug_unique","columns":["slug"]},{"name":"categories_created_by_id_fk","columns":["created_by_id"]},{"name":"categories_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"categories_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"categories_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"slug","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false,"unique":true},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"events","indexes":[{"type":"unique","name":"events_slug_unique","columns":["slug"]},{"name":"events_created_by_id_fk","columns":["created_by_id"]},{"name":"events_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"events_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"events_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"content","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"date","type":"date","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"slug","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false,"unique":true},{"name":"album","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"groups","indexes":[{"type":"unique","name":"groups_slug_unique","columns":["slug"]},{"name":"groups_created_by_id_fk","columns":["created_by_id"]},{"name":"groups_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"groups_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"groups_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"slug","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false,"unique":true},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"news","indexes":[{"type":"unique","name":"news_slug_unique","columns":["slug"]},{"name":"news_created_by_id_fk","columns":["created_by_id"]},{"name":"news_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"news_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"news_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"content","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"date","type":"date","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"slug","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false,"unique":true},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_permissions_role_links","indexes":[{"name":"admin_permissions_role_links_fk","columns":["permission_id"]},{"name":"admin_permissions_role_links_inv_fk","columns":["role_id"]},{"name":"admin_permissions_role_links_unique","columns":["permission_id","role_id"],"type":"unique"},{"name":"admin_permissions_role_links_order_inv_fk","columns":["permission_order"]}],"foreignKeys":[{"name":"admin_permissions_role_links_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"admin_permissions","onDelete":"CASCADE"},{"name":"admin_permissions_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users_roles_links","indexes":[{"name":"admin_users_roles_links_fk","columns":["user_id"]},{"name":"admin_users_roles_links_inv_fk","columns":["role_id"]},{"name":"admin_users_roles_links_unique","columns":["user_id","role_id"],"type":"unique"},{"name":"admin_users_roles_links_order_fk","columns":["role_order"]},{"name":"admin_users_roles_links_order_inv_fk","columns":["user_order"]}],"foreignKeys":[{"name":"admin_users_roles_links_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"admin_users","onDelete":"CASCADE"},{"name":"admin_users_roles_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_token_permissions_token_links","indexes":[{"name":"strapi_api_token_permissions_token_links_fk","columns":["api_token_permission_id"]},{"name":"strapi_api_token_permissions_token_links_inv_fk","columns":["api_token_id"]},{"name":"strapi_api_token_permissions_token_links_unique","columns":["api_token_permission_id","api_token_id"],"type":"unique"},{"name":"strapi_api_token_permissions_token_links_order_inv_fk","columns":["api_token_permission_order"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_token_links_fk","columns":["api_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_token_permissions","onDelete":"CASCADE"},{"name":"strapi_api_token_permissions_token_links_inv_fk","columns":["api_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"api_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_token_permissions_token_links","indexes":[{"name":"strapi_transfer_token_permissions_token_links_fk","columns":["transfer_token_permission_id"]},{"name":"strapi_transfer_token_permissions_token_links_inv_fk","columns":["transfer_token_id"]},{"name":"strapi_transfer_token_permissions_token_links_unique","columns":["transfer_token_permission_id","transfer_token_id"],"type":"unique"},{"name":"strapi_transfer_token_permissions_token_links_order_inv_fk","columns":["transfer_token_permission_order"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_token_links_fk","columns":["transfer_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_token_permissions","onDelete":"CASCADE"},{"name":"strapi_transfer_token_permissions_token_links_inv_fk","columns":["transfer_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"transfer_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_related_morphs","indexes":[{"name":"files_related_morphs_fk","columns":["file_id"]},{"name":"files_related_morphs_order_index","columns":["order"]},{"name":"files_related_morphs_id_column_index","columns":["related_id"]}],"foreignKeys":[{"name":"files_related_morphs_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_folder_links","indexes":[{"name":"files_folder_links_fk","columns":["file_id"]},{"name":"files_folder_links_inv_fk","columns":["folder_id"]},{"name":"files_folder_links_unique","columns":["file_id","folder_id"],"type":"unique"},{"name":"files_folder_links_order_inv_fk","columns":["file_order"]}],"foreignKeys":[{"name":"files_folder_links_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"},{"name":"files_folder_links_inv_fk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"file_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"upload_folders_parent_links","indexes":[{"name":"upload_folders_parent_links_fk","columns":["folder_id"]},{"name":"upload_folders_parent_links_inv_fk","columns":["inv_folder_id"]},{"name":"upload_folders_parent_links_unique","columns":["folder_id","inv_folder_id"],"type":"unique"},{"name":"upload_folders_parent_links_order_inv_fk","columns":["folder_order"]}],"foreignKeys":[{"name":"upload_folders_parent_links_fk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"},{"name":"upload_folders_parent_links_inv_fk","columns":["inv_folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_release_actions_release_links","indexes":[{"name":"strapi_release_actions_release_links_fk","columns":["release_action_id"]},{"name":"strapi_release_actions_release_links_inv_fk","columns":["release_id"]},{"name":"strapi_release_actions_release_links_unique","columns":["release_action_id","release_id"],"type":"unique"},{"name":"strapi_release_actions_release_links_order_inv_fk","columns":["release_action_order"]}],"foreignKeys":[{"name":"strapi_release_actions_release_links_fk","columns":["release_action_id"],"referencedColumns":["id"],"referencedTable":"strapi_release_actions","onDelete":"CASCADE"},{"name":"strapi_release_actions_release_links_inv_fk","columns":["release_id"],"referencedColumns":["id"],"referencedTable":"strapi_releases","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"release_action_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"release_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"release_action_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions_role_links","indexes":[{"name":"up_permissions_role_links_fk","columns":["permission_id"]},{"name":"up_permissions_role_links_inv_fk","columns":["role_id"]},{"name":"up_permissions_role_links_unique","columns":["permission_id","role_id"],"type":"unique"},{"name":"up_permissions_role_links_order_inv_fk","columns":["permission_order"]}],"foreignKeys":[{"name":"up_permissions_role_links_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"up_permissions","onDelete":"CASCADE"},{"name":"up_permissions_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users_role_links","indexes":[{"name":"up_users_role_links_fk","columns":["user_id"]},{"name":"up_users_role_links_inv_fk","columns":["role_id"]},{"name":"up_users_role_links_unique","columns":["user_id","role_id"],"type":"unique"},{"name":"up_users_role_links_order_inv_fk","columns":["user_order"]}],"foreignKeys":[{"name":"up_users_role_links_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"up_users","onDelete":"CASCADE"},{"name":"up_users_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"events_category_links","indexes":[{"name":"events_category_links_fk","columns":["event_id"]},{"name":"events_category_links_inv_fk","columns":["category_id"]},{"name":"events_category_links_unique","columns":["event_id","category_id"],"type":"unique"},{"name":"events_category_links_order_inv_fk","columns":["event_order"]}],"foreignKeys":[{"name":"events_category_links_fk","columns":["event_id"],"referencedColumns":["id"],"referencedTable":"events","onDelete":"CASCADE"},{"name":"events_category_links_inv_fk","columns":["category_id"],"referencedColumns":["id"],"referencedTable":"categories","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"event_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"category_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"event_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"news_category_links","indexes":[{"name":"news_category_links_fk","columns":["new_id"]},{"name":"news_category_links_inv_fk","columns":["category_id"]},{"name":"news_category_links_unique","columns":["new_id","category_id"],"type":"unique"},{"name":"news_category_links_order_inv_fk","columns":["new_order"]}],"foreignKeys":[{"name":"news_category_links_fk","columns":["new_id"],"referencedColumns":["id"],"referencedTable":"news","onDelete":"CASCADE"},{"name":"news_category_links_inv_fk","columns":["category_id"],"referencedColumns":["id"],"referencedTable":"categories","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"new_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"category_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"new_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]}]}	2024-05-02 11:07:29.15	56798fe9a5270e2ee575dbb3de49c5ac
\.


--
-- TOC entry 3477 (class 0 OID 17359)
-- Dependencies: 238
-- Data for Name: strapi_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_migrations (id, name, "time") FROM stdin;
\.


--
-- TOC entry 3479 (class 0 OID 17364)
-- Dependencies: 240
-- Data for Name: strapi_release_actions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_release_actions (id, type, target_id, target_type, content_type, locale, created_at, updated_at, created_by_id, updated_by_id, is_entry_valid) FROM stdin;
\.


--
-- TOC entry 3481 (class 0 OID 17372)
-- Dependencies: 242
-- Data for Name: strapi_release_actions_release_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_release_actions_release_links (id, release_action_id, release_id, release_action_order) FROM stdin;
\.


--
-- TOC entry 3483 (class 0 OID 17377)
-- Dependencies: 244
-- Data for Name: strapi_releases; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_releases (id, name, released_at, scheduled_at, timezone, created_at, updated_at, created_by_id, updated_by_id, status) FROM stdin;
\.


--
-- TOC entry 3485 (class 0 OID 17385)
-- Dependencies: 246
-- Data for Name: strapi_transfer_token_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_transfer_token_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- TOC entry 3487 (class 0 OID 17390)
-- Dependencies: 248
-- Data for Name: strapi_transfer_token_permissions_token_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_transfer_token_permissions_token_links (id, transfer_token_permission_id, transfer_token_id, transfer_token_permission_order) FROM stdin;
\.


--
-- TOC entry 3489 (class 0 OID 17395)
-- Dependencies: 250
-- Data for Name: strapi_transfer_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_transfer_tokens (id, name, description, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- TOC entry 3491 (class 0 OID 17403)
-- Dependencies: 252
-- Data for Name: strapi_webhooks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
\.


--
-- TOC entry 3493 (class 0 OID 17411)
-- Dependencies: 254
-- Data for Name: up_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.up_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	plugin::users-permissions.user.me	2024-03-04 13:05:04.387	2024-03-04 13:05:04.387	\N	\N
2	plugin::users-permissions.auth.changePassword	2024-03-04 13:05:04.387	2024-03-04 13:05:04.387	\N	\N
3	plugin::users-permissions.auth.callback	2024-03-04 13:05:04.413	2024-03-04 13:05:04.413	\N	\N
4	plugin::users-permissions.auth.connect	2024-03-04 13:05:04.413	2024-03-04 13:05:04.413	\N	\N
5	plugin::users-permissions.auth.forgotPassword	2024-03-04 13:05:04.413	2024-03-04 13:05:04.413	\N	\N
9	plugin::users-permissions.auth.sendEmailConfirmation	2024-03-04 13:05:04.413	2024-03-04 13:05:04.413	\N	\N
8	plugin::users-permissions.auth.emailConfirmation	2024-03-04 13:05:04.413	2024-03-04 13:05:04.413	\N	\N
7	plugin::users-permissions.auth.register	2024-03-04 13:05:04.413	2024-03-04 13:05:04.413	\N	\N
6	plugin::users-permissions.auth.resetPassword	2024-03-04 13:05:04.413	2024-03-04 13:05:04.413	\N	\N
16	api::category.category.find	2024-03-06 21:04:26.734	2024-03-06 21:04:26.734	\N	\N
17	api::category.category.findOne	2024-03-06 21:04:26.734	2024-03-06 21:04:26.734	\N	\N
19	plugin::upload.content-api.find	2024-03-09 09:32:31.899	2024-03-09 09:32:31.899	\N	\N
18	plugin::upload.content-api.findOne	2024-03-09 09:32:31.899	2024-03-09 09:32:31.899	\N	\N
22	api::event.event.find	2024-03-09 13:42:18.54	2024-03-09 13:42:18.54	\N	\N
23	api::event.event.findOne	2024-03-09 13:42:18.54	2024-03-09 13:42:18.54	\N	\N
27	api::new.new.findOne	2024-04-26 10:55:44.254	2024-04-26 10:55:44.254	\N	\N
26	api::new.new.find	2024-04-26 10:55:44.254	2024-04-26 10:55:44.254	\N	\N
28	api::group.group.find	2024-04-26 11:11:06.404	2024-04-26 11:11:06.404	\N	\N
29	api::group.group.findOne	2024-04-26 11:11:06.404	2024-04-26 11:11:06.404	\N	\N
\.


--
-- TOC entry 3495 (class 0 OID 17416)
-- Dependencies: 256
-- Data for Name: up_permissions_role_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.up_permissions_role_links (id, permission_id, role_id, permission_order) FROM stdin;
1	2	1	1
2	1	1	1
3	3	2	1
4	4	2	1
5	5	2	2
6	9	2	2
7	8	2	2
8	7	2	2
9	6	2	2
16	16	2	4
17	17	2	5
18	19	2	6
19	18	2	6
22	22	2	7
23	23	2	8
26	26	2	10
27	27	2	10
28	28	2	11
29	29	2	11
\.


--
-- TOC entry 3497 (class 0 OID 17421)
-- Dependencies: 258
-- Data for Name: up_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.up_roles (id, name, description, type, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Authenticated	Default role given to authenticated user.	authenticated	2024-03-04 13:05:04.37	2024-03-04 13:05:04.37	\N	\N
2	Public	Default role given to unauthenticated user.	public	2024-03-04 13:05:04.376	2024-04-26 11:11:06.393	\N	\N
\.


--
-- TOC entry 3499 (class 0 OID 17429)
-- Dependencies: 260
-- Data for Name: up_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.up_users (id, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- TOC entry 3501 (class 0 OID 17437)
-- Dependencies: 262
-- Data for Name: up_users_role_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.up_users_role_links (id, user_id, role_id, user_order) FROM stdin;
\.


--
-- TOC entry 3503 (class 0 OID 17442)
-- Dependencies: 264
-- Data for Name: upload_folders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.upload_folders (id, name, path_id, path, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- TOC entry 3505 (class 0 OID 17450)
-- Dependencies: 266
-- Data for Name: upload_folders_parent_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.upload_folders_parent_links (id, folder_id, inv_folder_id, folder_order) FROM stdin;
\.


--
-- TOC entry 3555 (class 0 OID 0)
-- Dependencies: 203
-- Name: admin_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.admin_permissions_id_seq', 161, true);


--
-- TOC entry 3556 (class 0 OID 0)
-- Dependencies: 205
-- Name: admin_permissions_role_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.admin_permissions_role_links_id_seq', 161, true);


--
-- TOC entry 3557 (class 0 OID 0)
-- Dependencies: 207
-- Name: admin_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.admin_roles_id_seq', 3, true);


--
-- TOC entry 3558 (class 0 OID 0)
-- Dependencies: 209
-- Name: admin_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.admin_users_id_seq', 2, true);


--
-- TOC entry 3559 (class 0 OID 0)
-- Dependencies: 211
-- Name: admin_users_roles_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.admin_users_roles_links_id_seq', 5, true);


--
-- TOC entry 3560 (class 0 OID 0)
-- Dependencies: 213
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categories_id_seq', 34, true);


--
-- TOC entry 3561 (class 0 OID 0)
-- Dependencies: 216
-- Name: events_category_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.events_category_links_id_seq', 37, true);


--
-- TOC entry 3562 (class 0 OID 0)
-- Dependencies: 217
-- Name: events_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.events_id_seq', 36, true);


--
-- TOC entry 3563 (class 0 OID 0)
-- Dependencies: 220
-- Name: files_folder_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.files_folder_links_id_seq', 1, false);


--
-- TOC entry 3564 (class 0 OID 0)
-- Dependencies: 221
-- Name: files_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.files_id_seq', 94, true);


--
-- TOC entry 3565 (class 0 OID 0)
-- Dependencies: 223
-- Name: files_related_morphs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.files_related_morphs_id_seq', 138, true);


--
-- TOC entry 3566 (class 0 OID 0)
-- Dependencies: 272
-- Name: groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.groups_id_seq', 7, true);


--
-- TOC entry 3567 (class 0 OID 0)
-- Dependencies: 225
-- Name: i18n_locale_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.i18n_locale_id_seq', 2, true);


--
-- TOC entry 3568 (class 0 OID 0)
-- Dependencies: 270
-- Name: news_category_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.news_category_links_id_seq', 52, true);


--
-- TOC entry 3569 (class 0 OID 0)
-- Dependencies: 268
-- Name: news_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.news_id_seq', 52, true);


--
-- TOC entry 3570 (class 0 OID 0)
-- Dependencies: 227
-- Name: slugs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.slugs_id_seq', 1, false);


--
-- TOC entry 3571 (class 0 OID 0)
-- Dependencies: 229
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_api_token_permissions_id_seq', 1, false);


--
-- TOC entry 3572 (class 0 OID 0)
-- Dependencies: 231
-- Name: strapi_api_token_permissions_token_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_api_token_permissions_token_links_id_seq', 1, false);


--
-- TOC entry 3573 (class 0 OID 0)
-- Dependencies: 233
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_api_tokens_id_seq', 1, true);


--
-- TOC entry 3574 (class 0 OID 0)
-- Dependencies: 235
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_core_store_settings_id_seq', 36, true);


--
-- TOC entry 3575 (class 0 OID 0)
-- Dependencies: 237
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_database_schema_id_seq', 29, true);


--
-- TOC entry 3576 (class 0 OID 0)
-- Dependencies: 239
-- Name: strapi_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_migrations_id_seq', 1, false);


--
-- TOC entry 3577 (class 0 OID 0)
-- Dependencies: 241
-- Name: strapi_release_actions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_release_actions_id_seq', 1, false);


--
-- TOC entry 3578 (class 0 OID 0)
-- Dependencies: 243
-- Name: strapi_release_actions_release_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_release_actions_release_links_id_seq', 1, false);


--
-- TOC entry 3579 (class 0 OID 0)
-- Dependencies: 245
-- Name: strapi_releases_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_releases_id_seq', 1, false);


--
-- TOC entry 3580 (class 0 OID 0)
-- Dependencies: 247
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_id_seq', 1, false);


--
-- TOC entry 3581 (class 0 OID 0)
-- Dependencies: 249
-- Name: strapi_transfer_token_permissions_token_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_token_links_id_seq', 1, false);


--
-- TOC entry 3582 (class 0 OID 0)
-- Dependencies: 251
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_transfer_tokens_id_seq', 1, false);


--
-- TOC entry 3583 (class 0 OID 0)
-- Dependencies: 253
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);


--
-- TOC entry 3584 (class 0 OID 0)
-- Dependencies: 255
-- Name: up_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.up_permissions_id_seq', 29, true);


--
-- TOC entry 3585 (class 0 OID 0)
-- Dependencies: 257
-- Name: up_permissions_role_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.up_permissions_role_links_id_seq', 29, true);


--
-- TOC entry 3586 (class 0 OID 0)
-- Dependencies: 259
-- Name: up_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.up_roles_id_seq', 2, true);


--
-- TOC entry 3587 (class 0 OID 0)
-- Dependencies: 261
-- Name: up_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.up_users_id_seq', 1, true);


--
-- TOC entry 3588 (class 0 OID 0)
-- Dependencies: 263
-- Name: up_users_role_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.up_users_role_links_id_seq', 1, true);


--
-- TOC entry 3589 (class 0 OID 0)
-- Dependencies: 265
-- Name: upload_folders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.upload_folders_id_seq', 1, false);


--
-- TOC entry 3590 (class 0 OID 0)
-- Dependencies: 267
-- Name: upload_folders_parent_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.upload_folders_parent_links_id_seq', 1, false);


--
-- TOC entry 3065 (class 2606 OID 17494)
-- Name: admin_permissions admin_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3071 (class 2606 OID 17496)
-- Name: admin_permissions_role_links admin_permissions_role_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_pkey PRIMARY KEY (id);


--
-- TOC entry 3073 (class 2606 OID 17498)
-- Name: admin_permissions_role_links admin_permissions_role_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_unique UNIQUE (permission_id, role_id);


--
-- TOC entry 3076 (class 2606 OID 17500)
-- Name: admin_roles admin_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_pkey PRIMARY KEY (id);


--
-- TOC entry 3080 (class 2606 OID 17502)
-- Name: admin_users admin_users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);


--
-- TOC entry 3087 (class 2606 OID 17504)
-- Name: admin_users_roles_links admin_users_roles_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_pkey PRIMARY KEY (id);


--
-- TOC entry 3089 (class 2606 OID 17506)
-- Name: admin_users_roles_links admin_users_roles_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_unique UNIQUE (user_id, role_id);


--
-- TOC entry 3092 (class 2606 OID 17508)
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- TOC entry 3094 (class 2606 OID 17510)
-- Name: categories categories_slug_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_slug_unique UNIQUE (slug);


--
-- TOC entry 3106 (class 2606 OID 17512)
-- Name: events_category_links events_category_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.events_category_links
    ADD CONSTRAINT events_category_links_pkey PRIMARY KEY (id);


--
-- TOC entry 3108 (class 2606 OID 17514)
-- Name: events_category_links events_category_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.events_category_links
    ADD CONSTRAINT events_category_links_unique UNIQUE (event_id, category_id);


--
-- TOC entry 3098 (class 2606 OID 17516)
-- Name: events events_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_pkey PRIMARY KEY (id);


--
-- TOC entry 3100 (class 2606 OID 17518)
-- Name: events events_slug_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_slug_unique UNIQUE (slug);


--
-- TOC entry 3123 (class 2606 OID 17520)
-- Name: files_folder_links files_folder_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_pkey PRIMARY KEY (id);


--
-- TOC entry 3125 (class 2606 OID 17522)
-- Name: files_folder_links files_folder_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_unique UNIQUE (file_id, folder_id);


--
-- TOC entry 3111 (class 2606 OID 17524)
-- Name: files files_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);


--
-- TOC entry 3130 (class 2606 OID 17526)
-- Name: files_related_morphs files_related_morphs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_pkey PRIMARY KEY (id);


--
-- TOC entry 3248 (class 2606 OID 24640)
-- Name: groups groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.groups
    ADD CONSTRAINT groups_pkey PRIMARY KEY (id);


--
-- TOC entry 3250 (class 2606 OID 24642)
-- Name: groups groups_slug_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.groups
    ADD CONSTRAINT groups_slug_unique UNIQUE (slug);


--
-- TOC entry 3133 (class 2606 OID 17528)
-- Name: i18n_locale i18n_locale_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);


--
-- TOC entry 3243 (class 2606 OID 24599)
-- Name: news_category_links news_category_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.news_category_links
    ADD CONSTRAINT news_category_links_pkey PRIMARY KEY (id);


--
-- TOC entry 3245 (class 2606 OID 24603)
-- Name: news_category_links news_category_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.news_category_links
    ADD CONSTRAINT news_category_links_unique UNIQUE (new_id, category_id);


--
-- TOC entry 3235 (class 2606 OID 24587)
-- Name: news news_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.news
    ADD CONSTRAINT news_pkey PRIMARY KEY (id);


--
-- TOC entry 3237 (class 2606 OID 24589)
-- Name: news news_slug_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.news
    ADD CONSTRAINT news_slug_unique UNIQUE (slug);


--
-- TOC entry 3137 (class 2606 OID 17542)
-- Name: slugs slugs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.slugs
    ADD CONSTRAINT slugs_pkey PRIMARY KEY (id);


--
-- TOC entry 3141 (class 2606 OID 17544)
-- Name: strapi_api_token_permissions strapi_api_token_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3147 (class 2606 OID 17546)
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_pkey PRIMARY KEY (id);


--
-- TOC entry 3149 (class 2606 OID 17548)
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_unique UNIQUE (api_token_permission_id, api_token_id);


--
-- TOC entry 3152 (class 2606 OID 17550)
-- Name: strapi_api_tokens strapi_api_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_pkey PRIMARY KEY (id);


--
-- TOC entry 3155 (class 2606 OID 17552)
-- Name: strapi_core_store_settings strapi_core_store_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_core_store_settings
    ADD CONSTRAINT strapi_core_store_settings_pkey PRIMARY KEY (id);


--
-- TOC entry 3157 (class 2606 OID 17554)
-- Name: strapi_database_schema strapi_database_schema_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_database_schema
    ADD CONSTRAINT strapi_database_schema_pkey PRIMARY KEY (id);


--
-- TOC entry 3159 (class 2606 OID 17556)
-- Name: strapi_migrations strapi_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_migrations
    ADD CONSTRAINT strapi_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 3162 (class 2606 OID 17558)
-- Name: strapi_release_actions strapi_release_actions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_pkey PRIMARY KEY (id);


--
-- TOC entry 3168 (class 2606 OID 17560)
-- Name: strapi_release_actions_release_links strapi_release_actions_release_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_release_actions_release_links
    ADD CONSTRAINT strapi_release_actions_release_links_pkey PRIMARY KEY (id);


--
-- TOC entry 3170 (class 2606 OID 17562)
-- Name: strapi_release_actions_release_links strapi_release_actions_release_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_release_actions_release_links
    ADD CONSTRAINT strapi_release_actions_release_links_unique UNIQUE (release_action_id, release_id);


--
-- TOC entry 3173 (class 2606 OID 17564)
-- Name: strapi_releases strapi_releases_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_pkey PRIMARY KEY (id);


--
-- TOC entry 3177 (class 2606 OID 17566)
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3183 (class 2606 OID 17568)
-- Name: strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_pkey PRIMARY KEY (id);


--
-- TOC entry 3185 (class 2606 OID 17570)
-- Name: strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_unique UNIQUE (transfer_token_permission_id, transfer_token_id);


--
-- TOC entry 3188 (class 2606 OID 17572)
-- Name: strapi_transfer_tokens strapi_transfer_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_pkey PRIMARY KEY (id);


--
-- TOC entry 3191 (class 2606 OID 17574)
-- Name: strapi_webhooks strapi_webhooks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);


--
-- TOC entry 3194 (class 2606 OID 17576)
-- Name: up_permissions up_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3200 (class 2606 OID 17578)
-- Name: up_permissions_role_links up_permissions_role_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_pkey PRIMARY KEY (id);


--
-- TOC entry 3202 (class 2606 OID 17580)
-- Name: up_permissions_role_links up_permissions_role_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_unique UNIQUE (permission_id, role_id);


--
-- TOC entry 3205 (class 2606 OID 17582)
-- Name: up_roles up_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_pkey PRIMARY KEY (id);


--
-- TOC entry 3209 (class 2606 OID 17584)
-- Name: up_users up_users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_pkey PRIMARY KEY (id);


--
-- TOC entry 3215 (class 2606 OID 17586)
-- Name: up_users_role_links up_users_role_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_pkey PRIMARY KEY (id);


--
-- TOC entry 3217 (class 2606 OID 17588)
-- Name: up_users_role_links up_users_role_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_unique UNIQUE (user_id, role_id);


--
-- TOC entry 3230 (class 2606 OID 17590)
-- Name: upload_folders_parent_links upload_folders_parent_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_pkey PRIMARY KEY (id);


--
-- TOC entry 3232 (class 2606 OID 17592)
-- Name: upload_folders_parent_links upload_folders_parent_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_unique UNIQUE (folder_id, inv_folder_id);


--
-- TOC entry 3220 (class 2606 OID 17594)
-- Name: upload_folders upload_folders_path_id_index; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_id_index UNIQUE (path_id);


--
-- TOC entry 3222 (class 2606 OID 17596)
-- Name: upload_folders upload_folders_path_index; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_index UNIQUE (path);


--
-- TOC entry 3224 (class 2606 OID 17598)
-- Name: upload_folders upload_folders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_pkey PRIMARY KEY (id);


--
-- TOC entry 3063 (class 1259 OID 17599)
-- Name: admin_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_permissions_created_by_id_fk ON public.admin_permissions USING btree (created_by_id);


--
-- TOC entry 3067 (class 1259 OID 17600)
-- Name: admin_permissions_role_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_permissions_role_links_fk ON public.admin_permissions_role_links USING btree (permission_id);


--
-- TOC entry 3068 (class 1259 OID 17601)
-- Name: admin_permissions_role_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_permissions_role_links_inv_fk ON public.admin_permissions_role_links USING btree (role_id);


--
-- TOC entry 3069 (class 1259 OID 17602)
-- Name: admin_permissions_role_links_order_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_permissions_role_links_order_inv_fk ON public.admin_permissions_role_links USING btree (permission_order);


--
-- TOC entry 3066 (class 1259 OID 17603)
-- Name: admin_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_permissions_updated_by_id_fk ON public.admin_permissions USING btree (updated_by_id);


--
-- TOC entry 3074 (class 1259 OID 17604)
-- Name: admin_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_roles_created_by_id_fk ON public.admin_roles USING btree (created_by_id);


--
-- TOC entry 3077 (class 1259 OID 17605)
-- Name: admin_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_roles_updated_by_id_fk ON public.admin_roles USING btree (updated_by_id);


--
-- TOC entry 3078 (class 1259 OID 17606)
-- Name: admin_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_users_created_by_id_fk ON public.admin_users USING btree (created_by_id);


--
-- TOC entry 3082 (class 1259 OID 17607)
-- Name: admin_users_roles_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_users_roles_links_fk ON public.admin_users_roles_links USING btree (user_id);


--
-- TOC entry 3083 (class 1259 OID 17608)
-- Name: admin_users_roles_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_users_roles_links_inv_fk ON public.admin_users_roles_links USING btree (role_id);


--
-- TOC entry 3084 (class 1259 OID 17609)
-- Name: admin_users_roles_links_order_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_users_roles_links_order_fk ON public.admin_users_roles_links USING btree (role_order);


--
-- TOC entry 3085 (class 1259 OID 17610)
-- Name: admin_users_roles_links_order_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_users_roles_links_order_inv_fk ON public.admin_users_roles_links USING btree (user_order);


--
-- TOC entry 3081 (class 1259 OID 17611)
-- Name: admin_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_users_updated_by_id_fk ON public.admin_users USING btree (updated_by_id);


--
-- TOC entry 3090 (class 1259 OID 17612)
-- Name: categories_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX categories_created_by_id_fk ON public.categories USING btree (created_by_id);


--
-- TOC entry 3095 (class 1259 OID 17613)
-- Name: categories_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX categories_updated_by_id_fk ON public.categories USING btree (updated_by_id);


--
-- TOC entry 3102 (class 1259 OID 17614)
-- Name: events_category_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX events_category_links_fk ON public.events_category_links USING btree (event_id);


--
-- TOC entry 3103 (class 1259 OID 17615)
-- Name: events_category_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX events_category_links_inv_fk ON public.events_category_links USING btree (category_id);


--
-- TOC entry 3104 (class 1259 OID 17616)
-- Name: events_category_links_order_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX events_category_links_order_inv_fk ON public.events_category_links USING btree (event_order);


--
-- TOC entry 3096 (class 1259 OID 17617)
-- Name: events_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX events_created_by_id_fk ON public.events USING btree (created_by_id);


--
-- TOC entry 3101 (class 1259 OID 17618)
-- Name: events_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX events_updated_by_id_fk ON public.events USING btree (updated_by_id);


--
-- TOC entry 3109 (class 1259 OID 17619)
-- Name: files_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX files_created_by_id_fk ON public.files USING btree (created_by_id);


--
-- TOC entry 3119 (class 1259 OID 17620)
-- Name: files_folder_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX files_folder_links_fk ON public.files_folder_links USING btree (file_id);


--
-- TOC entry 3120 (class 1259 OID 17621)
-- Name: files_folder_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX files_folder_links_inv_fk ON public.files_folder_links USING btree (folder_id);


--
-- TOC entry 3121 (class 1259 OID 17622)
-- Name: files_folder_links_order_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX files_folder_links_order_inv_fk ON public.files_folder_links USING btree (file_order);


--
-- TOC entry 3126 (class 1259 OID 17623)
-- Name: files_related_morphs_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX files_related_morphs_fk ON public.files_related_morphs USING btree (file_id);


--
-- TOC entry 3127 (class 1259 OID 17624)
-- Name: files_related_morphs_id_column_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX files_related_morphs_id_column_index ON public.files_related_morphs USING btree (related_id);


--
-- TOC entry 3128 (class 1259 OID 17625)
-- Name: files_related_morphs_order_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX files_related_morphs_order_index ON public.files_related_morphs USING btree ("order");


--
-- TOC entry 3112 (class 1259 OID 17626)
-- Name: files_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX files_updated_by_id_fk ON public.files USING btree (updated_by_id);


--
-- TOC entry 3246 (class 1259 OID 24643)
-- Name: groups_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX groups_created_by_id_fk ON public.groups USING btree (created_by_id);


--
-- TOC entry 3251 (class 1259 OID 24644)
-- Name: groups_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX groups_updated_by_id_fk ON public.groups USING btree (updated_by_id);


--
-- TOC entry 3131 (class 1259 OID 17627)
-- Name: i18n_locale_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX i18n_locale_created_by_id_fk ON public.i18n_locale USING btree (created_by_id);


--
-- TOC entry 3134 (class 1259 OID 17628)
-- Name: i18n_locale_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX i18n_locale_updated_by_id_fk ON public.i18n_locale USING btree (updated_by_id);


--
-- TOC entry 3239 (class 1259 OID 24600)
-- Name: news_category_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX news_category_links_fk ON public.news_category_links USING btree (new_id);


--
-- TOC entry 3240 (class 1259 OID 24601)
-- Name: news_category_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX news_category_links_inv_fk ON public.news_category_links USING btree (category_id);


--
-- TOC entry 3241 (class 1259 OID 24604)
-- Name: news_category_links_order_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX news_category_links_order_inv_fk ON public.news_category_links USING btree (new_order);


--
-- TOC entry 3233 (class 1259 OID 24590)
-- Name: news_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX news_created_by_id_fk ON public.news USING btree (created_by_id);


--
-- TOC entry 3238 (class 1259 OID 24591)
-- Name: news_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX news_updated_by_id_fk ON public.news USING btree (updated_by_id);


--
-- TOC entry 3135 (class 1259 OID 17636)
-- Name: slugs_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX slugs_created_by_id_fk ON public.slugs USING btree (created_by_id);


--
-- TOC entry 3138 (class 1259 OID 17637)
-- Name: slugs_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX slugs_updated_by_id_fk ON public.slugs USING btree (updated_by_id);


--
-- TOC entry 3139 (class 1259 OID 17638)
-- Name: strapi_api_token_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_api_token_permissions_created_by_id_fk ON public.strapi_api_token_permissions USING btree (created_by_id);


--
-- TOC entry 3143 (class 1259 OID 17639)
-- Name: strapi_api_token_permissions_token_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_api_token_permissions_token_links_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_permission_id);


--
-- TOC entry 3144 (class 1259 OID 17640)
-- Name: strapi_api_token_permissions_token_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_api_token_permissions_token_links_inv_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_id);


--
-- TOC entry 3145 (class 1259 OID 17641)
-- Name: strapi_api_token_permissions_token_links_order_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_api_token_permissions_token_links_order_inv_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_permission_order);


--
-- TOC entry 3142 (class 1259 OID 17642)
-- Name: strapi_api_token_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_api_token_permissions_updated_by_id_fk ON public.strapi_api_token_permissions USING btree (updated_by_id);


--
-- TOC entry 3150 (class 1259 OID 17643)
-- Name: strapi_api_tokens_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_api_tokens_created_by_id_fk ON public.strapi_api_tokens USING btree (created_by_id);


--
-- TOC entry 3153 (class 1259 OID 17644)
-- Name: strapi_api_tokens_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_api_tokens_updated_by_id_fk ON public.strapi_api_tokens USING btree (updated_by_id);


--
-- TOC entry 3160 (class 1259 OID 17645)
-- Name: strapi_release_actions_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_release_actions_created_by_id_fk ON public.strapi_release_actions USING btree (created_by_id);


--
-- TOC entry 3164 (class 1259 OID 17646)
-- Name: strapi_release_actions_release_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_release_actions_release_links_fk ON public.strapi_release_actions_release_links USING btree (release_action_id);


--
-- TOC entry 3165 (class 1259 OID 17647)
-- Name: strapi_release_actions_release_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_release_actions_release_links_inv_fk ON public.strapi_release_actions_release_links USING btree (release_id);


--
-- TOC entry 3166 (class 1259 OID 17648)
-- Name: strapi_release_actions_release_links_order_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_release_actions_release_links_order_inv_fk ON public.strapi_release_actions_release_links USING btree (release_action_order);


--
-- TOC entry 3163 (class 1259 OID 17649)
-- Name: strapi_release_actions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_release_actions_updated_by_id_fk ON public.strapi_release_actions USING btree (updated_by_id);


--
-- TOC entry 3171 (class 1259 OID 17650)
-- Name: strapi_releases_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_releases_created_by_id_fk ON public.strapi_releases USING btree (created_by_id);


--
-- TOC entry 3174 (class 1259 OID 17651)
-- Name: strapi_releases_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_releases_updated_by_id_fk ON public.strapi_releases USING btree (updated_by_id);


--
-- TOC entry 3175 (class 1259 OID 17652)
-- Name: strapi_transfer_token_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_transfer_token_permissions_created_by_id_fk ON public.strapi_transfer_token_permissions USING btree (created_by_id);


--
-- TOC entry 3179 (class 1259 OID 17653)
-- Name: strapi_transfer_token_permissions_token_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_transfer_token_permissions_token_links_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_permission_id);


--
-- TOC entry 3180 (class 1259 OID 17654)
-- Name: strapi_transfer_token_permissions_token_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_transfer_token_permissions_token_links_inv_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_id);


--
-- TOC entry 3181 (class 1259 OID 17655)
-- Name: strapi_transfer_token_permissions_token_links_order_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_transfer_token_permissions_token_links_order_inv_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_permission_order);


--
-- TOC entry 3178 (class 1259 OID 17656)
-- Name: strapi_transfer_token_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_transfer_token_permissions_updated_by_id_fk ON public.strapi_transfer_token_permissions USING btree (updated_by_id);


--
-- TOC entry 3186 (class 1259 OID 17657)
-- Name: strapi_transfer_tokens_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_transfer_tokens_created_by_id_fk ON public.strapi_transfer_tokens USING btree (created_by_id);


--
-- TOC entry 3189 (class 1259 OID 17658)
-- Name: strapi_transfer_tokens_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_transfer_tokens_updated_by_id_fk ON public.strapi_transfer_tokens USING btree (updated_by_id);


--
-- TOC entry 3192 (class 1259 OID 17659)
-- Name: up_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_permissions_created_by_id_fk ON public.up_permissions USING btree (created_by_id);


--
-- TOC entry 3196 (class 1259 OID 17660)
-- Name: up_permissions_role_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_permissions_role_links_fk ON public.up_permissions_role_links USING btree (permission_id);


--
-- TOC entry 3197 (class 1259 OID 17661)
-- Name: up_permissions_role_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_permissions_role_links_inv_fk ON public.up_permissions_role_links USING btree (role_id);


--
-- TOC entry 3198 (class 1259 OID 17662)
-- Name: up_permissions_role_links_order_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_permissions_role_links_order_inv_fk ON public.up_permissions_role_links USING btree (permission_order);


--
-- TOC entry 3195 (class 1259 OID 17663)
-- Name: up_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_permissions_updated_by_id_fk ON public.up_permissions USING btree (updated_by_id);


--
-- TOC entry 3203 (class 1259 OID 17664)
-- Name: up_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_roles_created_by_id_fk ON public.up_roles USING btree (created_by_id);


--
-- TOC entry 3206 (class 1259 OID 17665)
-- Name: up_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_roles_updated_by_id_fk ON public.up_roles USING btree (updated_by_id);


--
-- TOC entry 3207 (class 1259 OID 17666)
-- Name: up_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_users_created_by_id_fk ON public.up_users USING btree (created_by_id);


--
-- TOC entry 3211 (class 1259 OID 17667)
-- Name: up_users_role_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_users_role_links_fk ON public.up_users_role_links USING btree (user_id);


--
-- TOC entry 3212 (class 1259 OID 17668)
-- Name: up_users_role_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_users_role_links_inv_fk ON public.up_users_role_links USING btree (role_id);


--
-- TOC entry 3213 (class 1259 OID 17669)
-- Name: up_users_role_links_order_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_users_role_links_order_inv_fk ON public.up_users_role_links USING btree (user_order);


--
-- TOC entry 3210 (class 1259 OID 17670)
-- Name: up_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_users_updated_by_id_fk ON public.up_users USING btree (updated_by_id);


--
-- TOC entry 3113 (class 1259 OID 17671)
-- Name: upload_files_created_at_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_files_created_at_index ON public.files USING btree (created_at);


--
-- TOC entry 3114 (class 1259 OID 17672)
-- Name: upload_files_ext_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_files_ext_index ON public.files USING btree (ext);


--
-- TOC entry 3115 (class 1259 OID 17673)
-- Name: upload_files_folder_path_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_files_folder_path_index ON public.files USING btree (folder_path);


--
-- TOC entry 3116 (class 1259 OID 17674)
-- Name: upload_files_name_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_files_name_index ON public.files USING btree (name);


--
-- TOC entry 3117 (class 1259 OID 17675)
-- Name: upload_files_size_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_files_size_index ON public.files USING btree (size);


--
-- TOC entry 3118 (class 1259 OID 17676)
-- Name: upload_files_updated_at_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_files_updated_at_index ON public.files USING btree (updated_at);


--
-- TOC entry 3218 (class 1259 OID 17677)
-- Name: upload_folders_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_folders_created_by_id_fk ON public.upload_folders USING btree (created_by_id);


--
-- TOC entry 3226 (class 1259 OID 17678)
-- Name: upload_folders_parent_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_folders_parent_links_fk ON public.upload_folders_parent_links USING btree (folder_id);


--
-- TOC entry 3227 (class 1259 OID 17679)
-- Name: upload_folders_parent_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_folders_parent_links_inv_fk ON public.upload_folders_parent_links USING btree (inv_folder_id);


--
-- TOC entry 3228 (class 1259 OID 17680)
-- Name: upload_folders_parent_links_order_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_folders_parent_links_order_inv_fk ON public.upload_folders_parent_links USING btree (folder_order);


--
-- TOC entry 3225 (class 1259 OID 17681)
-- Name: upload_folders_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_folders_updated_by_id_fk ON public.upload_folders USING btree (updated_by_id);


--
-- TOC entry 3252 (class 2606 OID 17682)
-- Name: admin_permissions admin_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3254 (class 2606 OID 17687)
-- Name: admin_permissions_role_links admin_permissions_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;


--
-- TOC entry 3255 (class 2606 OID 17692)
-- Name: admin_permissions_role_links admin_permissions_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- TOC entry 3253 (class 2606 OID 17697)
-- Name: admin_permissions admin_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3256 (class 2606 OID 17702)
-- Name: admin_roles admin_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3257 (class 2606 OID 17707)
-- Name: admin_roles admin_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3258 (class 2606 OID 17712)
-- Name: admin_users admin_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3260 (class 2606 OID 17717)
-- Name: admin_users_roles_links admin_users_roles_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_fk FOREIGN KEY (user_id) REFERENCES public.admin_users(id) ON DELETE CASCADE;


--
-- TOC entry 3261 (class 2606 OID 17722)
-- Name: admin_users_roles_links admin_users_roles_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- TOC entry 3259 (class 2606 OID 17727)
-- Name: admin_users admin_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3262 (class 2606 OID 17732)
-- Name: categories categories_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3263 (class 2606 OID 17737)
-- Name: categories categories_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3266 (class 2606 OID 17742)
-- Name: events_category_links events_category_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.events_category_links
    ADD CONSTRAINT events_category_links_fk FOREIGN KEY (event_id) REFERENCES public.events(id) ON DELETE CASCADE;


--
-- TOC entry 3267 (class 2606 OID 17747)
-- Name: events_category_links events_category_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.events_category_links
    ADD CONSTRAINT events_category_links_inv_fk FOREIGN KEY (category_id) REFERENCES public.categories(id) ON DELETE CASCADE;


--
-- TOC entry 3264 (class 2606 OID 17752)
-- Name: events events_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3265 (class 2606 OID 17757)
-- Name: events events_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3268 (class 2606 OID 17762)
-- Name: files files_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3270 (class 2606 OID 17767)
-- Name: files_folder_links files_folder_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;


--
-- TOC entry 3271 (class 2606 OID 17772)
-- Name: files_folder_links files_folder_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_inv_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- TOC entry 3272 (class 2606 OID 17777)
-- Name: files_related_morphs files_related_morphs_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;


--
-- TOC entry 3269 (class 2606 OID 17782)
-- Name: files files_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3313 (class 2606 OID 24645)
-- Name: groups groups_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.groups
    ADD CONSTRAINT groups_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3314 (class 2606 OID 24650)
-- Name: groups groups_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.groups
    ADD CONSTRAINT groups_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3273 (class 2606 OID 17787)
-- Name: i18n_locale i18n_locale_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3274 (class 2606 OID 17792)
-- Name: i18n_locale i18n_locale_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3311 (class 2606 OID 24615)
-- Name: news_category_links news_category_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.news_category_links
    ADD CONSTRAINT news_category_links_fk FOREIGN KEY (new_id) REFERENCES public.news(id) ON DELETE CASCADE;


--
-- TOC entry 3312 (class 2606 OID 24620)
-- Name: news_category_links news_category_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.news_category_links
    ADD CONSTRAINT news_category_links_inv_fk FOREIGN KEY (category_id) REFERENCES public.categories(id) ON DELETE CASCADE;


--
-- TOC entry 3309 (class 2606 OID 24605)
-- Name: news news_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.news
    ADD CONSTRAINT news_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3310 (class 2606 OID 24610)
-- Name: news news_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.news
    ADD CONSTRAINT news_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3275 (class 2606 OID 17827)
-- Name: slugs slugs_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.slugs
    ADD CONSTRAINT slugs_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3276 (class 2606 OID 17832)
-- Name: slugs slugs_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.slugs
    ADD CONSTRAINT slugs_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3277 (class 2606 OID 17837)
-- Name: strapi_api_token_permissions strapi_api_token_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3279 (class 2606 OID 17842)
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_fk FOREIGN KEY (api_token_permission_id) REFERENCES public.strapi_api_token_permissions(id) ON DELETE CASCADE;


--
-- TOC entry 3280 (class 2606 OID 17847)
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_inv_fk FOREIGN KEY (api_token_id) REFERENCES public.strapi_api_tokens(id) ON DELETE CASCADE;


--
-- TOC entry 3278 (class 2606 OID 17852)
-- Name: strapi_api_token_permissions strapi_api_token_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3281 (class 2606 OID 17857)
-- Name: strapi_api_tokens strapi_api_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3282 (class 2606 OID 17862)
-- Name: strapi_api_tokens strapi_api_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3283 (class 2606 OID 17867)
-- Name: strapi_release_actions strapi_release_actions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3285 (class 2606 OID 17872)
-- Name: strapi_release_actions_release_links strapi_release_actions_release_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_release_actions_release_links
    ADD CONSTRAINT strapi_release_actions_release_links_fk FOREIGN KEY (release_action_id) REFERENCES public.strapi_release_actions(id) ON DELETE CASCADE;


--
-- TOC entry 3286 (class 2606 OID 17877)
-- Name: strapi_release_actions_release_links strapi_release_actions_release_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_release_actions_release_links
    ADD CONSTRAINT strapi_release_actions_release_links_inv_fk FOREIGN KEY (release_id) REFERENCES public.strapi_releases(id) ON DELETE CASCADE;


--
-- TOC entry 3284 (class 2606 OID 17882)
-- Name: strapi_release_actions strapi_release_actions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3287 (class 2606 OID 17887)
-- Name: strapi_releases strapi_releases_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3288 (class 2606 OID 17892)
-- Name: strapi_releases strapi_releases_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3289 (class 2606 OID 17897)
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3291 (class 2606 OID 17902)
-- Name: strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_fk FOREIGN KEY (transfer_token_permission_id) REFERENCES public.strapi_transfer_token_permissions(id) ON DELETE CASCADE;


--
-- TOC entry 3292 (class 2606 OID 17907)
-- Name: strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_inv_fk FOREIGN KEY (transfer_token_id) REFERENCES public.strapi_transfer_tokens(id) ON DELETE CASCADE;


--
-- TOC entry 3290 (class 2606 OID 17912)
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3293 (class 2606 OID 17917)
-- Name: strapi_transfer_tokens strapi_transfer_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3294 (class 2606 OID 17922)
-- Name: strapi_transfer_tokens strapi_transfer_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3295 (class 2606 OID 17927)
-- Name: up_permissions up_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3297 (class 2606 OID 17932)
-- Name: up_permissions_role_links up_permissions_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.up_permissions(id) ON DELETE CASCADE;


--
-- TOC entry 3298 (class 2606 OID 17937)
-- Name: up_permissions_role_links up_permissions_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- TOC entry 3296 (class 2606 OID 17942)
-- Name: up_permissions up_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3299 (class 2606 OID 17947)
-- Name: up_roles up_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3300 (class 2606 OID 17952)
-- Name: up_roles up_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3301 (class 2606 OID 17957)
-- Name: up_users up_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3303 (class 2606 OID 17962)
-- Name: up_users_role_links up_users_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;


--
-- TOC entry 3304 (class 2606 OID 17967)
-- Name: up_users_role_links up_users_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- TOC entry 3302 (class 2606 OID 17972)
-- Name: up_users up_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3305 (class 2606 OID 17977)
-- Name: upload_folders upload_folders_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3307 (class 2606 OID 17982)
-- Name: upload_folders_parent_links upload_folders_parent_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- TOC entry 3308 (class 2606 OID 17987)
-- Name: upload_folders_parent_links upload_folders_parent_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_inv_fk FOREIGN KEY (inv_folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- TOC entry 3306 (class 2606 OID 17992)
-- Name: upload_folders upload_folders_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3518 (class 0 OID 0)
-- Dependencies: 6
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2024-06-14 12:15:18

--
-- PostgreSQL database dump complete
--

