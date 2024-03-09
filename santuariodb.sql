PGDMP  &            	        |            santuariodb    16.2    16.2 �   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16398    santuariodb    DATABASE     �   CREATE DATABASE santuariodb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE santuariodb;
                postgres    false            �            1259    16399    admin_permissions    TABLE     g  CREATE TABLE public.admin_permissions (
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
       public         heap    postgres    false            �            1259    16404    admin_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.admin_permissions_id_seq;
       public          postgres    false    215            �           0    0    admin_permissions_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.admin_permissions_id_seq OWNED BY public.admin_permissions.id;
          public          postgres    false    216            �            1259    16405    admin_permissions_role_links    TABLE     �   CREATE TABLE public.admin_permissions_role_links (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_order double precision
);
 0   DROP TABLE public.admin_permissions_role_links;
       public         heap    postgres    false            �            1259    16408 #   admin_permissions_role_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_permissions_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.admin_permissions_role_links_id_seq;
       public          postgres    false    217            �           0    0 #   admin_permissions_role_links_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.admin_permissions_role_links_id_seq OWNED BY public.admin_permissions_role_links.id;
          public          postgres    false    218            �            1259    16409    admin_roles    TABLE     ;  CREATE TABLE public.admin_roles (
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
       public         heap    postgres    false            �            1259    16414    admin_roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.admin_roles_id_seq;
       public          postgres    false    219            �           0    0    admin_roles_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.admin_roles_id_seq OWNED BY public.admin_roles.id;
          public          postgres    false    220            �            1259    16415    admin_users    TABLE     B  CREATE TABLE public.admin_users (
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
       public         heap    postgres    false            �            1259    16420    admin_users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.admin_users_id_seq;
       public          postgres    false    221            �           0    0    admin_users_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.admin_users_id_seq OWNED BY public.admin_users.id;
          public          postgres    false    222            �            1259    16421    admin_users_roles_links    TABLE     �   CREATE TABLE public.admin_users_roles_links (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    role_order double precision,
    user_order double precision
);
 +   DROP TABLE public.admin_users_roles_links;
       public         heap    postgres    false            �            1259    16424    admin_users_roles_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_users_roles_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.admin_users_roles_links_id_seq;
       public          postgres    false    223            �           0    0    admin_users_roles_links_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.admin_users_roles_links_id_seq OWNED BY public.admin_users_roles_links.id;
          public          postgres    false    224                       1259    17061 
   categories    TABLE     �   CREATE TABLE public.categories (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.categories;
       public         heap    postgres    false                       1259    17060    categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.categories_id_seq;
       public          postgres    false    276            �           0    0    categories_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;
          public          postgres    false    275                       1259    17174    events    TABLE       CREATE TABLE public.events (
    id integer NOT NULL,
    title character varying(255),
    content text,
    date date,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.events;
       public         heap    postgres    false                       1259    17185    events_category_links    TABLE     �   CREATE TABLE public.events_category_links (
    id integer NOT NULL,
    event_id integer,
    category_id integer,
    event_order double precision
);
 )   DROP TABLE public.events_category_links;
       public         heap    postgres    false                       1259    17184    events_category_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.events_category_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.events_category_links_id_seq;
       public          postgres    false    282            �           0    0    events_category_links_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.events_category_links_id_seq OWNED BY public.events_category_links.id;
          public          postgres    false    281                       1259    17173    events_id_seq    SEQUENCE     �   CREATE SEQUENCE public.events_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.events_id_seq;
       public          postgres    false    280            �           0    0    events_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.events_id_seq OWNED BY public.events.id;
          public          postgres    false    279            �            1259    16433    files    TABLE     �  CREATE TABLE public.files (
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
       public         heap    postgres    false            �            1259    16438    files_folder_links    TABLE     �   CREATE TABLE public.files_folder_links (
    id integer NOT NULL,
    file_id integer,
    folder_id integer,
    file_order double precision
);
 &   DROP TABLE public.files_folder_links;
       public         heap    postgres    false            �            1259    16441    files_folder_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.files_folder_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.files_folder_links_id_seq;
       public          postgres    false    226            �           0    0    files_folder_links_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.files_folder_links_id_seq OWNED BY public.files_folder_links.id;
          public          postgres    false    227            �            1259    16442    files_id_seq    SEQUENCE     �   CREATE SEQUENCE public.files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.files_id_seq;
       public          postgres    false    225            �           0    0    files_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.files_id_seq OWNED BY public.files.id;
          public          postgres    false    228            �            1259    16443    files_related_morphs    TABLE     �   CREATE TABLE public.files_related_morphs (
    id integer NOT NULL,
    file_id integer,
    related_id integer,
    related_type character varying(255),
    field character varying(255),
    "order" double precision
);
 (   DROP TABLE public.files_related_morphs;
       public         heap    postgres    false            �            1259    16448    files_related_morphs_id_seq    SEQUENCE     �   CREATE SEQUENCE public.files_related_morphs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.files_related_morphs_id_seq;
       public          postgres    false    229            �           0    0    files_related_morphs_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.files_related_morphs_id_seq OWNED BY public.files_related_morphs.id;
          public          postgres    false    230            �            1259    16449    i18n_locale    TABLE       CREATE TABLE public.i18n_locale (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.i18n_locale;
       public         heap    postgres    false            �            1259    16454    i18n_locale_id_seq    SEQUENCE     �   CREATE SEQUENCE public.i18n_locale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.i18n_locale_id_seq;
       public          postgres    false    231            �           0    0    i18n_locale_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.i18n_locale_id_seq OWNED BY public.i18n_locale.id;
          public          postgres    false    232                       1259    17038    posts    TABLE       CREATE TABLE public.posts (
    id integer NOT NULL,
    title character varying(255),
    content text,
    date date,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.posts;
       public         heap    postgres    false                       1259    17150    posts_category_links    TABLE     �   CREATE TABLE public.posts_category_links (
    id integer NOT NULL,
    post_id integer,
    category_id integer,
    post_order double precision
);
 (   DROP TABLE public.posts_category_links;
       public         heap    postgres    false                       1259    17149    posts_category_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.posts_category_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.posts_category_links_id_seq;
       public          postgres    false    278            �           0    0    posts_category_links_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.posts_category_links_id_seq OWNED BY public.posts_category_links.id;
          public          postgres    false    277                       1259    17037    posts_id_seq    SEQUENCE     �   CREATE SEQUENCE public.posts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.posts_id_seq;
       public          postgres    false    274            �           0    0    posts_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.posts_id_seq OWNED BY public.posts.id;
          public          postgres    false    273            �            1259    16461    strapi_api_token_permissions    TABLE       CREATE TABLE public.strapi_api_token_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 0   DROP TABLE public.strapi_api_token_permissions;
       public         heap    postgres    false            �            1259    16464 #   strapi_api_token_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_api_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.strapi_api_token_permissions_id_seq;
       public          postgres    false    233            �           0    0 #   strapi_api_token_permissions_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.strapi_api_token_permissions_id_seq OWNED BY public.strapi_api_token_permissions.id;
          public          postgres    false    234            �            1259    16465 (   strapi_api_token_permissions_token_links    TABLE     �   CREATE TABLE public.strapi_api_token_permissions_token_links (
    id integer NOT NULL,
    api_token_permission_id integer,
    api_token_id integer,
    api_token_permission_order double precision
);
 <   DROP TABLE public.strapi_api_token_permissions_token_links;
       public         heap    postgres    false            �            1259    16468 /   strapi_api_token_permissions_token_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_api_token_permissions_token_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE public.strapi_api_token_permissions_token_links_id_seq;
       public          postgres    false    235            �           0    0 /   strapi_api_token_permissions_token_links_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.strapi_api_token_permissions_token_links_id_seq OWNED BY public.strapi_api_token_permissions_token_links.id;
          public          postgres    false    236            �            1259    16469    strapi_api_tokens    TABLE     �  CREATE TABLE public.strapi_api_tokens (
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
       public         heap    postgres    false            �            1259    16474    strapi_api_tokens_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_api_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.strapi_api_tokens_id_seq;
       public          postgres    false    237            �           0    0    strapi_api_tokens_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNED BY public.strapi_api_tokens.id;
          public          postgres    false    238            �            1259    16475    strapi_core_store_settings    TABLE     �   CREATE TABLE public.strapi_core_store_settings (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);
 .   DROP TABLE public.strapi_core_store_settings;
       public         heap    postgres    false            �            1259    16480 !   strapi_core_store_settings_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_core_store_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.strapi_core_store_settings_id_seq;
       public          postgres    false    239            �           0    0 !   strapi_core_store_settings_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNED BY public.strapi_core_store_settings.id;
          public          postgres    false    240            �            1259    16481    strapi_database_schema    TABLE     �   CREATE TABLE public.strapi_database_schema (
    id integer NOT NULL,
    schema json,
    "time" timestamp without time zone,
    hash character varying(255)
);
 *   DROP TABLE public.strapi_database_schema;
       public         heap    postgres    false            �            1259    16486    strapi_database_schema_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_database_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.strapi_database_schema_id_seq;
       public          postgres    false    241            �           0    0    strapi_database_schema_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.strapi_database_schema_id_seq OWNED BY public.strapi_database_schema.id;
          public          postgres    false    242            �            1259    16487    strapi_migrations    TABLE     �   CREATE TABLE public.strapi_migrations (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);
 %   DROP TABLE public.strapi_migrations;
       public         heap    postgres    false            �            1259    16490    strapi_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.strapi_migrations_id_seq;
       public          postgres    false    243            �           0    0    strapi_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.strapi_migrations_id_seq OWNED BY public.strapi_migrations.id;
          public          postgres    false    244            �            1259    16491    strapi_release_actions    TABLE     �  CREATE TABLE public.strapi_release_actions (
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
       public         heap    postgres    false            �            1259    16496    strapi_release_actions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_release_actions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.strapi_release_actions_id_seq;
       public          postgres    false    245            �           0    0    strapi_release_actions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.strapi_release_actions_id_seq OWNED BY public.strapi_release_actions.id;
          public          postgres    false    246            �            1259    16497 $   strapi_release_actions_release_links    TABLE     �   CREATE TABLE public.strapi_release_actions_release_links (
    id integer NOT NULL,
    release_action_id integer,
    release_id integer,
    release_action_order double precision
);
 8   DROP TABLE public.strapi_release_actions_release_links;
       public         heap    postgres    false            �            1259    16500 +   strapi_release_actions_release_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_release_actions_release_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public.strapi_release_actions_release_links_id_seq;
       public          postgres    false    247            �           0    0 +   strapi_release_actions_release_links_id_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public.strapi_release_actions_release_links_id_seq OWNED BY public.strapi_release_actions_release_links.id;
          public          postgres    false    248            �            1259    16501    strapi_releases    TABLE     �  CREATE TABLE public.strapi_releases (
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
       public         heap    postgres    false            �            1259    16506    strapi_releases_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_releases_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.strapi_releases_id_seq;
       public          postgres    false    249            �           0    0    strapi_releases_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.strapi_releases_id_seq OWNED BY public.strapi_releases.id;
          public          postgres    false    250            �            1259    16507 !   strapi_transfer_token_permissions    TABLE     
  CREATE TABLE public.strapi_transfer_token_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 5   DROP TABLE public.strapi_transfer_token_permissions;
       public         heap    postgres    false            �            1259    16510 (   strapi_transfer_token_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_transfer_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.strapi_transfer_token_permissions_id_seq;
       public          postgres    false    251            �           0    0 (   strapi_transfer_token_permissions_id_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public.strapi_transfer_token_permissions_id_seq OWNED BY public.strapi_transfer_token_permissions.id;
          public          postgres    false    252            �            1259    16511 -   strapi_transfer_token_permissions_token_links    TABLE     �   CREATE TABLE public.strapi_transfer_token_permissions_token_links (
    id integer NOT NULL,
    transfer_token_permission_id integer,
    transfer_token_id integer,
    transfer_token_permission_order double precision
);
 A   DROP TABLE public.strapi_transfer_token_permissions_token_links;
       public         heap    postgres    false            �            1259    16514 4   strapi_transfer_token_permissions_token_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 K   DROP SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq;
       public          postgres    false    253            �           0    0 4   strapi_transfer_token_permissions_token_links_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq OWNED BY public.strapi_transfer_token_permissions_token_links.id;
          public          postgres    false    254            �            1259    16515    strapi_transfer_tokens    TABLE     �  CREATE TABLE public.strapi_transfer_tokens (
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
       public         heap    postgres    false                        1259    16520    strapi_transfer_tokens_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_transfer_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.strapi_transfer_tokens_id_seq;
       public          postgres    false    255            �           0    0    strapi_transfer_tokens_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.strapi_transfer_tokens_id_seq OWNED BY public.strapi_transfer_tokens.id;
          public          postgres    false    256                       1259    16521    strapi_webhooks    TABLE     �   CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);
 #   DROP TABLE public.strapi_webhooks;
       public         heap    postgres    false                       1259    16526    strapi_webhooks_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.strapi_webhooks_id_seq;
       public          postgres    false    257            �           0    0    strapi_webhooks_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;
          public          postgres    false    258                       1259    16527    up_permissions    TABLE     �   CREATE TABLE public.up_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 "   DROP TABLE public.up_permissions;
       public         heap    postgres    false                       1259    16530    up_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.up_permissions_id_seq;
       public          postgres    false    259            �           0    0    up_permissions_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.up_permissions_id_seq OWNED BY public.up_permissions.id;
          public          postgres    false    260                       1259    16531    up_permissions_role_links    TABLE     �   CREATE TABLE public.up_permissions_role_links (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_order double precision
);
 -   DROP TABLE public.up_permissions_role_links;
       public         heap    postgres    false                       1259    16534     up_permissions_role_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_permissions_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.up_permissions_role_links_id_seq;
       public          postgres    false    261            �           0    0     up_permissions_role_links_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.up_permissions_role_links_id_seq OWNED BY public.up_permissions_role_links.id;
          public          postgres    false    262                       1259    16535    up_roles    TABLE     8  CREATE TABLE public.up_roles (
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
       public         heap    postgres    false                       1259    16540    up_roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.up_roles_id_seq;
       public          postgres    false    263            �           0    0    up_roles_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.up_roles_id_seq OWNED BY public.up_roles.id;
          public          postgres    false    264            	           1259    16541    up_users    TABLE     �  CREATE TABLE public.up_users (
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
       public         heap    postgres    false            
           1259    16546    up_users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.up_users_id_seq;
       public          postgres    false    265            �           0    0    up_users_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.up_users_id_seq OWNED BY public.up_users.id;
          public          postgres    false    266                       1259    16547    up_users_role_links    TABLE     �   CREATE TABLE public.up_users_role_links (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    user_order double precision
);
 '   DROP TABLE public.up_users_role_links;
       public         heap    postgres    false                       1259    16550    up_users_role_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_users_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.up_users_role_links_id_seq;
       public          postgres    false    267            �           0    0    up_users_role_links_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.up_users_role_links_id_seq OWNED BY public.up_users_role_links.id;
          public          postgres    false    268                       1259    16551    upload_folders    TABLE     +  CREATE TABLE public.upload_folders (
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
       public         heap    postgres    false                       1259    16556    upload_folders_id_seq    SEQUENCE     �   CREATE SEQUENCE public.upload_folders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.upload_folders_id_seq;
       public          postgres    false    269            �           0    0    upload_folders_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.upload_folders_id_seq OWNED BY public.upload_folders.id;
          public          postgres    false    270                       1259    16557    upload_folders_parent_links    TABLE     �   CREATE TABLE public.upload_folders_parent_links (
    id integer NOT NULL,
    folder_id integer,
    inv_folder_id integer,
    folder_order double precision
);
 /   DROP TABLE public.upload_folders_parent_links;
       public         heap    postgres    false                       1259    16560 "   upload_folders_parent_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.upload_folders_parent_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.upload_folders_parent_links_id_seq;
       public          postgres    false    271            �           0    0 "   upload_folders_parent_links_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.upload_folders_parent_links_id_seq OWNED BY public.upload_folders_parent_links.id;
          public          postgres    false    272            �           2604    16561    admin_permissions id    DEFAULT     |   ALTER TABLE ONLY public.admin_permissions ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_id_seq'::regclass);
 C   ALTER TABLE public.admin_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215            �           2604    16562    admin_permissions_role_links id    DEFAULT     �   ALTER TABLE ONLY public.admin_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_role_links_id_seq'::regclass);
 N   ALTER TABLE public.admin_permissions_role_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217            �           2604    16563    admin_roles id    DEFAULT     p   ALTER TABLE ONLY public.admin_roles ALTER COLUMN id SET DEFAULT nextval('public.admin_roles_id_seq'::regclass);
 =   ALTER TABLE public.admin_roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219            �           2604    16564    admin_users id    DEFAULT     p   ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);
 =   ALTER TABLE public.admin_users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221            �           2604    16565    admin_users_roles_links id    DEFAULT     �   ALTER TABLE ONLY public.admin_users_roles_links ALTER COLUMN id SET DEFAULT nextval('public.admin_users_roles_links_id_seq'::regclass);
 I   ALTER TABLE public.admin_users_roles_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223                       2604    17064    categories id    DEFAULT     n   ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);
 <   ALTER TABLE public.categories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    276    275    276                       2604    17177 	   events id    DEFAULT     f   ALTER TABLE ONLY public.events ALTER COLUMN id SET DEFAULT nextval('public.events_id_seq'::regclass);
 8   ALTER TABLE public.events ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    280    279    280                       2604    17188    events_category_links id    DEFAULT     �   ALTER TABLE ONLY public.events_category_links ALTER COLUMN id SET DEFAULT nextval('public.events_category_links_id_seq'::regclass);
 G   ALTER TABLE public.events_category_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    282    281    282            �           2604    16568    files id    DEFAULT     d   ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);
 7   ALTER TABLE public.files ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    225            �           2604    16569    files_folder_links id    DEFAULT     ~   ALTER TABLE ONLY public.files_folder_links ALTER COLUMN id SET DEFAULT nextval('public.files_folder_links_id_seq'::regclass);
 D   ALTER TABLE public.files_folder_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226            �           2604    16570    files_related_morphs id    DEFAULT     �   ALTER TABLE ONLY public.files_related_morphs ALTER COLUMN id SET DEFAULT nextval('public.files_related_morphs_id_seq'::regclass);
 F   ALTER TABLE public.files_related_morphs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229            �           2604    16571    i18n_locale id    DEFAULT     p   ALTER TABLE ONLY public.i18n_locale ALTER COLUMN id SET DEFAULT nextval('public.i18n_locale_id_seq'::regclass);
 =   ALTER TABLE public.i18n_locale ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231                       2604    17041    posts id    DEFAULT     d   ALTER TABLE ONLY public.posts ALTER COLUMN id SET DEFAULT nextval('public.posts_id_seq'::regclass);
 7   ALTER TABLE public.posts ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    273    274    274                       2604    17153    posts_category_links id    DEFAULT     �   ALTER TABLE ONLY public.posts_category_links ALTER COLUMN id SET DEFAULT nextval('public.posts_category_links_id_seq'::regclass);
 F   ALTER TABLE public.posts_category_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    277    278    278            �           2604    16573    strapi_api_token_permissions id    DEFAULT     �   ALTER TABLE ONLY public.strapi_api_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_id_seq'::regclass);
 N   ALTER TABLE public.strapi_api_token_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    233            �           2604    16574 +   strapi_api_token_permissions_token_links id    DEFAULT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_token_links_id_seq'::regclass);
 Z   ALTER TABLE public.strapi_api_token_permissions_token_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    235                        2604    16575    strapi_api_tokens id    DEFAULT     |   ALTER TABLE ONLY public.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_tokens_id_seq'::regclass);
 C   ALTER TABLE public.strapi_api_tokens ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    237                       2604    16576    strapi_core_store_settings id    DEFAULT     �   ALTER TABLE ONLY public.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('public.strapi_core_store_settings_id_seq'::regclass);
 L   ALTER TABLE public.strapi_core_store_settings ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    239                       2604    16577    strapi_database_schema id    DEFAULT     �   ALTER TABLE ONLY public.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('public.strapi_database_schema_id_seq'::regclass);
 H   ALTER TABLE public.strapi_database_schema ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    242    241                       2604    16578    strapi_migrations id    DEFAULT     |   ALTER TABLE ONLY public.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_id_seq'::regclass);
 C   ALTER TABLE public.strapi_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    244    243                       2604    16579    strapi_release_actions id    DEFAULT     �   ALTER TABLE ONLY public.strapi_release_actions ALTER COLUMN id SET DEFAULT nextval('public.strapi_release_actions_id_seq'::regclass);
 H   ALTER TABLE public.strapi_release_actions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    246    245                       2604    16580 '   strapi_release_actions_release_links id    DEFAULT     �   ALTER TABLE ONLY public.strapi_release_actions_release_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_release_actions_release_links_id_seq'::regclass);
 V   ALTER TABLE public.strapi_release_actions_release_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    248    247                       2604    16581    strapi_releases id    DEFAULT     x   ALTER TABLE ONLY public.strapi_releases ALTER COLUMN id SET DEFAULT nextval('public.strapi_releases_id_seq'::regclass);
 A   ALTER TABLE public.strapi_releases ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    250    249                       2604    16582 $   strapi_transfer_token_permissions id    DEFAULT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_id_seq'::regclass);
 S   ALTER TABLE public.strapi_transfer_token_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    252    251                       2604    16583 0   strapi_transfer_token_permissions_token_links id    DEFAULT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_token_links_id_seq'::regclass);
 _   ALTER TABLE public.strapi_transfer_token_permissions_token_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    254    253            	           2604    16584    strapi_transfer_tokens id    DEFAULT     �   ALTER TABLE ONLY public.strapi_transfer_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_tokens_id_seq'::regclass);
 H   ALTER TABLE public.strapi_transfer_tokens ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    256    255            
           2604    16585    strapi_webhooks id    DEFAULT     x   ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);
 A   ALTER TABLE public.strapi_webhooks ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    258    257                       2604    16586    up_permissions id    DEFAULT     v   ALTER TABLE ONLY public.up_permissions ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_id_seq'::regclass);
 @   ALTER TABLE public.up_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    260    259                       2604    16587    up_permissions_role_links id    DEFAULT     �   ALTER TABLE ONLY public.up_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_role_links_id_seq'::regclass);
 K   ALTER TABLE public.up_permissions_role_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    262    261                       2604    16588    up_roles id    DEFAULT     j   ALTER TABLE ONLY public.up_roles ALTER COLUMN id SET DEFAULT nextval('public.up_roles_id_seq'::regclass);
 :   ALTER TABLE public.up_roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    264    263                       2604    16589    up_users id    DEFAULT     j   ALTER TABLE ONLY public.up_users ALTER COLUMN id SET DEFAULT nextval('public.up_users_id_seq'::regclass);
 :   ALTER TABLE public.up_users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    266    265                       2604    16590    up_users_role_links id    DEFAULT     �   ALTER TABLE ONLY public.up_users_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_users_role_links_id_seq'::regclass);
 E   ALTER TABLE public.up_users_role_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    268    267                       2604    16591    upload_folders id    DEFAULT     v   ALTER TABLE ONLY public.upload_folders ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_id_seq'::regclass);
 @   ALTER TABLE public.upload_folders ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    270    269                       2604    16592    upload_folders_parent_links id    DEFAULT     �   ALTER TABLE ONLY public.upload_folders_parent_links ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_parent_links_id_seq'::regclass);
 M   ALTER TABLE public.upload_folders_parent_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    272    271            �          0    16399    admin_permissions 
   TABLE DATA           �   COPY public.admin_permissions (id, action, action_parameters, subject, properties, conditions, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    215   �      �          0    16405    admin_permissions_role_links 
   TABLE DATA           d   COPY public.admin_permissions_role_links (id, permission_id, role_id, permission_order) FROM stdin;
    public          postgres    false    217   �"      �          0    16409    admin_roles 
   TABLE DATA           x   COPY public.admin_roles (id, name, code, description, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    219   �$      �          0    16415    admin_users 
   TABLE DATA           �   COPY public.admin_users (id, firstname, lastname, username, email, password, reset_password_token, registration_token, is_active, blocked, prefered_language, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    221   �%      �          0    16421    admin_users_roles_links 
   TABLE DATA           _   COPY public.admin_users_roles_links (id, user_id, role_id, role_order, user_order) FROM stdin;
    public          postgres    false    223   �&      �          0    17061 
   categories 
   TABLE DATA           d   COPY public.categories (id, name, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    276   �&      �          0    17174    events 
   TABLE DATA           p   COPY public.events (id, title, content, date, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    280   �'      �          0    17185    events_category_links 
   TABLE DATA           W   COPY public.events_category_links (id, event_id, category_id, event_order) FROM stdin;
    public          postgres    false    282   08      �          0    16433    files 
   TABLE DATA           �   COPY public.files (id, name, alternative_text, caption, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, folder_path, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    225   r8      �          0    16438    files_folder_links 
   TABLE DATA           P   COPY public.files_folder_links (id, file_id, folder_id, file_order) FROM stdin;
    public          postgres    false    226   �B      �          0    16443    files_related_morphs 
   TABLE DATA           e   COPY public.files_related_morphs (id, file_id, related_id, related_type, field, "order") FROM stdin;
    public          postgres    false    229   �B      �          0    16449    i18n_locale 
   TABLE DATA           k   COPY public.i18n_locale (id, name, code, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    231   ZC      �          0    17038    posts 
   TABLE DATA           o   COPY public.posts (id, title, content, date, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    274   �C      �          0    17150    posts_category_links 
   TABLE DATA           T   COPY public.posts_category_links (id, post_id, category_id, post_order) FROM stdin;
    public          postgres    false    278   �T      �          0    16461    strapi_api_token_permissions 
   TABLE DATA           x   COPY public.strapi_api_token_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    233   �T      �          0    16465 (   strapi_api_token_permissions_token_links 
   TABLE DATA           �   COPY public.strapi_api_token_permissions_token_links (id, api_token_permission_id, api_token_id, api_token_permission_order) FROM stdin;
    public          postgres    false    235   �T      �          0    16469    strapi_api_tokens 
   TABLE DATA           �   COPY public.strapi_api_tokens (id, name, description, type, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    237   �T      �          0    16475    strapi_core_store_settings 
   TABLE DATA           \   COPY public.strapi_core_store_settings (id, key, value, type, environment, tag) FROM stdin;
    public          postgres    false    239   U      �          0    16481    strapi_database_schema 
   TABLE DATA           J   COPY public.strapi_database_schema (id, schema, "time", hash) FROM stdin;
    public          postgres    false    241    o      �          0    16487    strapi_migrations 
   TABLE DATA           =   COPY public.strapi_migrations (id, name, "time") FROM stdin;
    public          postgres    false    243   �x      �          0    16491    strapi_release_actions 
   TABLE DATA           �   COPY public.strapi_release_actions (id, type, target_id, target_type, content_type, locale, created_at, updated_at, created_by_id, updated_by_id, is_entry_valid) FROM stdin;
    public          postgres    false    245   �x      �          0    16497 $   strapi_release_actions_release_links 
   TABLE DATA           w   COPY public.strapi_release_actions_release_links (id, release_action_id, release_id, release_action_order) FROM stdin;
    public          postgres    false    247   �x      �          0    16501    strapi_releases 
   TABLE DATA           �   COPY public.strapi_releases (id, name, released_at, scheduled_at, timezone, created_at, updated_at, created_by_id, updated_by_id, status) FROM stdin;
    public          postgres    false    249   y      �          0    16507 !   strapi_transfer_token_permissions 
   TABLE DATA           }   COPY public.strapi_transfer_token_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    251   $y      �          0    16511 -   strapi_transfer_token_permissions_token_links 
   TABLE DATA           �   COPY public.strapi_transfer_token_permissions_token_links (id, transfer_token_permission_id, transfer_token_id, transfer_token_permission_order) FROM stdin;
    public          postgres    false    253   Ay      �          0    16515    strapi_transfer_tokens 
   TABLE DATA           �   COPY public.strapi_transfer_tokens (id, name, description, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    255   ^y      �          0    16521    strapi_webhooks 
   TABLE DATA           R   COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
    public          postgres    false    257   {y      �          0    16527    up_permissions 
   TABLE DATA           j   COPY public.up_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    259   �y      �          0    16531    up_permissions_role_links 
   TABLE DATA           a   COPY public.up_permissions_role_links (id, permission_id, role_id, permission_order) FROM stdin;
    public          postgres    false    261   �z      �          0    16535    up_roles 
   TABLE DATA           u   COPY public.up_roles (id, name, description, type, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    263   W{      �          0    16541    up_users 
   TABLE DATA           �   COPY public.up_users (id, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    265   �{      �          0    16547    up_users_role_links 
   TABLE DATA           O   COPY public.up_users_role_links (id, user_id, role_id, user_order) FROM stdin;
    public          postgres    false    267   |      �          0    16551    upload_folders 
   TABLE DATA           w   COPY public.upload_folders (id, name, path_id, path, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    269   "|      �          0    16557    upload_folders_parent_links 
   TABLE DATA           a   COPY public.upload_folders_parent_links (id, folder_id, inv_folder_id, folder_order) FROM stdin;
    public          postgres    false    271   ?|      �           0    0    admin_permissions_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.admin_permissions_id_seq', 131, true);
          public          postgres    false    216            �           0    0 #   admin_permissions_role_links_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.admin_permissions_role_links_id_seq', 131, true);
          public          postgres    false    218            �           0    0    admin_roles_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.admin_roles_id_seq', 3, true);
          public          postgres    false    220            �           0    0    admin_users_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.admin_users_id_seq', 2, true);
          public          postgres    false    222            �           0    0    admin_users_roles_links_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.admin_users_roles_links_id_seq', 5, true);
          public          postgres    false    224            �           0    0    categories_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.categories_id_seq', 8, true);
          public          postgres    false    275                        0    0    events_category_links_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.events_category_links_id_seq', 7, true);
          public          postgres    false    281                       0    0    events_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.events_id_seq', 6, true);
          public          postgres    false    279                       0    0    files_folder_links_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.files_folder_links_id_seq', 1, false);
          public          postgres    false    227                       0    0    files_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.files_id_seq', 15, true);
          public          postgres    false    228                       0    0    files_related_morphs_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.files_related_morphs_id_seq', 27, true);
          public          postgres    false    230                       0    0    i18n_locale_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.i18n_locale_id_seq', 2, true);
          public          postgres    false    232                       0    0    posts_category_links_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.posts_category_links_id_seq', 1, false);
          public          postgres    false    277                       0    0    posts_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.posts_id_seq', 9, true);
          public          postgres    false    273                       0    0 #   strapi_api_token_permissions_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.strapi_api_token_permissions_id_seq', 1, false);
          public          postgres    false    234            	           0    0 /   strapi_api_token_permissions_token_links_id_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('public.strapi_api_token_permissions_token_links_id_seq', 1, false);
          public          postgres    false    236            
           0    0    strapi_api_tokens_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.strapi_api_tokens_id_seq', 1, true);
          public          postgres    false    238                       0    0 !   strapi_core_store_settings_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.strapi_core_store_settings_id_seq', 32, true);
          public          postgres    false    240                       0    0    strapi_database_schema_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.strapi_database_schema_id_seq', 18, true);
          public          postgres    false    242                       0    0    strapi_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.strapi_migrations_id_seq', 1, false);
          public          postgres    false    244                       0    0    strapi_release_actions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.strapi_release_actions_id_seq', 1, false);
          public          postgres    false    246                       0    0 +   strapi_release_actions_release_links_id_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public.strapi_release_actions_release_links_id_seq', 1, false);
          public          postgres    false    248                       0    0    strapi_releases_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.strapi_releases_id_seq', 1, false);
          public          postgres    false    250                       0    0 (   strapi_transfer_token_permissions_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_id_seq', 1, false);
          public          postgres    false    252                       0    0 4   strapi_transfer_token_permissions_token_links_id_seq    SEQUENCE SET     c   SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_token_links_id_seq', 1, false);
          public          postgres    false    254                       0    0    strapi_transfer_tokens_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.strapi_transfer_tokens_id_seq', 1, false);
          public          postgres    false    256                       0    0    strapi_webhooks_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);
          public          postgres    false    258                       0    0    up_permissions_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.up_permissions_id_seq', 23, true);
          public          postgres    false    260                       0    0     up_permissions_role_links_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.up_permissions_role_links_id_seq', 23, true);
          public          postgres    false    262                       0    0    up_roles_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.up_roles_id_seq', 2, true);
          public          postgres    false    264                       0    0    up_users_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.up_users_id_seq', 1, true);
          public          postgres    false    266                       0    0    up_users_role_links_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.up_users_role_links_id_seq', 1, true);
          public          postgres    false    268                       0    0    upload_folders_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.upload_folders_id_seq', 1, false);
          public          postgres    false    270                       0    0 "   upload_folders_parent_links_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.upload_folders_parent_links_id_seq', 1, false);
          public          postgres    false    272                       2606    16596 (   admin_permissions admin_permissions_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_pkey;
       public            postgres    false    215                       2606    16598 >   admin_permissions_role_links admin_permissions_role_links_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_pkey;
       public            postgres    false    217            !           2606    16600 @   admin_permissions_role_links admin_permissions_role_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_unique UNIQUE (permission_id, role_id);
 j   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_unique;
       public            postgres    false    217    217            $           2606    16602    admin_roles admin_roles_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_pkey;
       public            postgres    false    219            (           2606    16604    admin_users admin_users_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_pkey;
       public            postgres    false    221            /           2606    16606 4   admin_users_roles_links admin_users_roles_links_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_pkey;
       public            postgres    false    223            1           2606    16608 6   admin_users_roles_links admin_users_roles_links_unique 
   CONSTRAINT     }   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_unique UNIQUE (user_id, role_id);
 `   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_unique;
       public            postgres    false    223    223            �           2606    17066    categories categories_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public            postgres    false    276            �           2606    17190 0   events_category_links events_category_links_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.events_category_links
    ADD CONSTRAINT events_category_links_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.events_category_links DROP CONSTRAINT events_category_links_pkey;
       public            postgres    false    282            �           2606    17194 2   events_category_links events_category_links_unique 
   CONSTRAINT     ~   ALTER TABLE ONLY public.events_category_links
    ADD CONSTRAINT events_category_links_unique UNIQUE (event_id, category_id);
 \   ALTER TABLE ONLY public.events_category_links DROP CONSTRAINT events_category_links_unique;
       public            postgres    false    282    282            �           2606    17181    events events_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.events DROP CONSTRAINT events_pkey;
       public            postgres    false    280            @           2606    16616 *   files_folder_links files_folder_links_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_pkey;
       public            postgres    false    226            B           2606    16618 ,   files_folder_links files_folder_links_unique 
   CONSTRAINT     u   ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_unique UNIQUE (file_id, folder_id);
 V   ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_unique;
       public            postgres    false    226    226            4           2606    16620    files files_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.files DROP CONSTRAINT files_pkey;
       public            postgres    false    225            G           2606    16622 .   files_related_morphs files_related_morphs_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.files_related_morphs DROP CONSTRAINT files_related_morphs_pkey;
       public            postgres    false    229            J           2606    16624    i18n_locale i18n_locale_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_pkey;
       public            postgres    false    231            �           2606    17155 .   posts_category_links posts_category_links_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.posts_category_links
    ADD CONSTRAINT posts_category_links_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.posts_category_links DROP CONSTRAINT posts_category_links_pkey;
       public            postgres    false    278            �           2606    17159 0   posts_category_links posts_category_links_unique 
   CONSTRAINT     {   ALTER TABLE ONLY public.posts_category_links
    ADD CONSTRAINT posts_category_links_unique UNIQUE (post_id, category_id);
 Z   ALTER TABLE ONLY public.posts_category_links DROP CONSTRAINT posts_category_links_unique;
       public            postgres    false    278    278            �           2606    17045    posts posts_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.posts DROP CONSTRAINT posts_pkey;
       public            postgres    false    274            N           2606    16628 >   strapi_api_token_permissions strapi_api_token_permissions_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.strapi_api_token_permissions DROP CONSTRAINT strapi_api_token_permissions_pkey;
       public            postgres    false    233            T           2606    16630 V   strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT strapi_api_token_permissions_token_links_pkey;
       public            postgres    false    235            V           2606    16632 X   strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_unique UNIQUE (api_token_permission_id, api_token_id);
 �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT strapi_api_token_permissions_token_links_unique;
       public            postgres    false    235    235            Y           2606    16634 (   strapi_api_tokens strapi_api_tokens_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_pkey;
       public            postgres    false    237            \           2606    16636 :   strapi_core_store_settings strapi_core_store_settings_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.strapi_core_store_settings
    ADD CONSTRAINT strapi_core_store_settings_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.strapi_core_store_settings DROP CONSTRAINT strapi_core_store_settings_pkey;
       public            postgres    false    239            ^           2606    16638 2   strapi_database_schema strapi_database_schema_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.strapi_database_schema
    ADD CONSTRAINT strapi_database_schema_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.strapi_database_schema DROP CONSTRAINT strapi_database_schema_pkey;
       public            postgres    false    241            `           2606    16640 (   strapi_migrations strapi_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.strapi_migrations
    ADD CONSTRAINT strapi_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.strapi_migrations DROP CONSTRAINT strapi_migrations_pkey;
       public            postgres    false    243            c           2606    16642 2   strapi_release_actions strapi_release_actions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.strapi_release_actions DROP CONSTRAINT strapi_release_actions_pkey;
       public            postgres    false    245            i           2606    16644 N   strapi_release_actions_release_links strapi_release_actions_release_links_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_release_actions_release_links
    ADD CONSTRAINT strapi_release_actions_release_links_pkey PRIMARY KEY (id);
 x   ALTER TABLE ONLY public.strapi_release_actions_release_links DROP CONSTRAINT strapi_release_actions_release_links_pkey;
       public            postgres    false    247            k           2606    16646 P   strapi_release_actions_release_links strapi_release_actions_release_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_release_actions_release_links
    ADD CONSTRAINT strapi_release_actions_release_links_unique UNIQUE (release_action_id, release_id);
 z   ALTER TABLE ONLY public.strapi_release_actions_release_links DROP CONSTRAINT strapi_release_actions_release_links_unique;
       public            postgres    false    247    247            n           2606    16648 $   strapi_releases strapi_releases_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.strapi_releases DROP CONSTRAINT strapi_releases_pkey;
       public            postgres    false    249            r           2606    16650 H   strapi_transfer_token_permissions strapi_transfer_token_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_pkey PRIMARY KEY (id);
 r   ALTER TABLE ONLY public.strapi_transfer_token_permissions DROP CONSTRAINT strapi_transfer_token_permissions_pkey;
       public            postgres    false    251            x           2606    16652 `   strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links DROP CONSTRAINT strapi_transfer_token_permissions_token_links_pkey;
       public            postgres    false    253            z           2606    16654 b   strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_unique UNIQUE (transfer_token_permission_id, transfer_token_id);
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links DROP CONSTRAINT strapi_transfer_token_permissions_token_links_unique;
       public            postgres    false    253    253            }           2606    16656 2   strapi_transfer_tokens strapi_transfer_tokens_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.strapi_transfer_tokens DROP CONSTRAINT strapi_transfer_tokens_pkey;
       public            postgres    false    255            �           2606    16658 $   strapi_webhooks strapi_webhooks_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.strapi_webhooks DROP CONSTRAINT strapi_webhooks_pkey;
       public            postgres    false    257            �           2606    16660 "   up_permissions up_permissions_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_pkey;
       public            postgres    false    259            �           2606    16662 8   up_permissions_role_links up_permissions_role_links_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_pkey;
       public            postgres    false    261            �           2606    16664 :   up_permissions_role_links up_permissions_role_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_unique UNIQUE (permission_id, role_id);
 d   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_unique;
       public            postgres    false    261    261            �           2606    16666    up_roles up_roles_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_pkey;
       public            postgres    false    263            �           2606    16668    up_users up_users_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_pkey;
       public            postgres    false    265            �           2606    16670 ,   up_users_role_links up_users_role_links_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_pkey;
       public            postgres    false    267            �           2606    16672 .   up_users_role_links up_users_role_links_unique 
   CONSTRAINT     u   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_unique UNIQUE (user_id, role_id);
 X   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_unique;
       public            postgres    false    267    267            �           2606    16674 <   upload_folders_parent_links upload_folders_parent_links_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_pkey;
       public            postgres    false    271            �           2606    16676 >   upload_folders_parent_links upload_folders_parent_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_unique UNIQUE (folder_id, inv_folder_id);
 h   ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_unique;
       public            postgres    false    271    271            �           2606    16678 +   upload_folders upload_folders_path_id_index 
   CONSTRAINT     i   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_id_index UNIQUE (path_id);
 U   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_path_id_index;
       public            postgres    false    269            �           2606    16680 (   upload_folders upload_folders_path_index 
   CONSTRAINT     c   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_index UNIQUE (path);
 R   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_path_index;
       public            postgres    false    269            �           2606    16682 "   upload_folders upload_folders_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_pkey;
       public            postgres    false    269                       1259    16683 "   admin_permissions_created_by_id_fk    INDEX     i   CREATE INDEX admin_permissions_created_by_id_fk ON public.admin_permissions USING btree (created_by_id);
 6   DROP INDEX public.admin_permissions_created_by_id_fk;
       public            postgres    false    215                       1259    16684    admin_permissions_role_links_fk    INDEX     q   CREATE INDEX admin_permissions_role_links_fk ON public.admin_permissions_role_links USING btree (permission_id);
 3   DROP INDEX public.admin_permissions_role_links_fk;
       public            postgres    false    217                       1259    16685 #   admin_permissions_role_links_inv_fk    INDEX     o   CREATE INDEX admin_permissions_role_links_inv_fk ON public.admin_permissions_role_links USING btree (role_id);
 7   DROP INDEX public.admin_permissions_role_links_inv_fk;
       public            postgres    false    217                       1259    16686 )   admin_permissions_role_links_order_inv_fk    INDEX     ~   CREATE INDEX admin_permissions_role_links_order_inv_fk ON public.admin_permissions_role_links USING btree (permission_order);
 =   DROP INDEX public.admin_permissions_role_links_order_inv_fk;
       public            postgres    false    217                       1259    16687 "   admin_permissions_updated_by_id_fk    INDEX     i   CREATE INDEX admin_permissions_updated_by_id_fk ON public.admin_permissions USING btree (updated_by_id);
 6   DROP INDEX public.admin_permissions_updated_by_id_fk;
       public            postgres    false    215            "           1259    16688    admin_roles_created_by_id_fk    INDEX     ]   CREATE INDEX admin_roles_created_by_id_fk ON public.admin_roles USING btree (created_by_id);
 0   DROP INDEX public.admin_roles_created_by_id_fk;
       public            postgres    false    219            %           1259    16689    admin_roles_updated_by_id_fk    INDEX     ]   CREATE INDEX admin_roles_updated_by_id_fk ON public.admin_roles USING btree (updated_by_id);
 0   DROP INDEX public.admin_roles_updated_by_id_fk;
       public            postgres    false    219            &           1259    16690    admin_users_created_by_id_fk    INDEX     ]   CREATE INDEX admin_users_created_by_id_fk ON public.admin_users USING btree (created_by_id);
 0   DROP INDEX public.admin_users_created_by_id_fk;
       public            postgres    false    221            *           1259    16691    admin_users_roles_links_fk    INDEX     a   CREATE INDEX admin_users_roles_links_fk ON public.admin_users_roles_links USING btree (user_id);
 .   DROP INDEX public.admin_users_roles_links_fk;
       public            postgres    false    223            +           1259    16692    admin_users_roles_links_inv_fk    INDEX     e   CREATE INDEX admin_users_roles_links_inv_fk ON public.admin_users_roles_links USING btree (role_id);
 2   DROP INDEX public.admin_users_roles_links_inv_fk;
       public            postgres    false    223            ,           1259    16693     admin_users_roles_links_order_fk    INDEX     j   CREATE INDEX admin_users_roles_links_order_fk ON public.admin_users_roles_links USING btree (role_order);
 4   DROP INDEX public.admin_users_roles_links_order_fk;
       public            postgres    false    223            -           1259    16694 $   admin_users_roles_links_order_inv_fk    INDEX     n   CREATE INDEX admin_users_roles_links_order_inv_fk ON public.admin_users_roles_links USING btree (user_order);
 8   DROP INDEX public.admin_users_roles_links_order_inv_fk;
       public            postgres    false    223            )           1259    16695    admin_users_updated_by_id_fk    INDEX     ]   CREATE INDEX admin_users_updated_by_id_fk ON public.admin_users USING btree (updated_by_id);
 0   DROP INDEX public.admin_users_updated_by_id_fk;
       public            postgres    false    221            �           1259    17067    categories_created_by_id_fk    INDEX     [   CREATE INDEX categories_created_by_id_fk ON public.categories USING btree (created_by_id);
 /   DROP INDEX public.categories_created_by_id_fk;
       public            postgres    false    276            �           1259    17068    categories_updated_by_id_fk    INDEX     [   CREATE INDEX categories_updated_by_id_fk ON public.categories USING btree (updated_by_id);
 /   DROP INDEX public.categories_updated_by_id_fk;
       public            postgres    false    276            �           1259    17191    events_category_links_fk    INDEX     ^   CREATE INDEX events_category_links_fk ON public.events_category_links USING btree (event_id);
 ,   DROP INDEX public.events_category_links_fk;
       public            postgres    false    282            �           1259    17192    events_category_links_inv_fk    INDEX     e   CREATE INDEX events_category_links_inv_fk ON public.events_category_links USING btree (category_id);
 0   DROP INDEX public.events_category_links_inv_fk;
       public            postgres    false    282            �           1259    17195 "   events_category_links_order_inv_fk    INDEX     k   CREATE INDEX events_category_links_order_inv_fk ON public.events_category_links USING btree (event_order);
 6   DROP INDEX public.events_category_links_order_inv_fk;
       public            postgres    false    282            �           1259    17182    events_created_by_id_fk    INDEX     S   CREATE INDEX events_created_by_id_fk ON public.events USING btree (created_by_id);
 +   DROP INDEX public.events_created_by_id_fk;
       public            postgres    false    280            �           1259    17183    events_updated_by_id_fk    INDEX     S   CREATE INDEX events_updated_by_id_fk ON public.events USING btree (updated_by_id);
 +   DROP INDEX public.events_updated_by_id_fk;
       public            postgres    false    280            2           1259    16702    files_created_by_id_fk    INDEX     Q   CREATE INDEX files_created_by_id_fk ON public.files USING btree (created_by_id);
 *   DROP INDEX public.files_created_by_id_fk;
       public            postgres    false    225            <           1259    16703    files_folder_links_fk    INDEX     W   CREATE INDEX files_folder_links_fk ON public.files_folder_links USING btree (file_id);
 )   DROP INDEX public.files_folder_links_fk;
       public            postgres    false    226            =           1259    16704    files_folder_links_inv_fk    INDEX     ]   CREATE INDEX files_folder_links_inv_fk ON public.files_folder_links USING btree (folder_id);
 -   DROP INDEX public.files_folder_links_inv_fk;
       public            postgres    false    226            >           1259    16705    files_folder_links_order_inv_fk    INDEX     d   CREATE INDEX files_folder_links_order_inv_fk ON public.files_folder_links USING btree (file_order);
 3   DROP INDEX public.files_folder_links_order_inv_fk;
       public            postgres    false    226            C           1259    16706    files_related_morphs_fk    INDEX     [   CREATE INDEX files_related_morphs_fk ON public.files_related_morphs USING btree (file_id);
 +   DROP INDEX public.files_related_morphs_fk;
       public            postgres    false    229            D           1259    16707 $   files_related_morphs_id_column_index    INDEX     k   CREATE INDEX files_related_morphs_id_column_index ON public.files_related_morphs USING btree (related_id);
 8   DROP INDEX public.files_related_morphs_id_column_index;
       public            postgres    false    229            E           1259    16708     files_related_morphs_order_index    INDEX     d   CREATE INDEX files_related_morphs_order_index ON public.files_related_morphs USING btree ("order");
 4   DROP INDEX public.files_related_morphs_order_index;
       public            postgres    false    229            5           1259    16709    files_updated_by_id_fk    INDEX     Q   CREATE INDEX files_updated_by_id_fk ON public.files USING btree (updated_by_id);
 *   DROP INDEX public.files_updated_by_id_fk;
       public            postgres    false    225            H           1259    16710    i18n_locale_created_by_id_fk    INDEX     ]   CREATE INDEX i18n_locale_created_by_id_fk ON public.i18n_locale USING btree (created_by_id);
 0   DROP INDEX public.i18n_locale_created_by_id_fk;
       public            postgres    false    231            K           1259    16711    i18n_locale_updated_by_id_fk    INDEX     ]   CREATE INDEX i18n_locale_updated_by_id_fk ON public.i18n_locale USING btree (updated_by_id);
 0   DROP INDEX public.i18n_locale_updated_by_id_fk;
       public            postgres    false    231            �           1259    17156    posts_category_links_fk    INDEX     [   CREATE INDEX posts_category_links_fk ON public.posts_category_links USING btree (post_id);
 +   DROP INDEX public.posts_category_links_fk;
       public            postgres    false    278            �           1259    17157    posts_category_links_inv_fk    INDEX     c   CREATE INDEX posts_category_links_inv_fk ON public.posts_category_links USING btree (category_id);
 /   DROP INDEX public.posts_category_links_inv_fk;
       public            postgres    false    278            �           1259    17160 !   posts_category_links_order_inv_fk    INDEX     h   CREATE INDEX posts_category_links_order_inv_fk ON public.posts_category_links USING btree (post_order);
 5   DROP INDEX public.posts_category_links_order_inv_fk;
       public            postgres    false    278            �           1259    17046    posts_created_by_id_fk    INDEX     Q   CREATE INDEX posts_created_by_id_fk ON public.posts USING btree (created_by_id);
 *   DROP INDEX public.posts_created_by_id_fk;
       public            postgres    false    274            �           1259    17047    posts_updated_by_id_fk    INDEX     Q   CREATE INDEX posts_updated_by_id_fk ON public.posts USING btree (updated_by_id);
 *   DROP INDEX public.posts_updated_by_id_fk;
       public            postgres    false    274            L           1259    16714 -   strapi_api_token_permissions_created_by_id_fk    INDEX        CREATE INDEX strapi_api_token_permissions_created_by_id_fk ON public.strapi_api_token_permissions USING btree (created_by_id);
 A   DROP INDEX public.strapi_api_token_permissions_created_by_id_fk;
       public            postgres    false    233            P           1259    16715 +   strapi_api_token_permissions_token_links_fk    INDEX     �   CREATE INDEX strapi_api_token_permissions_token_links_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_permission_id);
 ?   DROP INDEX public.strapi_api_token_permissions_token_links_fk;
       public            postgres    false    235            Q           1259    16716 /   strapi_api_token_permissions_token_links_inv_fk    INDEX     �   CREATE INDEX strapi_api_token_permissions_token_links_inv_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_id);
 C   DROP INDEX public.strapi_api_token_permissions_token_links_inv_fk;
       public            postgres    false    235            R           1259    16717 5   strapi_api_token_permissions_token_links_order_inv_fk    INDEX     �   CREATE INDEX strapi_api_token_permissions_token_links_order_inv_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_permission_order);
 I   DROP INDEX public.strapi_api_token_permissions_token_links_order_inv_fk;
       public            postgres    false    235            O           1259    16718 -   strapi_api_token_permissions_updated_by_id_fk    INDEX        CREATE INDEX strapi_api_token_permissions_updated_by_id_fk ON public.strapi_api_token_permissions USING btree (updated_by_id);
 A   DROP INDEX public.strapi_api_token_permissions_updated_by_id_fk;
       public            postgres    false    233            W           1259    16719 "   strapi_api_tokens_created_by_id_fk    INDEX     i   CREATE INDEX strapi_api_tokens_created_by_id_fk ON public.strapi_api_tokens USING btree (created_by_id);
 6   DROP INDEX public.strapi_api_tokens_created_by_id_fk;
       public            postgres    false    237            Z           1259    16720 "   strapi_api_tokens_updated_by_id_fk    INDEX     i   CREATE INDEX strapi_api_tokens_updated_by_id_fk ON public.strapi_api_tokens USING btree (updated_by_id);
 6   DROP INDEX public.strapi_api_tokens_updated_by_id_fk;
       public            postgres    false    237            a           1259    16721 '   strapi_release_actions_created_by_id_fk    INDEX     s   CREATE INDEX strapi_release_actions_created_by_id_fk ON public.strapi_release_actions USING btree (created_by_id);
 ;   DROP INDEX public.strapi_release_actions_created_by_id_fk;
       public            postgres    false    245            e           1259    16722 '   strapi_release_actions_release_links_fk    INDEX     �   CREATE INDEX strapi_release_actions_release_links_fk ON public.strapi_release_actions_release_links USING btree (release_action_id);
 ;   DROP INDEX public.strapi_release_actions_release_links_fk;
       public            postgres    false    247            f           1259    16723 +   strapi_release_actions_release_links_inv_fk    INDEX     �   CREATE INDEX strapi_release_actions_release_links_inv_fk ON public.strapi_release_actions_release_links USING btree (release_id);
 ?   DROP INDEX public.strapi_release_actions_release_links_inv_fk;
       public            postgres    false    247            g           1259    16724 1   strapi_release_actions_release_links_order_inv_fk    INDEX     �   CREATE INDEX strapi_release_actions_release_links_order_inv_fk ON public.strapi_release_actions_release_links USING btree (release_action_order);
 E   DROP INDEX public.strapi_release_actions_release_links_order_inv_fk;
       public            postgres    false    247            d           1259    16725 '   strapi_release_actions_updated_by_id_fk    INDEX     s   CREATE INDEX strapi_release_actions_updated_by_id_fk ON public.strapi_release_actions USING btree (updated_by_id);
 ;   DROP INDEX public.strapi_release_actions_updated_by_id_fk;
       public            postgres    false    245            l           1259    16726     strapi_releases_created_by_id_fk    INDEX     e   CREATE INDEX strapi_releases_created_by_id_fk ON public.strapi_releases USING btree (created_by_id);
 4   DROP INDEX public.strapi_releases_created_by_id_fk;
       public            postgres    false    249            o           1259    16727     strapi_releases_updated_by_id_fk    INDEX     e   CREATE INDEX strapi_releases_updated_by_id_fk ON public.strapi_releases USING btree (updated_by_id);
 4   DROP INDEX public.strapi_releases_updated_by_id_fk;
       public            postgres    false    249            p           1259    16728 2   strapi_transfer_token_permissions_created_by_id_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_created_by_id_fk ON public.strapi_transfer_token_permissions USING btree (created_by_id);
 F   DROP INDEX public.strapi_transfer_token_permissions_created_by_id_fk;
       public            postgres    false    251            t           1259    16729 0   strapi_transfer_token_permissions_token_links_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_token_links_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_permission_id);
 D   DROP INDEX public.strapi_transfer_token_permissions_token_links_fk;
       public            postgres    false    253            u           1259    16730 4   strapi_transfer_token_permissions_token_links_inv_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_token_links_inv_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_id);
 H   DROP INDEX public.strapi_transfer_token_permissions_token_links_inv_fk;
       public            postgres    false    253            v           1259    16731 :   strapi_transfer_token_permissions_token_links_order_inv_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_token_links_order_inv_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_permission_order);
 N   DROP INDEX public.strapi_transfer_token_permissions_token_links_order_inv_fk;
       public            postgres    false    253            s           1259    16732 2   strapi_transfer_token_permissions_updated_by_id_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_updated_by_id_fk ON public.strapi_transfer_token_permissions USING btree (updated_by_id);
 F   DROP INDEX public.strapi_transfer_token_permissions_updated_by_id_fk;
       public            postgres    false    251            {           1259    16733 '   strapi_transfer_tokens_created_by_id_fk    INDEX     s   CREATE INDEX strapi_transfer_tokens_created_by_id_fk ON public.strapi_transfer_tokens USING btree (created_by_id);
 ;   DROP INDEX public.strapi_transfer_tokens_created_by_id_fk;
       public            postgres    false    255            ~           1259    16734 '   strapi_transfer_tokens_updated_by_id_fk    INDEX     s   CREATE INDEX strapi_transfer_tokens_updated_by_id_fk ON public.strapi_transfer_tokens USING btree (updated_by_id);
 ;   DROP INDEX public.strapi_transfer_tokens_updated_by_id_fk;
       public            postgres    false    255            �           1259    16735    up_permissions_created_by_id_fk    INDEX     c   CREATE INDEX up_permissions_created_by_id_fk ON public.up_permissions USING btree (created_by_id);
 3   DROP INDEX public.up_permissions_created_by_id_fk;
       public            postgres    false    259            �           1259    16736    up_permissions_role_links_fk    INDEX     k   CREATE INDEX up_permissions_role_links_fk ON public.up_permissions_role_links USING btree (permission_id);
 0   DROP INDEX public.up_permissions_role_links_fk;
       public            postgres    false    261            �           1259    16737     up_permissions_role_links_inv_fk    INDEX     i   CREATE INDEX up_permissions_role_links_inv_fk ON public.up_permissions_role_links USING btree (role_id);
 4   DROP INDEX public.up_permissions_role_links_inv_fk;
       public            postgres    false    261            �           1259    16738 &   up_permissions_role_links_order_inv_fk    INDEX     x   CREATE INDEX up_permissions_role_links_order_inv_fk ON public.up_permissions_role_links USING btree (permission_order);
 :   DROP INDEX public.up_permissions_role_links_order_inv_fk;
       public            postgres    false    261            �           1259    16739    up_permissions_updated_by_id_fk    INDEX     c   CREATE INDEX up_permissions_updated_by_id_fk ON public.up_permissions USING btree (updated_by_id);
 3   DROP INDEX public.up_permissions_updated_by_id_fk;
       public            postgres    false    259            �           1259    16740    up_roles_created_by_id_fk    INDEX     W   CREATE INDEX up_roles_created_by_id_fk ON public.up_roles USING btree (created_by_id);
 -   DROP INDEX public.up_roles_created_by_id_fk;
       public            postgres    false    263            �           1259    16741    up_roles_updated_by_id_fk    INDEX     W   CREATE INDEX up_roles_updated_by_id_fk ON public.up_roles USING btree (updated_by_id);
 -   DROP INDEX public.up_roles_updated_by_id_fk;
       public            postgres    false    263            �           1259    16742    up_users_created_by_id_fk    INDEX     W   CREATE INDEX up_users_created_by_id_fk ON public.up_users USING btree (created_by_id);
 -   DROP INDEX public.up_users_created_by_id_fk;
       public            postgres    false    265            �           1259    16743    up_users_role_links_fk    INDEX     Y   CREATE INDEX up_users_role_links_fk ON public.up_users_role_links USING btree (user_id);
 *   DROP INDEX public.up_users_role_links_fk;
       public            postgres    false    267            �           1259    16744    up_users_role_links_inv_fk    INDEX     ]   CREATE INDEX up_users_role_links_inv_fk ON public.up_users_role_links USING btree (role_id);
 .   DROP INDEX public.up_users_role_links_inv_fk;
       public            postgres    false    267            �           1259    16745     up_users_role_links_order_inv_fk    INDEX     f   CREATE INDEX up_users_role_links_order_inv_fk ON public.up_users_role_links USING btree (user_order);
 4   DROP INDEX public.up_users_role_links_order_inv_fk;
       public            postgres    false    267            �           1259    16746    up_users_updated_by_id_fk    INDEX     W   CREATE INDEX up_users_updated_by_id_fk ON public.up_users USING btree (updated_by_id);
 -   DROP INDEX public.up_users_updated_by_id_fk;
       public            postgres    false    265            6           1259    16747    upload_files_created_at_index    INDEX     U   CREATE INDEX upload_files_created_at_index ON public.files USING btree (created_at);
 1   DROP INDEX public.upload_files_created_at_index;
       public            postgres    false    225            7           1259    16748    upload_files_ext_index    INDEX     G   CREATE INDEX upload_files_ext_index ON public.files USING btree (ext);
 *   DROP INDEX public.upload_files_ext_index;
       public            postgres    false    225            8           1259    16749    upload_files_folder_path_index    INDEX     W   CREATE INDEX upload_files_folder_path_index ON public.files USING btree (folder_path);
 2   DROP INDEX public.upload_files_folder_path_index;
       public            postgres    false    225            9           1259    16750    upload_files_name_index    INDEX     I   CREATE INDEX upload_files_name_index ON public.files USING btree (name);
 +   DROP INDEX public.upload_files_name_index;
       public            postgres    false    225            :           1259    16751    upload_files_size_index    INDEX     I   CREATE INDEX upload_files_size_index ON public.files USING btree (size);
 +   DROP INDEX public.upload_files_size_index;
       public            postgres    false    225            ;           1259    16752    upload_files_updated_at_index    INDEX     U   CREATE INDEX upload_files_updated_at_index ON public.files USING btree (updated_at);
 1   DROP INDEX public.upload_files_updated_at_index;
       public            postgres    false    225            �           1259    16753    upload_folders_created_by_id_fk    INDEX     c   CREATE INDEX upload_folders_created_by_id_fk ON public.upload_folders USING btree (created_by_id);
 3   DROP INDEX public.upload_folders_created_by_id_fk;
       public            postgres    false    269            �           1259    16754    upload_folders_parent_links_fk    INDEX     k   CREATE INDEX upload_folders_parent_links_fk ON public.upload_folders_parent_links USING btree (folder_id);
 2   DROP INDEX public.upload_folders_parent_links_fk;
       public            postgres    false    271            �           1259    16755 "   upload_folders_parent_links_inv_fk    INDEX     s   CREATE INDEX upload_folders_parent_links_inv_fk ON public.upload_folders_parent_links USING btree (inv_folder_id);
 6   DROP INDEX public.upload_folders_parent_links_inv_fk;
       public            postgres    false    271            �           1259    16756 (   upload_folders_parent_links_order_inv_fk    INDEX     x   CREATE INDEX upload_folders_parent_links_order_inv_fk ON public.upload_folders_parent_links USING btree (folder_order);
 <   DROP INDEX public.upload_folders_parent_links_order_inv_fk;
       public            postgres    false    271            �           1259    16757    upload_folders_updated_by_id_fk    INDEX     c   CREATE INDEX upload_folders_updated_by_id_fk ON public.upload_folders USING btree (updated_by_id);
 3   DROP INDEX public.upload_folders_updated_by_id_fk;
       public            postgres    false    269            �           2606    16758 4   admin_permissions admin_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_created_by_id_fk;
       public          postgres    false    221    4904    215            �           2606    16763 <   admin_permissions_role_links admin_permissions_role_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;
 f   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_fk;
       public          postgres    false    4889    215    217            �           2606    16768 @   admin_permissions_role_links admin_permissions_role_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;
 j   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_inv_fk;
       public          postgres    false    217    4900    219            �           2606    16773 4   admin_permissions admin_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_updated_by_id_fk;
       public          postgres    false    215    221    4904            �           2606    16778 (   admin_roles admin_roles_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_created_by_id_fk;
       public          postgres    false    4904    219    221            �           2606    16783 (   admin_roles admin_roles_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_updated_by_id_fk;
       public          postgres    false    221    4904    219            �           2606    16788 (   admin_users admin_users_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_created_by_id_fk;
       public          postgres    false    221    221    4904            �           2606    16793 2   admin_users_roles_links admin_users_roles_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_fk FOREIGN KEY (user_id) REFERENCES public.admin_users(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_fk;
       public          postgres    false    221    223    4904            �           2606    16798 6   admin_users_roles_links admin_users_roles_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_inv_fk;
       public          postgres    false    223    219    4900            �           2606    16803 (   admin_users admin_users_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_updated_by_id_fk;
       public          postgres    false    221    221    4904            �           2606    17069 &   categories categories_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 P   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_created_by_id_fk;
       public          postgres    false    221    4904    276            �           2606    17074 &   categories categories_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 P   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_updated_by_id_fk;
       public          postgres    false    221    4904    276            �           2606    17206 .   events_category_links events_category_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.events_category_links
    ADD CONSTRAINT events_category_links_fk FOREIGN KEY (event_id) REFERENCES public.events(id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.events_category_links DROP CONSTRAINT events_category_links_fk;
       public          postgres    false    282    5051    280            �           2606    17211 2   events_category_links events_category_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.events_category_links
    ADD CONSTRAINT events_category_links_inv_fk FOREIGN KEY (category_id) REFERENCES public.categories(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.events_category_links DROP CONSTRAINT events_category_links_inv_fk;
       public          postgres    false    276    5040    282            �           2606    17196    events events_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 H   ALTER TABLE ONLY public.events DROP CONSTRAINT events_created_by_id_fk;
       public          postgres    false    280    221    4904            �           2606    17201    events events_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 H   ALTER TABLE ONLY public.events DROP CONSTRAINT events_updated_by_id_fk;
       public          postgres    false    4904    280    221            �           2606    16828    files files_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.files DROP CONSTRAINT files_created_by_id_fk;
       public          postgres    false    225    221    4904            �           2606    16833 (   files_folder_links files_folder_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_fk;
       public          postgres    false    226    225    4916            �           2606    16838 ,   files_folder_links files_folder_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_inv_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_inv_fk;
       public          postgres    false    269    5025    226            �           2606    16843 ,   files_related_morphs files_related_morphs_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.files_related_morphs DROP CONSTRAINT files_related_morphs_fk;
       public          postgres    false    229    225    4916            �           2606    16848    files files_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.files DROP CONSTRAINT files_updated_by_id_fk;
       public          postgres    false    221    225    4904            �           2606    16853 (   i18n_locale i18n_locale_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_created_by_id_fk;
       public          postgres    false    221    231    4904            �           2606    16858 (   i18n_locale i18n_locale_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_updated_by_id_fk;
       public          postgres    false    4904    221    231            �           2606    17161 ,   posts_category_links posts_category_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.posts_category_links
    ADD CONSTRAINT posts_category_links_fk FOREIGN KEY (post_id) REFERENCES public.posts(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.posts_category_links DROP CONSTRAINT posts_category_links_fk;
       public          postgres    false    278    274    5036            �           2606    17166 0   posts_category_links posts_category_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.posts_category_links
    ADD CONSTRAINT posts_category_links_inv_fk FOREIGN KEY (category_id) REFERENCES public.categories(id) ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public.posts_category_links DROP CONSTRAINT posts_category_links_inv_fk;
       public          postgres    false    278    5040    276            �           2606    17048    posts posts_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.posts DROP CONSTRAINT posts_created_by_id_fk;
       public          postgres    false    4904    274    221            �           2606    17053    posts posts_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.posts DROP CONSTRAINT posts_updated_by_id_fk;
       public          postgres    false    221    4904    274            �           2606    16873 J   strapi_api_token_permissions strapi_api_token_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 t   ALTER TABLE ONLY public.strapi_api_token_permissions DROP CONSTRAINT strapi_api_token_permissions_created_by_id_fk;
       public          postgres    false    221    233    4904            �           2606    16878 T   strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_fk FOREIGN KEY (api_token_permission_id) REFERENCES public.strapi_api_token_permissions(id) ON DELETE CASCADE;
 ~   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT strapi_api_token_permissions_token_links_fk;
       public          postgres    false    235    4942    233            �           2606    16883 X   strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_inv_fk FOREIGN KEY (api_token_id) REFERENCES public.strapi_api_tokens(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT strapi_api_token_permissions_token_links_inv_fk;
       public          postgres    false    4953    235    237            �           2606    16888 J   strapi_api_token_permissions strapi_api_token_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 t   ALTER TABLE ONLY public.strapi_api_token_permissions DROP CONSTRAINT strapi_api_token_permissions_updated_by_id_fk;
       public          postgres    false    4904    233    221            �           2606    16893 4   strapi_api_tokens strapi_api_tokens_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_created_by_id_fk;
       public          postgres    false    237    221    4904            �           2606    16898 4   strapi_api_tokens strapi_api_tokens_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_updated_by_id_fk;
       public          postgres    false    221    4904    237            �           2606    16903 >   strapi_release_actions strapi_release_actions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 h   ALTER TABLE ONLY public.strapi_release_actions DROP CONSTRAINT strapi_release_actions_created_by_id_fk;
       public          postgres    false    245    221    4904            �           2606    16908 L   strapi_release_actions_release_links strapi_release_actions_release_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_release_actions_release_links
    ADD CONSTRAINT strapi_release_actions_release_links_fk FOREIGN KEY (release_action_id) REFERENCES public.strapi_release_actions(id) ON DELETE CASCADE;
 v   ALTER TABLE ONLY public.strapi_release_actions_release_links DROP CONSTRAINT strapi_release_actions_release_links_fk;
       public          postgres    false    4963    245    247            �           2606    16913 P   strapi_release_actions_release_links strapi_release_actions_release_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_release_actions_release_links
    ADD CONSTRAINT strapi_release_actions_release_links_inv_fk FOREIGN KEY (release_id) REFERENCES public.strapi_releases(id) ON DELETE CASCADE;
 z   ALTER TABLE ONLY public.strapi_release_actions_release_links DROP CONSTRAINT strapi_release_actions_release_links_inv_fk;
       public          postgres    false    247    249    4974            �           2606    16918 >   strapi_release_actions strapi_release_actions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 h   ALTER TABLE ONLY public.strapi_release_actions DROP CONSTRAINT strapi_release_actions_updated_by_id_fk;
       public          postgres    false    221    245    4904            �           2606    16923 0   strapi_releases strapi_releases_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 Z   ALTER TABLE ONLY public.strapi_releases DROP CONSTRAINT strapi_releases_created_by_id_fk;
       public          postgres    false    221    249    4904            �           2606    16928 0   strapi_releases strapi_releases_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 Z   ALTER TABLE ONLY public.strapi_releases DROP CONSTRAINT strapi_releases_updated_by_id_fk;
       public          postgres    false    4904    249    221            �           2606    16933 T   strapi_transfer_token_permissions strapi_transfer_token_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ~   ALTER TABLE ONLY public.strapi_transfer_token_permissions DROP CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk;
       public          postgres    false    251    4904    221            �           2606    16938 ^   strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_fk    FK CONSTRAINT        ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_fk FOREIGN KEY (transfer_token_permission_id) REFERENCES public.strapi_transfer_token_permissions(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links DROP CONSTRAINT strapi_transfer_token_permissions_token_links_fk;
       public          postgres    false    253    251    4978            �           2606    16943 b   strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_inv_fk FOREIGN KEY (transfer_token_id) REFERENCES public.strapi_transfer_tokens(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links DROP CONSTRAINT strapi_transfer_token_permissions_token_links_inv_fk;
       public          postgres    false    253    4989    255            �           2606    16948 T   strapi_transfer_token_permissions strapi_transfer_token_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ~   ALTER TABLE ONLY public.strapi_transfer_token_permissions DROP CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk;
       public          postgres    false    251    4904    221            �           2606    16953 >   strapi_transfer_tokens strapi_transfer_tokens_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 h   ALTER TABLE ONLY public.strapi_transfer_tokens DROP CONSTRAINT strapi_transfer_tokens_created_by_id_fk;
       public          postgres    false    4904    221    255            �           2606    16958 >   strapi_transfer_tokens strapi_transfer_tokens_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 h   ALTER TABLE ONLY public.strapi_transfer_tokens DROP CONSTRAINT strapi_transfer_tokens_updated_by_id_fk;
       public          postgres    false    4904    255    221            �           2606    16963 .   up_permissions up_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_created_by_id_fk;
       public          postgres    false    221    259    4904            �           2606    16968 6   up_permissions_role_links up_permissions_role_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.up_permissions(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_fk;
       public          postgres    false    261    4995    259            �           2606    16973 :   up_permissions_role_links up_permissions_role_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;
 d   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_inv_fk;
       public          postgres    false    263    5006    261            �           2606    16978 .   up_permissions up_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_updated_by_id_fk;
       public          postgres    false    259    4904    221            �           2606    16983 "   up_roles up_roles_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_created_by_id_fk;
       public          postgres    false    263    221    4904            �           2606    16988 "   up_roles up_roles_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_updated_by_id_fk;
       public          postgres    false    263    4904    221            �           2606    16993 "   up_users up_users_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_created_by_id_fk;
       public          postgres    false    4904    265    221            �           2606    16998 *   up_users_role_links up_users_role_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_fk;
       public          postgres    false    265    5010    267            �           2606    17003 .   up_users_role_links up_users_role_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_inv_fk;
       public          postgres    false    267    5006    263            �           2606    17008 "   up_users up_users_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_updated_by_id_fk;
       public          postgres    false    265    221    4904            �           2606    17013 .   upload_folders upload_folders_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_created_by_id_fk;
       public          postgres    false    4904    221    269            �           2606    17018 :   upload_folders_parent_links upload_folders_parent_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;
 d   ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_fk;
       public          postgres    false    5025    271    269            �           2606    17023 >   upload_folders_parent_links upload_folders_parent_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_inv_fk FOREIGN KEY (inv_folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;
 h   ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_inv_fk;
       public          postgres    false    5025    269    271            �           2606    17028 .   upload_folders upload_folders_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_updated_by_id_fk;
       public          postgres    false    221    269    4904            �   �  x��Z�r�8=;_��y��B�#������Q��1� '���_d$���4�$UsIy�T��^���R��X�vy�ٜ�E�f~-�l����7����h���G�6A�	B?�Ļ_|��@�q�U���N��^s�6�� �3�)C�4�m�m��V�D܇��c��7@�Uo��7�"�CU�w����<g �s�3Z��A�o�x��T���!�'�:*� �3$w:J�	H�5^5�&�n��m�XXbv��˝� ���!C�w�oe�z��Lw���k�}Je�id�xGY�ɫ��CV?�/�,�f�y��VH����ǵ<�y�>��5�d}��-筪3��������_�^�
=��>�mG1�����j��?�U!�?@)8s�T�Z�p^
Ӈ���{�Q�"�bh��Z
�����"���I'Q׉�`"M^�
��G�,ݿ9p�r{�o���[U�_%w��ܞ�$�A~8Ve��i���:���X57����Z��|ʋl�ܦ�e�E�C��~���+f����	�Nd`� �p��9�������9*r�L��� �+����"O��:1�5����a5�N���Y5�Î�5Crc�T�8�[q�nn��/9�,rU��+\3�Y&��c���k.:�5�T3\��W��b7��y�U���p��ذJR�����|��k��Xtl�52�������ؕ2����k����Vf��^w�J�Pbb'v���F<\m;LND�wSbZH��Hio6gt�b�{dr�3:V�����sH�����6��߽i��m��-V$�m�	�&����=�����'6[O]��e�Ll6��_EƖ��_E�R .����>�.Zh�4�d�\��i� �K����2,V``��<���H}E����u`j/�yD��X�:0��RX���p6��TXw��G���
���۾K��ת����ne��G��!L�:z숎-"uw��utሎ�$t�V��[N��_����N���1 ��w�8���h��mWv��?r�.O0�;�pr�*���k۫m��͋����n�����D���>J��(�!
�L����wb� [k�ĭL^�%8�nW�@4ؾ fya��qg>�u��ٻjZ_���G�l�����@'�&�o!�m�ꮪ�}���@�!܏q����:^N�Ʒ��f\��L���#%�����d\�	n��om��2>4����	nRCTn贏MN��yֻ��� [L���	n2@<��;j`ϴ�<7�ņ1���m!�����>����k��c�,Q�6����*o����F��	��;�����2qc�/�ƍ�hh��27��2,0d����g8�'ElE��p��U��9��M�}Ʀ[���4o��4ϴ���G��No���M҈���h��!����)�t�A�$���J[���_� �I���m4=ܤM'i��� �s?���Y�      �   �  x��ۍ!�����o�e���z���7�0G��!-�&ʊk���6Ɔ�`m��q�h'�]�	����p7F2�y0�b�3��</S0���S(wM��c
�^S�">c��iv,:t�`=�۰xQ<�_O� �b-�F�|�B(_$/#�$k�/��->$o-Z8�,ߝؾ�-9��E!�3Ѣ�l�h1HvN�X�g%Z� Z\ Z~(vV�tG#Z��^9��-�V�e���h9�k%Z.��-��-/�c�>4�'Z9��E�@��*�c�&FA�Z�j���}�E��|6���p����P&������1e#Z�mD��P>Ѻ0k����F�̵����q\���}L���?f�z�7���R�_�%���'A�\��%r��z.�Y�노t�n]j�M*>��$�r��9O�ea�I��LJ>-��I�'�6i��<�Mb>9ߓ�|z����?��h      �   �   x�u�1n�0Eg���Yv�"[��]�fa%&�H�H��+W	�8���d�Ny�w�A�$\|�+j��Y3X��3`ppÀW�g�JNT9��W��fl����a�w{=v;=n��g�fP�,SLO�S���-��A(���a��BR�!�o�M^�::/�x�S����c��5{��>�9�r1�L/�[�̔�~b^�L_X�t����t���}�      �     x�}�]O�0���_���Ӯ�]��P>��h�)t�Ύ�X��W����IN�99ϋ���䨗�D��F�1��l�E���J.������j��Ю����>�-F�q.���.����x�ҝ-vM��^��㾫b/�8��|L��i �^h{���a����c���5Z��NO��kq�G����&v�t���|��ɭ|�e<����&�g�;Y���ظ]����Y�r�a-Q|pH���cE7�0�(%	 �U����G�~@�y��~�!�)�,�r�yǩs�      �      x�3�4�@.#N�b���� &��      �   �   x�m�=n�@F��\������]
7�,�4#�ɀ�O.�"�bF�J���}��|��������\W��$J"�F3���*���A�F�EϪ���(�oA�c��^cٌ�N\�,'0���Y�hx��:�s�g���Y"� ��&����l� 9��Pۣ�2?��[V}tw�w�nK2��N��{4!�/,���WD      �      x��Z�n%E]���>��j�����$��j`��tU�:Q=.U�V����lG����wD��$��+2�ĉ�y~����Ӷ�M��o��<���W�!wy��&5_=���R�M��[�����%�M9�ul�y��f-[�Ƽ��m�ݖ��4�/��ve:6y(ۡy����K��!M}��Ӵe{���q*�Z�fH�|�=>��\�mn��y��ڌ�8���r�������Tn�������T���o�ͼLi��/5�M���_j�w�[��,c���|h��aH�}�Rn6p��~�vJ|c��n<1�n����wi��P��oI`a94?�L�������#� �`���S�u�-`/�-��%uu����}��nh�e�ߦ<�ͯ�!�<����2+�y9��S�Yx�W4����x���B��G�uH��u��d�i���n�0.yD��VM�/�#�=���:��6��1��	�qW`�	��!�}�͗[� n࡭P�R����hu�D0�7��7dx���B|7��ࣵ�0(���q�ך/�S��Ǐ���Z��V �R ��!׀|_p�K��N^� ��/�Ƽ~�8[���Wx�ڰ�C嘭 �
8oV��'�E�<���p�p�{x@��-$:��z"�A�ÚHmLRZ����eI೮�k��J��C���-�(
>u�D5}!��Ut:���r��-N�j=�d����c�X!)x�9y"X�s��v��M]��� P��,s��Sc ���KK^�}�(�p+�/@u=�]@}��y[ ��9#���'y�uk������ӄ���������� �O������������P�������el#JpP2'�7�%F�����izW������?G�t�@�)H��PT��)�0��Ed"N�C�؅�r>�e��R�+�?�ˉ
c�1נ_��7�Q�(�q�7x���GՋ�ʓH�^
�&JGt�m1�d1�i_������p`R�4����)̵+�h������!'d P���b8�
.�/F=����X�����QK!`�L%1�x�G��R�[�Ƃ�~�O�{�L�N���/�
�BWf��d��pX܂���MI��u[ ��u>m�#w��)�`�W����P�\���s���1gÚ�<�ؚ\e�i�W&WL�r8��������O��?���O�_5�/�_�����pu�⣿���?�8{��,�᷇��L�1���"������eɅ�g�a����߯(�����b�e�|\�}���\"ʤFID�ƶ�)��c&	e"�h���V���������b6R�H<A�(���1D_s�~��A��=�x ꟗ�X2a�!v ���uO\��x�;Y�!�W!�d��Lt��#�i&��븤!��U>N���*ؼ�nBIF.P�OO���Ba��a���#�pC������t.I�PqeR�^Vv�
��B��d�C9b��]����̱�^a����Bq9��y��aA����H���cp��BV�A���ȼ���r��A�H������z�
Ԣ��ڿ�B��o&�2nLj���וjE]�X�7�9�|Ϋԣ�5�v��tB�aJhB�c�V�3:yY
�P޲�i���*�/x�7��9��!��zVyD��H���'�M>��j7�)��h�{��]w!��'0����R�ͫ!2�3.�F'q%-&6�ɤ	�v��Y��|�nאSi7��4#�8c�[�\i�^��uP�[Y�"0��,ys�޼�T�$�`R3p	*��	�[�rɡ��hzk�)d,�)N �RG�e� &	?���&h��5F�Uh	�����珫���ū������?�:�|yI*��T} D0�K �%M�A��s�h��9���=��	� �U�~y��۴<��n��� ���>L�F����Y�02c�@@�h���5
#a�  �BO�,�{��3�"?p�Ӌ��gi�+"�c�p�
j��NF<�!��f?�5/�of`'z/��m���ڢ�o^��E��4���3�y�\�#�W�ɱ��"X-���6�B���j����"M|��
l��` )4��ޥ�P:�J�qʈ��	E�n.�cEJ>f+�;S�ΌXC
���m�P�4��e�%c�qE!}�0�]�M��xO�E���zIԬho!M;vYγ���S�P��z�H���2��I��2jsCO_�N�>V��sq�)� �J_�}�t� �
(�̪��L�o���1��k�����>k�j(���d�G�a2'�1}飸P'��Zn�H��v,���SQ�Ǿ͊�)GK��@ݔ|*R[�=ZG9�i���[�'E�3�����ꣿcqzy�:�e����d-_��w���P���Co,R���!��>�5īOdۃ�>���b�������+�
)#1�)�&{e�.u��Hä��2�f	�(�#P!9�L��@�r��kP�-'�M��t$��4���ɻ|e]�dEi�٦���o�6���Qc#2+��§���lHKk]5���`j,7v�p(Y��d-z>�f6iy+�������A R�m`�nyr���ģD%Y}6�°Xq���U���i��G�%��w.�����|yQd0�tq�@]��࣎�2����a\�î<cj콇ѡ�Nmt������,*�cb5�E���e�X:�TFK�̳K+pz�h�XF`�I��'x�6��ou*H�X�y�\Y�WV�H����'�'L�E��ǨS�)ڮ�"�`��2�zs�@��A3,iFu����^���_�	��T�j�h��K,��4�Xi�F���E�t���nj"��Մ{�QV�����dJ���r/wWI����#E�$��6]ck$�4��A07�R�w�%fC_4KH�}��ʚ_b���i4_�1g���ɺ4�B�.�چsA�>Ƽ���c�Q�TD��>n��Г�U��^�|H��-22[�A:S�0g��]�=�&�d��Рa���7',?x��R3n�=<C&���7um1��Ky:0�g��E7�D���������������GGU����y<% +�4��d-D�Չ��u�W��'��f���mo�y�?�q9J����2�C����tt��`�4�r�����^��0A�C���*�Ҙ�yQ��G<���X�q�Iu;o�� ���,l[��$*qk�҉Z >��_̤�Y��DE��ܰ�D$Q���sz���x6�Rc4��?�dsa-X"ih��܃ޅ��-[�H%Z_9:A�TM�߷��v��J��;�20�!��J�+�[�WV<i{�?�͇�!�1l�:��*>#��ut�'�-\D�**�K��J�i��=%*#��m�o{��E'hB������N#�c91�Ȑx'�-T̊"J�:ȉ�?V_4q��6�E|��*��4�P9![�4�HF��i�vۧ1��"3a����42�Ujt���1@p�Bы���au�;�&�y�H���^��ٌ�=\��ċ��������ՋW���噴��/|Q��e�n�������W�w���_R��2�VPg\i?�d�I���Y�X,q4]�N2��N@G,�u=S�f����Cp�ŀ�Zz��r��g/�O0{������N��̴��pE
񷋾M<�1���0HQQ�3;E��Z����%��
�x�7�O>�f�OG�6�T��1���:�"�=%3�G}{G��N-�qE	o�V3�����MwG�?<Y��&E?�b>ne�{Vo�@���U6�̫����+'�l���33��V9TZ���掘4�׏�	���b�gu��6|PK7���Q�?*nw8�Mh3Ѱ��V��OY�� ��d�^m�	������_S\��J�
D3*2q0�3}u�ұl�!�Frpa�����,צE��� �E9���F-�2�b�,eQ�i.����Ng��c��F�{����3���Y'@[�X�1��
g��8,��a�O,<�x�F[{�Z�EHJ�hP�[zC�\5�O�s^s��̓���%���pn#������|;X@���[�&�R�Cb�	�37j�EP��:��� p   k_f5΁Q��.U��ᆭ�����ǰØP=}����,q�!��:PǾV����M�vZŤDk��bD)�@���elJ�r"��O6;��/>;\�xrN�~G%���ٳg��_#�      �   2   x���	  ��au?c�urx�	�"��\�/T$m�u���}K��\      �   .
  x���[s۶���_�����Rǭ��N��9�Lg0ɴy�y��t��@:��E�Kl3���j/ {3�Xs�9��q%��������U\;uV�^ނ��ʺ(xig"�E�v^d��vʿ�i]ڕH�E��v�TE���Y%���G���ZD���Y�8�����/��z�������Hԏ��u��E��y!��Xc�}��IkLzc��9ƣe�R�`�C�V^VZꏧq���)_��wkшf���,z��3k^)#Y�$�2��|
�/|���B�u�i�nJ����)O�!����Ґ8�YT���(��	c�8�b��P�+�H�h�F�U�eEB �+���\�XU�u:�x<�z~�1M���zº�@a¤�z��wk�o�)�[�
=
<l=sMS��$�x��ym!�Ŏ�����>ٹ���À`dA���S��O����7/*WJ|T���E.+����e�U]�Q���"����La�欱�}��˩�9��S����z~���[���25u=�i���j>����b>���F)�  ��~R)�KOE�����u���e���,��H��~p����kk8�R^��t"����Y�$^�����Û/������uf���v"�JU��_�%��$.���~�c�b�KY��L^��J~-�)�Xz�E^F��"�:e�S�:e�2�>-��ܲOdK
{w.��_[nh�E��=�=���\I0KC��1K(?m�*�}�_]�������$��L_�[ =��8�j*�A�@rL�L�����ߏ����C�# ��2b�B&��3W�5�����3BA@H�JԪ��y��E��խS�]��ܜ�_D�8z��ã2�l��PI�Y$�Q��<;��E���$�v��s��ەH�2�����4Ȟ��]��"���dh�Ę/�ry8�ƪ��a���>|t?��d�)2=��	c�L�-��4e�!5��E?+AL��+��C�xީ�k/ �:h�	wb�3�G�&|�'���}Q��\$���N���e�x����g�EY��:��m@�K�X5I�bṫ��7�(x
���?>��ؓ=Vl����_���p 8���H�i� ��z�L��s��fmm��04��S0�!���/ƽ��@4!S`Ĵ+�0�.G��i�7&S&A
z��8��{#��`nH %�t�> c��2�����&dB�./o�^'b%�AN�{�������y�"��u)f�'y�3�v�g��*�z|��2�{[(_�]�]o|�(k��S֘�&�||�BYr�C�#�8�-�e���@t/u���bLMSfh��R�����D!b�MWgpt���rm��~L���Ƅ�)D����`R�~�!���;���{2@{]oBf�MH������s�碼�Ο_�%���؇��w]�y��VgT�є�F0�j��Fy��әT����&ˣ����a����IW���iy�.���p.��
À��a�4�`LKdh �>p�-���������,0d�]vo��Q�(0$�-4&L��]�L����2 ��̚mh`�A@>�mN�3� ��PZ��rg�3g!
����Z}�����zg������W��n�����l��TdU���Y�����W�5O�^{Wy��	]ja�R�1���t��l��Պ}��>��Kv��Q���Ȱ������|_���'����D��OVM�b���ʈ1���������)X� ��c���	�1����+�Ϛ�+��+�5ߞ&�4��~�.�ݡ-��T�zg��� ��q�G�Z�,�S�"[9�_�]�w�7${���y��i��ƈ���ʛ��c��!�v;�ɿ�j�M�5�����]@�nͤ+���]��r�@z8hF�M�AĎ�n�\������cf�2C�Č����bkň14]���a�ͣ/&��^N31��H��3�>�O�񎶿�#Q�Ƃ�y����ד;#����,�ܑ[�̹�����_\���h\Tvo���Meܞ'<[�K�<�+	�݂�$���5��hM1e��3�]�0̔��(�|��/�v�G�o�������}�������6���p������6⥧2��mBL�ng7(6�nq���6�x�O�������h!�+�n{4ԓ��
�W~A����Z��3�Oc��ʯ�=�/Iޯ�o��9]���Y��Τ�T�tG�D�Ku��5F�X$D:;�a?,�MΔ'��)W[��8�#s�#E���:�4ۙݡ�(�i_�����/���m�������T�����a�nV��7�i֕0�-4j�o�og���{Z���ߗ&�,�^g�?�ꀦDx�]i:C.��.�=K���t�<��ɫ��?>���_��eq�>�g�D����Q���hɆ�5�O4F���d�]��{��P0i���oQ�Ky0��;2�4Zg�� `//7t�̱���V2Æa�I䉞�6�-4|\Ɍ�\o/�wF�J��L�F�+~l���K<��rA=Z&��3�����ҝ�^0�>�������W��?��1      �      x������ � �      �   }   x�}�=� ��q��o�Y�TC�$J���.���g��X@��-�����%b=�|��3��gD؁/p}7���S����eĒp�[�-�j�;��z�ASop Y�kp'�N�_Z)���o      �   r   x�3�t�K��,�P�H���L��4202�50�50Q04�20�20�315�)�D\F��E%�饩ũ
NE�U�9�
%�NA��`
a��������������	NqCNC�=... �$�      �      x��[�n�>SO�0Z�+���"ۀ�XP��']���e�3��Y~� � �y�X�j(";��ܝ�ꪯ�������]>��!��!}���0�>�?/y,�!ߦ���qH��~(�]����!��.�u�w��O�X���vC7�i�sʇ27����s��1�]=֩��>��Λ��2�%�Y�l������S�;��N�}��iRn�4�rW��X��|�w�o�G.s���ҩtrw���mE;Ƈ�o�i��Z�
4%��OC����.)�sI�I�2���#2W0/��L�IJ��f�y)���a ߱=��t�Ӕ�]~���j?�8-�
�M3��-�M��L�WMS!����}��M��������|�L���7�<�Iw��w]��a�xYЩ<�v�2������� �E�V��yɇt���.Megk�Kۤ���r�����M�뜎 �y/����K�Wߗ�ߒv���;�xN��z u�%ݏ���u�j�	�;���O��q�}��#�_���f��x�_����ñ��Z怸	_�(����%�S��{��T�M�zƧ箒o"�����_38n�P�U���~��/��C*�	k˥;�>��n�G�z��T!�AD! s�ۺ�t��}��޸Io��S=�q4P�����<���� `M�[���k�Ô����α|z��-�ĉc��̈́� %�a<��Bɵfx�!�����ðK=:P��R�	��B]�x|F6�@&�{pX��2�4�H`D� �!-i�!�Ǳ+����B�t��#`�K7����i)#P�r������	�&uu���wՂ��ȿӀ��l� �Gp�}Y�5��HX�.�pB�ʥB�����p�I
+L5pM�-�lz_(��
�r-E�R� �Jî��-�b.� H�{�@���0���6�!�C_5��.e6��RYb�:�=�����#$�@	8�hF��6�ڌ�7�[�hD*�J �.���WO��	�*~�V�[չ]�M��]��M�`��b��M��TH��򙊇9�t�e�`S>�G�d��ؠa���3,��`�Ԍ[���D�O?��dxё�ۮ
�,dy��.�!~�|.#"~s�=�^�<�xy�J~|���&]lo_��n/6�����W�W7�����볋���g��*�
�����Tf�CoaY���/�}N��K�̇<>�֖�B�"
1i�S��WeH3�7�d�P%p.� �{� ~�r�șw@CwU�V@B��i^E:�Lx��8����=���A�7��d,]�Ĭ��Da:�_�9b���PGJ~�Ɍ�L�ŜbT�hdfI��ԋ�:�,����9ժ�9���R�XS]�\�B��iD�nR&�,��j�Q�D�*5�h�ʰ�` )4*� §��9���[HY��n����`N`
g���9Tp�G��l�U��f�L�'{�"��u0��0i+o����qRa�!�r�!�"�6�I�����IKQ��%a�&i$���$]�/_pI����\ܿR�&J߆Ïwq�s�` �L�&,��[��a/�x�V �i#u��M��q&p Y�H�zze�v����F�q���²��B� S��-�����R�XB	i��df{7u��r����bѫ"��W1ѣu�����AH�پ<�|R��7�۫����/��ś���*N�g_���y�B�� I0ݦo�07�o����w�	��[z� S'x����*��$*�*0V����Woa��Mn	�JU�s�5�#��AiI�NM�d+K���VfX�� ���Qw���h��?�q��;��<c���oݐU�}Op�
�\�׍��yX:.5辌��I3�<`�C�@v��Ęn��8���ŉ���7>Y���3�8�"��e��VwZ��B9�0X�3�q1�ڷ��H�h�E�ԞZ�-�:�a�H��S���5UI���d Gr+حpB�.60eOT�5�����4j�<l,@�y/�-I
'R��V�h�Q�ֲ�R�Q|��B��Vt:����M$-N�����Tq`2`�1B X$IY�zG�x�yl/<Z{�f�Um���� ��R�<�5����a[��qI����Ɖ4�&� ��Xtb��"e�d̫�c0?q+͍�v��(��@m�h`w��Bъ�@�(�A�\� �M�%F�����ԫp�Jp*¯�ʈ��P6%FQ�'���X�a��g�Њ.y>���+-b�5�&�,��(�qcB�� <�^�V�DB?�Pd���Ň��=�y]������p`R�4��^�53ת�1����W9!�U�-�S˵�HX� �TK,X͍B)��%S�'yGϘ�>��Y��^�� 2)1��+�B[��d��pX\��󗻊"w�15~D]���,��0iWh��Rh�\��Ԋ\�>��tfH1�&WYlQP����)&Bpa�񅔼��:�<3�ؾ�\�\���:{v܍�������C�~��o�e��q,���M�~8�տ^O����2Y�:~�!W(��U�FFK���^Ku�m�Fs�	�Z��uנ�pe��s1ΤA�(�|���׌:����3zJ^�O� �?�w5pd����f�kʐ�u�F���R1�K�/ͼ�?����I��o��sk�R^y݄��\�J��t�m������g�̫����`:p���%�j#�̆�4��+s����CM�4�ԩ��C%���GY̡>��x���X:��Al��Y��b�+��͋D���g#����[w5(%��^�q!n�[d	��ے�Z�u�5�(�:��E��*uhAq������q ��ġ	y甌��n](nE+��X^n�Z���*pot��,q�&�k<�^��:�	�Ŷ�PԪ�� n���%�W��������>����8�]|W��#����6Ц�م�f�!�ݏ�v�
�)@�V�-#�4��}p���"�H��̲�x���C�&�J�eo�ٛ2eE�
&�0��
�P�%/����[L!c�V��a�Pi�w�$A�&�1��Q2-�R�q��xs{y���z��
8�n�_�
xs�n83�m��@rzە�`���N{ܦ?��;;�N�������.9¨l�HPs�{b�
�8�{�s� �qJ��ɓ".���qdiY��p[����ڭ�tp���Nك�G�JOno4�{�s�a>9 Rc�H���1�\Cs38(<����9H�RI�^<?�z&nsNcq�����y�p��hc!�C!Ve�z�h��Ŷ_y��ȅ�Oλ`YSR`�h=�� �|n¦��x�K�.���Kd�ձ]��-��ЕЎ
P��-�C�-�V��3��Z�
t�g�-\�����ِV�v	��ĨܐB�Zo����~i�џz�i>\���h�P�!EjΪ�[
�Ɣ ɮd���v�5Q�Pw-sA�����/����Ѵ_�M��|S5��U���ސ��9�r�#%��j��JŢk�q���Ԕ+N��o�HU������EۑD��%��D����-�����x��̼�-��-U��39A�p�W��oP_��$;Rw>�_8�u}M!��J�z\�)W[є���X��G�������k瞴1��|���fk7'Sq��W�k9�<�o��Y����D��q��:�6��.)B!�ti��P�#��!��|>U {�fe�����HK�ӽIo��+�f=����%6fJu�E�{�e:�p���%�q��B�M�bf��J<����j�b���bC�Y�wCO���������)���"������rRÖz���z7١�>�ѳlĤ�h����.,W���`���a���j��{�'��g/m&����*����πN%�gm����0!����_s\���&�$�Q����|Bݠ�+���;��&�,Os�рLQ��(@{QO�.�1�f�t�,��,�2���{�9m�'�3��)�Z3����/��i�iL�z��+���qZv�u�+$���#���>=񢽬�O-�2$�CT(��Ap�D�oM�ǽr�l�� �   �P�7t#�x�Zk�$�i����X��;i��Y��&�xBͽ��O^R��:���q�~��8F)��FTeCÒ9� %�uS7��!����>C�֛eN�D6^��0F�f��`ڕZ11�<�yD)�@wЅ�ؔ��N�o��b�ۋ���s�G�7W7�I�}ڼx�⿔�&�      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x��]�n�8���<EM�ga;q���BOﺻ�@�d� �,�� �X.�U�ZR�q7
�טכ'Y��TQU�SI�N'�H����<zxPf�K�OgEހ��.�<��}/WU��B�6�%�'�$]�|2)A��u�*�9�A����O�_����"�IS���x�T�$�l�>)Q�o������e�_ ���d��0��q
��*k�U�㭧�e��
����i�Ft@��I��`��)lп�0�5�i�% CmP�������QCֱ$&H(,ճ
���=(�dEF�C�a�^0%��;A:��WI�� U��U�3�Z'*��$�� �ԫ����q1΋��W��*�48X)�U�|ؠ"=FTN~��!��ȇ�[�W�S�|gu3�#	;�f}��ìI�s����N����<�
�^We��U«J�øb��WT�;��D�aU7>�P��0��w��w�j���Hn�UC����:M雄�$j�����RS���g돇f��.((x��S̴��n]�u[��՞����<b����� �|x���;�T�~�S��l0e?�(EG���N�^�2;E��<�C���i��,��Cp�����҂��y�٫� Q��n�����R����i ���$��o�0���.x�����
dH5@�`�ZM��qa]��p��h<�h$%<j�+0l�&���֣cqrqJ��"#�����p4Y8L�KRa5K��]�svJ��j�"^_	�JX��=�p�1W�	���L�VA�"�x�~E�f;��=(qV� �E�X�;@���su3o5�`P��f����� �� V�M�>����Ƚݍ�����6rxgїE_}٦��-R�6s�S��i�l���vqM���T1����9b,!�b,!�"��������9����G6�]�F��DH�@q&>��?|#1�#уE��D��tO�r��d�*�"I��ُG3�#���a�Ѥ]�����n�U�aVA&,�F?x� �K�.Q��6��`9�� ^.���J�`P��p^TˤqF6x�<J�a��ER;��<d)�!�h�P���K�6����1�!�Qo�5��re�>U�<���Q�a��57���)��\�S�^;���;�CZ6ЕCN��SP�����\�%�@�Y�.3��2�a�O�[����_%n����q���q������w��:V#�����(Σ�J;	~�
�t]���!����Մ������4�0*�ZK��<\�)m�Ńn툆#�`1��� |�0�^�1J$��NTDK�B�t��%7���Џ�-��-`�V�QvG�+��M���)�+��:�#���P���2��.C��0�̄v���W8�����eY��9 ��.�� {"��M��PA�z� ��;w�Y�e�lC�`@ך�`>/pe��+I�!5V�,�^��$�� ��Y%Ĳ�����4Eٰ�r�C6/ţ1{�#��#] ׇ�����a�"�]i�
^���� z�s�����A�� �Ķ��Ч(TU�
���H��qe&ct�� m��0��=e�����c�'�ڝ?=��N��c�����m�
d	[�Ѻ*�o�/s@d�� ��(6Iu	��q���#l�H������he����dߧ��M�i�Q�0�U*+x��R�9�}e�ysl�{K��M�ɛN���.�P�U)�(R���]3Qc�FJ\����I�xA1.��=�̊�$�1��9~��jh�z�ӏ��vo^�ͬ���"g��τ�]+����X�������4���>�@���݇�B����wd�$,�gx�2�뛢J��ģ�ݹ�#��-�A�u�5G��]�K��D��&����+4/
dw��o�d�3��V���Kf��ߦ������a+0�lJD�^d��
���zY�9@��<A�
�������5U���kN��5������)��+�K��:;C��b���.6���bC]��+-�v6����m_]q����Ӂ���kOrz�賹Ռ>����,���"$>�[cݒ�EKx���)y�v�d)�6���{��%�m>�NԴ�n�w� 3w��nK-�a����+��(��/��	^�	���C.�V;�"2\��'��x^��[q�QSAI��CQ`+�J�P�/@E;/�6+R���ɠ��|i����₎�',��K��<�R>_e�M���oU7��z;ٷ$�6��0�����-����[I�Ű����μ_!6D�(\��yy�~=5e_VA�H����LDZ����H+�hࣁ��"�;vU�C�5�I;�EV��=�pҴy���_�J�ը�	"�ȸ��Q۩"'_��"e�qGGc�������ᘨ�߮N�躎:�~��H�Cs��3R�( ��E�oY�7�2�[/��ڢ~/�_p���?����#��'6w���F3�����ݡ���!�ϥ��p�k���O\�5j_�覣���M�Z�W�J��O\��2��G��Ol��?��G��4�oW�=�Ax:8H]F\��\�2p}0d��3�X���$��:q�� ;L:٦��o)�����ˬz+�[�i�(Y�Y�%ݵ��ݸu+�Sw��x�[��.�,�9KL�]�z�ذ�US�n۫#�jȜ۩]�֢*b���L��6ZbwBÈsc�=����c.�.�Dܷ?l��0����J�G"/S"S*S�6hJ�~�����c�ؠ/���LI9��c�7M9YF�����,����萺A��tQ �3�2�.����?n��#�8$␈C�e��j���օ�ke��5�c}���<#�ձ��`u�DH�6��G_�a�Y�}4��_�I-[�_,r���x�r�����Dw3@dڹ�;eۄ��ZIy�{?T��^�BD�NJ�{�f�R���
H] �I��u�t5jnR:��h�m��lc���t'��(�F�"ߍ�B��$5���mG��_)9��lhܞf�5��U2o�����"�x�#��>���l����ۻt����������7o�f�J����x��iK���|6� *�eC���Iӹ�f�D�H|�T�-g>"��as���h#����F��a���X�wT��YG��?�R&��"ġC�Yɦ|J6�]��I2N�������T7H}�Xİ���p�@��:��Ϟ�"�!�ic��[�e�C�q�P=��������$��j�m��}��hQ�E�\�7'/es'_����._��X��<V�)��'�We�!Ͳ˩�>�N�'g+͍$��Z��(����|Y-',=j}�ް��ό��u���'�Xs��Wc�f=#����ԞC���ȴ'ef5T�̽��(��OC%x�앍�mL�������.}v�J7?"g��0{�Ct����N�4��hv����5 )�F��-J�U�;E�|�e5�g]6���H�$˲�����}�D��m�X���u糧�����?~B���p���0��d��GD�p��U)��}g����r*�QG5&}}�+z����2=��5��RA���U���dO���r�˳U�*�>�eX8Y����P��=پ�t�x�|O?��3�?��\� c�v�Qw�@wv7�b���j?����?��ꊝ����6�x0K8�̐^��1���O��X#�v~T6�Sk��Ҥ1�� hY�͖1,2���1�K�Y�7Ę���.}��o/����덋��X_�b��
�9iusM�MJ=�T�)��p�ng�֚;����6�^i壨��h���kv��l`�:Z�3K'I�8[48��vJZ3�n���$YV܀ ��	���eL��	�4��l=�κ�:�+I����Mt{��f��+U��]���~F�|���'�{y�+m�-�gw�,)x�a �(kb£5B>�"��d�Ыw$�t����+67{���߀R��q�lv8�rN��@�6L\ڜ������v���s����)cs�b�S�>��(�cZO&�� �M�����*���C�jqf;�����rf�� �	  ��j'�J�@���ênȪYlP�)����r���H�t|��'2,ua���Ab���6K.@��@��h�W#��w<�oIOP�3���r���e����}abJ_6�*�V�7|���!U���nm�|��!�T���)6�M&�ny�r�!쩻�&��vz�L*�C�t�ě;ju�9���;�	{�K�o�j[��[��z	���w�5��w��<Q6��(ăƺ`�����G�w�Pw=�$�F�uf��PY;aʉ�k��������lF� ��	���;m�Ygbw¿�82���(�J>�ͩ5�ω�AxU�wW��돎�μ�@��I������N�A�v�;w[��f���BU*pK ������Ċ~$��LI���6V���v8��V�GCXU?@
im�ŵ*f���eM8kx��}������V����"����]s��*�����fk���R��D�>lq��"������<����F���&��\�l�t��p�� �˘}e���es�����r��g��hP��	�}��/X4X��C�ȸ�j����N?�a~��䴡Q��Yd������]ke�g��Q'"ݑ�R�:�����f���	y���F��$�pxf)]Xû.6��cu̍���03��V�c�1��{�#�oj�B:$q�	,��X��c)�G�X4+Č+����m�9��Z�Ӫ48qt����B�p�Q����E�_��]��O�?�V
��� �0�M�t�ٻJ�E�[K';�m_���ۋ���c��!��ȇpk|��dW-�_�~P�R�x���e�-%�߱�Ɣ�2��t����E�}�'�4�w�6�&#��X*$6�{Œv�P�Txʰ��0:�+Zm5��ʏ���0Q��AP�xƠ�J�%bb,o�@�}�4�%㈦h7@<E�tCd��ncx��q���^[��UDwa���o��gٕ�aγk�XP�/�x�K�ﳫ���)v�n�؁>���OCS�y�(���n���̊
L���i�j[�}'�]�US�&�y��Yc~�$>��,C<��s�zM/���ϳ�P��_-���"��s��`'
�qs#:���6/ș��K�.Ĺ����j�K������̊$�r[��6��3A,�,}�
�%Z��k�3Z���%-�>�e�K`Mh������57�c��M��xTUu����r�G��֎���J���gXr<K"A���5�
hLa=�4xe&;�6�q8��T�j�xl��hĳ�dv5&9�c�}�5�/�pwH��c��l⹜#1�(��6x����UR�.��N~$�Eq�V�nX�=�����bu��/�Х_���/����H�pVu1oZظ�yZ��]�d������4�`��^�������I��,[��u:t&y�v��,B����u��__u��z�l�q�-6��l�uhg�N��*���q��� �t���q�QM3� >�ȪO	?I�"����9l����׫���.���=�ϊ��_�_�t�$F '�S��
�x�d|�6�����1ڼ�d7��\�Aacu�VT	N����ɍ>\�(��r��q1�QkaaĄ�]0�Y���@�&�]8c�ڧ�P�������&N�h��9`����9Y2.��3\�K�{�������|6ֲsͫ��_���_d��Jr��)F��8�@������1,�G�	HS^wA�n��B�X�_JA*O�8��/�'-�MG�"iF����&?T�������Qr��-�����?|���?�Ə�iZ����5�\�/��E�fI>B���Ѽ�)��a;5j�!��	��H~�׿�޽~>����!����o_����D���"ɯ�c�l,N-OՃ����.�j� 3e�圝�f�*oFc�̑7'36/�Q�bAh����3�H�sF��:�w�\����G�f�]��[�Y#s��A�ͱFS��!���^���}�L�{�׼$�N�H����
��b,T�J��X��!|H�L=��2���g^����Mz��8lYp*��Zo=5�>K�Tp��[7 \e�oخ)"����t���?��4Y�?I�w%͖w�݃�g�gg�O<>5��.Dn �)�;����R��U�~=.I6�E���'ӓ��,����WX0�S���F�����KO��m��	���C4���(�Zt�zrr��zv��^i�._���>}�������EY�O�1�]b<-]ߠ�R�����t���)]f�K̳I�G�8����j�w5���M�B��v؁&�;Ӻ2�g���p�^�/�Ђa��ں��rL��i����0�޵�_��Ǹy��˸�Z�8X�d��Yn��(��z�v�I�������Cc{��,�ePI�g�5���v�����v&B�"t��!B��U����<l�����x`k/l���Y	"�W?�t+T ���<��@�ɵ�֝�-��W¢;��p�	4E�w:�&��Jmt�Rv?��p��ݻ��"څ�      �   �	  x��K��8�ϙ_���l�#q&����6�KfO�)J�V+�g&����i�!���m2�1RwK��n�$_ݾ�i1��pd-��i�h���1�Bb;�vĲ��1�#kf�ŏY�o3k�\$k�/�T|�^��҈��bOa���P��>K%!����l}���xV���?���u�
����{����%�%����Qbv��
y�5ۛp���ې�.iJ��Wz&M$~��W
~d�x��u��xE���`Gh�7RCk������� �?V����1��p�F.�Q��{�K�n�+��?-X�ex�z��[��!�[E$�~�]�N�1���'����ު{�ոj	�q�
$5�&�ZCI��3����w�{��_!2�rW�����U�#�0K�|�t���ߟ?[��ߴߖ?�aI�@(�`��&3XHD��;v@�ZH�į���p�%����b<�Z�À�,$�}0���{y!�Iǔ����_|*F޳�$SmH2��tL�g���Z Em�1Y���%��7�(�PzF�dEhĠ�Y��H���E��S(��B�8��.5�,�Ǡ��k�N���\��4w���@۔�Ҳ��d�Q�Y2Ƹ���u�֠�mҊ�O+h�aaZ��V�2��
v��
=��:;�*�őCI=�6�=e���Y���V1e�%��H!q<����M�wm�qp���&�9q�b��]��dF��Fxd��ռfI��'�	��n�_؉jh� ���Y>eh6/�$�4��=��3�`�ӏ�!!3�8(;}��4Co���nT��t'21�3]0q�D��������	9{�Ն�c��G�y��#0W��uqzJ�ZZ�^�������m���t��5ZU�WyO\�礤U���Vs)i�g<9YY)	����~.'?r�Rl	��ov�и��ȱ�G����и3�!�S4�t�^�^�.���E+>| nB9�T>԰I�Ԇ��H���n�٠hy�iK`E
�\&IT�ȫ\]ή5�Mv!+�;�lp5������밷��$ ��QO�L�nw�Ľ�3_����2E������R�[&��1�:5vN�s�~9�	�]��� S�1�5��ƽ�@���L`0�a�o�Zu=�9(4�i�^��g�j�M�Z������e7���9���s��*����U�X��d��d�ﭤ�SYVS�ڋ��Uj�N�ԚF�z�K$a<�%�mq��r^�8��@";i}�w�#�[�M�;�8�����eF<Y74�:�'`fE�D�2+��FLp�Dyu����f0�̹g�' <�6�=m�
� ,�������,�9���O˛b��	��������&9���|Z�'�{�Q�\����q"'��
(�޺]�W�.����3
����<��S桓(Z�t=﩮+Ӱ&BU��d�j3
��$P���!��kʈ*���5�hRi�a����X&Q������6�c k +�0����]R�k^[]l���B�[[[ϊ���=L����;�+��LU쐽B1�ߵDe��)vx
�UB�B�J�n���[S��Ř�*�rЛkk������?Iw��V)�V�����ƓC�cCٷ�*Z�[!7��ި�"���buR/{Z��yM���/��ƚv}fJ�C Ӗ���k[IY!�FfFʢi@�+�2��!��{x>����Ssp��9�*x�	Ϡ�?�N�v��y5:v�������T6�̞��TZ7�V�sR����o��U�7�4�����`�lt�$z&�	��ݕE����CwV������9�:J>��¦�x���*iN7b����,ȝUC��o)����8:
��9؎�V�O�lR(�g�R�e�&�7��l�mZ�v܊%EZ������ĵ�J<eٞW;�Z4p��G]�p+9���Z�7M��@��OE��PA��.7`�7��^Q��2/�ܶ&F��p�vg5���fH�hDɘ�hF�P��&t���TB���	�;MO^�APAr��$�<9�l�$.?j7�@�jkZ8�e�E�C!��{t^ę����d��+��:$��~��(��F,����(�"����������;b���:�,�(g�mP{��>�O�Y͸;<�ԣ�!gre7O�����ՠ�Y�����!�X�[��UY�4-�R����ˠ'Ɗ�f�QG��,�y�_J-���@�V��ˮxRG���=���2��}}&t8��Q-]*7�ۇ�DL�my[V�c��AU���HI��ao��)L���nJ�*�11�����T1';�1���Gŋ�À��z���;&$5�Mp���l��I!�����
��K
����LHR���U�g��R�
�N?RT�r젨��~N|��������˛W��^^�,^_-޼��v>1w�W����tu��j5��}����9�;�]������Gv�2      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   E  x����N�0��q���_O�����7�Z��wo'�L2�CҐ��y�����8,�`:i��ʢK�:ؑ��8�q����$�	C���Ó�"�"���Pu��a��6��lm�*��M�a���>�Z)��F>�Gm�V)�R�Z,����}��(M'������?�"���F?���j0ۉ^r�k���r��
����4�i�XY,���l��ѫ��F��}3�`�-N2�S��Oh��Ά�ǽ���V���k:P.�u���}�wK8Ũ(��|���c�lB�À7�q���F8.Pʖ�	����x��(��O��p      �   Z   x�%���0C��0�L !�t�9
TB<��-qzqa���hܸÃ&��b�P,*��Նz�ԁ�>���i��eeP�C���O�����      �   �   x�3�t,-�H�+�LN,IM�tIMK,�)Q(��IUH�,K�S(�WHDV�PZ�Z�ǉ"�id`d�k`�k`�`hle`je`�gl�K8����8J�r2�qXZ�������!�-A�&FV�z�FfPc���� ˂D�      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     