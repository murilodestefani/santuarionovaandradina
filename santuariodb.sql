PGDMP  "    4                |            santuariodb %   12.18 (Ubuntu 12.18-0ubuntu0.20.04.1)    16.2 �   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
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
          public          postgres    false    213            �            1259    17254    events    TABLE     R  CREATE TABLE public.events (
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
    public          postgres    false    202   �?      s          0    17220    admin_permissions_role_links 
   TABLE DATA           d   COPY public.admin_permissions_role_links (id, permission_id, role_id, permission_order) FROM stdin;
    public          postgres    false    204   �E      u          0    17225    admin_roles 
   TABLE DATA           x   COPY public.admin_roles (id, name, code, description, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    206   �G      w          0    17233    admin_users 
   TABLE DATA           �   COPY public.admin_users (id, firstname, lastname, username, email, password, reset_password_token, registration_token, is_active, blocked, prefered_language, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    208   �H      y          0    17241    admin_users_roles_links 
   TABLE DATA           _   COPY public.admin_users_roles_links (id, user_id, role_id, role_order, user_order) FROM stdin;
    public          postgres    false    210   �I      {          0    17246 
   categories 
   TABLE DATA           j   COPY public.categories (id, name, created_at, updated_at, created_by_id, updated_by_id, slug) FROM stdin;
    public          postgres    false    212   �I      }          0    17254    events 
   TABLE DATA           }   COPY public.events (id, title, content, date, created_at, updated_at, created_by_id, updated_by_id, slug, album) FROM stdin;
    public          postgres    false    214   �J      ~          0    17260    events_category_links 
   TABLE DATA           W   COPY public.events_category_links (id, event_id, category_id, event_order) FROM stdin;
    public          postgres    false    215   �b      �          0    17267    files 
   TABLE DATA           �   COPY public.files (id, name, alternative_text, caption, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, folder_path, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    218   (c      �          0    17273    files_folder_links 
   TABLE DATA           P   COPY public.files_folder_links (id, file_id, folder_id, file_order) FROM stdin;
    public          postgres    false    219   �k      �          0    17280    files_related_morphs 
   TABLE DATA           e   COPY public.files_related_morphs (id, file_id, related_id, related_type, field, "order") FROM stdin;
    public          postgres    false    222   �k      �          0    24632    groups 
   TABLE DATA           t   COPY public.groups (id, title, description, slug, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    273   �l      �          0    17288    i18n_locale 
   TABLE DATA           k   COPY public.i18n_locale (id, name, code, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    224   �n      �          0    24579    news 
   TABLE DATA           t   COPY public.news (id, title, content, date, slug, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    269   yo      �          0    24594    news_category_links 
   TABLE DATA           Q   COPY public.news_category_links (id, new_id, category_id, new_order) FROM stdin;
    public          postgres    false    271   9�      �          0    17317    slugs 
   TABLE DATA           f   COPY public.slugs (id, slug, count, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    226   ��      �          0    17325    strapi_api_token_permissions 
   TABLE DATA           x   COPY public.strapi_api_token_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    228   ��      �          0    17330 (   strapi_api_token_permissions_token_links 
   TABLE DATA           �   COPY public.strapi_api_token_permissions_token_links (id, api_token_permission_id, api_token_id, api_token_permission_order) FROM stdin;
    public          postgres    false    230   ǂ      �          0    17335    strapi_api_tokens 
   TABLE DATA           �   COPY public.strapi_api_tokens (id, name, description, type, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    232   �      �          0    17343    strapi_core_store_settings 
   TABLE DATA           \   COPY public.strapi_core_store_settings (id, key, value, type, environment, tag) FROM stdin;
    public          postgres    false    234   �      �          0    17351    strapi_database_schema 
   TABLE DATA           J   COPY public.strapi_database_schema (id, schema, "time", hash) FROM stdin;
    public          postgres    false    236   ��      �          0    17359    strapi_migrations 
   TABLE DATA           =   COPY public.strapi_migrations (id, name, "time") FROM stdin;
    public          postgres    false    238   ��      �          0    17364    strapi_release_actions 
   TABLE DATA           �   COPY public.strapi_release_actions (id, type, target_id, target_type, content_type, locale, created_at, updated_at, created_by_id, updated_by_id, is_entry_valid) FROM stdin;
    public          postgres    false    240   �      �          0    17372 $   strapi_release_actions_release_links 
   TABLE DATA           w   COPY public.strapi_release_actions_release_links (id, release_action_id, release_id, release_action_order) FROM stdin;
    public          postgres    false    242   .�      �          0    17377    strapi_releases 
   TABLE DATA           �   COPY public.strapi_releases (id, name, released_at, scheduled_at, timezone, created_at, updated_at, created_by_id, updated_by_id, status) FROM stdin;
    public          postgres    false    244   K�      �          0    17385 !   strapi_transfer_token_permissions 
   TABLE DATA           }   COPY public.strapi_transfer_token_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    246   h�      �          0    17390 -   strapi_transfer_token_permissions_token_links 
   TABLE DATA           �   COPY public.strapi_transfer_token_permissions_token_links (id, transfer_token_permission_id, transfer_token_id, transfer_token_permission_order) FROM stdin;
    public          postgres    false    248   ��      �          0    17395    strapi_transfer_tokens 
   TABLE DATA           �   COPY public.strapi_transfer_tokens (id, name, description, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    250   ��      �          0    17403    strapi_webhooks 
   TABLE DATA           R   COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
    public          postgres    false    252   ��      �          0    17411    up_permissions 
   TABLE DATA           j   COPY public.up_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    254   ܩ      �          0    17416    up_permissions_role_links 
   TABLE DATA           a   COPY public.up_permissions_role_links (id, permission_id, role_id, permission_order) FROM stdin;
    public          postgres    false    256   K�      �          0    17421    up_roles 
   TABLE DATA           u   COPY public.up_roles (id, name, description, type, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    258   ��      �          0    17429    up_users 
   TABLE DATA           �   COPY public.up_users (id, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    260   U�      �          0    17437    up_users_role_links 
   TABLE DATA           O   COPY public.up_users_role_links (id, user_id, role_id, user_order) FROM stdin;
    public          postgres    false    262   r�      �          0    17442    upload_folders 
   TABLE DATA           w   COPY public.upload_folders (id, name, path_id, path, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    264   ��      �          0    17450    upload_folders_parent_links 
   TABLE DATA           a   COPY public.upload_folders_parent_links (id, folder_id, inv_folder_id, folder_order) FROM stdin;
    public          postgres    false    266   ��      �           0    0    admin_permissions_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.admin_permissions_id_seq', 161, true);
          public          postgres    false    203            �           0    0 #   admin_permissions_role_links_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.admin_permissions_role_links_id_seq', 161, true);
          public          postgres    false    205            �           0    0    admin_roles_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.admin_roles_id_seq', 3, true);
          public          postgres    false    207            �           0    0    admin_users_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.admin_users_id_seq', 2, true);
          public          postgres    false    209            �           0    0    admin_users_roles_links_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.admin_users_roles_links_id_seq', 5, true);
          public          postgres    false    211            �           0    0    categories_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.categories_id_seq', 14, true);
          public          postgres    false    213            �           0    0    events_category_links_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.events_category_links_id_seq', 27, true);
          public          postgres    false    216            �           0    0    events_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.events_id_seq', 26, true);
          public          postgres    false    217            �           0    0    files_folder_links_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.files_folder_links_id_seq', 1, false);
          public          postgres    false    220            �           0    0    files_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.files_id_seq', 36, true);
          public          postgres    false    221            �           0    0    files_related_morphs_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.files_related_morphs_id_seq', 75, true);
          public          postgres    false    223            �           0    0    groups_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.groups_id_seq', 1, true);
          public          postgres    false    272            �           0    0    i18n_locale_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.i18n_locale_id_seq', 2, true);
          public          postgres    false    225            �           0    0    news_category_links_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.news_category_links_id_seq', 10, true);
          public          postgres    false    270            �           0    0    news_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.news_id_seq', 10, true);
          public          postgres    false    268            �           0    0    slugs_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.slugs_id_seq', 1, false);
          public          postgres    false    227            �           0    0 #   strapi_api_token_permissions_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.strapi_api_token_permissions_id_seq', 1, false);
          public          postgres    false    229            �           0    0 /   strapi_api_token_permissions_token_links_id_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('public.strapi_api_token_permissions_token_links_id_seq', 1, false);
          public          postgres    false    231            �           0    0    strapi_api_tokens_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.strapi_api_tokens_id_seq', 1, true);
          public          postgres    false    233            �           0    0 !   strapi_core_store_settings_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.strapi_core_store_settings_id_seq', 36, true);
          public          postgres    false    235            �           0    0    strapi_database_schema_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.strapi_database_schema_id_seq', 29, true);
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
       public          postgres    false    3080    208    264            q     x��YMs�8='�"��B!���1����́���dSS��W�%9�i��l��!/q�V����ׇmլׇ}�eܩ�����ݗO����;��,J�(�H�N�:�bF��/~�tO/�n��[�=t*z���<C����!�d(�^}��+�<����0ؗ8�}G� ��}i��
	�'
��ݿFu�<�s��O���VE�3���3m��r>�[�s?1�%��H�>j�pq#�f�I`a�/l��˕&���.a�9�����]�[�������Vyz���^u��﫶����ݏշJ�e�Z?|^�)vj���J튪6��}�J���r^ڮ4ϝ�+���O�1�Q�ݮ4�%���{�����kk��
����=5�E6
���s �p�1���9�~�P �ȼ&�|(JU+\(`Gq�H:�WͶV��W���́��}G%$޴u�6f#�K���Z"����m����u���yb���U�dBl�=��|S�� �r��&rL�X�}Л�c͇�9�[�IA���o�� �.��鍣"�������Y�@����>,r	�k��5�L�K�PB�^��9q�T�$<��2�+�Ӕq���$���/9�,rU��7�e"�LH=�$�1�\t��ܩf���op˕^�r�E��-[�b�F���np�Ǯ�+u4�ݾ�l�5���S���/�Į42!���_a-��٨2Z����R*qb�
m�磍s���hb=%�BW ��d#	Z�E��3�{F�ֱ�a@>3������Ͻ��}��ݓ��7��p�y�Ϝ����m��"JO�JO�&�q^�@��]����2v;���x��؍�ʅ��p����4�(]����,.���t�c��,6��<��y���ad|E֛��a�/�yD����p:6��� �epk6�EFX����fc�����n��+�U4��v6����ix3����c7�����ֺX��$�B}\d�6v;S@ש�5O��oU�: pz�I��@�N��g��6�V�a�x"��D�� n��p[0�e�:tE�S]�P��)��T�A� Σ�?�����	8s���"��5��}��|Jp`%ܯDB4ؼ fy�y	��Guf��Ӌ۶�k�.�D�S�&<f$qw3=��	P�׹NҘ�����
Y�z��?/��	sF֌�)� �,����;r7�%n̩�ۃ��jeOҍ�h�~��O��.\�׬���,�z��5��L�$c �\��'�-������Bo�B����Sܹ�\��u�W����"�����;$�A�������Q�i����,� �E܈�t�a����)�|E\Y^��ü�ĝ��{�l������@����t���B�RHbZKb�� ��E�֑>�Y?QLq�,|?)����%�;w����܅�%*ybf���_�^��Ϣ~<�F1dQB����4�哃���Ft��>�*�o�Sܭє.��?�ÿ�Oq�����kr�l��D�{��-5������$K'���X��Cd���׬k�k_����� ̭y�      s   �  x�%��m�0����SV/鿎�28:����[�#lHK����Zhk����:�v���O_����c�d����=΍���-,�y���ަR�J��T��L��g*��c,����=��|�g!<������D��x!��@ވ�B$ĳ�/���?$g���-��-Y�{&�kK�"�c)Z��D�FR�h1H�-.�X��D�����E����x5�e��j��J�,Ե-�Y���zV��Ek��Cӵh�мf��y{����Z�
4� Z%z����k-Z5�����E��96�Շ�}�V�0��Ä�֎)�:0m#Z'���sm6 L�g#Z�و�����ap����~�'?��O0>���	�u�{��)����]��c��@?���C?
5w��@2ز�&�0��2�0�r�>�pV�\���o�|�rf��b95�8��u�,���{��5�L���?���*      u   �   x�u�1n�0Eg���Yv�"[��]�fa%&�H�H��+W	�8���d�Ny�w�A�$\|�+j��Y3X��3`ppÀW�g�JNT9��W��fl����a�w{=v;=n��g�fP�,SLO�S���-��A(���a��BR�!�o�M^�::/�x�S����c��5{��>�9�r1�L/�[�̔�~b^�L_X�t����t���}�      w     x�}�]O�0���_���Ӯ�]��P>��h�)t�Ύ�X��W����IN�99ϋ���䨗�D��F�1��l�E���J.������j��Ю����>�-F�q.���.����x�ҝ-vM��^��㾫b/�8��|L��i �^h{���a����c���5Z��NO��kq�G����&v�t���|��ɭ|�e<����&�g�;Y���ظ]����Y�r�a-Q|pH���cE7�0�(%	 �U����G�~@�y��~�!�)�,�r�yǩs�      y      x�3�4�@.#N�b���� &��      {   �   x�u�1� @g8�(�@������5!�bj�Bơ��b�1&���?_����?^m�[�v9ʊ�
���` �B,9r�����6(p�c����'9����w
�O. k;��(��j�����삳��4�d�z���-��
�4�Y~UK&���9qHkH��c���.�p�4w��w�}r�QJ_�Kfk      }      x��\َ�H�}���@
)�fg?�g �55�<�K�D�c Qj�L���.�.���@�rU�)���˹�.����_OC�kʡ�c.�f��ߛ�o�qj��m��X�mS��PN����c���N��iZ�w�o���_��>��˹��H�y��s�k�:N��~���T�����\��u�O�p���p��2�M���C?L�H_i�}}W��y/�:�M���/N��|��_�oeWu�מ�7�9�ҏ�Wy�.z����e�5�/=n���6�*��Z��[Ok�Z�']��E�k��iݨ��7�m��f�xX7��Î�D�����4��6�����6�y7ыN�zZ7�5W��xڗ�Q40��{�	��N���DK�������_xI��&��t�Xކ«��_,ou�/��<N����P�,�������2��荴���B�� 	4��8��-��Ir�ګ�fV=�P_�m-���
x'�D�ݰ�+�u�'��Iϓ[PR%���b��2��Ca�����z7[	3ib_����E�n���o�V��^�s��Ky���n��f�C�N,�3���`_�m����z�'6ǖ�2�z�HVG�Y,�y䍝��.X�������/CSH�����6��B"�S�k���I9dM�`bҭm��[�سG����B�\��B��oB�G��T�]�ϴ)�)mI �߱�Չ�$�!c��~��6}�x�NU�b���:�ޗUfr��j{�}�6w�݃�xw�m�����ܭ�������ٳ�v���᭫��V�9�ue�n� Eg��ǯ�����~VW�d���n>�%Ih�˅��,0AM��δ��R&�~}�zvK��e�~gkk��"����ea�p~Y��R��.�ɜ�h	�Ƞɼ��I��z��� �� �^7�A��q�1>��M�����GQqk��&ڠ�ԁ��t��3}<�g�:��:�	��q��dm��P�c.�l+RC$8�/��x ���m�F�y�E8�v$@�%}�+)��`C��t���S!Q�z<+��;d�f/�~2$䯙�,��|�-j�Xu@���WTv��t��� �Tr�!��*�[�Ȓ!K��jQx+!�[��an���m�׏O۟^g�c�]?w�s��O����9r���*D(W��B�Ș��5���PV� �rf7��D�~����)䩼�±��K��5�̯��i�.�D�F���y�w:�g�����Z-&�����XT(�{�D��e(0�7I+�т��La����+r�r�؃m���(dE�E\u��WvC��+�`��`�?,�xv�޹	7��U�W)73m�^-4��o$5�nVX�3sdel�s���H��J%>6c�$Dl�]z`7��4���4zha4Kn&�ɤW����I��AC,�߂��P �D�u���ۅ�k$�'R%�usX�7����XXR���J��9�!܀�����^	���5hQ($���-l�2���C�&���ٙʱM@U���U�B:��j�.LZ��%ia{CiSp7?��|��l��4!h} /+@�1۫�Oce?uJdՍ�@�Je`kPHw,g#y򑸡=��2\��[�"����j���@�s����Z��4�͒f�79p�P�����֐���$9���?٨`g��@���r�Ib>�O��l����\�����������O�s�:�t���5ө�:f��3���玴I�����!�qE�T��E��Fa�^���ښ�gW���<Ɯ=܍�����W�37�������Mƻ�]��V%�V�/d� ����a����ܐ��$}S�ei�B���v� 8ߢt �Lֳ�����e���(ϓĘ��j�ns�VHs���=dX��H��9RUQ\�.),1o�^~C�]� ������'#�?�d��T� ���Z$a�Иb���)���ױ��4�J���l-:E�07��O9rb<N��V�G�d%;�􍓦X�UԠb���e��fb���Gg�p�6�;$S���Y2X�x�2NQ��A,ϝQ��GB��}�rIf��V���Q�Ҍ�Z�c�I����w2O��<�>���{%w׵�4!�c�q��.���Ɛ"��G�a�����i�L�SƠs����Sk�0R+���fG?��-,�r��Q�����V�,9�\g;���������.s@���e��?:�/��C$���$5X�sj�@C�<��(�������gN" ���tD�1�`\�X�S��*�ƽ�n���ޖ]�1��⢳��tQ(��������o[4�F�+������Ї7��e�b�R=�@�ئ����s�j����<���š���	e�©���+�9�UB=:�P����7	�ȘH`��x<J&_+"KB6ߒ0�s,�vB?[�*p{W�������Z�����BG�2!��sF���XB ���=US;8_�j��;���E��"ΊH-*B?Y t�pJ��g	8Wc"
�W��������MOkg(�d��:j핑�
�afx�9�N�K����b��'N�x�� ��� �RG��iT���섦���B����"j��mJNlK���+�%����ӆ_�WR0h5�d�I
�^�O7u��.��~��;�A'��;y��P�y�5X�\D���`Wؠ֡!5�z��QAZc��?c�!�r��z�TG2�S��ঁ�?f̴\�/-t���j5��ץ����3�0��ͯ$�� X��X~��s�9��֓����c$Ѝ�y�vZq�PU�'����F��p�)rKد�n�V��Z���c��%��yS�����E�N��`;�Z�B؟���K� }�j؅P^�^+)�:g�,9�ڊ�* j��>_õ�iZςlz�%vg�K�N�R[�m+�#3fݷ�4���P�XmxE�7�F!�7�r���8Z=����f��y׌k�� M�)�)���z�Z$�­c3����f���-� 1'z�*(����� �w���	�6z�dla���M��!�f
<��H�-}�c{�L@Z�5L���q6���M����Q�TёgO��'�cv�p�|N��gO(����y@�����:=��?�~�#�75���tdHo�s�,�px��r��Qn����J,j�R��W����M�
�nCүP�"���4����H  ����4�ϻj����d�b�002� j�be��`d�GɌ<��!E�L|���>4��=SZ��c�b\B�@�/t��P�#WN��n%�Yy���U���RGK��I!�ES�O�E�G�y�q	�@�O�[j9�r��Ъ�<
.�mp:���+�K�$�rU�˪%�W;�y�ʉDKz�+,h���z�Ik��V	�Wa����6����b��dZ��ң-f�pO��y�L��GS�YA�឴��L"n�N�'(���������آXd��]-�A(�� �s�X\�b<`����=\3B�h�o�?R�%�@���M!�#R��g3RQ��~�F���g}��z�%�3rW�	�����-�;�B��,�^:�0�ܭ,���J��o�c�I���V]Zm��|<�ի�"�r6%�A+��
��b��1Z�\��'�=�g6�Q��Ӻ*�4&q
��JC���Ηɝ9H9ߋ������ك��}9C�-��R|��	'�jH�6�|�}¸�42y�p@����O����g��&�H�{|?�K9H�����nwC�<5�J��� ��9i~���{.��ڷ�N��L`Hs==��8��t�^w����*�-/�b'9�1R���c��6�(B���� �9�.�Ǟ,��!],"}�V�4'�}�IHC�G䡟lR�B�4���BdS�I5�E�n�C"�RL^��gj�x{S����Y?oo��~��ևOC'�����?��u��F��Io~^iͭz�	��6�H�'sT�綺jp_M�h�6��
� t�Z�����jG).zm&
e mw=7��q+���R:)T&�m�݌�(�����3We�B���2�bw�jCR��cI�RT�,s�lL	h�1\�r�����w���w �  �A��/8�,��MW�F�ԆL}�w:<&�M�]�D����D~���g"��7Z�2�����It2ܴ�����V,��%�L1����꣦u�S��d���qtH+��FK.!���i�4�5	���≴R�z9�(M&ȷZ��F�l���y*g4�yU;�m�{P1�zه���A�ي�cg��q�v��ޘ����U���n��2
i�V@�Ad�B��H"20W-8������v�ġ!����8휘��1��K�D��z�S�́?T���EVc�5���D��/x��'p�q����t!馍��r������#}�l�/[
I���f�:��^��Sg�p��yޝ�؉m��������������~��˧�feC���Mc&��������IQ-ځ��2��Nx�6(���P�_O-y.���l��B�s�`QR�/���խ�3�&�:l?�  ��,W��\���MǼH��ӄ�榀h-�E�q�]�6��2ԴQE綉�\J, %��G#�vos��	����N}�B�#��C��l-�Lb��36��\��7�-��B]hT�b��8N�*$�%sxf�]"�M�F�g9�tL�}y⸢� �l���yE?q�[�������#�E�2�	�ꏬ�|�X�����l!�'�p��-�-�$��%L'��p"S2��2M�1��CJ&��һ�&�M[A�w
c�#�y���TZ��f�|�ÌcK���:��i�p5Y��J,v��� 4� ���l��ϟo�����Z�F;^tL��Z;�ԎW�2�v@\��lWVyK�9^�Z�<)csXY����xp��ā��&�z�f��"�Q�c~eq�T��NyJ�9� !1����G�i#%S�e� ���jO8Z�\!% ;>J+�O:	�GA-<��:�[��q�9�fU��~y�H'=���V�{q0���p^��ű5�8z���.ɧ�T��>V 1���d1������4Qf'�5�Ɛ}Pg������ZG-�9��d�a��ɇ��.��H���ўcZq�G���h�3η��<XX�c鹬�Z�8u��	Ryͤ��e�>-[�~.2�:�P�r�,�ay�_>�������
w^<!���S�|Rs�Dֶ�9x%���� �V��L�z�B��&L�֜_�=y=�ܷ4W����/gS�sz!)�r��y��H����Ӏ�B���t��J�����V|ő$�R{��1�~�̥�D^���ɓ�!kO�a���ٴJL�J�NZ;�s�9�4�%Ŭ�C/�=�V>��p/�����9�  �|�bɠ���c���h�I9���u-�׌���P��A_�-2b��m��b�,���֖dJ�k�QO��]o���1���˨l��$V��J�G��*s�+���B�V�ɘ��o:�m�6�K9��駂Шa�&�4_�V�:u b�R���8f-�`��<���2 Q��P2ó�����<���e�<�����4��͒u��g�^�kŎވ�?x�1���Ү�q�z��GG~�/w_����̸�5�i�sW$��ԷA�E�R@�n L3�?.��c��n1�#ʎ�?���_��Za.O���P1��"��v|dJ��"��$��L3-��7�" �������x���4��-c
�:sg�- ��m�Lŕ~��rDP^�2��Y�/t���ɀ*�hв�����0-�'vi%J�W43�<hj�ζ��'�NH���BM��ˆ)�/��A򃚇N�؈�&@^4Bo�;s��b�rh.��(���r7�]�����)4E��Q`���X��_�/@������v�I-CB�G#���m��Bv��~�DP�������{�����:�e�|W��.2l����_e�u���f5sJ�`X�y{���絡��9eC3��!'�����0�hL�k�����S5�6ezȝaĒ���
s#������e��l������3�j����ͯ��4@@+R �pgR�R�n���s�{s������O�>����      ~   S   x����PѳS���B�u0�Do�^�-����FG�>J��u��PZ)nu�z�!���Kp�b Q������}%      �   �  x����r�8����P�z�`!Pw�v��)�{w��TW� ��hSKH�[W�}@:�(s���c
�������7ɷ��+W~���M.��n����������߮�M&���̽�/��AC�`ʽN2�ϓ��蟓�T_O�q'��l����v��e\���:�Pф�&�h�����|��L����CHC�`2{V]�Õ��Z��L��y��K9O�^o�Z%��6�5��~z#���V�,S��c�0���Ҹ�A��$�|Q���j�Rf��������v�ǆ���� �F�}	����$N�K#�F�IG��V6�z�9���%�{^��,��d%S���e��uW<l������(&�i+�����d����ix<����7��{��l=�Y����8�!�q0�p�Ș��S�{\�y�Co)�̟�r)ӕ�%�w���(yW	����8�Taď0�9�Pqv��$�O$JXw�0��MZ��vBp�l'
f�(�����M	n^ax3��r��Nf�hhS��.�` ��=�;�f)cvǻr�B�$h���[GAu�Ǎ=oP�z���f^�X/e��_�I�����I���ny��"8�4��Ĝ�O��.�x�%.ֻy��1
HH�1n���r}7z/J �@-��n���.ڏ`� ��v|w��ZH��Gp�5�;*��=t�2�1na�C�7�D;� ��v&k�����<y�Nf�m�J���/V�^���a�����0����'�:�x$.VBEK|(v��(��Պ���I�\G7	hZ�{�p+z�-��m�:�	��6� �����n���6�]��� �v@���.Z&�w�1$jrGm�Ϡ�}L��/^�9���0�z�W�'P��z5�������싿���U��0����"^�O�T�k2�E,����Z�BL!zK~	�j���{/�����m'�,$�k{k��!�5��S6���W�LIӫ#W��Yʘ��־�����.�#�7KuC7ҚL�׬F���X����(�t埕_����}>����O���Wq�sqV�*�P�ħw����?f�%�g��TE��z.�_,h��E�Ȇܮ�٩����2���抦U�GVw��RF�䎮p�����8���;{%��:���W�wp����h'4���nc��Ig-�t���po#����N�d���I�ϾI�p���vn�"yB]�*�h��P��D�����.ⵍ�G��M����5;]ʻ�V-�{�b=���m�2ڠw7�1@�0N���}�J&�w71�y�v��3h7_ T�w��qW����>�q��3��8��xzn�O��l�d.�ğ���ٟ��/�M�9�̣�x���h/��
$T$q�*Vc{9��O'4*�Md�*��F����Kz+�;�f)cT�;��Ԋ���:Rg��6[����8U���\��}Rƥ���t��넽�Z�WKSzUܛ�{�ՃVA���ԓ�r/���1���뿾��߿���%�#Q�,�W�(��"TQ�*�h�](�h6%I�z3�mU��< ���Ru��FC{+��*� �G��n��-+��S�K2����:�f�c�k�d��F]{�F�ނ8�ր���yW��xMp�MyZ�72Oc��eW�x,ᇢ�IwJ#��,^�?����w��$T��np%�a2�tS�TE��z.�?��_ͥr�X�,w��NE�玖� �����;P��Y�hS��5�A8ГQt��zg�d�vGC@������LO�]����FC��Z�c�_ǘ����B������U�	=�mvQ�����x
gx�a7��F�Ҹy��Y��{�����!љa�H]xj͐��'����Й��Pm�i͑U�����L�G��Io� lt�H1a�j�a��:H���~rw����8�+�ߪ�S�ׇ���'��ry�j�^��b$G�z5%E)'YZ,�x4��rT.d�>�'��.Ͳ�$)���X��<�1I=@�d2��We�*G�������n�����&U�ZZ�L>��%��{D��l�����q�Y����~���
�А0��PvS�XF�Z�����Л�ꮳ@��g�2��u�L��}����i�:��v�M�/l>p���"��9H��G�{Q�v�0>�val�m+o5^����=�>A>�����o��͛�)#W<      �      x������ � �      �   �   x�}��!E�w>fB[``�ō1ĸQct�})���v�sB�X 	q�_ֵm���Ǎ�mk�+$��m� Pv��8�@�:FWpp�.`r�^��wI��腜�徏���k��F��=��C�|��q{��q�B���$�Ә�x?k�b���'V����%hۋI?@1 k�Հ��FƱ�`Ф9�b��0O��f���      �   *  x��SKn�0]ۧ�HB�-�]д@-z�nF�Ȟ��#����t���y�a�{)�Ȇ!ČC�Y�*�3�jrq4X�������[Vv4��ⳤK�:H��$e�بդ�!9I&.&�Ha�@��ԕ�ѳ�K�	΅1�eSy�M�I|ҜVQ��%�
0)}���������P��>��b5c�O�Q���K�bH�hB��#�1�b�����x8Í���xu�Z"�KD%��GV�M�x��W� nG?Y�x��� y��nSXuORN
r���U3��)JL��6�l��_���5d��?�/ڡ��K��B��Z@;�a�qr�^�Q�J*<r�X"JNk���r�R��fU��1!�3�;�������	�5����	���Xn-��ʺ��#"XR�.5�xf]w��Ć�.�;v�1@i��^Kʡn�M��%����b�9�+�
GD���2P�脐�G�O�߽����0�Y�0^�U�U�#ì��38���n�M�Z�� [6m��}�v����ñ}8��O��O�����=~����~���t���/Àz�      �   r   x�3�t�K��,�P�H���L��4202�50�50Q04�20�20�315�)�D\F��E%�饩ũ
NE�U�9�
%�NA��`
a��������������	NqCNC�=... �$�      �      x��Zێ�}����jW��f�vb _��n7g�Q_&��Z��ԝ�� 6$���ŪS�N���Ǽ���xY�����8^�O����ɥ�1����Kp�%N)N��O�K�.a	��{7Oi�<=��|Ƀ_�Sb87�j�iN����#��w?&��W��sZ]��w���[w�_�������vn�),>�%����u߾k��?�m�}�;�)�eu����/�{�K�~��p�����&��e��a]�������K���O�>�w�0��6�+.�q��q�<��7OA�3�I���vh/���k�yZC��ܰ�~��?���<�1��2��Z����.���4��k������O�?��s^���l��#�L���t���9�-�����>���Oyu��Ӽ��Cr?������o���,���m�{Z���8��=�+c��q.1�0�)(v{��@�	������͉��π.X4��؁Gሟj}^�e��&���-:�eM�"Su��}����~�s 2��cH���M��+���&�����	�Y�ս����^.��5�Ud���pX�K ����o!_�?��H/�{ATÚ`���2��EǼ�<���\���qq�� �8d�5�'߁'.~�h�'���<��C��Qd ���b�u��$x��y�������t8�io���n@���6�-3BK��"!��%[��N�֔S�r�����������������;����qw����TV0}�$���F\^.��D�0?�~�ν d.�q�0�<�����|�G?"y�}�;���a`^/��B`/3`?Ž{��akwf
�8���KN>7�a�{�X�'���y� �]��;�	R�5&\�/d�+pn<$~�w?��S�Ñ ]�����'4�)>�U�@P��p :H���2O]^��hxj����}���wn�]�'�"�V H��f�o��ur����~���y�XÈ��8c L��E�bH�n�'�V7c�.与@)`�s U�%S�JȄ;��k����̘����s������C����'X�^��dpV�௽{O�W(4b��v�b��H�q�.�� ~�T�B��B�4�\��>�O�"��� V0��(�琟#<
8���s�u���Q8aM�s3J�::�La��sX��w0�qei`���N��v�����(�S����v��zpv�އl���e�э����:���
�$pVG٢�
�H�C ��7̟�m�����# ���k�����^�!�s��a���f7�-��I��k}˧h�LZ�V �2��\R�t�#r������鋟#���4� X��/h�`F���z$��{��"����U�������� q�|M�4��{�F�~_������"�(�|G�%���X��&@�2��ԹaF�/�:���w�T���B!�O �ȒH=8��� 7��xZ�"� 7?�,��@c�DaLFp���Y�FY��_dH�Ҵ�%8�,Iʓ�Xl7GB'���`Я�,1�`ZU?%?0!ǉh${`�)�Q���H�9�����/�
a��@�P�T{C	�/�!�9��R�r�����CY����`�hh>���	1ϲM7�hl�6�S���	��:F��FHȠ)���)Q[R(1*lj�I�%���΢��*��Zk8DA4�
)X�����#B�<n.���'��������H�>�~���Z��0�ގ���e����]K!i�_��/WT��xs��}���Ha�;%�d	�����/���Wx�@�������#�f(!@<~U�<%+�wP������#P	�>�(}|�ϙ%�h��2h�yi~�Jw��N��M��P��>�B(A�EbJ�����e��M�~��O��؂P�h��y�H�cjBY�ly�M��SV$N^������A!�gc2ޘFϒ£l�m��a禨N������rd�a��먲!�Fu�{T�$]S*$�$�E�6T�������#.�G�G��+}��P�DŌ@���`~�cg�!1�[����"�����.�a��ljZ��	����J!)- ,(�A�):4�}ZN�.F��������j��f�ä���tDT��M���54`���Ⱦ��5��kw\��]#ͯ԰m��č:�1-����H���U���~�ʬ�*k
-g��`��ۊ4[他I���������K#Y�������a	wNJ�JTY�	��NX�ظTw�+����A�NH(�?e5��	�hԤ�Q�Zc�l(R�.	c�m��:��J����D_PV�]� ��ШF@Y!w7�*���X#De�,?��{Sr�N�EWI]��^@z4~�t��2iAU�Kj�?�JO�? >Syi�Us���-4P�Z���y���t��A�P-ɐ��s/Ĵ'(�k�P��{XI$�=$����@�ՖK�eS�W/��3YJ������jCٰx�y�襴��D;T ��S]��meq����n-Y�X�YɄŖem��TJ�S%ׁS�$ܮسH�[�!�[:P�"A� ��g<���P�gu��ߟ���t�x�߿}�#��Y*ZB\f�D�����X�zD���N����<p�,�����5�H�" ,��)�(�N;���lpR�l�4���b�X�?Ȟ
(W�� ��0��S6:]d"���,��d#*�H�|4�݈x.#G�4_�L>�$�x=����T}^�R��j��%�	Yo��Br���D���Z�ǉ��9m�������F��cA�?.Qd�"�4Q��hMDV��Ŋxg%�b�V�	��2����R��B
��IAQv������L�Ҋ�z8M+>�u�(�m#e\�v3c`C��M�)���Mф<d�U�jr����ۦ�i�]WG��RjS� C��vX��k�]pP|M��tOx��礎��yUH�0f���i��]{x��!n��аQ+R[k��j�Z#?~B��������������f����q�M�L|��e,���qg��FtZ��(�+䶥m'���K�;�b�	���m�f=�$}�(��R'��W�S����b2֨���Hk�8��PG'��� �8�Z��I
6b-g�c�%�C2��6¹��u�,YaZ)\Ĺ�
�A���f�t�N��)a!4p�����,�F,��%%��/��9�Q���	�Yp�JGW�!L�ɸb�2K*]�&�M�i��M��ECh.*�`�oӽ֪P��!�T+C�7Gx��(%bh��h*�i���V�G-)�j���lDĩ��E�JE��V�y[�JO�Ii���5T".��4=.cW�|�Ri���4L�����o��6f�FY�l)�D���Ub�R�7������ϔ�}��x�#�]�Q�+��͋#�>gqŞ�(��W7mE��
)�-�
��b��JD~Wb�荛~f3�BXE)��QKh�^y�Ԋ��s��IF�����|EѰ�*laqq���vҵ���VK����\��r�J�X]B�5�'�b���y� B�6�R[f2�c�k@�s@*�M���)���hߊ���9�~L��3 :<�HMq�Ԃ�i�#c �PG�*�K	��!u�L/��r��,'�������U&�/�^�K�rn��F8�W���e<��@���Q4����g�~�%�� ?�0h�<��1�Ѫ�xT#��7rCRD���C��2�����")`�WK6����<�$x������t�BC��/�o���-�=y\G�^�7��F�f�A�L�Q�&����R��nRnu`�[��ޗKwQ@�2!Tpe}��L6O;��52l��r.����,h���܇r�9پy��=�~�s$��g��:��k��UH���;L���8���| a�kg$�X0��+\��ׂ�[[�Xجh��Wt&�Ę���I��HMՔ&�6�$p1��[�B+�3n�8���Ƌ��T�f��
6V.Cj�Cҙ��M�x��˛� ���[��\�	Zm��-�����
�k��Y* �  �S���S������.Y.;y�tD� M{i��9X�[o�����"���h��gÍ%�Ĕ@F��"k��A�U���)��Ƚ��(EP����R��T.�搦��+��@�٦J�z��Tn_#��iP�~�;R~���"2�Ϫ�-��e^-֑�������ɫv�׶u�� �\���Z+a��c1 �0�I�#ƊP�M���}S����׬jcǥ�+#����O���o���n��$!�k��M�k��o��R�o������?�~���s���a��b��EI�%I�N��J&�+�iy�S=�p�4�V_�N^��S -y9�X�TÂIu,��{� ���bW���d.�e�W�7b�}D�Ie�-/S�/ �y�JF��R^�J��汗���I(I��^�d~e�f͊�C��zu��~��f#����l��[���4��7iV��˥w�˝�Js	�abZ= 7a([3Ǖ�r�V�3k�ST�Q�k��%��x����kG�6*`X��W�Z�ɏw�7�����r]�����t�o�m�nB>�y5��ĉo6�y��� b!��X��@I�����U��f���XǪ.�&$\�6������Z\�4�wM��S�*i�>�Έ�2b�w��rkV}W&��V8�������#A���ꫯ�Ѱ�+      �   D   x����@��N1�̞�B�u�E�?cܰ��q5O��q�`�;2�8��Hi�Ӗ�������K�>�      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x��]��6���y
����V���-�*�ݎ�Le�]��Nm9.[�ZHS$�K�;)U�k���,�ĕ%R�mT�� �s�p >8ʓ�
��y�V �f�(��@�_����*�5��]��4�W0�NsP�`Y�
G�KPU0�*��?Ǘur]&`<���0�@!?)AT̗�u{�@���?�"��A���h�y�c���:ϊ��;G��"*;;6^#:��⨊[0��V�_T���4N�K��6���Y��6��QC�qCL��X*��i�1z�'�,������J�`JR/&w��?�o�"B# ��ͫTg8��Nd�QR*/@�7(������1΋�෡�3�y�!%� ��T:�
y�AEz��"��J�C�����&����<�f&E:������y�
�gV�m
;1�g��J�}x����kS8�2�㊍�s\Q���EY��B��x�ߡ)��;��n~L ���J�=u��o擨͇c�����IL�c��?Y8�UwAA���d�-TT�hk��"[����<������Ga���W��7wU��A�y?L�����h�!���1�^f'������x�ؗ7�s�E�xNU�^��t�PZг3o7{e ���I�=���6�t��8	��k'��[���p�����bHXA��FSaplXEUe'� xD�vQO���	h���X�l���C���ſ�,V���j����De��t9;�tf�^�/��9,@i��p�1��{	\�2��VA�"��
 3 �v��zP�:L;���"w�FS��X�f�h����f�eCA
