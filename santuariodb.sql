PGDMP                      |            santuariodb %   12.18 (Ubuntu 12.18-0ubuntu0.20.04.1)    16.2 �   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    17211    santuariodb    DATABASE     s   CREATE DATABASE santuariodb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C.UTF-8';
    DROP DATABASE santuariodb;
                postgres    false                        2615    2200    public    SCHEMA     2   -- *not* creating schema, since initdb creates it
 2   -- *not* dropping schema, since initdb creates it
                postgres    false            �           0    0    SCHEMA public    ACL     Q   REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   postgres    false    6            �            1259    17212    admin_permissions    TABLE     g  CREATE TABLE public.admin_permissions (
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
 %   DROP TABLE public.admin_permissions;
       public         heap    postgres    false    6            �            1259    17218    admin_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.admin_permissions_id_seq;
       public          postgres    false    6    202            �           0    0    admin_permissions_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.admin_permissions_id_seq OWNED BY public.admin_permissions.id;
          public          postgres    false    203            �            1259    17220    admin_permissions_role_links    TABLE     �   CREATE TABLE public.admin_permissions_role_links (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_order double precision
);
 0   DROP TABLE public.admin_permissions_role_links;
       public         heap    postgres    false    6            �            1259    17223 #   admin_permissions_role_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_permissions_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.admin_permissions_role_links_id_seq;
       public          postgres    false    6    204            �           0    0 #   admin_permissions_role_links_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.admin_permissions_role_links_id_seq OWNED BY public.admin_permissions_role_links.id;
          public          postgres    false    205            �            1259    17225    admin_roles    TABLE     ;  CREATE TABLE public.admin_roles (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.admin_roles;
       public         heap    postgres    false    6            �            1259    17231    admin_roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.admin_roles_id_seq;
       public          postgres    false    6    206            �           0    0    admin_roles_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.admin_roles_id_seq OWNED BY public.admin_roles.id;
          public          postgres    false    207            �            1259    17233    admin_users    TABLE     B  CREATE TABLE public.admin_users (
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
    DROP TABLE public.admin_users;
       public         heap    postgres    false    6            �            1259    17239    admin_users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.admin_users_id_seq;
       public          postgres    false    208    6            �           0    0    admin_users_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.admin_users_id_seq OWNED BY public.admin_users.id;
          public          postgres    false    209            �            1259    17241    admin_users_roles_links    TABLE     �   CREATE TABLE public.admin_users_roles_links (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    role_order double precision,
    user_order double precision
);
 +   DROP TABLE public.admin_users_roles_links;
       public         heap    postgres    false    6            �            1259    17244    admin_users_roles_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_users_roles_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.admin_users_roles_links_id_seq;
       public          postgres    false    210    6            �           0    0    admin_users_roles_links_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.admin_users_roles_links_id_seq OWNED BY public.admin_users_roles_links.id;
          public          postgres    false    211            �            1259    17246 
   categories    TABLE       CREATE TABLE public.categories (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    slug character varying(255)
);
    DROP TABLE public.categories;
       public         heap    postgres    false    6            �            1259    17252    categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.categories_id_seq;
       public          postgres    false    6    212            �           0    0    categories_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;
          public          postgres    false    213            �            1259    17254    events    TABLE     0  CREATE TABLE public.events (
    id integer NOT NULL,
    title character varying(255),
    content text,
    date date,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    slug character varying(255)
);
    DROP TABLE public.events;
       public         heap    postgres    false    6            �            1259    17260    events_category_links    TABLE     �   CREATE TABLE public.events_category_links (
    id integer NOT NULL,
    event_id integer,
    category_id integer,
    event_order double precision
);
 )   DROP TABLE public.events_category_links;
       public         heap    postgres    false    6            �            1259    17263    events_category_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.events_category_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.events_category_links_id_seq;
       public          postgres    false    215    6            �           0    0    events_category_links_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.events_category_links_id_seq OWNED BY public.events_category_links.id;
          public          postgres    false    216            �            1259    17265    events_id_seq    SEQUENCE     �   CREATE SEQUENCE public.events_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.events_id_seq;
       public          postgres    false    6    214            �           0    0    events_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.events_id_seq OWNED BY public.events.id;
          public          postgres    false    217            �            1259    17267    files    TABLE     �  CREATE TABLE public.files (
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
    DROP TABLE public.files;
       public         heap    postgres    false    6            �            1259    17273    files_folder_links    TABLE     �   CREATE TABLE public.files_folder_links (
    id integer NOT NULL,
    file_id integer,
    folder_id integer,
    file_order double precision
);
 &   DROP TABLE public.files_folder_links;
       public         heap    postgres    false    6            �            1259    17276    files_folder_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.files_folder_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.files_folder_links_id_seq;
       public          postgres    false    219    6            �           0    0    files_folder_links_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.files_folder_links_id_seq OWNED BY public.files_folder_links.id;
          public          postgres    false    220            �            1259    17278    files_id_seq    SEQUENCE     �   CREATE SEQUENCE public.files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.files_id_seq;
       public          postgres    false    6    218            �           0    0    files_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.files_id_seq OWNED BY public.files.id;
          public          postgres    false    221            �            1259    17280    files_related_morphs    TABLE     �   CREATE TABLE public.files_related_morphs (
    id integer NOT NULL,
    file_id integer,
    related_id integer,
    related_type character varying(255),
    field character varying(255),
    "order" double precision
);
 (   DROP TABLE public.files_related_morphs;
       public         heap    postgres    false    6            �            1259    17286    files_related_morphs_id_seq    SEQUENCE     �   CREATE SEQUENCE public.files_related_morphs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.files_related_morphs_id_seq;
       public          postgres    false    6    222            �           0    0    files_related_morphs_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.files_related_morphs_id_seq OWNED BY public.files_related_morphs.id;
          public          postgres    false    223                       1259    24632    groups    TABLE     %  CREATE TABLE public.groups (
    id integer NOT NULL,
    title character varying(255),
    description text,
    slug character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.groups;
       public         heap    postgres    false    6                       1259    24630    groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.groups_id_seq;
       public          postgres    false    273    6            �           0    0    groups_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.groups_id_seq OWNED BY public.groups.id;
          public          postgres    false    272            �            1259    17288    i18n_locale    TABLE       CREATE TABLE public.i18n_locale (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.i18n_locale;
       public         heap    postgres    false    6            �            1259    17294    i18n_locale_id_seq    SEQUENCE     �   CREATE SEQUENCE public.i18n_locale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.i18n_locale_id_seq;
       public          postgres    false    6    224            �           0    0    i18n_locale_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.i18n_locale_id_seq OWNED BY public.i18n_locale.id;
          public          postgres    false    225                       1259    24579    news    TABLE     .  CREATE TABLE public.news (
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
    DROP TABLE public.news;
       public         heap    postgres    false    6                       1259    24594    news_category_links    TABLE     �   CREATE TABLE public.news_category_links (
    id integer NOT NULL,
    new_id integer,
    category_id integer,
    new_order double precision
);
 '   DROP TABLE public.news_category_links;
       public         heap    postgres    false    6                       1259    24592    news_category_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.news_category_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.news_category_links_id_seq;
       public          postgres    false    271    6            �           0    0    news_category_links_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.news_category_links_id_seq OWNED BY public.news_category_links.id;
          public          postgres    false    270                       1259    24577    news_id_seq    SEQUENCE     �   CREATE SEQUENCE public.news_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.news_id_seq;
       public          postgres    false    6    269            �           0    0    news_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.news_id_seq OWNED BY public.news.id;
          public          postgres    false    268            �            1259    17317    slugs    TABLE     �   CREATE TABLE public.slugs (
    id integer NOT NULL,
    slug text,
    count integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.slugs;
       public         heap    postgres    false    6            �            1259    17323    slugs_id_seq    SEQUENCE     �   CREATE SEQUENCE public.slugs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.slugs_id_seq;
       public          postgres    false    226    6            �           0    0    slugs_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.slugs_id_seq OWNED BY public.slugs.id;
          public          postgres    false    227            �            1259    17325    strapi_api_token_permissions    TABLE       CREATE TABLE public.strapi_api_token_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 0   DROP TABLE public.strapi_api_token_permissions;
       public         heap    postgres    false    6            �            1259    17328 #   strapi_api_token_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_api_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.strapi_api_token_permissions_id_seq;
       public          postgres    false    6    228            �           0    0 #   strapi_api_token_permissions_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.strapi_api_token_permissions_id_seq OWNED BY public.strapi_api_token_permissions.id;
          public          postgres    false    229            �            1259    17330 (   strapi_api_token_permissions_token_links    TABLE     �   CREATE TABLE public.strapi_api_token_permissions_token_links (
    id integer NOT NULL,
    api_token_permission_id integer,
    api_token_id integer,
    api_token_permission_order double precision
);
 <   DROP TABLE public.strapi_api_token_permissions_token_links;
       public         heap    postgres    false    6            �            1259    17333 /   strapi_api_token_permissions_token_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_api_token_permissions_token_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE public.strapi_api_token_permissions_token_links_id_seq;
       public          postgres    false    230    6            �           0    0 /   strapi_api_token_permissions_token_links_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.strapi_api_token_permissions_token_links_id_seq OWNED BY public.strapi_api_token_permissions_token_links.id;
          public          postgres    false    231            �            1259    17335    strapi_api_tokens    TABLE     �  CREATE TABLE public.strapi_api_tokens (
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
 %   DROP TABLE public.strapi_api_tokens;
       public         heap    postgres    false    6            �            1259    17341    strapi_api_tokens_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_api_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.strapi_api_tokens_id_seq;
       public          postgres    false    6    232            �           0    0    strapi_api_tokens_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNED BY public.strapi_api_tokens.id;
          public          postgres    false    233            �            1259    17343    strapi_core_store_settings    TABLE     �   CREATE TABLE public.strapi_core_store_settings (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);
 .   DROP TABLE public.strapi_core_store_settings;
       public         heap    postgres    false    6            �            1259    17349 !   strapi_core_store_settings_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_core_store_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.strapi_core_store_settings_id_seq;
       public          postgres    false    234    6            �           0    0 !   strapi_core_store_settings_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNED BY public.strapi_core_store_settings.id;
          public          postgres    false    235            �            1259    17351    strapi_database_schema    TABLE     �   CREATE TABLE public.strapi_database_schema (
    id integer NOT NULL,
    schema json,
    "time" timestamp without time zone,
    hash character varying(255)
);
 *   DROP TABLE public.strapi_database_schema;
       public         heap    postgres    false    6            �            1259    17357    strapi_database_schema_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_database_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.strapi_database_schema_id_seq;
       public          postgres    false    236    6            �           0    0    strapi_database_schema_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.strapi_database_schema_id_seq OWNED BY public.strapi_database_schema.id;
          public          postgres    false    237            �            1259    17359    strapi_migrations    TABLE     �   CREATE TABLE public.strapi_migrations (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);
 %   DROP TABLE public.strapi_migrations;
       public         heap    postgres    false    6            �            1259    17362    strapi_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.strapi_migrations_id_seq;
       public          postgres    false    6    238            �           0    0    strapi_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.strapi_migrations_id_seq OWNED BY public.strapi_migrations.id;
          public          postgres    false    239            �            1259    17364    strapi_release_actions    TABLE     �  CREATE TABLE public.strapi_release_actions (
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
 *   DROP TABLE public.strapi_release_actions;
       public         heap    postgres    false    6            �            1259    17370    strapi_release_actions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_release_actions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.strapi_release_actions_id_seq;
       public          postgres    false    240    6            �           0    0    strapi_release_actions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.strapi_release_actions_id_seq OWNED BY public.strapi_release_actions.id;
          public          postgres    false    241            �            1259    17372 $   strapi_release_actions_release_links    TABLE     �   CREATE TABLE public.strapi_release_actions_release_links (
    id integer NOT NULL,
    release_action_id integer,
    release_id integer,
    release_action_order double precision
);
 8   DROP TABLE public.strapi_release_actions_release_links;
       public         heap    postgres    false    6            �            1259    17375 +   strapi_release_actions_release_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_release_actions_release_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public.strapi_release_actions_release_links_id_seq;
       public          postgres    false    242    6            �           0    0 +   strapi_release_actions_release_links_id_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public.strapi_release_actions_release_links_id_seq OWNED BY public.strapi_release_actions_release_links.id;
          public          postgres    false    243            �            1259    17377    strapi_releases    TABLE     �  CREATE TABLE public.strapi_releases (
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
 #   DROP TABLE public.strapi_releases;
       public         heap    postgres    false    6            �            1259    17383    strapi_releases_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_releases_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.strapi_releases_id_seq;
       public          postgres    false    6    244            �           0    0    strapi_releases_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.strapi_releases_id_seq OWNED BY public.strapi_releases.id;
          public          postgres    false    245            �            1259    17385 !   strapi_transfer_token_permissions    TABLE     
  CREATE TABLE public.strapi_transfer_token_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 5   DROP TABLE public.strapi_transfer_token_permissions;
       public         heap    postgres    false    6            �            1259    17388 (   strapi_transfer_token_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_transfer_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.strapi_transfer_token_permissions_id_seq;
       public          postgres    false    6    246            �           0    0 (   strapi_transfer_token_permissions_id_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public.strapi_transfer_token_permissions_id_seq OWNED BY public.strapi_transfer_token_permissions.id;
          public          postgres    false    247            �            1259    17390 -   strapi_transfer_token_permissions_token_links    TABLE     �   CREATE TABLE public.strapi_transfer_token_permissions_token_links (
    id integer NOT NULL,
    transfer_token_permission_id integer,
    transfer_token_id integer,
    transfer_token_permission_order double precision
);
 A   DROP TABLE public.strapi_transfer_token_permissions_token_links;
       public         heap    postgres    false    6            �            1259    17393 4   strapi_transfer_token_permissions_token_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 K   DROP SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq;
       public          postgres    false    248    6            �           0    0 4   strapi_transfer_token_permissions_token_links_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq OWNED BY public.strapi_transfer_token_permissions_token_links.id;
          public          postgres    false    249            �            1259    17395    strapi_transfer_tokens    TABLE     �  CREATE TABLE public.strapi_transfer_tokens (
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
 *   DROP TABLE public.strapi_transfer_tokens;
       public         heap    postgres    false    6            �            1259    17401    strapi_transfer_tokens_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_transfer_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.strapi_transfer_tokens_id_seq;
       public          postgres    false    6    250            �           0    0    strapi_transfer_tokens_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.strapi_transfer_tokens_id_seq OWNED BY public.strapi_transfer_tokens.id;
          public          postgres    false    251            �            1259    17403    strapi_webhooks    TABLE     �   CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);
 #   DROP TABLE public.strapi_webhooks;
       public         heap    postgres    false    6            �            1259    17409    strapi_webhooks_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.strapi_webhooks_id_seq;
       public          postgres    false    252    6            �           0    0    strapi_webhooks_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;
          public          postgres    false    253            �            1259    17411    up_permissions    TABLE     �   CREATE TABLE public.up_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 "   DROP TABLE public.up_permissions;
       public         heap    postgres    false    6            �            1259    17414    up_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.up_permissions_id_seq;
       public          postgres    false    254    6            �           0    0    up_permissions_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.up_permissions_id_seq OWNED BY public.up_permissions.id;
          public          postgres    false    255                        1259    17416    up_permissions_role_links    TABLE     �   CREATE TABLE public.up_permissions_role_links (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_order double precision
);
 -   DROP TABLE public.up_permissions_role_links;
       public         heap    postgres    false    6                       1259    17419     up_permissions_role_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_permissions_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.up_permissions_role_links_id_seq;
       public          postgres    false    6    256            �           0    0     up_permissions_role_links_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.up_permissions_role_links_id_seq OWNED BY public.up_permissions_role_links.id;
          public          postgres    false    257                       1259    17421    up_roles    TABLE     8  CREATE TABLE public.up_roles (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.up_roles;
       public         heap    postgres    false    6                       1259    17427    up_roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.up_roles_id_seq;
       public          postgres    false    258    6            �           0    0    up_roles_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.up_roles_id_seq OWNED BY public.up_roles.id;
          public          postgres    false    259                       1259    17429    up_users    TABLE     �  CREATE TABLE public.up_users (
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
    DROP TABLE public.up_users;
       public         heap    postgres    false    6                       1259    17435    up_users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.up_users_id_seq;
       public          postgres    false    260    6            �           0    0    up_users_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.up_users_id_seq OWNED BY public.up_users.id;
          public          postgres    false    261                       1259    17437    up_users_role_links    TABLE     �   CREATE TABLE public.up_users_role_links (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    user_order double precision
);
 '   DROP TABLE public.up_users_role_links;
       public         heap    postgres    false    6                       1259    17440    up_users_role_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_users_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.up_users_role_links_id_seq;
       public          postgres    false    262    6            �           0    0    up_users_role_links_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.up_users_role_links_id_seq OWNED BY public.up_users_role_links.id;
          public          postgres    false    263                       1259    17442    upload_folders    TABLE     +  CREATE TABLE public.upload_folders (
    id integer NOT NULL,
    name character varying(255),
    path_id integer,
    path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 "   DROP TABLE public.upload_folders;
       public         heap    postgres    false    6            	           1259    17448    upload_folders_id_seq    SEQUENCE     �   CREATE SEQUENCE public.upload_folders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.upload_folders_id_seq;
       public          postgres    false    264    6            �           0    0    upload_folders_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.upload_folders_id_seq OWNED BY public.upload_folders.id;
          public          postgres    false    265            
           1259    17450    upload_folders_parent_links    TABLE     �   CREATE TABLE public.upload_folders_parent_links (
    id integer NOT NULL,
    folder_id integer,
    inv_folder_id integer,
    folder_order double precision
);
 /   DROP TABLE public.upload_folders_parent_links;
       public         heap    postgres    false    6                       1259    17453 "   upload_folders_parent_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.upload_folders_parent_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.upload_folders_parent_links_id_seq;
       public          postgres    false    6    266            �           0    0 "   upload_folders_parent_links_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.upload_folders_parent_links_id_seq OWNED BY public.upload_folders_parent_links.id;
          public          postgres    false    267            �           2604    17455    admin_permissions id    DEFAULT     |   ALTER TABLE ONLY public.admin_permissions ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_id_seq'::regclass);
 C   ALTER TABLE public.admin_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202            �           2604    17456    admin_permissions_role_links id    DEFAULT     �   ALTER TABLE ONLY public.admin_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_role_links_id_seq'::regclass);
 N   ALTER TABLE public.admin_permissions_role_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204            �           2604    17457    admin_roles id    DEFAULT     p   ALTER TABLE ONLY public.admin_roles ALTER COLUMN id SET DEFAULT nextval('public.admin_roles_id_seq'::regclass);
 =   ALTER TABLE public.admin_roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206            �           2604    17458    admin_users id    DEFAULT     p   ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);
 =   ALTER TABLE public.admin_users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    208            �           2604    17459    admin_users_roles_links id    DEFAULT     �   ALTER TABLE ONLY public.admin_users_roles_links ALTER COLUMN id SET DEFAULT nextval('public.admin_users_roles_links_id_seq'::regclass);
 I   ALTER TABLE public.admin_users_roles_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210            �           2604    17460    categories id    DEFAULT     n   ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);
 <   ALTER TABLE public.categories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212            �           2604    17461 	   events id    DEFAULT     f   ALTER TABLE ONLY public.events ALTER COLUMN id SET DEFAULT nextval('public.events_id_seq'::regclass);
 8   ALTER TABLE public.events ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    214            �           2604    17462    events_category_links id    DEFAULT     �   ALTER TABLE ONLY public.events_category_links ALTER COLUMN id SET DEFAULT nextval('public.events_category_links_id_seq'::regclass);
 G   ALTER TABLE public.events_category_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215            �           2604    17463    files id    DEFAULT     d   ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);
 7   ALTER TABLE public.files ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    218            �           2604    17464    files_folder_links id    DEFAULT     ~   ALTER TABLE ONLY public.files_folder_links ALTER COLUMN id SET DEFAULT nextval('public.files_folder_links_id_seq'::regclass);
 D   ALTER TABLE public.files_folder_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219            �           2604    17465    files_related_morphs id    DEFAULT     �   ALTER TABLE ONLY public.files_related_morphs ALTER COLUMN id SET DEFAULT nextval('public.files_related_morphs_id_seq'::regclass);
 F   ALTER TABLE public.files_related_morphs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222            �           2604    24635 	   groups id    DEFAULT     f   ALTER TABLE ONLY public.groups ALTER COLUMN id SET DEFAULT nextval('public.groups_id_seq'::regclass);
 8   ALTER TABLE public.groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    273    272    273            �           2604    17466    i18n_locale id    DEFAULT     p   ALTER TABLE ONLY public.i18n_locale ALTER COLUMN id SET DEFAULT nextval('public.i18n_locale_id_seq'::regclass);
 =   ALTER TABLE public.i18n_locale ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224            �           2604    24582    news id    DEFAULT     b   ALTER TABLE ONLY public.news ALTER COLUMN id SET DEFAULT nextval('public.news_id_seq'::regclass);
 6   ALTER TABLE public.news ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    269    268    269            �           2604    24597    news_category_links id    DEFAULT     �   ALTER TABLE ONLY public.news_category_links ALTER COLUMN id SET DEFAULT nextval('public.news_category_links_id_seq'::regclass);
 E   ALTER TABLE public.news_category_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    271    270    271            �           2604    17470    slugs id    DEFAULT     d   ALTER TABLE ONLY public.slugs ALTER COLUMN id SET DEFAULT nextval('public.slugs_id_seq'::regclass);
 7   ALTER TABLE public.slugs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226            �           2604    17471    strapi_api_token_permissions id    DEFAULT     �   ALTER TABLE ONLY public.strapi_api_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_id_seq'::regclass);
 N   ALTER TABLE public.strapi_api_token_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228            �           2604    17472 +   strapi_api_token_permissions_token_links id    DEFAULT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_token_links_id_seq'::regclass);
 Z   ALTER TABLE public.strapi_api_token_permissions_token_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230            �           2604    17473    strapi_api_tokens id    DEFAULT     |   ALTER TABLE ONLY public.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_tokens_id_seq'::regclass);
 C   ALTER TABLE public.strapi_api_tokens ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    232            �           2604    17474    strapi_core_store_settings id    DEFAULT     �   ALTER TABLE ONLY public.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('public.strapi_core_store_settings_id_seq'::regclass);
 L   ALTER TABLE public.strapi_core_store_settings ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    234            �           2604    17475    strapi_database_schema id    DEFAULT     �   ALTER TABLE ONLY public.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('public.strapi_database_schema_id_seq'::regclass);
 H   ALTER TABLE public.strapi_database_schema ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    236            �           2604    17476    strapi_migrations id    DEFAULT     |   ALTER TABLE ONLY public.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_id_seq'::regclass);
 C   ALTER TABLE public.strapi_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    238            �           2604    17477    strapi_release_actions id    DEFAULT     �   ALTER TABLE ONLY public.strapi_release_actions ALTER COLUMN id SET DEFAULT nextval('public.strapi_release_actions_id_seq'::regclass);
 H   ALTER TABLE public.strapi_release_actions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    241    240            �           2604    17478 '   strapi_release_actions_release_links id    DEFAULT     �   ALTER TABLE ONLY public.strapi_release_actions_release_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_release_actions_release_links_id_seq'::regclass);
 V   ALTER TABLE public.strapi_release_actions_release_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    243    242            �           2604    17479    strapi_releases id    DEFAULT     x   ALTER TABLE ONLY public.strapi_releases ALTER COLUMN id SET DEFAULT nextval('public.strapi_releases_id_seq'::regclass);
 A   ALTER TABLE public.strapi_releases ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    245    244            �           2604    17480 $   strapi_transfer_token_permissions id    DEFAULT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_id_seq'::regclass);
 S   ALTER TABLE public.strapi_transfer_token_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    247    246            �           2604    17481 0   strapi_transfer_token_permissions_token_links id    DEFAULT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_token_links_id_seq'::regclass);
 _   ALTER TABLE public.strapi_transfer_token_permissions_token_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    249    248            �           2604    17482    strapi_transfer_tokens id    DEFAULT     �   ALTER TABLE ONLY public.strapi_transfer_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_tokens_id_seq'::regclass);
 H   ALTER TABLE public.strapi_transfer_tokens ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    251    250            �           2604    17483    strapi_webhooks id    DEFAULT     x   ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);
 A   ALTER TABLE public.strapi_webhooks ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    253    252            �           2604    17484    up_permissions id    DEFAULT     v   ALTER TABLE ONLY public.up_permissions ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_id_seq'::regclass);
 @   ALTER TABLE public.up_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    255    254            �           2604    17485    up_permissions_role_links id    DEFAULT     �   ALTER TABLE ONLY public.up_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_role_links_id_seq'::regclass);
 K   ALTER TABLE public.up_permissions_role_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    257    256            �           2604    17486    up_roles id    DEFAULT     j   ALTER TABLE ONLY public.up_roles ALTER COLUMN id SET DEFAULT nextval('public.up_roles_id_seq'::regclass);
 :   ALTER TABLE public.up_roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    259    258            �           2604    17487    up_users id    DEFAULT     j   ALTER TABLE ONLY public.up_users ALTER COLUMN id SET DEFAULT nextval('public.up_users_id_seq'::regclass);
 :   ALTER TABLE public.up_users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    261    260            �           2604    17488    up_users_role_links id    DEFAULT     �   ALTER TABLE ONLY public.up_users_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_users_role_links_id_seq'::regclass);
 E   ALTER TABLE public.up_users_role_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    263    262            �           2604    17489    upload_folders id    DEFAULT     v   ALTER TABLE ONLY public.upload_folders ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_id_seq'::regclass);
 @   ALTER TABLE public.upload_folders ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    265    264            �           2604    17490    upload_folders_parent_links id    DEFAULT     �   ALTER TABLE ONLY public.upload_folders_parent_links ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_parent_links_id_seq'::regclass);
 M   ALTER TABLE public.upload_folders_parent_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    267    266            q          0    17212    admin_permissions 
   TABLE DATA           �   COPY public.admin_permissions (id, action, action_parameters, subject, properties, conditions, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    202   w?      s          0    17220    admin_permissions_role_links 
   TABLE DATA           d   COPY public.admin_permissions_role_links (id, permission_id, role_id, permission_order) FROM stdin;
    public          postgres    false    204   �E      u          0    17225    admin_roles 
   TABLE DATA           x   COPY public.admin_roles (id, name, code, description, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    206   rG      w          0    17233    admin_users 
   TABLE DATA           �   COPY public.admin_users (id, firstname, lastname, username, email, password, reset_password_token, registration_token, is_active, blocked, prefered_language, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    208   \H      y          0    17241    admin_users_roles_links 
   TABLE DATA           _   COPY public.admin_users_roles_links (id, user_id, role_id, role_order, user_order) FROM stdin;
    public          postgres    false    210   �I      {          0    17246 
   categories 
   TABLE DATA           j   COPY public.categories (id, name, created_at, updated_at, created_by_id, updated_by_id, slug) FROM stdin;
    public          postgres    false    212   �I      }          0    17254    events 
   TABLE DATA           v   COPY public.events (id, title, content, date, created_at, updated_at, created_by_id, updated_by_id, slug) FROM stdin;
    public          postgres    false    214   |J      ~          0    17260    events_category_links 
   TABLE DATA           W   COPY public.events_category_links (id, event_id, category_id, event_order) FROM stdin;
    public          postgres    false    215   Lb      �          0    17267    files 
   TABLE DATA           �   COPY public.files (id, name, alternative_text, caption, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, folder_path, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    218   �b      �          0    17273    files_folder_links 
   TABLE DATA           P   COPY public.files_folder_links (id, file_id, folder_id, file_order) FROM stdin;
    public          postgres    false    219   �k      �          0    17280    files_related_morphs 
   TABLE DATA           e   COPY public.files_related_morphs (id, file_id, related_id, related_type, field, "order") FROM stdin;
    public          postgres    false    222   �k      �          0    24632    groups 
   TABLE DATA           t   COPY public.groups (id, title, description, slug, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    273   Fl      �          0    17288    i18n_locale 
   TABLE DATA           k   COPY public.i18n_locale (id, name, code, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    224   �n      �          0    24579    news 
   TABLE DATA           t   COPY public.news (id, title, content, date, slug, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    269   o      �          0    24594    news_category_links 
   TABLE DATA           Q   COPY public.news_category_links (id, new_id, category_id, new_order) FROM stdin;
    public          postgres    false    271   �q      �          0    17317    slugs 
   TABLE DATA           f   COPY public.slugs (id, slug, count, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    226   �q      �          0    17325    strapi_api_token_permissions 
   TABLE DATA           x   COPY public.strapi_api_token_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    228   r      �          0    17330 (   strapi_api_token_permissions_token_links 
   TABLE DATA           �   COPY public.strapi_api_token_permissions_token_links (id, api_token_permission_id, api_token_id, api_token_permission_order) FROM stdin;
    public          postgres    false    230   "r      �          0    17335    strapi_api_tokens 
   TABLE DATA           �   COPY public.strapi_api_tokens (id, name, description, type, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    232   ?r      �          0    17343    strapi_core_store_settings 
   TABLE DATA           \   COPY public.strapi_core_store_settings (id, key, value, type, environment, tag) FROM stdin;
    public          postgres    false    234   \r      �          0    17351    strapi_database_schema 
   TABLE DATA           J   COPY public.strapi_database_schema (id, schema, "time", hash) FROM stdin;
    public          postgres    false    236   �      �          0    17359    strapi_migrations 
   TABLE DATA           =   COPY public.strapi_migrations (id, name, "time") FROM stdin;
    public          postgres    false    238   �      �          0    17364    strapi_release_actions 
   TABLE DATA           �   COPY public.strapi_release_actions (id, type, target_id, target_type, content_type, locale, created_at, updated_at, created_by_id, updated_by_id, is_entry_valid) FROM stdin;
    public          postgres    false    240   /�      �          0    17372 $   strapi_release_actions_release_links 
   TABLE DATA           w   COPY public.strapi_release_actions_release_links (id, release_action_id, release_id, release_action_order) FROM stdin;
    public          postgres    false    242   L�      �          0    17377    strapi_releases 
   TABLE DATA           �   COPY public.strapi_releases (id, name, released_at, scheduled_at, timezone, created_at, updated_at, created_by_id, updated_by_id, status) FROM stdin;
    public          postgres    false    244   i�      �          0    17385 !   strapi_transfer_token_permissions 
   TABLE DATA           }   COPY public.strapi_transfer_token_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    246   ��      �          0    17390 -   strapi_transfer_token_permissions_token_links 
   TABLE DATA           �   COPY public.strapi_transfer_token_permissions_token_links (id, transfer_token_permission_id, transfer_token_id, transfer_token_permission_order) FROM stdin;
    public          postgres    false    248   ��      �          0    17395    strapi_transfer_tokens 
   TABLE DATA           �   COPY public.strapi_transfer_tokens (id, name, description, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    250   ��      �          0    17403    strapi_webhooks 
   TABLE DATA           R   COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
    public          postgres    false    252   ݘ      �          0    17411    up_permissions 
   TABLE DATA           j   COPY public.up_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    254   ��      �          0    17416    up_permissions_role_links 
   TABLE DATA           a   COPY public.up_permissions_role_links (id, permission_id, role_id, permission_order) FROM stdin;
    public          postgres    false    256   i�      �          0    17421    up_roles 
   TABLE DATA           u   COPY public.up_roles (id, name, description, type, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    258   ޚ      �          0    17429    up_users 
   TABLE DATA           �   COPY public.up_users (id, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    260   s�      �          0    17437    up_users_role_links 
   TABLE DATA           O   COPY public.up_users_role_links (id, user_id, role_id, user_order) FROM stdin;
    public          postgres    false    262   ��      �          0    17442    upload_folders 
   TABLE DATA           w   COPY public.upload_folders (id, name, path_id, path, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    264   ��      �          0    17450    upload_folders_parent_links 
   TABLE DATA           a   COPY public.upload_folders_parent_links (id, folder_id, inv_folder_id, folder_order) FROM stdin;
    public          postgres    false    266   ʛ      �           0    0    admin_permissions_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.admin_permissions_id_seq', 158, true);
          public          postgres    false    203            �           0    0 #   admin_permissions_role_links_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.admin_permissions_role_links_id_seq', 158, true);
          public          postgres    false    205            �           0    0    admin_roles_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.admin_roles_id_seq', 3, true);
          public          postgres    false    207            �           0    0    admin_users_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.admin_users_id_seq', 2, true);
          public          postgres    false    209            �           0    0    admin_users_roles_links_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.admin_users_roles_links_id_seq', 5, true);
          public          postgres    false    211            �           0    0    categories_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.categories_id_seq', 14, true);
          public          postgres    false    213            �           0    0    events_category_links_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.events_category_links_id_seq', 27, true);
          public          postgres    false    216            �           0    0    events_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.events_id_seq', 26, true);
          public          postgres    false    217            �           0    0    files_folder_links_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.files_folder_links_id_seq', 1, false);
          public          postgres    false    220            �           0    0    files_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.files_id_seq', 36, true);
          public          postgres    false    221            �           0    0    files_related_morphs_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.files_related_morphs_id_seq', 63, true);
          public          postgres    false    223            �           0    0    groups_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.groups_id_seq', 1, true);
          public          postgres    false    272            �           0    0    i18n_locale_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.i18n_locale_id_seq', 2, true);
          public          postgres    false    225            �           0    0    news_category_links_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.news_category_links_id_seq', 1, true);
          public          postgres    false    270            �           0    0    news_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.news_id_seq', 1, true);
          public          postgres    false    268            �           0    0    slugs_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.slugs_id_seq', 1, false);
          public          postgres    false    227            �           0    0 #   strapi_api_token_permissions_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.strapi_api_token_permissions_id_seq', 1, false);
          public          postgres    false    229            �           0    0 /   strapi_api_token_permissions_token_links_id_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('public.strapi_api_token_permissions_token_links_id_seq', 1, false);
          public          postgres    false    231            �           0    0    strapi_api_tokens_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.strapi_api_tokens_id_seq', 1, true);
          public          postgres    false    233            �           0    0 !   strapi_core_store_settings_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.strapi_core_store_settings_id_seq', 36, true);
          public          postgres    false    235            �           0    0    strapi_database_schema_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.strapi_database_schema_id_seq', 28, true);
          public          postgres    false    237            �           0    0    strapi_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.strapi_migrations_id_seq', 1, false);
          public          postgres    false    239            �           0    0    strapi_release_actions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.strapi_release_actions_id_seq', 1, false);
          public          postgres    false    241            �           0    0 +   strapi_release_actions_release_links_id_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public.strapi_release_actions_release_links_id_seq', 1, false);
          public          postgres    false    243            �           0    0    strapi_releases_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.strapi_releases_id_seq', 1, false);
          public          postgres    false    245            �           0    0 (   strapi_transfer_token_permissions_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_id_seq', 1, false);
          public          postgres    false    247            �           0    0 4   strapi_transfer_token_permissions_token_links_id_seq    SEQUENCE SET     c   SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_token_links_id_seq', 1, false);
          public          postgres    false    249            �           0    0    strapi_transfer_tokens_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.strapi_transfer_tokens_id_seq', 1, false);
          public          postgres    false    251                        0    0    strapi_webhooks_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);
          public          postgres    false    253                       0    0    up_permissions_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.up_permissions_id_seq', 29, true);
          public          postgres    false    255                       0    0     up_permissions_role_links_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.up_permissions_role_links_id_seq', 29, true);
          public          postgres    false    257                       0    0    up_roles_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.up_roles_id_seq', 2, true);
          public          postgres    false    259                       0    0    up_users_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.up_users_id_seq', 1, true);
          public          postgres    false    261                       0    0    up_users_role_links_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.up_users_role_links_id_seq', 1, true);
          public          postgres    false    263                       0    0    upload_folders_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.upload_folders_id_seq', 1, false);
          public          postgres    false    265                       0    0 "   upload_folders_parent_links_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.upload_folders_parent_links_id_seq', 1, false);
          public          postgres    false    267            �           2606    17494 (   admin_permissions admin_permissions_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_pkey;
       public            postgres    false    202            �           2606    17496 >   admin_permissions_role_links admin_permissions_role_links_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_pkey;
       public            postgres    false    204                       2606    17498 @   admin_permissions_role_links admin_permissions_role_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_unique UNIQUE (permission_id, role_id);
 j   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_unique;
       public            postgres    false    204    204                       2606    17500    admin_roles admin_roles_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_pkey;
       public            postgres    false    206                       2606    17502    admin_users admin_users_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_pkey;
       public            postgres    false    208                       2606    17504 4   admin_users_roles_links admin_users_roles_links_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_pkey;
       public            postgres    false    210                       2606    17506 6   admin_users_roles_links admin_users_roles_links_unique 
   CONSTRAINT     }   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_unique UNIQUE (user_id, role_id);
 `   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_unique;
       public            postgres    false    210    210                       2606    17508    categories categories_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public            postgres    false    212                       2606    17510 !   categories categories_slug_unique 
   CONSTRAINT     \   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_slug_unique UNIQUE (slug);
 K   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_slug_unique;
       public            postgres    false    212            "           2606    17512 0   events_category_links events_category_links_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.events_category_links
    ADD CONSTRAINT events_category_links_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.events_category_links DROP CONSTRAINT events_category_links_pkey;
       public            postgres    false    215            $           2606    17514 2   events_category_links events_category_links_unique 
   CONSTRAINT     ~   ALTER TABLE ONLY public.events_category_links
    ADD CONSTRAINT events_category_links_unique UNIQUE (event_id, category_id);
 \   ALTER TABLE ONLY public.events_category_links DROP CONSTRAINT events_category_links_unique;
       public            postgres    false    215    215                       2606    17516    events events_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.events DROP CONSTRAINT events_pkey;
       public            postgres    false    214                       2606    17518    events events_slug_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_slug_unique UNIQUE (slug);
 C   ALTER TABLE ONLY public.events DROP CONSTRAINT events_slug_unique;
       public            postgres    false    214            3           2606    17520 *   files_folder_links files_folder_links_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_pkey;
       public            postgres    false    219            5           2606    17522 ,   files_folder_links files_folder_links_unique 
   CONSTRAINT     u   ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_unique UNIQUE (file_id, folder_id);
 V   ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_unique;
       public            postgres    false    219    219            '           2606    17524    files files_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.files DROP CONSTRAINT files_pkey;
       public            postgres    false    218            :           2606    17526 .   files_related_morphs files_related_morphs_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.files_related_morphs DROP CONSTRAINT files_related_morphs_pkey;
       public            postgres    false    222            �           2606    24640    groups groups_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.groups
    ADD CONSTRAINT groups_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.groups DROP CONSTRAINT groups_pkey;
       public            postgres    false    273            �           2606    24642    groups groups_slug_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.groups
    ADD CONSTRAINT groups_slug_unique UNIQUE (slug);
 C   ALTER TABLE ONLY public.groups DROP CONSTRAINT groups_slug_unique;
       public            postgres    false    273            =           2606    17528    i18n_locale i18n_locale_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_pkey;
       public            postgres    false    224            �           2606    24599 ,   news_category_links news_category_links_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.news_category_links
    ADD CONSTRAINT news_category_links_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.news_category_links DROP CONSTRAINT news_category_links_pkey;
       public            postgres    false    271            �           2606    24603 .   news_category_links news_category_links_unique 
   CONSTRAINT     x   ALTER TABLE ONLY public.news_category_links
    ADD CONSTRAINT news_category_links_unique UNIQUE (new_id, category_id);
 X   ALTER TABLE ONLY public.news_category_links DROP CONSTRAINT news_category_links_unique;
       public            postgres    false    271    271            �           2606    24587    news news_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.news
    ADD CONSTRAINT news_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.news DROP CONSTRAINT news_pkey;
       public            postgres    false    269            �           2606    24589    news news_slug_unique 
   CONSTRAINT     P   ALTER TABLE ONLY public.news
    ADD CONSTRAINT news_slug_unique UNIQUE (slug);
 ?   ALTER TABLE ONLY public.news DROP CONSTRAINT news_slug_unique;
       public            postgres    false    269            A           2606    17542    slugs slugs_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.slugs
    ADD CONSTRAINT slugs_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.slugs DROP CONSTRAINT slugs_pkey;
       public            postgres    false    226            E           2606    17544 >   strapi_api_token_permissions strapi_api_token_permissions_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.strapi_api_token_permissions DROP CONSTRAINT strapi_api_token_permissions_pkey;
       public            postgres    false    228            K           2606    17546 V   strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT strapi_api_token_permissions_token_links_pkey;
       public            postgres    false    230            M           2606    17548 X   strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_unique UNIQUE (api_token_permission_id, api_token_id);
 �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT strapi_api_token_permissions_token_links_unique;
       public            postgres    false    230    230            P           2606    17550 (   strapi_api_tokens strapi_api_tokens_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_pkey;
       public            postgres    false    232            S           2606    17552 :   strapi_core_store_settings strapi_core_store_settings_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.strapi_core_store_settings
    ADD CONSTRAINT strapi_core_store_settings_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.strapi_core_store_settings DROP CONSTRAINT strapi_core_store_settings_pkey;
       public            postgres    false    234            U           2606    17554 2   strapi_database_schema strapi_database_schema_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.strapi_database_schema
    ADD CONSTRAINT strapi_database_schema_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.strapi_database_schema DROP CONSTRAINT strapi_database_schema_pkey;
       public            postgres    false    236            W           2606    17556 (   strapi_migrations strapi_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.strapi_migrations
    ADD CONSTRAINT strapi_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.strapi_migrations DROP CONSTRAINT strapi_migrations_pkey;
       public            postgres    false    238            Z           2606    17558 2   strapi_release_actions strapi_release_actions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.strapi_release_actions DROP CONSTRAINT strapi_release_actions_pkey;
       public            postgres    false    240            `           2606    17560 N   strapi_release_actions_release_links strapi_release_actions_release_links_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_release_actions_release_links
    ADD CONSTRAINT strapi_release_actions_release_links_pkey PRIMARY KEY (id);
 x   ALTER TABLE ONLY public.strapi_release_actions_release_links DROP CONSTRAINT strapi_release_actions_release_links_pkey;
       public            postgres    false    242            b           2606    17562 P   strapi_release_actions_release_links strapi_release_actions_release_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_release_actions_release_links
    ADD CONSTRAINT strapi_release_actions_release_links_unique UNIQUE (release_action_id, release_id);
 z   ALTER TABLE ONLY public.strapi_release_actions_release_links DROP CONSTRAINT strapi_release_actions_release_links_unique;
       public            postgres    false    242    242            e           2606    17564 $   strapi_releases strapi_releases_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.strapi_releases DROP CONSTRAINT strapi_releases_pkey;
       public            postgres    false    244            i           2606    17566 H   strapi_transfer_token_permissions strapi_transfer_token_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_pkey PRIMARY KEY (id);
 r   ALTER TABLE ONLY public.strapi_transfer_token_permissions DROP CONSTRAINT strapi_transfer_token_permissions_pkey;
       public            postgres    false    246            o           2606    17568 `   strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links DROP CONSTRAINT strapi_transfer_token_permissions_token_links_pkey;
       public            postgres    false    248            q           2606    17570 b   strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_unique UNIQUE (transfer_token_permission_id, transfer_token_id);
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links DROP CONSTRAINT strapi_transfer_token_permissions_token_links_unique;
       public            postgres    false    248    248            t           2606    17572 2   strapi_transfer_tokens strapi_transfer_tokens_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.strapi_transfer_tokens DROP CONSTRAINT strapi_transfer_tokens_pkey;
       public            postgres    false    250            w           2606    17574 $   strapi_webhooks strapi_webhooks_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.strapi_webhooks DROP CONSTRAINT strapi_webhooks_pkey;
       public            postgres    false    252            z           2606    17576 "   up_permissions up_permissions_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_pkey;
       public            postgres    false    254            �           2606    17578 8   up_permissions_role_links up_permissions_role_links_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_pkey;
       public            postgres    false    256            �           2606    17580 :   up_permissions_role_links up_permissions_role_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_unique UNIQUE (permission_id, role_id);
 d   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_unique;
       public            postgres    false    256    256            �           2606    17582    up_roles up_roles_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_pkey;
       public            postgres    false    258            �           2606    17584    up_users up_users_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_pkey;
       public            postgres    false    260            �           2606    17586 ,   up_users_role_links up_users_role_links_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_pkey;
       public            postgres    false    262            �           2606    17588 .   up_users_role_links up_users_role_links_unique 
   CONSTRAINT     u   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_unique UNIQUE (user_id, role_id);
 X   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_unique;
       public            postgres    false    262    262            �           2606    17590 <   upload_folders_parent_links upload_folders_parent_links_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_pkey;
       public            postgres    false    266            �           2606    17592 >   upload_folders_parent_links upload_folders_parent_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_unique UNIQUE (folder_id, inv_folder_id);
 h   ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_unique;
       public            postgres    false    266    266            �           2606    17594 +   upload_folders upload_folders_path_id_index 
   CONSTRAINT     i   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_id_index UNIQUE (path_id);
 U   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_path_id_index;
       public            postgres    false    264            �           2606    17596 (   upload_folders upload_folders_path_index 
   CONSTRAINT     c   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_index UNIQUE (path);
 R   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_path_index;
       public            postgres    false    264            �           2606    17598 "   upload_folders upload_folders_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_pkey;
       public            postgres    false    264            �           1259    17599 "   admin_permissions_created_by_id_fk    INDEX     i   CREATE INDEX admin_permissions_created_by_id_fk ON public.admin_permissions USING btree (created_by_id);
 6   DROP INDEX public.admin_permissions_created_by_id_fk;
       public            postgres    false    202            �           1259    17600    admin_permissions_role_links_fk    INDEX     q   CREATE INDEX admin_permissions_role_links_fk ON public.admin_permissions_role_links USING btree (permission_id);
 3   DROP INDEX public.admin_permissions_role_links_fk;
       public            postgres    false    204            �           1259    17601 #   admin_permissions_role_links_inv_fk    INDEX     o   CREATE INDEX admin_permissions_role_links_inv_fk ON public.admin_permissions_role_links USING btree (role_id);
 7   DROP INDEX public.admin_permissions_role_links_inv_fk;
       public            postgres    false    204            �           1259    17602 )   admin_permissions_role_links_order_inv_fk    INDEX     ~   CREATE INDEX admin_permissions_role_links_order_inv_fk ON public.admin_permissions_role_links USING btree (permission_order);
 =   DROP INDEX public.admin_permissions_role_links_order_inv_fk;
       public            postgres    false    204            �           1259    17603 "   admin_permissions_updated_by_id_fk    INDEX     i   CREATE INDEX admin_permissions_updated_by_id_fk ON public.admin_permissions USING btree (updated_by_id);
 6   DROP INDEX public.admin_permissions_updated_by_id_fk;
       public            postgres    false    202                       1259    17604    admin_roles_created_by_id_fk    INDEX     ]   CREATE INDEX admin_roles_created_by_id_fk ON public.admin_roles USING btree (created_by_id);
 0   DROP INDEX public.admin_roles_created_by_id_fk;
       public            postgres    false    206                       1259    17605    admin_roles_updated_by_id_fk    INDEX     ]   CREATE INDEX admin_roles_updated_by_id_fk ON public.admin_roles USING btree (updated_by_id);
 0   DROP INDEX public.admin_roles_updated_by_id_fk;
       public            postgres    false    206                       1259    17606    admin_users_created_by_id_fk    INDEX     ]   CREATE INDEX admin_users_created_by_id_fk ON public.admin_users USING btree (created_by_id);
 0   DROP INDEX public.admin_users_created_by_id_fk;
       public            postgres    false    208            
           1259    17607    admin_users_roles_links_fk    INDEX     a   CREATE INDEX admin_users_roles_links_fk ON public.admin_users_roles_links USING btree (user_id);
 .   DROP INDEX public.admin_users_roles_links_fk;
       public            postgres    false    210                       1259    17608    admin_users_roles_links_inv_fk    INDEX     e   CREATE INDEX admin_users_roles_links_inv_fk ON public.admin_users_roles_links USING btree (role_id);
 2   DROP INDEX public.admin_users_roles_links_inv_fk;
       public            postgres    false    210                       1259    17609     admin_users_roles_links_order_fk    INDEX     j   CREATE INDEX admin_users_roles_links_order_fk ON public.admin_users_roles_links USING btree (role_order);
 4   DROP INDEX public.admin_users_roles_links_order_fk;
       public            postgres    false    210                       1259    17610 $   admin_users_roles_links_order_inv_fk    INDEX     n   CREATE INDEX admin_users_roles_links_order_inv_fk ON public.admin_users_roles_links USING btree (user_order);
 8   DROP INDEX public.admin_users_roles_links_order_inv_fk;
       public            postgres    false    210            	           1259    17611    admin_users_updated_by_id_fk    INDEX     ]   CREATE INDEX admin_users_updated_by_id_fk ON public.admin_users USING btree (updated_by_id);
 0   DROP INDEX public.admin_users_updated_by_id_fk;
       public            postgres    false    208                       1259    17612    categories_created_by_id_fk    INDEX     [   CREATE INDEX categories_created_by_id_fk ON public.categories USING btree (created_by_id);
 /   DROP INDEX public.categories_created_by_id_fk;
       public            postgres    false    212                       1259    17613    categories_updated_by_id_fk    INDEX     [   CREATE INDEX categories_updated_by_id_fk ON public.categories USING btree (updated_by_id);
 /   DROP INDEX public.categories_updated_by_id_fk;
       public            postgres    false    212                       1259    17614    events_category_links_fk    INDEX     ^   CREATE INDEX events_category_links_fk ON public.events_category_links USING btree (event_id);
 ,   DROP INDEX public.events_category_links_fk;
       public            postgres    false    215                       1259    17615    events_category_links_inv_fk    INDEX     e   CREATE INDEX events_category_links_inv_fk ON public.events_category_links USING btree (category_id);
 0   DROP INDEX public.events_category_links_inv_fk;
       public            postgres    false    215                        1259    17616 "   events_category_links_order_inv_fk    INDEX     k   CREATE INDEX events_category_links_order_inv_fk ON public.events_category_links USING btree (event_order);
 6   DROP INDEX public.events_category_links_order_inv_fk;
       public            postgres    false    215                       1259    17617    events_created_by_id_fk    INDEX     S   CREATE INDEX events_created_by_id_fk ON public.events USING btree (created_by_id);
 +   DROP INDEX public.events_created_by_id_fk;
       public            postgres    false    214                       1259    17618    events_updated_by_id_fk    INDEX     S   CREATE INDEX events_updated_by_id_fk ON public.events USING btree (updated_by_id);
 +   DROP INDEX public.events_updated_by_id_fk;
       public            postgres    false    214            %           1259    17619    files_created_by_id_fk    INDEX     Q   CREATE INDEX files_created_by_id_fk ON public.files USING btree (created_by_id);
 *   DROP INDEX public.files_created_by_id_fk;
       public            postgres    false    218            /           1259    17620    files_folder_links_fk    INDEX     W   CREATE INDEX files_folder_links_fk ON public.files_folder_links USING btree (file_id);
 )   DROP INDEX public.files_folder_links_fk;
       public            postgres    false    219            0           1259    17621    files_folder_links_inv_fk    INDEX     ]   CREATE INDEX files_folder_links_inv_fk ON public.files_folder_links USING btree (folder_id);
 -   DROP INDEX public.files_folder_links_inv_fk;
       public            postgres    false    219            1           1259    17622    files_folder_links_order_inv_fk    INDEX     d   CREATE INDEX files_folder_links_order_inv_fk ON public.files_folder_links USING btree (file_order);
 3   DROP INDEX public.files_folder_links_order_inv_fk;
       public            postgres    false    219            6           1259    17623    files_related_morphs_fk    INDEX     [   CREATE INDEX files_related_morphs_fk ON public.files_related_morphs USING btree (file_id);
 +   DROP INDEX public.files_related_morphs_fk;
       public            postgres    false    222            7           1259    17624 $   files_related_morphs_id_column_index    INDEX     k   CREATE INDEX files_related_morphs_id_column_index ON public.files_related_morphs USING btree (related_id);
 8   DROP INDEX public.files_related_morphs_id_column_index;
       public            postgres    false    222            8           1259    17625     files_related_morphs_order_index    INDEX     d   CREATE INDEX files_related_morphs_order_index ON public.files_related_morphs USING btree ("order");
 4   DROP INDEX public.files_related_morphs_order_index;
       public            postgres    false    222            (           1259    17626    files_updated_by_id_fk    INDEX     Q   CREATE INDEX files_updated_by_id_fk ON public.files USING btree (updated_by_id);
 *   DROP INDEX public.files_updated_by_id_fk;
       public            postgres    false    218            �           1259    24643    groups_created_by_id_fk    INDEX     S   CREATE INDEX groups_created_by_id_fk ON public.groups USING btree (created_by_id);
 +   DROP INDEX public.groups_created_by_id_fk;
       public            postgres    false    273            �           1259    24644    groups_updated_by_id_fk    INDEX     S   CREATE INDEX groups_updated_by_id_fk ON public.groups USING btree (updated_by_id);
 +   DROP INDEX public.groups_updated_by_id_fk;
       public            postgres    false    273            ;           1259    17627    i18n_locale_created_by_id_fk    INDEX     ]   CREATE INDEX i18n_locale_created_by_id_fk ON public.i18n_locale USING btree (created_by_id);
 0   DROP INDEX public.i18n_locale_created_by_id_fk;
       public            postgres    false    224            >           1259    17628    i18n_locale_updated_by_id_fk    INDEX     ]   CREATE INDEX i18n_locale_updated_by_id_fk ON public.i18n_locale USING btree (updated_by_id);
 0   DROP INDEX public.i18n_locale_updated_by_id_fk;
       public            postgres    false    224            �           1259    24600    news_category_links_fk    INDEX     X   CREATE INDEX news_category_links_fk ON public.news_category_links USING btree (new_id);
 *   DROP INDEX public.news_category_links_fk;
       public            postgres    false    271            �           1259    24601    news_category_links_inv_fk    INDEX     a   CREATE INDEX news_category_links_inv_fk ON public.news_category_links USING btree (category_id);
 .   DROP INDEX public.news_category_links_inv_fk;
       public            postgres    false    271            �           1259    24604     news_category_links_order_inv_fk    INDEX     e   CREATE INDEX news_category_links_order_inv_fk ON public.news_category_links USING btree (new_order);
 4   DROP INDEX public.news_category_links_order_inv_fk;
       public            postgres    false    271            �           1259    24590    news_created_by_id_fk    INDEX     O   CREATE INDEX news_created_by_id_fk ON public.news USING btree (created_by_id);
 )   DROP INDEX public.news_created_by_id_fk;
       public            postgres    false    269            �           1259    24591    news_updated_by_id_fk    INDEX     O   CREATE INDEX news_updated_by_id_fk ON public.news USING btree (updated_by_id);
 )   DROP INDEX public.news_updated_by_id_fk;
       public            postgres    false    269            ?           1259    17636    slugs_created_by_id_fk    INDEX     Q   CREATE INDEX slugs_created_by_id_fk ON public.slugs USING btree (created_by_id);
 *   DROP INDEX public.slugs_created_by_id_fk;
       public            postgres    false    226            B           1259    17637    slugs_updated_by_id_fk    INDEX     Q   CREATE INDEX slugs_updated_by_id_fk ON public.slugs USING btree (updated_by_id);
 *   DROP INDEX public.slugs_updated_by_id_fk;
       public            postgres    false    226            C           1259    17638 -   strapi_api_token_permissions_created_by_id_fk    INDEX        CREATE INDEX strapi_api_token_permissions_created_by_id_fk ON public.strapi_api_token_permissions USING btree (created_by_id);
 A   DROP INDEX public.strapi_api_token_permissions_created_by_id_fk;
       public            postgres    false    228            G           1259    17639 +   strapi_api_token_permissions_token_links_fk    INDEX     �   CREATE INDEX strapi_api_token_permissions_token_links_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_permission_id);
 ?   DROP INDEX public.strapi_api_token_permissions_token_links_fk;
       public            postgres    false    230            H           1259    17640 /   strapi_api_token_permissions_token_links_inv_fk    INDEX     �   CREATE INDEX strapi_api_token_permissions_token_links_inv_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_id);
 C   DROP INDEX public.strapi_api_token_permissions_token_links_inv_fk;
       public            postgres    false    230            I           1259    17641 5   strapi_api_token_permissions_token_links_order_inv_fk    INDEX     �   CREATE INDEX strapi_api_token_permissions_token_links_order_inv_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_permission_order);
 I   DROP INDEX public.strapi_api_token_permissions_token_links_order_inv_fk;
       public            postgres    false    230            F           1259    17642 -   strapi_api_token_permissions_updated_by_id_fk    INDEX        CREATE INDEX strapi_api_token_permissions_updated_by_id_fk ON public.strapi_api_token_permissions USING btree (updated_by_id);
 A   DROP INDEX public.strapi_api_token_permissions_updated_by_id_fk;
       public            postgres    false    228            N           1259    17643 "   strapi_api_tokens_created_by_id_fk    INDEX     i   CREATE INDEX strapi_api_tokens_created_by_id_fk ON public.strapi_api_tokens USING btree (created_by_id);
 6   DROP INDEX public.strapi_api_tokens_created_by_id_fk;
       public            postgres    false    232            Q           1259    17644 "   strapi_api_tokens_updated_by_id_fk    INDEX     i   CREATE INDEX strapi_api_tokens_updated_by_id_fk ON public.strapi_api_tokens USING btree (updated_by_id);
 6   DROP INDEX public.strapi_api_tokens_updated_by_id_fk;
       public            postgres    false    232            X           1259    17645 '   strapi_release_actions_created_by_id_fk    INDEX     s   CREATE INDEX strapi_release_actions_created_by_id_fk ON public.strapi_release_actions USING btree (created_by_id);
 ;   DROP INDEX public.strapi_release_actions_created_by_id_fk;
       public            postgres    false    240            \           1259    17646 '   strapi_release_actions_release_links_fk    INDEX     �   CREATE INDEX strapi_release_actions_release_links_fk ON public.strapi_release_actions_release_links USING btree (release_action_id);
 ;   DROP INDEX public.strapi_release_actions_release_links_fk;
       public            postgres    false    242            ]           1259    17647 +   strapi_release_actions_release_links_inv_fk    INDEX     �   CREATE INDEX strapi_release_actions_release_links_inv_fk ON public.strapi_release_actions_release_links USING btree (release_id);
 ?   DROP INDEX public.strapi_release_actions_release_links_inv_fk;
       public            postgres    false    242            ^           1259    17648 1   strapi_release_actions_release_links_order_inv_fk    INDEX     �   CREATE INDEX strapi_release_actions_release_links_order_inv_fk ON public.strapi_release_actions_release_links USING btree (release_action_order);
 E   DROP INDEX public.strapi_release_actions_release_links_order_inv_fk;
       public            postgres    false    242            [           1259    17649 '   strapi_release_actions_updated_by_id_fk    INDEX     s   CREATE INDEX strapi_release_actions_updated_by_id_fk ON public.strapi_release_actions USING btree (updated_by_id);
 ;   DROP INDEX public.strapi_release_actions_updated_by_id_fk;
       public            postgres    false    240            c           1259    17650     strapi_releases_created_by_id_fk    INDEX     e   CREATE INDEX strapi_releases_created_by_id_fk ON public.strapi_releases USING btree (created_by_id);
 4   DROP INDEX public.strapi_releases_created_by_id_fk;
       public            postgres    false    244            f           1259    17651     strapi_releases_updated_by_id_fk    INDEX     e   CREATE INDEX strapi_releases_updated_by_id_fk ON public.strapi_releases USING btree (updated_by_id);
 4   DROP INDEX public.strapi_releases_updated_by_id_fk;
       public            postgres    false    244            g           1259    17652 2   strapi_transfer_token_permissions_created_by_id_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_created_by_id_fk ON public.strapi_transfer_token_permissions USING btree (created_by_id);
 F   DROP INDEX public.strapi_transfer_token_permissions_created_by_id_fk;
       public            postgres    false    246            k           1259    17653 0   strapi_transfer_token_permissions_token_links_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_token_links_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_permission_id);
 D   DROP INDEX public.strapi_transfer_token_permissions_token_links_fk;
       public            postgres    false    248            l           1259    17654 4   strapi_transfer_token_permissions_token_links_inv_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_token_links_inv_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_id);
 H   DROP INDEX public.strapi_transfer_token_permissions_token_links_inv_fk;
       public            postgres    false    248            m           1259    17655 :   strapi_transfer_token_permissions_token_links_order_inv_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_token_links_order_inv_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_permission_order);
 N   DROP INDEX public.strapi_transfer_token_permissions_token_links_order_inv_fk;
       public            postgres    false    248            j           1259    17656 2   strapi_transfer_token_permissions_updated_by_id_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_updated_by_id_fk ON public.strapi_transfer_token_permissions USING btree (updated_by_id);
 F   DROP INDEX public.strapi_transfer_token_permissions_updated_by_id_fk;
       public            postgres    false    246            r           1259    17657 '   strapi_transfer_tokens_created_by_id_fk    INDEX     s   CREATE INDEX strapi_transfer_tokens_created_by_id_fk ON public.strapi_transfer_tokens USING btree (created_by_id);
 ;   DROP INDEX public.strapi_transfer_tokens_created_by_id_fk;
       public            postgres    false    250            u           1259    17658 '   strapi_transfer_tokens_updated_by_id_fk    INDEX     s   CREATE INDEX strapi_transfer_tokens_updated_by_id_fk ON public.strapi_transfer_tokens USING btree (updated_by_id);
 ;   DROP INDEX public.strapi_transfer_tokens_updated_by_id_fk;
       public            postgres    false    250            x           1259    17659    up_permissions_created_by_id_fk    INDEX     c   CREATE INDEX up_permissions_created_by_id_fk ON public.up_permissions USING btree (created_by_id);
 3   DROP INDEX public.up_permissions_created_by_id_fk;
       public            postgres    false    254            |           1259    17660    up_permissions_role_links_fk    INDEX     k   CREATE INDEX up_permissions_role_links_fk ON public.up_permissions_role_links USING btree (permission_id);
 0   DROP INDEX public.up_permissions_role_links_fk;
       public            postgres    false    256            }           1259    17661     up_permissions_role_links_inv_fk    INDEX     i   CREATE INDEX up_permissions_role_links_inv_fk ON public.up_permissions_role_links USING btree (role_id);
 4   DROP INDEX public.up_permissions_role_links_inv_fk;
       public            postgres    false    256            ~           1259    17662 &   up_permissions_role_links_order_inv_fk    INDEX     x   CREATE INDEX up_permissions_role_links_order_inv_fk ON public.up_permissions_role_links USING btree (permission_order);
 :   DROP INDEX public.up_permissions_role_links_order_inv_fk;
       public            postgres    false    256            {           1259    17663    up_permissions_updated_by_id_fk    INDEX     c   CREATE INDEX up_permissions_updated_by_id_fk ON public.up_permissions USING btree (updated_by_id);
 3   DROP INDEX public.up_permissions_updated_by_id_fk;
       public            postgres    false    254            �           1259    17664    up_roles_created_by_id_fk    INDEX     W   CREATE INDEX up_roles_created_by_id_fk ON public.up_roles USING btree (created_by_id);
 -   DROP INDEX public.up_roles_created_by_id_fk;
       public            postgres    false    258            �           1259    17665    up_roles_updated_by_id_fk    INDEX     W   CREATE INDEX up_roles_updated_by_id_fk ON public.up_roles USING btree (updated_by_id);
 -   DROP INDEX public.up_roles_updated_by_id_fk;
       public            postgres    false    258            �           1259    17666    up_users_created_by_id_fk    INDEX     W   CREATE INDEX up_users_created_by_id_fk ON public.up_users USING btree (created_by_id);
 -   DROP INDEX public.up_users_created_by_id_fk;
       public            postgres    false    260            �           1259    17667    up_users_role_links_fk    INDEX     Y   CREATE INDEX up_users_role_links_fk ON public.up_users_role_links USING btree (user_id);
 *   DROP INDEX public.up_users_role_links_fk;
       public            postgres    false    262            �           1259    17668    up_users_role_links_inv_fk    INDEX     ]   CREATE INDEX up_users_role_links_inv_fk ON public.up_users_role_links USING btree (role_id);
 .   DROP INDEX public.up_users_role_links_inv_fk;
       public            postgres    false    262            �           1259    17669     up_users_role_links_order_inv_fk    INDEX     f   CREATE INDEX up_users_role_links_order_inv_fk ON public.up_users_role_links USING btree (user_order);
 4   DROP INDEX public.up_users_role_links_order_inv_fk;
       public            postgres    false    262            �           1259    17670    up_users_updated_by_id_fk    INDEX     W   CREATE INDEX up_users_updated_by_id_fk ON public.up_users USING btree (updated_by_id);
 -   DROP INDEX public.up_users_updated_by_id_fk;
       public            postgres    false    260            )           1259    17671    upload_files_created_at_index    INDEX     U   CREATE INDEX upload_files_created_at_index ON public.files USING btree (created_at);
 1   DROP INDEX public.upload_files_created_at_index;
       public            postgres    false    218            *           1259    17672    upload_files_ext_index    INDEX     G   CREATE INDEX upload_files_ext_index ON public.files USING btree (ext);
 *   DROP INDEX public.upload_files_ext_index;
       public            postgres    false    218            +           1259    17673    upload_files_folder_path_index    INDEX     W   CREATE INDEX upload_files_folder_path_index ON public.files USING btree (folder_path);
 2   DROP INDEX public.upload_files_folder_path_index;
       public            postgres    false    218            ,           1259    17674    upload_files_name_index    INDEX     I   CREATE INDEX upload_files_name_index ON public.files USING btree (name);
 +   DROP INDEX public.upload_files_name_index;
       public            postgres    false    218            -           1259    17675    upload_files_size_index    INDEX     I   CREATE INDEX upload_files_size_index ON public.files USING btree (size);
 +   DROP INDEX public.upload_files_size_index;
       public            postgres    false    218            .           1259    17676    upload_files_updated_at_index    INDEX     U   CREATE INDEX upload_files_updated_at_index ON public.files USING btree (updated_at);
 1   DROP INDEX public.upload_files_updated_at_index;
       public            postgres    false    218            �           1259    17677    upload_folders_created_by_id_fk    INDEX     c   CREATE INDEX upload_folders_created_by_id_fk ON public.upload_folders USING btree (created_by_id);
 3   DROP INDEX public.upload_folders_created_by_id_fk;
       public            postgres    false    264            �           1259    17678    upload_folders_parent_links_fk    INDEX     k   CREATE INDEX upload_folders_parent_links_fk ON public.upload_folders_parent_links USING btree (folder_id);
 2   DROP INDEX public.upload_folders_parent_links_fk;
       public            postgres    false    266            �           1259    17679 "   upload_folders_parent_links_inv_fk    INDEX     s   CREATE INDEX upload_folders_parent_links_inv_fk ON public.upload_folders_parent_links USING btree (inv_folder_id);
 6   DROP INDEX public.upload_folders_parent_links_inv_fk;
       public            postgres    false    266            �           1259    17680 (   upload_folders_parent_links_order_inv_fk    INDEX     x   CREATE INDEX upload_folders_parent_links_order_inv_fk ON public.upload_folders_parent_links USING btree (folder_order);
 <   DROP INDEX public.upload_folders_parent_links_order_inv_fk;
       public            postgres    false    266            �           1259    17681    upload_folders_updated_by_id_fk    INDEX     c   CREATE INDEX upload_folders_updated_by_id_fk ON public.upload_folders USING btree (updated_by_id);
 3   DROP INDEX public.upload_folders_updated_by_id_fk;
       public            postgres    false    264            �           2606    17682 4   admin_permissions admin_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_created_by_id_fk;
       public          postgres    false    202    208    3080            �           2606    17687 <   admin_permissions_role_links admin_permissions_role_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;
 f   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_fk;
       public          postgres    false    204    3065    202            �           2606    17692 @   admin_permissions_role_links admin_permissions_role_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;
 j   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_inv_fk;
       public          postgres    false    204    3076    206            �           2606    17697 4   admin_permissions admin_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_updated_by_id_fk;
       public          postgres    false    208    202    3080            �           2606    17702 (   admin_roles admin_roles_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_created_by_id_fk;
       public          postgres    false    208    206    3080            �           2606    17707 (   admin_roles admin_roles_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_updated_by_id_fk;
       public          postgres    false    3080    206    208            �           2606    17712 (   admin_users admin_users_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_created_by_id_fk;
       public          postgres    false    208    3080    208            �           2606    17717 2   admin_users_roles_links admin_users_roles_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_fk FOREIGN KEY (user_id) REFERENCES public.admin_users(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_fk;
       public          postgres    false    210    208    3080            �           2606    17722 6   admin_users_roles_links admin_users_roles_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_inv_fk;
       public          postgres    false    210    3076    206            �           2606    17727 (   admin_users admin_users_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_updated_by_id_fk;
       public          postgres    false    3080    208    208            �           2606    17732 &   categories categories_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 P   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_created_by_id_fk;
       public          postgres    false    212    3080    208            �           2606    17737 &   categories categories_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 P   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_updated_by_id_fk;
       public          postgres    false    212    208    3080            �           2606    17742 .   events_category_links events_category_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.events_category_links
    ADD CONSTRAINT events_category_links_fk FOREIGN KEY (event_id) REFERENCES public.events(id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.events_category_links DROP CONSTRAINT events_category_links_fk;
       public          postgres    false    3098    215    214            �           2606    17747 2   events_category_links events_category_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.events_category_links
    ADD CONSTRAINT events_category_links_inv_fk FOREIGN KEY (category_id) REFERENCES public.categories(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.events_category_links DROP CONSTRAINT events_category_links_inv_fk;
       public          postgres    false    215    212    3092            �           2606    17752    events events_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 H   ALTER TABLE ONLY public.events DROP CONSTRAINT events_created_by_id_fk;
       public          postgres    false    208    3080    214            �           2606    17757    events events_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 H   ALTER TABLE ONLY public.events DROP CONSTRAINT events_updated_by_id_fk;
       public          postgres    false    214    208    3080            �           2606    17762    files files_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.files DROP CONSTRAINT files_created_by_id_fk;
       public          postgres    false    208    218    3080            �           2606    17767 (   files_folder_links files_folder_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_fk;
       public          postgres    false    3111    218    219            �           2606    17772 ,   files_folder_links files_folder_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_inv_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_inv_fk;
       public          postgres    false    3224    219    264            �           2606    17777 ,   files_related_morphs files_related_morphs_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.files_related_morphs DROP CONSTRAINT files_related_morphs_fk;
       public          postgres    false    3111    222    218            �           2606    17782    files files_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.files DROP CONSTRAINT files_updated_by_id_fk;
       public          postgres    false    3080    218    208            �           2606    24645    groups groups_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.groups
    ADD CONSTRAINT groups_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 H   ALTER TABLE ONLY public.groups DROP CONSTRAINT groups_created_by_id_fk;
       public          postgres    false    208    3080    273            �           2606    24650    groups groups_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.groups
    ADD CONSTRAINT groups_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 H   ALTER TABLE ONLY public.groups DROP CONSTRAINT groups_updated_by_id_fk;
       public          postgres    false    3080    273    208            �           2606    17787 (   i18n_locale i18n_locale_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_created_by_id_fk;
       public          postgres    false    208    224    3080            �           2606    17792 (   i18n_locale i18n_locale_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_updated_by_id_fk;
       public          postgres    false    3080    208    224            �           2606    24615 *   news_category_links news_category_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.news_category_links
    ADD CONSTRAINT news_category_links_fk FOREIGN KEY (new_id) REFERENCES public.news(id) ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.news_category_links DROP CONSTRAINT news_category_links_fk;
       public          postgres    false    269    271    3235            �           2606    24620 .   news_category_links news_category_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.news_category_links
    ADD CONSTRAINT news_category_links_inv_fk FOREIGN KEY (category_id) REFERENCES public.categories(id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.news_category_links DROP CONSTRAINT news_category_links_inv_fk;
       public          postgres    false    212    3092    271            �           2606    24605    news news_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.news
    ADD CONSTRAINT news_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 D   ALTER TABLE ONLY public.news DROP CONSTRAINT news_created_by_id_fk;
       public          postgres    false    208    269    3080            �           2606    24610    news news_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.news
    ADD CONSTRAINT news_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 D   ALTER TABLE ONLY public.news DROP CONSTRAINT news_updated_by_id_fk;
       public          postgres    false    208    269    3080            �           2606    17827    slugs slugs_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.slugs
    ADD CONSTRAINT slugs_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.slugs DROP CONSTRAINT slugs_created_by_id_fk;
       public          postgres    false    3080    226    208            �           2606    17832    slugs slugs_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.slugs
    ADD CONSTRAINT slugs_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.slugs DROP CONSTRAINT slugs_updated_by_id_fk;
       public          postgres    false    226    208    3080            �           2606    17837 J   strapi_api_token_permissions strapi_api_token_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 t   ALTER TABLE ONLY public.strapi_api_token_permissions DROP CONSTRAINT strapi_api_token_permissions_created_by_id_fk;
       public          postgres    false    208    228    3080            �           2606    17842 T   strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_fk FOREIGN KEY (api_token_permission_id) REFERENCES public.strapi_api_token_permissions(id) ON DELETE CASCADE;
 ~   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT strapi_api_token_permissions_token_links_fk;
       public          postgres    false    230    3141    228            �           2606    17847 X   strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_inv_fk FOREIGN KEY (api_token_id) REFERENCES public.strapi_api_tokens(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT strapi_api_token_permissions_token_links_inv_fk;
       public          postgres    false    3152    230    232            �           2606    17852 J   strapi_api_token_permissions strapi_api_token_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 t   ALTER TABLE ONLY public.strapi_api_token_permissions DROP CONSTRAINT strapi_api_token_permissions_updated_by_id_fk;
       public          postgres    false    3080    208    228            �           2606    17857 4   strapi_api_tokens strapi_api_tokens_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_created_by_id_fk;
       public          postgres    false    3080    232    208            �           2606    17862 4   strapi_api_tokens strapi_api_tokens_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_updated_by_id_fk;
       public          postgres    false    3080    232    208            �           2606    17867 >   strapi_release_actions strapi_release_actions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 h   ALTER TABLE ONLY public.strapi_release_actions DROP CONSTRAINT strapi_release_actions_created_by_id_fk;
       public          postgres    false    240    208    3080            �           2606    17872 L   strapi_release_actions_release_links strapi_release_actions_release_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_release_actions_release_links
    ADD CONSTRAINT strapi_release_actions_release_links_fk FOREIGN KEY (release_action_id) REFERENCES public.strapi_release_actions(id) ON DELETE CASCADE;
 v   ALTER TABLE ONLY public.strapi_release_actions_release_links DROP CONSTRAINT strapi_release_actions_release_links_fk;
       public          postgres    false    240    242    3162            �           2606    17877 P   strapi_release_actions_release_links strapi_release_actions_release_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_release_actions_release_links
    ADD CONSTRAINT strapi_release_actions_release_links_inv_fk FOREIGN KEY (release_id) REFERENCES public.strapi_releases(id) ON DELETE CASCADE;
 z   ALTER TABLE ONLY public.strapi_release_actions_release_links DROP CONSTRAINT strapi_release_actions_release_links_inv_fk;
       public          postgres    false    244    242    3173            �           2606    17882 >   strapi_release_actions strapi_release_actions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 h   ALTER TABLE ONLY public.strapi_release_actions DROP CONSTRAINT strapi_release_actions_updated_by_id_fk;
       public          postgres    false    208    240    3080            �           2606    17887 0   strapi_releases strapi_releases_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 Z   ALTER TABLE ONLY public.strapi_releases DROP CONSTRAINT strapi_releases_created_by_id_fk;
       public          postgres    false    3080    208    244            �           2606    17892 0   strapi_releases strapi_releases_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 Z   ALTER TABLE ONLY public.strapi_releases DROP CONSTRAINT strapi_releases_updated_by_id_fk;
       public          postgres    false    244    3080    208            �           2606    17897 T   strapi_transfer_token_permissions strapi_transfer_token_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ~   ALTER TABLE ONLY public.strapi_transfer_token_permissions DROP CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk;
       public          postgres    false    246    3080    208            �           2606    17902 ^   strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_fk    FK CONSTRAINT        ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_fk FOREIGN KEY (transfer_token_permission_id) REFERENCES public.strapi_transfer_token_permissions(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links DROP CONSTRAINT strapi_transfer_token_permissions_token_links_fk;
       public          postgres    false    3177    246    248            �           2606    17907 b   strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_inv_fk FOREIGN KEY (transfer_token_id) REFERENCES public.strapi_transfer_tokens(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links DROP CONSTRAINT strapi_transfer_token_permissions_token_links_inv_fk;
       public          postgres    false    3188    250    248            �           2606    17912 T   strapi_transfer_token_permissions strapi_transfer_token_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ~   ALTER TABLE ONLY public.strapi_transfer_token_permissions DROP CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk;
       public          postgres    false    3080    208    246            �           2606    17917 >   strapi_transfer_tokens strapi_transfer_tokens_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 h   ALTER TABLE ONLY public.strapi_transfer_tokens DROP CONSTRAINT strapi_transfer_tokens_created_by_id_fk;
       public          postgres    false    208    250    3080            �           2606    17922 >   strapi_transfer_tokens strapi_transfer_tokens_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 h   ALTER TABLE ONLY public.strapi_transfer_tokens DROP CONSTRAINT strapi_transfer_tokens_updated_by_id_fk;
       public          postgres    false    3080    250    208            �           2606    17927 .   up_permissions up_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_created_by_id_fk;
       public          postgres    false    3080    208    254            �           2606    17932 6   up_permissions_role_links up_permissions_role_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.up_permissions(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_fk;
       public          postgres    false    3194    254    256            �           2606    17937 :   up_permissions_role_links up_permissions_role_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;
 d   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_inv_fk;
       public          postgres    false    258    256    3205            �           2606    17942 .   up_permissions up_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_updated_by_id_fk;
       public          postgres    false    3080    208    254            �           2606    17947 "   up_roles up_roles_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_created_by_id_fk;
       public          postgres    false    208    258    3080            �           2606    17952 "   up_roles up_roles_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_updated_by_id_fk;
       public          postgres    false    208    258    3080            �           2606    17957 "   up_users up_users_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_created_by_id_fk;
       public          postgres    false    260    3080    208            �           2606    17962 *   up_users_role_links up_users_role_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_fk;
       public          postgres    false    260    3209    262            �           2606    17967 .   up_users_role_links up_users_role_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_inv_fk;
       public          postgres    false    3205    258    262            �           2606    17972 "   up_users up_users_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_updated_by_id_fk;
       public          postgres    false    260    3080    208            �           2606    17977 .   upload_folders upload_folders_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_created_by_id_fk;
       public          postgres    false    3080    264    208            �           2606    17982 :   upload_folders_parent_links upload_folders_parent_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;
 d   ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_fk;
       public          postgres    false    3224    264    266            �           2606    17987 >   upload_folders_parent_links upload_folders_parent_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_inv_fk FOREIGN KEY (inv_folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;
 h   ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_inv_fk;
       public          postgres    false    3224    266    264            �           2606    17992 .   upload_folders upload_folders_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_updated_by_id_fk;
       public          postgres    false    3080    208    264            q     x��ZMs�8='�"��B!@B�GL�ao���x�`pN65��}%[�mP�&��j.y���Z�?,������j�|��ۢ;Y�w?��{��_�?��Q�QD�I��QҘ������xlw�6?�;��k%���ďɘ��{9��Z�`�����S��~W��C�-���ѿ#(�)�v��U�2��?rd3Z�V����δ�
�� �H�oUT�@�� nT' ~$ VT��q l�ƍ���&��	��I�/W� F؄!��W[?�f�ESld�k�N[���e�;�m����F[!w?W?*Y��*���HSl�ꏇ��U�v]�Z��;<�張]��;�V���j_d�у�m1(�1(�{�����kk�zC���j܄"�����9���h����\�u( M�Nl>��%.�#4q�H:�Wͦ������̀��\G%$^�u-�z#>J����Z"��owm��sںxo��<1V���hB��<﫺<��i uYqŧ&rH�P�}P��c���9��IA��7�o��έ��GE������ͳ"�~��o|���P��-��dZ\���pJ�̉ˤ�E�aG�A\�������E��ָ���r!W���&2˄�sF��q��r�:��?�5n��+\��c���qÖ�ذ���j׸�W��:�vW+6�@����pbW� ���LȮ��kѬe,�uWrM)�8�k�6���Ʃ�T�7���Z��
Jw�y��"Fߩ�=%^���P ����4�����Ϝ�ɝ��-�9(���a���9�Z�o���}���(=�-=)���y�E&�E&e�����M,c7�*�N���>�.:�@��}2�fq1�섕�.�b�C���(�4��/��zӸ1[Ëf�=ָ1�\FE��Ҹ1�^�EF���i�����&~�i�vyW�`�'���ײ����!L��z汎��؟}7ֹ�:n'c .������ng�:��f���ld�c �N��0`U�ъ���T��?r=,O80�p7�����p�o7.W��h���8��Q���yw�Q�A�0gN�t��Aؽf@���׀O	�������,��0/�:����L�>��M۽��a� { "OhNXHI��"fzR�<��Zg%!9����,�@��w���1��aNINY�P�{��͔��p~��Z��tmI?j������~���t���q�S&g�l�[��S�ɕ�;�pƸ�.B���d|��� q�>�jc$�F���>P����A�r;�i�S����u�����k� �^�!J�H0_�;Ǟ����5ι�
 b��x�H=��<x��Q'a~*g{O�T�W�7i�@�z�����4_݉���"n�Gb�4oq�m�h��������N�+ZZ�n�(�G��#�4��=��_gg>Q�?�vnӵ�]xx
_)�uW����E�
�s+�B�f n�EtŋM�<g�׈)n�Ed�h�?��l�0��"f�D.܅�*aC�����;�k�      s   �  x�%��mC1C��a
�y�]��%UD���H��-���%�DYq/�5���p|�����I<{�~���p7V��y1�b����>/S���T�S��3�z����Le���"xo���C7߳N�ǋ�����Dpq���@ވk!��Y��È��7
��qD���Ԣ�#�rg�|m)Z$r,E�BR3Ѣ��M�$�->Ա-.�:�ED˃�����h�h��Z	��X�����D�F]+�rP�J����Z��hj-Z>4m���V�.k�*�̂h��^���Z�j�����E�slD�������0L���0!��c�F�Lۈ։a�D��|6&�ڈփy6����@��08�'����ã\�����`|\��
�e�Z}O��_�R������g=z<&�W�G��^���ƫ��^2��~�}�?�̿�^���%�Ws?�H��G��<�/�h��h�E�������E���      u   �   x�u�1n�0Eg���Yv�"[��]�fa%&�H�H��+W	�8���d�Ny�w�A�$\|�+j��Y3X��3`ppÀW�g�JNT9��W��fl����a�w{=v;=n��g�fP�,SLO�S���-��A(���a��BR�!�o�M^�::/�x�S����c��5{��>�9�r1�L/�[�̔�~b^�L_X�t����t���}�      w     x�}�]O�0���_���Ӯ�]��P>��h�)t�Ύ�X��W����IN�99ϋ���䨗�D��F�1��l�E���J.������j��Ю����>�-F�q.���.����x�ҝ-vM��^��㾫b/�8��|L��i �^h{���a����c���5Z��NO��kq�G����&v�t���|��ɭ|�e<����&�g�;Y���ظ]����Y�r�a-Q|pH���cE7�0�(%	 �U����G�~@�y��~�!�)�,�r�yǩs�      y      x�3�4�@.#N�b���� &��      {   �   x�u�1� @g8�(�@������5!�bj�Bơ��b�1&���?_����?^m�[�v9ʊ�
���` �B,9r�����6(p�c����'9����w
�O. k;��(��j�����삳��4�d�z���-��
�4�Y~UK&���9qHkH��c���.�p�4w��w�}r�QJ_�Kfk      }      x��\�n�H�}���@
��vfz���@���hT?�KX��1�(5#?�r�B�94P��*'E�w9��%|�i����r��Zʩ�����~��C}�4�S۔�9����ss*�T���t:Λ􇦞.�x��ټ��:5]��i_/���u���������+��[?�E�:��f8��r�,s��_���~��4ˑ����Լ��.S��h�s��G�k�R��X'z�%}��3�~����u�S�6)����q�r<��y��o�k����еJOˉ�E�k��yۨ��W�m�	l:n��.Þ�D�����4��6����6�e?Ӌ·z�6_��r:ʑ�(XHԽ܄U醏���8�� ���p����W�}�����Pxu�\�������Y����K��o~~�^&��v0�[H�b$��r��~4M�"Y�$'^���of�����ik�L�XW�;�'��ۆm�P鮓<��Oz�݂�*�0O����}?�)�
㥵,�л�JȘI�z��,,�m��~%����rd�c�u�'���ʶ�۸�f�C��,����`_�m���tTy��3�cK_��=]$���.,��2���br#f����~���R�؟����XhCdqjym�X8)���LL���4}��z��=YX\h�q�GZ�X7}�=�L�:��a�M�~Hi�D��N=�N$�S�L�C=���3�p����չ������l7w�w����o?uw�������no������9��v���᭫��V�9�ue�n� Et��������:��#+����i*I<�_F�J��`�O�d:�����j��$u�d)���Φ"�Ն�3>v9�]�q�`��|Y��Q��+�Ȗ�b	}Țɶ �I��w��ЄD ��6&gո�YѦT]�/��5\7U�{�@>z>.�?��}��C�~Yf7�_2�6�@(�1 Y��	�/�@>H"j}���F@�A�G����yI��
���2R�Jx�G]/�!aTHTqϊ��Yp��q������5����\�3AE� ��G����ʾ9����c� �J��1�r��һ�,���ŶB}/��a�#�gw��������O���N��_:����Չ�t�s���fw�	y��W���y�0�%l
$*���/Gr��\X��L�>�����L�n
�)o�p����-�3��p��4��hQ�e&������9��բ�Q��R݇;�ܸ�K<?�C�PɎI*9�������w�R�˅��ݮ"��	q՝O�^y�K�X�Y�#������Ozg$��S�WY��_��̴�{��hW_Hj�ڌ4�� O� ���1�����]�'b���I6l�8I��޻v�V$���g�*���i��h�|L���P2���g��Wz��q���U����Y�K�*$O�
2�怨otA���l��-�_s�C���K��=�k�B H`�y[ؠ�d�
#�M$�OG�3�c�P�8��{&�:�n����\��zK�b�,�Ҧ�n~ 7�64����3iB��H^V �S�W��~	Ҕh�(����֠x�@�F��#qC{�}e�l��C=.��	�@����`15���i0�%��9p�P�����֐��$9���<٨`g�z�(���r�Y>�O��l����]ť�������ç�^�xu1�H3k�S�u�=EgN0��i�"Y'z�{ؐ��'h&��W��b���� �C�R���R�������������AƱ�^�Bv3�֓�x��X��*)�R}��0�]�g�f���V�h� %Y�",K#'j�������V	�ఞ��E�\9�/���J���`��M��Q�ΑZ��ٺ�9w�a%s����PEq��N��¼{�;��Tv���>M�Q%�d���m=d���;�����_�\����}Gf��WB�?�ek�)B��p�/Hʉ��p.�>"�*�)�ol4� ����F�.�m6Ӕ�uh ���3���!Y�:$�Βُp�z�[� j�*
by�d�%>>��dKr2Ŷ�P� ,��
��fк���
��������yrވ�!顷�*�����kv�$6��u=⾈�&���M�eB�,��PX7�W���Z�E�8���ma����MJ�4����f���:��=>��_?��2G�e�\f]�����;����Q�&fӊ%���w_Q浽ec�Ϝ> ���%S*����r��0U}�u����-��B�E�W�%���-AD�8��K`�P�F����r '+^5��uJф�����ZP����;W{�Xj<�����&��؊��v�<���$	5��@f�%�����W�J$0�l<��o��%[��//o�*uB<[&*�yW�������N���2����2#���\��A��?b�詟<IS;���T���)��e����ed� �q��,E��@ %c�ԛ�0ݫ`va�^��J�&��%3Ti2of���Hfڰ3<������"�Y���� ��)�5 q$��Tđes��o;�i%� ���⠩v��qř{ے�����x��$�����	Z�@M*�ߥ�O���w宸.e����;�A'��;y��~���Q�T_L�M*b�_¦��m���j���Sq��VM��L���H�`�F�UN�n��'¨�' W�8q�zHi,܁�"13Y�����(��dΏY�r3�kr.Y���x�7+�itl]@j�Vt�
�ڧt<9~�rܩz�����z eh/?��+2�B�!�@����J�jC�>a�Z\�v̊6g��B]U�I�]���ə8 R�Lܶ[A!zn�"޹i+UF�TA��*)�*�h����Z��Rh.�S�>�nTBZ�~��A��J	!�Sd�`��'�2���<7ʭK�BE �j|ȲO3Ջ�k.M�R�� >�{���E?�2�#����iᬲ9&~^��2��`�SW��v��ʙ-�d�/�.�X��h�8�U�T��&�24P�%�%���i|5���6���S=7��b�P��R]��V���D��/8'#������c+MA�]���t�y{����ץV�`����x���X�p'��؉m��=���}`zkPwԌx���Ӕ�
^�<G)r1��(h���BXE}o��sU�1Lk�dG�ۼ�������z)V��Fl%M�Q��Ziú�*�4M����`���!�h 8'`��di8LX��Kt0<����m	�X��U�l i�*Z��a��I�����+�&	O1�e�|�A��Q�Cs��Uh��z�|�I�6�c��~D�#��xc��"�/l� �k�Rn�j�1�߹�
^0c���Yh��a�e�00�ײj�I�Ru�x�g��
b����D�A0����GR��3�;cPu;
3�0�YҤ	�d�5���ɻ��<�pS�h���h��D� #z��Th���xjf��\g�"r�E�e���F�x����{�=lww?�~�xw����pgR�X����F;�כݗ�FQ�
��,G��p!H"[�	ILi��g�T@���p9� �pUz��T�ў3Z��O��cȀA=m�[�c�%!��Y�в*�g.����	����s��?�+1��!EY#>^��Q91$y�=���t��I9�hK��A���+f)��3l;�,�ViӉ#����b�1z� �XEL�q��2<�Z�Z���T���d�G	�A]D������S��?zkA"-�bvC��k�Q� ��U�ܳ�;��b��q�d�J�� ���E@o�ϡZ�������hI���1��7b�)��M�}`����c���/��������S�)[��3Ę�
Y�k�J|�bR/�Ή�9�D�fd��erQ*1
#� [X/�N��I��j�� ���>(�*��-ap�Ƀ��'�l6�(�+AF�T1D�3WO�ɵhW����-TD�aP�1��<�O`>}�><��:Ǯ5���p<�x#�P��}�8T,Ȍ���Ez���x��5h}����X_�qJUoݳ��N+p*�qt  �  �j.veA�\�V	A�yU������K�bB.#��<2�+>�5*��������"w��0٫����[�L9�1ۭT �&���ů<��!��56d�ё�`h&Z����j��)�'�bbM�y=$6�)��Y6P��QI��ޫQd�o#�b��'�I��UK�R�(��-(!�A�/m���Yr���J���<�[mS�U�a�I��9q�@�!�3X��~�$E�H6�9(�i��SQ����3'IU�/�u���+{�E��Gʈr��3l�A��(��U���bk.����h|o��?R�P����&tyS���Y�C+������~�r=����ʄ�|��h�
w&�.�YP�t*����MNb��.Z�bĖF{gt۬iu=M�&��(zDΣ��ֆ� jA��1]c����E�	L�����BJiw:
'����I�:q���2w6����$�QD���Z�������2�dN�%�d�Di�&��	����aK�JZ�3�iך��$X5{|?�
�r��[�\:�Q��������l��BciAx����H9� ֹ*���!��,�$����a�Ɩ��!��GelLINA)�-���	H8l�cPn��.V[(?����
��2[�Ǵ����^!��E�Q��U(�CH2�����C?ۙ�wsH��cL!�(-��N�j�p�C"���B\�3���6���ї�����ݻ�#��`�Ǡ�C'�����9��u��F��C���6V�NIS
#$Z
���9ʽ����x#��j�z��W,:Q�Ipؠ�zRx��������
��i��J�jr~p�}uk�L�����:l?�~�06���Y���;2e�4u��=YM^�����ո�����E�yv~(gi媽`52��F�z;��C�Wm��G��tZ��l!�Ø=���[�\*~p�s`[`���P[�482j^"��,>�t�o��8D���e���T�m�[�,r�C[�~�������2ZAu�R��0ER��",��Yq�]� g��O��+[�[�I,E#���p����ը����yU�n��t)�P��)[�4�^u@0O�a�=�M��X'���W̝7�T7�	���=(�j���dL�
�(v�����]��i�������uF�7�Jg0���k��S;^Y�ʈ۩o( XR/f��:�B���c�j�7~��[鰜8{U�EOY\�3�Zu���wY����ᴿd�1����m����Ċa�����)S.����P��}��}��������+,6�����9I��2㠉Wz�H����?�E�.���b์���\���^�pz;A���Rx�F:�N���F��k%�`�[���Ca����\�α��#I�b�O�q6��rCӒ���GW>�QcB̞cZ'�Ȃ�h�]��yH��Ռ����Y�����8AJ^L���X6�Ӻ�2�I�ՙvU�'���2�W8��C��m?=��:������K1x�*>���.�w)�:�}����Ǎ{D��-z.̂��]�X��ac��Kdɯ�Y�Z�Q��FS� ����L.��[�F�5[w6��<�vz��ņ1ta�6���t����u��x��D�D[�,�-�&�LF�(�7�c�h��8�qD�:i���ن�bX
���?��8T���z>�~��>7�,B7��A��</Ky����8���j}Nޯ�ZW��FPsQ553QQy����zy��:Uָ�1?�Q��l�M���^{]ac�)���^�K�Ls��t�&�4�뱻����8�i��"BX���m���R�����3����͔��#�Q\��{����"��c�FQynh�&��7������c�XMd08���uɓ�;U�`�&̒o��g�^�k�b��?�,qg	K�.t����ꇻ�ۯ����e⸮�
�|�I��g�׵����,O7(L�������_&\��      ~   S   x����PѳS���B�u0�Do�^�-����FG�>J��u��PZ)nu�z�!���Kp�b Q������}%      �   �  x����r�8��������B,�]��igJ�ĝ�;�U(J�$��-������Tۂ�EX�Tl#��/� i�,��.YO�M������ѯ?_޿w�ͪH63p��]�"Hp@ ����
����O�e�[������_?���E���ݪX&��mu����}��A^}��G�ן��|'�bIB�0#,y����R�Q�����r�g�<�fooVY%�H����)寭�m9�Ů(�O���!�H��=O�E�r�Y>��p8�?ʫ�IQ�0�.�g�(s��&��!��ƌ##����Y���&��W�Cs�9MMWvƆ	`��M�Z:65��v���Int�=_��C�4����V�NQ��G`=������¹��
�);�-]�X�����m������8R�>G�0@9kGz�i0Z�K�k��:�]'�;|1�|�4�|��h�1d�T�[}M-t!U4YE�wX^L���$���a�B�D�ɤ��]�L�߆M�q�e��E��G?5�d�GD A9�`���IO9��K, ��"��G�苨��M��+B�E1���ẘZ1���w�\"(j�r	�IV��u2O�Ex͒��	����$����u)���ȧ0R�9�n��#1JPƛ3���i�0Z~��0��3YO�!Qx�r�0M	~�0<~�����`�h��.����=����(cc�O��ITwt���lE��>n��ys�o�̛��r�ޘ�l�����}�&�G������)��z��������!�|�%���:��E��f��1�rs��% �NCg���U���{@�@�������s2v��b�^�v���G����x�A�O���"�)�G���w�l�p��ڏWy �#�M»|����&.�=������㦱$X�wod��@�)�.��$�*���9,2�d��V�Qڜ�uL��!���G@�Y�� ����& _l���rrp�B���.���7N^Z?����G���}12@�}���ۯ����x��F���Y����O��c��b������/�u8�������ӻ�!ӥ�,꽦��r&U���RĒha�Z�[H�W����z�pUl���6^�$�k{gP��!y��ރ���E%��J͔�z��=�9��������u�y�K�ǀa�T��yҭ��m��j�,7�0�n�Y�/�_�����z��d�D8v��8�)����2�T��g}[����%-۴�*��mF��fAǻ55�]������{"C����hj�y����e��ܓA �M�n�}����sW��t_��r���_��~��	��kwAk�ߏW=��]>.�m6��lN�%��nq�l�LE4"��0e(���Z(-��� 1梥c�bj�� �-��&�S}�K�M����������E�X������������Ю�W���]����!� �lco��z�B��`�.tZ/ѳ�G!f��);����s3��</���n��&��6�����{86w�!R����~_ŒZ,y=��[9�e89ԺL�M&!J�f�w�2u~s&�]<pg��d�� ��2M= D�đK��M/}���A��ūm��B�S�&5��S��;c���i���ܛk��δ^
D���)ǫ,�>�jUd�d��c4^�1�_�M)B �!�C��{�s �II�R��!�T��f]m���i�y!z���M�Qƪ��Aŀ�=%ol�:v�p�S�j�/��yHY7�< �㛯���P�\VT��G/Z@�xO�}y7j���Z�[���1㻛?�Mֿ}��~JH@�;©��2�TQdF�8���(h2&Y�b�vƇo��nVv<G����*�7>�(��ȧ����-'�S6^�,��?'�猍6W��5^��G�;j:Yc5���S�0����35pp&�������I0���Mx���T}���;�&����P��0 9xxG�G�B^��e$�Big�b���ɨ��mUL}܌B�# zC�^�S/�E�b���px�.��'e}�9���'5����Gq�a��ܕl�ݓ T�3j������%:.?���]��;���8;������Y����`$0�\\՝0@�嬍R�������1lv�+M�X�s{�&�Y��t?��_ij�F+$���tO��v\jluFk�DUA��w0Yi��6�d�^�N��&R�����0mk�t��)0z����x�"�7o��w*�      �      x������ � �      �   �   x�}�1�0���0Ql'iҳ� !����\7E0�C��'}ى�@��1�mk����ۼ��b�DP:)@�A�`��!@�\��	\�d��l��!�B������l�4�M�^t.x�����^�?���Gx_�������w�} O���      �   *  x��SKn�0]ۧ�HB�-�]д@-z�nF�Ȟ��#����t���y�a�{)�Ȇ!ČC�Y�*�3�jrq4X�������[Vv4��ⳤK�:H��$e�بդ�!9I&.&�Ha�@��ԕ�ѳ�K�	΅1�eSy�M�I|ҜVQ��%�
0)}���������P��>��b5c�O�Q���K�bH�hB��#�1�b�����x8Í���xu�Z"�KD%��GV�M�x��W� nG?Y�x��� y��nSXuORN
r���U3��)JL��6�l��_���5d��?�/ڡ��K��B��Z@;�a�qr�^�Q�J*<r�X"JNk���r�R��fU��1!�3�;�������	�5����	���Xn-��ʺ��#"XR�.5�xf]w��Ć�.�;v�1@i��^Kʡn�M��%����b�9�+�
GD���2P�脐�G�O�߽����0�Y�0^�U�U�#ì��38���n�M�Z�� [6m��}�v����ñ}8��O��O�����=~����~���t���/Àz�      �   r   x�3�t�K��,�P�H���L��4202�50�50Q04�20�20�315�)�D\F��E%�饩ũ
NE�U�9�
%�NA��`
a��������������	NqCNC�=... �$�      �   �  x���MO�@��ɯ��J���y$�	.��e��ī�w��5���u�C{�d'����x�{��]/CV@l׻=4C��!�[�@l	�`}�~�����b����ǀA�f�X���)����x0*�]v��.B��9
X�%C��8�ܣځ���!l�
,O�zU@����j�
�����A�]S��5-���i6�BMF�>��D8 F�Ůoȗ����=��9�R��ۆ��p�;j`�=�t�x-&%�_94R�a/d"i�b̌���Z�Td�[N5bxضY�ha9�$����+&��p��A	�kG <C�'cÝ*�D)�՜0��uu��Y���=k~h�� p͞���"<�K�3���~7oQ�ǰ?��,r�b�wX+Jk(p���H>�ȳ����X+Դ"*��Di�\C?�ۥ�[k��Vܿ�Z3��#y�
ӧ�)����h�Q�f��$�����XU���
�/����?��#Q���2��w_�`�XM�S�O�ZR�@�z�`�W}_�6"�,�K�JIw�׿f��o:��u9�	{ی��74���{���i�%ѣ�)�n��Yi�$��r���Rg�^fH����yhv-v�dQ/�e�,g���}i�O�29e:Jޔ*Y��R��G·�����yuqy������L9�O�����N� J
�Q      �      x�3�4�44�4����� 0�      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x��]�r�6��-?EOW͟-�-�G�ɮ�8S�xl�/;�帺�&Z��M2$[���y�}�}�ŝ��`7٦T["��C�\> ���ds��"K+�V�u�FW���/�զ�*�ե�]���(^���<��%�p�ǴUӫrz���r�\G�	��W�O�0�@!?)AT,V�u���~?;=��#��AOϧ��0=��`m��MVT��9
^1(P�ś�[DTQUa��o�
��
X⟦It	���8+���-j�:��	K墀9�7E�$Z�U�P�ЃXB�LI���N����UTDh@Q�y��ǵ҉��2JJ������W��l��!��i�s^dH	*�,���B�oP�#��+�R��*���-2���)y�7���I��N-l��|�aQ���Uj��N���i]����<v�Z«L�øb��WT�?��D,aQV.����0��w��r���	Dw٦"ƃ�zO�f후�$j�ᘽ���P����O���B�]PP�@�'�i�2�ګ��V��='��!$xDG?��QF�9���s��>�
�;(�"�g�)��A�mS#;}{!F���d��7�|��tn�(��J����Jzv��f��Dk=��<���`����N=�_ '���	���m�'�?0�,A�XVЬ��TVQU�	7рƣ}�F�Ó*��o��b=:'���,2�~�(˟�ՠՅ�D�j�>�&QY�+]�N*�Y��W��AC�cP��.b�e�^���#�Ue�GM<D�� �`��8�N ӎ"e����T�9����7�;0�D@�YF{�P��G +�b��bO�n�hw#�۠")8�F�,���˂/k����RK��fN���9C6ۭ;�'�8����r	��q���!�b	!�b	��ib	��9�`�7G�����JX�'n��8~�>�A�����l"N����;�	���|�'Yϐ�G3�D��0�h�n�[��j��*��0�/9��h�ӥQ���-����EZ0���{+ �V�yg%C0(H�p�̊uTY#�hk�~��UTZ��<d)a�!th�P���kh7����1�>�Qoi�5��re��>Eb�<���Q�~������I��\��{^;���;�CZ6ЕCN��sP��+ɹ܋��\�^mf<�e����7?�+���.\*�I��Z9���Z�9�k.#8V�ﵬF,AWi`P�Gc�v5��J��v��c>K���&G<F7,\0o�oS��¨�kŊ�gm�T�hF4,�=��u/A�Gc�"��#q�)��"Z2��8,�,�9$%B?�7/���I\�7Dف���ěH��QRp(��:�#� ��P3�2�� .}��0�̄v��������&��e%�gTºX;�Ht�5�tvTVE�C���
�#z��h�Y� ���i\k��n��2Õ��j
�(��$Q�B?'A$��(!��H��^]�A������x)M��0D���=u�\n kh��JU�rSQ?T��7>�h���Mq4}�+l��}�Be5(�oX�X�[f2F�גP���H<8�YgۋI>Vjb���So�E�=V	��ږ�/@���������m�2D�o�P���bW��j��5o�:����Ԛ)�R�x�FF�p>uf�}z����R�5�GӷJ���7�/!��c+���k�b�X[���؜���<�`����5pN���,�[�55�m�Ħ
�Z
�t�t��r�у�$��#�^�G��Ȇƭ�<�����J�慦�̊)Z-r6)�LZyk,mQ�M
��r����S�C��c�Iߓ"��0������xY���Ӽd��mV�R_�Q��l�}����zźy�υ�#g�΋��K��}���G�%���;�t�y���V�t�I�%��O��n7��[-�it�
�4�S��I��q��`	��<���Bf�{���MU���as�i��X�1X�8�?q%��Rgo(\lp���\�����U���5Vm`�WWܼ���6�t���ڑ�^3�ln��)�F�5��}���x��X�d~��c��Z���JY�w�;0�^Gy�t�ϩ5m�[��;&��ޯ��\	 �;6�Š�s�Y���!��K퐠��fH����bgSD������E/r8y+.6**X���P��(��T�3P���vE�@��14�ט/���\��o���{�I�&Xʗ�$9����m�*[�c^oW�]��jI�zD�ZI��{w��$�b��A�yk�/"n{.��<;���2�/� R�
\��I& ��;�
>�`���7��]e��`5cҌb��FĂdOZNC�6����ū����t:A���<i:Ude�:_$�>t4F��p̘�������t�����7���94�y8-e`��N4��UpAz�+M��RS�������ןI��}�p:��1��7�f6��`f�gf��~�b��>�67�=��z�=q�֨y飚�n�&�j�_�+!7?a9��rHO2�ǘ���oh|߮�{(�Ex:8HUFl��l�2p}�d����X��Q$�Gh;q6J��'��l�~緤L�~D�eV��m�4Ȟ��Ĭ������۸u+�Sw��x�[����Ļ9KL�[�j�X���S��ګ%��Ϝ۩\p֬�Wb���D}�v-�=��fĹ��q����₈���H��[,1��m����˜HƜ��������d��>��T*�6苦�$�R)���ͣ�F�.���F�A�.�����萺^���Q �Ӌ2�6�ҫ�?��	8$���C��8d��(3��O��PZk���b�yF,�ei)f�0�܉�M֝��j�E3�³$�c4�����I[�^,����x�r�����D� 2�l�N�6ao��R���a������������l^
P��V�����r]� ]�������7��`?/��<�/�	�H
�
Q�wcD��aQ	���i��u+%'�_��j��Y}E/�q-��4~��L ^�|>u5������a{o����ߑؚ���UTmd�w����� m�����&dD��:��W�i:��,�H�����7���b<llD��ۈ�=l-t^.��%o��Q�����	o)	��P�+ٜOI��գkS����U�&���Jb���E���6	G�֙E�}vD�%9��H�Į�,��7���� ��e���G	��Pn{Tl�嶃E	�SY�ޜ|-�{�zE�ww�������tVO�C�XM��Ӓ��TM��T�{�	5m��D��Bd������[K�	�ZS�w6*6��YН����[̗�����d��c����sQ]��?�=}�&X޽�Y�3賖{4���}���|���w}��q�!S`�.�Ƅ�l��߃;���h�>~���[�t�e��6���醋k!(WP��iGB�b���c�.���C_	�)�����rh�`��5�,}f�`;?"Or��0{��Cp��as/W�N0;����!��2���Tp��CQ���ѭ��ݱ.�h���&��M��Rup����Y�m���U��?ME��)p�OS1��i��'��������䢹���J�Ց�I__^ x��>O�?n���_+�����a=?/�˻��ˢ�gQP���'��f�x�B��~j�������O>>L�*|1���(W7��� F���hU�&q�����z�Q�l{�Z�7��6�Q��h꯲�n��d�X#�t0^քBi�J�Ԥ�
�!2kݠI�1�C����Ո�xIԋ&dx�9�!H�d�Q����j>C��Y	�x<l�㠀_���>��kt!�O��IJ>*U]H��/��*�;y���6�N�����h���3Vw Y�`��	3�5Y|�bE0��vL,�be�Do��;Z{��m�;�8�P�݂� ���=�������!�����d�i���q��Z��P��� �v�����'��������l���ߝ�iѠ ��� ��� 'u��CM:!�� r  %��-j����4@�c�݉9���o����[d�v��?�,��y�v��W^]�1Y�9匮�)cT{A���~g��2S.��1�ME����n#(sPf�2��ߨ �{�:X{6���ר�5y��Qv�+����Ͻ��#*]s���ͅ�aZ��Py~.)�R	PUHވ(^n�k�ntԖg�����X�[�����8a�Gy	��"!Tq��MVT,﮵�eA��o�'��R��]{$����B]��!�n�W"���x��kz��ʘv���X�l����Y�/LL���Q���*�p��SQ6�q>��O:��l>%�>|�cT:��<U�r�>���t�W�3)���~VK��R���ʹ2o���5� ��
3�B�4�K����,qZ��扲!DF"�5��wj�/�D�����w�(�ΌS|2�")��ӹ����?�5m/�Q�%@H�y��-��Vۡ�Ć���𯬧t���A�N&���䵝��D� ���;�+]�9��;�ng^]��=ޤ��m���� w����ez���zO���%�%͇c������
~$�����\m����{������)��2:0�~�>R�
�k4�̜��͚p��
S��"�3苣�;-�|��j���%��� �:���K}{A�\���!�Epy����vyB���d!�6gW� �wpe3=��Up�U<��d�b��e�:����w��G4.˽ˣ��~�A��#��bp�`�`��A"m�VgQ.�S���<���iE����{-O����T�=է��D�Rc��t�9!l���yP����;`��5��X��I���a�X�Ɩ�17�FS��8V�J��!�G_�>���9��
���^tX����ǒ2��hV6������m�Y�0�Ө48�t����Bu�B#S�a��ؿ
�����?��
��=�A�a��h�72w���Z����Bۮϴ���(��M�%J��S!�í��E�]�x~U�^�J��F������{���1��d�����e�,J_-�?���{�!6�T�R>�I��K��S�R�b�S��6Ȇ��\�j�im�ܘ�wT�`T�>~7(�R/���Yz�5��Ayd��e���H���c�o�1�W��.'��6@׃UDw~���oj�g٥�aγ+�XP�/�8�Ků�����)vqn�j؂>j��>���>�X�?@���qʓ�p�����E��/Ԅ�P�#���ӾDf��|Pع4��^��_����W��o�$��9���l#�8����2�,@���2�?�Euʎ=ҲhSe/�\kB�`Z�O�No �U�^��xTeu=��6���GG�� srcf�xYa:���&��5�����	��N��&IPwe��챼�W:�S=3��Cb�������\>���n�wy���*�F�W`�UE����.]L�4�"[�� \��j'���]'v|f�f������9��l�����5fe"��%�v9�&��_`�BRO�UTM�dO��$?��l��nq7�.������~��/�����zg������-����� B�(���D�d���H'	L�'U6!#��sΨ"����o�w��O���b�����˟��@O��߮�����gSq�h.�h�'Ku1W�X\���m�x�.$u�DcL�9��dƖY1)��!V'��*�x�9:��Iǈ�r6yE�d������52W�Lf�3��2;5�d���ó�I�5�[��&J F�G�A�G�(,T�B� �f,"��)���Z	��Â�I���Uz�����|��X�`�t��(��ϳ+��A	�u��l:�g�!O�g�����ǧ��`S`y�O�my_��Z�����CdoW ^��\�=|���#�0V�:����ӧ�!8����:������ח�8���
}������b�z��A:,�.sX�#�2�:����<����Y�;\��CZ5&��<u�q���j�wn(a�!��l��ߍq��aWUʽe��������sg���w�����)�+��W��
[X ��`�2���zY³��kv�dX�I�D���XOs_K���KI#��:��1��5ka��"�[RƸ1#>4ЧC�b�k4�;?g>f�ȿ�c�7K�z��d��g���M�d��c����k���s=��p�g���_k�q��
��q�[ ���7����t������?���4�ֿH�w9]Z�}u�����O��>z����R{ȟg<|�Cx�?f'%>�i.�7�E;6F�#�*�G
I�H⋷TW�7x5�"o�n����t��\}K�ԽYrUD$p]_�O񫉌�l[�7 ��}��~��Wf�j���kpG����+��"J��hqM��}��q�5�/��Qq�!I�[B��K�į�Ds�e�l�*�v�7;�������,�b�p;�B��i��~a��\6�K+t间��˾o��9�yX�E��ٲj`��qF�7����R���P�ªbaj;�FX��{|l7-��ʺ���N��D#���-@�� y�&q�����M�l�qX�Z�U�8����U���J�w���LxU:p��X�(�	� �c�;��xӯ~dW)���"�ȗ��8�~��F��:[dk�������@J�,-��;u��*�X��J�<c�y�ɮ���i~cu��!fn�D��r#F��<J�Lp�F\L�B�X�0�n�L[�<�
�5�����:?�'�~ C��X��h���ß�WlG��-��d]�_ߑ�s�ί���-���u�AW������<?̵���6��F��!���2B2�ms�u.mÿm޵��H���'4�� ���������Ý�.q韪�g<�g�i�<��!F���O?=R?-T�LW?m�k��j�%{�\�[���ev�޽��)�      �   
  x��]Ks�6>'�"ó��'u}�=t��%��p �PS$K�v�L�{	>� ��$��a����������_�6N����:!:`��Ii�b�zQ�ݔ�bJI�K��CB.�?��m������S�����v�?/E�����K���qBɮ$�r@ɓsG���_s��o9_oQЏ�sfA�r����t��ea��}�n��[U��Yu�k�W��?ɽ�&b���7(�L�N����|A� �����$Q�:RE;��?�T��7�(�?U�-��,	�0�=F>N�FԿin���C�7`BFز�M�f���1N$MIv�v��ͭQ컛'�����i[��y��Y�8u���dJǕ��-Np�a�c�~�,-M�y���R��_p�)+��׏����?s�6��w�?ȣy�@"P)��Q��NaA"�6�b4��I��%�^��V� &��G�j/��!�h����r�'�#̧��w��7�*�{V%���rI�w8��慓k$h��5^����`fp)y�+z���^P(ْ$���l��e�������q
��c���2�b�֒\�c�T"�;}EB.��.�]Zv`lH�H��w2�h�,��n��]�v��mӊ�O+�(�´� ��V�<̦z�����:{���ǩ��z�ma��a���f��g|d�<�d
�g�	�3+mA��@z�yNSxi�����=3���1�G�ϫD@�8�Q�j6d��|D������􂝨�� ��gN�%C�]ܓ����{/ ��4w	��G�v.����Y�. w��A@w&�;\��'�$NJ�Ƌ�����SuX<��q�GX|��-].�� B��1
w~�1�{���:`�5�Ra�P�V-~�U�صlN�[c<n-��ƞ���RR�ˁ=��?s�R	���6�j\�6��أ�d|Ѩ���!
(۵��k��9�h�������Q�$*�%�s��SP��衝=J��� lH�E(hr�<Q9����Z]H�؍�	~ ��=��p�S���d�&�6q�J��l��������w��WV���2M�˰3*qt(�L��MX{lLe�s��La�T���n������`���$wZ�������f�����o��j�
[6xެ�gƏ��c?�[&�KW)�YjÒK&[�[IE���P�:���Uz�.���A����9a
�ؕ�xQ�y/'�<�J ��W$yrP@`�|�8w�q��oC�h����"Ўhm��^��K�����ZЧ�-�3f��n�.͌�}�s��]�;$%�� 6�w��o瀖��t�4*{�����m�8{�8+��~;g�^���0��kP����%vC���^n	������4��C����F�s��i���Va�+�Eע��5Vu]@�T�+wAa��N�ܗm�(aO�X�;g��rA�(!������Ր�e&�߷Ox2��ц�Sx��$��V�z��EnC�W�#�]ݢ�9���p�Z�*�jU@Q���TGH$թ��(%v3Y�-n���a�l<���{��$�b�xP�*ă��n<����:�@����x ��
,j[�6��!~��lF����.^�M���&�X�^5��6s�1�� �0�d;���$�~i�_b gY�lH�0`U�Va�U]}VS��6B!Q®{���UI|&Q�Q�1`,|t���"���?����_�@�UZ��;ryJ}�ѫoX`�P�-����6�e�`V,}0��I<�=�a�2��hz�����`���0C�%�pu�E�	�����Ф��ZN_��2H�؇�B�ٝ2���4���
݄��*��N����y%FnΘf�s���.Wl�����`���q\�j1���;K�&��'FV��0S�C�q���N�/"gќp��!��)�b`У�F�NR�wzEg��a��*+��it�TgbǕ��Y��Ճ.���`׬����ɡ𔝃��4h��-
��w6S��(��#�ˣ�-#��`�"�˨�c`ny�e!��vbI�F��W��ܭ�,�8���@p����[
�/r�!���w��^E0]��5f�b#Hx8lǳ���t��<�dNC+�1�~���.�4M)��ͣ	�����)�AIgq�Yr�L�?Z��*@�����E�A!��X]�,���Ŧ���׿O�	K�:�#35b��u��B���j�:2��w�2��'Yz*gv7�Mx�+�����óT=9`��"�H�n��t�6�Rڞ5J��7k���f�q�ve�K0�%K�!�S�c;QW�$w@�mX3oh���>���+^94�����u�n)��QwJ�mR�m}!�p��ںT|/o�xa�t`m��i�^Q��I�8������L�|��(Q���	�St���b��l|Ee:W�^�̛�-(�m���Q������r���h�+�ÊJ�<R���c?�*m����O1>h5�Š��DNc4�������������w�����͏�o߮_����z�F۫����w��������͛7׷o�_����˗��x��      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   _  x����n� ��zހ�?�8]v��z��WG�` ���g�iZ[K� 1��yQ ���k���X�t`[�2ڡc�Z�PLy�Y�yL�����"_̷/È�Y��UR��&�;�[�-�i�e�y��-�σ��*��OC������?)�R�Z��s+U�d�^�V���ʲ"T�T���,��y�+�,�;��֐l#;%D%=��~���^�34�)�4C9������Wkݳ��5F߃��P7[p�R0*AEY.�\���E�ʦt��5xh��K6�SA
��x��ml��ǽi�4��xB��`���sDO�u>iٵ��*F�����8_qDg�c��O\y�����EQ����      �   e   x�-��C1��a����K����V�rV� B@�6<�5��f��5,���u�N�J�k�*��CC5)��dxQ�*��v�f���Ў�9O���y����      �   �   x�3�t,-�H�+�LN,IM�tIMK,�)Q(��IUH�,K�S(�WHDV�PZ�Z�ǉ"�id`d�k`�k`�`hle`je`�gl�K8����8J�r2�qXZ�������A�Mt������L���jc� ��D�      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     