Y ���:�}��=	���I��I��6rxg��_|٦��-�4zm�4NA��3�a�ݺsx��s��(-�q���>�b	!�b	!��W�_�&�и��
���q{�`���qk�@	K��T���o�Ç!�"!�<X�`�M�i�u7�t+7A�L�u�dQ<Af?�<� B��9E�v.�G��ҫ�Ì>�LX�~�AN�F]��0��6i�r�>�-�ZZ睕�� ���"+VQe�l�!xlh�/�Qi�f�|�A��}�С�Ci�����4��C����F����~>ȕ9J�����CpF��]�7ܾ��'�s�O"�y���i�@W9�.|�8@ic��4$�r/~r�z��񤗁�[|������&��p�t$�k�Vk��h����X�S�ײ�]�e�AA p���5��R(�N�eJ��,b��M8ܰp���y�Mq���¯�+������6xP��Ѱ�� �w�1!�qa���ϱђA�'��a�d��!)���y��%L�¾a ��ĸԟ'�D�o���}�M֙�Y�̇��y �\p�.��g&��l|�n56ټ,+Y=���ڡ@�c�A�ӣ�*�� hVΗ`!�c��@�6ϒ�m�WH�Z3�tL���|�P�HG��U�D�+������XvX"��{et�!�+vPn}���x4f�{�!~�
��X��CrrYC��*�ݕ�*�e]Q?Ԝ�7>�h����q4}	�+l�O	}�Be5(��5,@,̎-3��[Ih���H<8��dۉI>Vjb���So�D�=V	��ږ�/@���������"{�"�7h���D���+P����7ea{UAj�f)W�F+�Y
8�:3�>�k�nX)tÌ�#��R)/��KH���M��5L�ml,��"6c&o6.�`�|�S�px"�ArA�f�ƴ���TUK�.��<b\�y!zp�d�Q�c�3�H��и����4�]i߼�t�Y1E�E�&E�	�}+o��-�Q�������4���>KO���݇�D������˚5����%�,o�"���:vgsp�������?����;/�W/!���M�gs��h^f��Dҡ����g [��i'5�<��?�ߺ���n��Ǧ�a+0�lFD�^&�����z^�@��2B�
��2��6U��kN��5��ۍ��1��+�M��:;C��b��.6���b}]��+���l\c5�}u�ͫ<�n�O�0�o��5���V1���j�߲�ۧ�����j�UK�-�9������۵��x۸��U��L���ZQ�ڸ߽c����Z�͕ B�����4��`�>ks�;$xi3$h�pi7�����2�?�dQǳ�.��FEښ�Ser��*�y��Y��/%pL��5�K��^��:���@~/>��K��N��J_]V�
��z����ZK:�� ��Jj� ݻ�o%��4��[�~��q��s�.������9|Y�"U�ʍL2i��#�`���>x����U6> V3&�(YjD,H�d�iH�浟:{�3�W�N'�"c��'m���|A狤�Ǟ��H���9$6��1A��^���u�t>��?�f=��lQ ^Ӊ�/X�׺Ҥ[-5�ڠ~/�_p�	��;�ٗ��8$6w���3����ݡ���>�Ϧ��p�k��pO��5j_�������M�Z�W�J��OX��ғ��qHl��?���74�oW�=�Ax:8HUFl��l�2p}�d����X��Q$�'h;qv� �O:-٦��oI�����ˬz+�[�i�=HY�Y�%�u�x�q�4V<��v]���9\E�ws��v����~o+�pݶWKrU�9%�S�&�0�Y�/�z�%N���m�0���.��F�-j�S�"�G_ {\ 	��p�\ca��Glå,�D^fD2fTf8mЌ�%�$�
���c�ؠ/��I"�R��E��\S�G����ZS�G?��!u�(`+i�@��d�m��W���pH�!�|�8d��(3��O��PZk���b�yF,�ei)f�0�܉�m֝��j�E3�³$��h��s�����R�Xdiɓ�$�"m#)��f�ȴscwҶ	{����v�~�K�,��䝔4,���� 5l� *+j@*�5�U��IY�lx�m���=��ҝ �� !J�n�b4l *A9a?�m�n��D���MC��4����8.�Eu��o��⥎�燠�����s�>l��:i�������n^EU-K����x��iK���|6!#*VyE���Hӹ�f�D�D|�T���|@���Λ��Fѻ����6B��b��Q�z��>��LxKI�}�b�����lҵftm*wҐ�j�茶>D���A�s�"���g��#��֙E�}vD�%9��H�Į�,�ʷ���� ��e���G	��Pn�����m�,ʧ�(�9�F6w����o��Q��ӧ餙 ���
��ѧ%������:��j��=��"[E�����ZbOX�1EYpgŦ�;�s ������e�e�)g��6���LT���ϧO_�	�woq�A��d�=�:o?B�w93�Ƿ��仾��8��)0e�}
c�X6Ö���:�ۯh�>~���[�t�e��6���醋!(WP��iGB�b��Ƈ�]������Unam��i����t��������<�}r��/���;��`v���\�ND���qζ(AU�h8��ѭz��nm��벊Vy�l"+���)*U���@o��Zw����[U���T����4#����;�i���J,:�\4����Ui�:�1��ˋ�<���vǭ>_����ŭ�gX��������к,�y5h9zB�i�7Q-��g���jE�J�������D��s	�Z���/}�pPl�7�
��&λ[=6�^VO1J��c�UwN��q�r8����_e�݄��ɴ�F��`� �	��V��I?'�Cd&ֺA��e��0!0!��M��s:?A��� [L��.������`�����9(�����i.[]��=�a���JU�҄�l��9���H��.��ɁS��+".�����H�+X%~��fM8_�a�ˠX];�e}�֦0�B�f��� NE�d� �3@.��BW���)���kL�h)kK6Y~�H�ؚO�n������͞.���>�w��%n�WU!H�O�ər���WEV��w'OJZ�h��i�h�j��I�� �  +���B���pI��}�Q.��967{��#�ב�-2���Y���E�O$��w^i�E�k�.֘,�rFW�������"��9$<C&ʥ:�6	^����5�.]v���ލ��f��D�F���6��>�.C=��
�������p�v�fB�0-Q�G��N%�<B�
����:���FGmq&l��|܂��E��ļ�q��|��(+�e�r���k-{]�-����32	,�1a���G�Y�)�&$�%HP2�&%"����黡'���i��E��%˾��E��Ĥ�Le�>����8eC0*��S>l��)ʆ�S"�ç8��3��o��!��Þ|�K�P:��?�q>�g�t�-�:����F������Yj�Ch�[�z	��w�%Nrc�<Q6��HĽ�:c�U���vv�Pu=�$�F�uf��Y�P�3�:�M���G���e3
� 鼌�E��j;�:�������xS8����ܜ��3��(�W�|�q��7Ǹ�h9MЙW�s�7��x�ߡ)��;��n~������S�*cA	n	D�ᘽ��&��	�~"%V�A+�p�^9��l+`������� ������%3gig�&�5��T>�H�����V�#������Dn0}�d+��z�I�����R��D��.l�Oh\^py��]�Pj~Z���5&��\�L��u�\s�� ��}e����yu�����r��g��hP���}��+X4X��C�Hۤ�Y����T���0�|��V4`�?�����T�%a�L�\W}:�H�G5V�J�~� �����w�!O��X��O�,�k8�Ś5����14�jfƱ"W�|p�>�b�q�pd��AeWH�$���������>�����E��A̸D=l�܆�5��<�JÀK7���-�!42uV?����x:�����B�P��G6H=�v�b-�F��nQC����Nh��Y��;���AEc��!�T��p�}�QgW.�_��W�R�ؤ��e�-�^+�{i�)-d89i�}Y+��W���O�Ah�m�M,��OlR5��%��T�X�f��a�4���h��+7�r�U=U���
��":�r��j��<2�h�2p�S$�^�1ķ�����q���^[��ނ*�;�s��7<ͳ�R�0�ٕB,(���_����e��̔�8�H5lA��sGC]�y�������8��N8E��d�D���Ԅ�P�#����y��T����si�ͽ8������o����$�����l#�8��
��2�,@���2��Ѣ:e�iYTW��"����8���S��nUǂ�W�>UY]��_`S��q~t4�
0#7ff��%��NK��{"�ޒ[�X*� 0?A> 5M�$Aݕ�K���^��O������2#[?G�'3�˹����3��
�^��V��D�˻t>V�p,��d�cp��Vܫ��R�w���q�!��'w��k�p��ZL"��j��v�緘����P����������I}<��Q5B�=J���P�6����(�D�O*���{�����?�Ə�i�������F���_F��ͣt�5 �E�So Y%0�Uو���ϔQE$����F�޾�����*�7����_^�BO��/�Qz]N�8g4��J�Γ�����̯O��� {���9I?�Sf��9��EV�
�h����3��n sF��:�w�1⤜��9�'p~=Bo�g��2���D���N�!��g���h�$]��5/�o�tb�|��7|����B5+�	`h�"�K�"]���0���1,x�Z�_���@�	Z"�qʗذ`�e�L.;��2n�2���P��_'9I���pR�dv�X<�?x|�>*�,/���-�iX�[���<x�����%��Ӈ�{~��jQGsz:y�T>G1\�������r�����bS�O�1�]LVϰ9�B�Ń�eKvdY�P�8X���r�����$d9!Hw��X|���x&y��{�<y���s4e�0�����l�(�9F�s[UJ�erH?0��~Q`){�׮;K��}N?�2��;%�����̝����a���!Z�r���P�,����ok��f�Bf �<H(5�P(��t�������2�BJy�g/�#�it
8� �����@�N�П�F���{4�iH�E*�˩>���ѓǏ�<~t��Sn�~К�������W���"�i�f��nC��Ad�5����0�7�C�s���Fd�7�4���d���yGъ#Z2h5F���'v!��[�����$Ⱥ�-�����i�{ى޻���_45��k�בz���FT&,/�[��݂b��瀩���Fk�@ލ�����(��-a}��{g窈H�����W���Ho@���1,���;�����5�����NM	лW��y�$������{x��krO��&s�!I��C>�L�į�@s�e�-l�*�ޡ7;�������,�bQ{;�B��i�M��jY_��K+t间��˾Ł��6<����lQ��q�8#ƛA���)QLX�naU����^��I�=>c��U�Te��US�Cg���m�~%BP4�s�&�7�]z��$�x��c�*t�����S<����mod$�D�\�6V>�Y+����N�a���%�U
�����-�e}g��_W�\�_'�l�����2]�PH�Ñ�� 1s�>Y�UT	�gc�6o1���W���X��eH�c��c�H7Vn����GiN�	ވ�� \�Z#&��r��`��GU�6�����>]������d�P�$�ڌ�����a���"�OV�����=g�������]ɟ�t�+B�ÞJ��8�S	�T�!�J���¡��!��	1��$&��-�'m[�O���
��vw����~�cy��m��=�?'��hN�Y�[\�a#����g ��n:���ܴ%+��˵���ߝ��o����1��%      �   $
  x��]Ks�6>ǿ"ó��ݸ�}�$=t����p �S$K�~���^��� ��+	�86��] ��.���}��C�:��s�׿N��عsR����^�`7��OL)	���rH�㧂�����/�6�?W�(��a���R�9.~��qH'�lK�8!{�<;w4���3gZ>�����e�9wa+'����/L��\��.�w�6(H���A����A��vyU���n"�(�p#��'ڰw�(���* V�$�B�A�b(ښg��%�2�G��E���Zm�`7dI����0�q�6���Q�6j�U߀	a�"�Q`��Z��I��8ٓ4%Qص�q27�ND�ﮟ]⻛{�m�N�#�f�/��y�s��)WN�78�����e�U,��4�����KY4
?� SV�_>����O�s�6����G���D�R��$��D���b4��I��%�^��V� &��G�j/��!�`����v�'�#̧�����o:>U���Jt���oq2��'�H��k�1���R�0V4�(=�P�!IJ��� ��`=-�	@�J��(�!e$8�ԭ%�4�Ǡ�D������\I]��<���ؐ���"�d���Y
��� ��mA-ۦ��V$Q��iEA03�(y�M+4�O+4*zFit$�"���S/!1�0���)�n5���y��ȴ!x�����gVڂ�&�Z�<��.��$3{a��O1�G�/�D@68�Q�j�d��|D������􂝨�� ��gN�%C�]ܓ����{� �a����УG;�����,m��Y�?#�;��.�ႍ�''�����FO�у�:,S�8#,>�ㆌ.gq������?w�ѝ[�v����P�0S�S��ƪx�Z6'ŭ1���Hqc�x|
Z))������q�OܪTG�����97�h�_4*wF1z���v���Znu�.Z!��#�s�3��}	�ܥvTD�{zhg��d7 Ҟ�:E
�\&OT�(h\]���M	�F�?�肋��_�?�w�)��v�dw��k%�u�X��D_�Tɻ��+�WMn��&�d��8:����&�=6�2�9�A��s�ksY�g7JG���l`��a��w�;-J��vzDsg�|�]���L�^�-<oVt��G����/��-
aǫ�,�aɆ%a�-׭��SMk(H���*=m�Yz�?��}���0v�Jt]�(�<��D
@%���+�<�( �G�m�;�8G�އ��^9��E���<L�1m� c�vE�(`A��Oa[<<e<���ݖ]�+ �(�h�"`wHJ���!il&�	�ԩ��-����iT��38#>�`q��qVp%j�vΚ�UO#`��נ����K�<�J�(���y�J+i���.qC����u� ێ�²W���Eick�꺀.��W��,k�F	�/�xQ���w���傶QBs;ݭ�!��L�=�o��d����-��TW+HPխ�!+�ो܆��jG껺E�SF��W�$���U@ժ�.�V�M���6�H�S�3BQJ(�f�j[�90��.po<@�:��p��6��X2���
�*�p����6�G�z6� /��;L��m
�C�(�ٌR�r]�.
�BkuM �Z�j����� �b���l����^�)C~��5d}��!�ÀU�Z�	/Tu�Y5L���D	�O��oKTA$�F�Fƀ���=Њ~�����n aWi�Vo��)���^}�Æ�mE,���([�b����V�I����9��W��eհfX�3�|�r.���[�(�Lx�,���&�6�r�:��A"�><j���eঁ��T��&�@W�D w����+1r5�4s�s5�t��`sL�UO� K���"W�i�4�Y��5�y>1����j�[-Dv|9����$��N9�-6w�bx��+:�?S�UY��O���:�;��4΂��t	�p$�f��D-����캧A�/'lQP.?�࠘��GI��^��nQ��k�v=s��-�xԴ�Hj5R���;@G�nue!ǁM�, ���� �P�RP}BA�{���S��*��¼l�1�A��a;��̧��1%sZQ��,�uA�iZH!lM�1�%�ZJ<
H:��ϒ�gʜ����W�����=(�
�����g	8�60<�-6MԿ]��{zvHXr��ԡ����SU:�x5TsՑ1=�#�9X=��S9��Ao�cx��\ͼ�����!Gru3/ �c������Qr��Y�<d7K�s0�+k\��-Y����(�k���RG��nÚy���	��_��)�ɠ��mW<��wK)5��S�m�Rn�3A�����֥�d}y5ȳ��k+�F����D�
����g>���i�Pm1E=\ !�	��WT�s��Q�E�`���ݲ�bچ	��;	���.������<��D�#��8N0��(��F�NY���Vc�:L�ر�1F���������?\��py���������훫�W7?��}�������%����ݍ�^��㷷��.�~sqq��o�      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   _  x����n� ��zހ�?�8]v��z��WG�` ���g�iZ[K� 1��yQ ���k���X�t`[�2ڡc�Z�PLy�Y�yL�����"_̷/È�Y��UR��&�;�[�-�i�e�y��-�σ��*��OC������?)�R�Z��s+U�d�^�V���ʲ"T�T���,��y�+�,�;��֐l#;%D%=��~���^�34�)�4C9������Wkݳ��5F߃��P7[p�R0*AEY.�\���E�ʦt��5xh��K6�SA
��x��ml��ǽi�4��xB��`���sDO�u>iٵ��*F�����8_qDg�c��O\y�����EQ����      �   e   x�-��C1��a����K����V�rV� B@�6<�5��f��5,���u�N�J�k�*��CC5)��dxQ�*��v�f���Ў�9O���y����      �   �   x�3�t,-�H�+�LN,IM�tIMK,�)Q(��IUH�,K�S(�WHDV�PZ�Z�ǉ"�id`d�k`�k`�`hle`je`�gl�K8����8J�r2�qXZ�������A�Mt������L���jc� ��D�      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     