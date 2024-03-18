PGDMP                      |            santuariodb    16.2    16.2 �   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
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
       public          postgres    false    223                        0    0    admin_users_roles_links_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.admin_users_roles_links_id_seq OWNED BY public.admin_users_roles_links.id;
          public          postgres    false    224            �            1259    16425 
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
       public         heap    postgres    false            �            1259    16428    categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.categories_id_seq;
       public          postgres    false    225                       0    0    categories_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;
          public          postgres    false    226            �            1259    16429    events    TABLE     0  CREATE TABLE public.events (
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
       public         heap    postgres    false            �            1259    16434    events_category_links    TABLE     �   CREATE TABLE public.events_category_links (
    id integer NOT NULL,
    event_id integer,
    category_id integer,
    event_order double precision
);
 )   DROP TABLE public.events_category_links;
       public         heap    postgres    false            �            1259    16437    events_category_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.events_category_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.events_category_links_id_seq;
       public          postgres    false    228                       0    0    events_category_links_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.events_category_links_id_seq OWNED BY public.events_category_links.id;
          public          postgres    false    229            �            1259    16438    events_id_seq    SEQUENCE     �   CREATE SEQUENCE public.events_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.events_id_seq;
       public          postgres    false    227                       0    0    events_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.events_id_seq OWNED BY public.events.id;
          public          postgres    false    230            �            1259    16439    files    TABLE     �  CREATE TABLE public.files (
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
       public         heap    postgres    false            �            1259    16444    files_folder_links    TABLE     �   CREATE TABLE public.files_folder_links (
    id integer NOT NULL,
    file_id integer,
    folder_id integer,
    file_order double precision
);
 &   DROP TABLE public.files_folder_links;
       public         heap    postgres    false            �            1259    16447    files_folder_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.files_folder_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.files_folder_links_id_seq;
       public          postgres    false    232                       0    0    files_folder_links_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.files_folder_links_id_seq OWNED BY public.files_folder_links.id;
          public          postgres    false    233            �            1259    16448    files_id_seq    SEQUENCE     �   CREATE SEQUENCE public.files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.files_id_seq;
       public          postgres    false    231                       0    0    files_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.files_id_seq OWNED BY public.files.id;
          public          postgres    false    234            �            1259    16449    files_related_morphs    TABLE     �   CREATE TABLE public.files_related_morphs (
    id integer NOT NULL,
    file_id integer,
    related_id integer,
    related_type character varying(255),
    field character varying(255),
    "order" double precision
);
 (   DROP TABLE public.files_related_morphs;
       public         heap    postgres    false            �            1259    16454    files_related_morphs_id_seq    SEQUENCE     �   CREATE SEQUENCE public.files_related_morphs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.files_related_morphs_id_seq;
       public          postgres    false    235                       0    0    files_related_morphs_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.files_related_morphs_id_seq OWNED BY public.files_related_morphs.id;
          public          postgres    false    236            �            1259    16455    i18n_locale    TABLE       CREATE TABLE public.i18n_locale (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.i18n_locale;
       public         heap    postgres    false            �            1259    16460    i18n_locale_id_seq    SEQUENCE     �   CREATE SEQUENCE public.i18n_locale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.i18n_locale_id_seq;
       public          postgres    false    237                       0    0    i18n_locale_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.i18n_locale_id_seq OWNED BY public.i18n_locale.id;
          public          postgres    false    238                       1259    17077 	   pastorals    TABLE     (  CREATE TABLE public.pastorals (
    id integer NOT NULL,
    title character varying(255),
    description text,
    slug character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.pastorals;
       public         heap    postgres    false                       1259    17076    pastorals_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pastorals_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.pastorals_id_seq;
       public          postgres    false    284                       0    0    pastorals_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.pastorals_id_seq OWNED BY public.pastorals.id;
          public          postgres    false    283            �            1259    16461    posts    TABLE     /  CREATE TABLE public.posts (
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
    DROP TABLE public.posts;
       public         heap    postgres    false            �            1259    16466    posts_category_links    TABLE     �   CREATE TABLE public.posts_category_links (
    id integer NOT NULL,
    post_id integer,
    category_id integer,
    post_order double precision
);
 (   DROP TABLE public.posts_category_links;
       public         heap    postgres    false            �            1259    16469    posts_category_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.posts_category_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.posts_category_links_id_seq;
       public          postgres    false    240            	           0    0    posts_category_links_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.posts_category_links_id_seq OWNED BY public.posts_category_links.id;
          public          postgres    false    241            �            1259    16470    posts_id_seq    SEQUENCE     �   CREATE SEQUENCE public.posts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.posts_id_seq;
       public          postgres    false    239            
           0    0    posts_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.posts_id_seq OWNED BY public.posts.id;
          public          postgres    false    242                       1259    17090    slugs    TABLE     �   CREATE TABLE public.slugs (
    id integer NOT NULL,
    slug text,
    count integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.slugs;
       public         heap    postgres    false                       1259    17089    slugs_id_seq    SEQUENCE     �   CREATE SEQUENCE public.slugs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.slugs_id_seq;
       public          postgres    false    286                       0    0    slugs_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.slugs_id_seq OWNED BY public.slugs.id;
          public          postgres    false    285            �            1259    16471    strapi_api_token_permissions    TABLE       CREATE TABLE public.strapi_api_token_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 0   DROP TABLE public.strapi_api_token_permissions;
       public         heap    postgres    false            �            1259    16474 #   strapi_api_token_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_api_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.strapi_api_token_permissions_id_seq;
       public          postgres    false    243                       0    0 #   strapi_api_token_permissions_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.strapi_api_token_permissions_id_seq OWNED BY public.strapi_api_token_permissions.id;
          public          postgres    false    244            �            1259    16475 (   strapi_api_token_permissions_token_links    TABLE     �   CREATE TABLE public.strapi_api_token_permissions_token_links (
    id integer NOT NULL,
    api_token_permission_id integer,
    api_token_id integer,
    api_token_permission_order double precision
);
 <   DROP TABLE public.strapi_api_token_permissions_token_links;
       public         heap    postgres    false            �            1259    16478 /   strapi_api_token_permissions_token_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_api_token_permissions_token_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE public.strapi_api_token_permissions_token_links_id_seq;
       public          postgres    false    245                       0    0 /   strapi_api_token_permissions_token_links_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.strapi_api_token_permissions_token_links_id_seq OWNED BY public.strapi_api_token_permissions_token_links.id;
          public          postgres    false    246            �            1259    16479    strapi_api_tokens    TABLE     �  CREATE TABLE public.strapi_api_tokens (
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
       public         heap    postgres    false            �            1259    16484    strapi_api_tokens_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_api_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.strapi_api_tokens_id_seq;
       public          postgres    false    247                       0    0    strapi_api_tokens_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNED BY public.strapi_api_tokens.id;
          public          postgres    false    248            �            1259    16485    strapi_core_store_settings    TABLE     �   CREATE TABLE public.strapi_core_store_settings (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);
 .   DROP TABLE public.strapi_core_store_settings;
       public         heap    postgres    false            �            1259    16490 !   strapi_core_store_settings_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_core_store_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.strapi_core_store_settings_id_seq;
       public          postgres    false    249                       0    0 !   strapi_core_store_settings_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNED BY public.strapi_core_store_settings.id;
          public          postgres    false    250            �            1259    16491    strapi_database_schema    TABLE     �   CREATE TABLE public.strapi_database_schema (
    id integer NOT NULL,
    schema json,
    "time" timestamp without time zone,
    hash character varying(255)
);
 *   DROP TABLE public.strapi_database_schema;
       public         heap    postgres    false            �            1259    16496    strapi_database_schema_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_database_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.strapi_database_schema_id_seq;
       public          postgres    false    251                       0    0    strapi_database_schema_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.strapi_database_schema_id_seq OWNED BY public.strapi_database_schema.id;
          public          postgres    false    252            �            1259    16497    strapi_migrations    TABLE     �   CREATE TABLE public.strapi_migrations (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);
 %   DROP TABLE public.strapi_migrations;
       public         heap    postgres    false            �            1259    16500    strapi_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.strapi_migrations_id_seq;
       public          postgres    false    253                       0    0    strapi_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.strapi_migrations_id_seq OWNED BY public.strapi_migrations.id;
          public          postgres    false    254            �            1259    16501    strapi_release_actions    TABLE     �  CREATE TABLE public.strapi_release_actions (
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
       public         heap    postgres    false                        1259    16506    strapi_release_actions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_release_actions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.strapi_release_actions_id_seq;
       public          postgres    false    255                       0    0    strapi_release_actions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.strapi_release_actions_id_seq OWNED BY public.strapi_release_actions.id;
          public          postgres    false    256                       1259    16507 $   strapi_release_actions_release_links    TABLE     �   CREATE TABLE public.strapi_release_actions_release_links (
    id integer NOT NULL,
    release_action_id integer,
    release_id integer,
    release_action_order double precision
);
 8   DROP TABLE public.strapi_release_actions_release_links;
       public         heap    postgres    false                       1259    16510 +   strapi_release_actions_release_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_release_actions_release_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public.strapi_release_actions_release_links_id_seq;
       public          postgres    false    257                       0    0 +   strapi_release_actions_release_links_id_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public.strapi_release_actions_release_links_id_seq OWNED BY public.strapi_release_actions_release_links.id;
          public          postgres    false    258                       1259    16511    strapi_releases    TABLE     �  CREATE TABLE public.strapi_releases (
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
       public         heap    postgres    false                       1259    16516    strapi_releases_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_releases_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.strapi_releases_id_seq;
       public          postgres    false    259                       0    0    strapi_releases_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.strapi_releases_id_seq OWNED BY public.strapi_releases.id;
          public          postgres    false    260                       1259    16517 !   strapi_transfer_token_permissions    TABLE     
  CREATE TABLE public.strapi_transfer_token_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 5   DROP TABLE public.strapi_transfer_token_permissions;
       public         heap    postgres    false                       1259    16520 (   strapi_transfer_token_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_transfer_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.strapi_transfer_token_permissions_id_seq;
       public          postgres    false    261                       0    0 (   strapi_transfer_token_permissions_id_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public.strapi_transfer_token_permissions_id_seq OWNED BY public.strapi_transfer_token_permissions.id;
          public          postgres    false    262                       1259    16521 -   strapi_transfer_token_permissions_token_links    TABLE     �   CREATE TABLE public.strapi_transfer_token_permissions_token_links (
    id integer NOT NULL,
    transfer_token_permission_id integer,
    transfer_token_id integer,
    transfer_token_permission_order double precision
);
 A   DROP TABLE public.strapi_transfer_token_permissions_token_links;
       public         heap    postgres    false                       1259    16524 4   strapi_transfer_token_permissions_token_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 K   DROP SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq;
       public          postgres    false    263                       0    0 4   strapi_transfer_token_permissions_token_links_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq OWNED BY public.strapi_transfer_token_permissions_token_links.id;
          public          postgres    false    264            	           1259    16525    strapi_transfer_tokens    TABLE     �  CREATE TABLE public.strapi_transfer_tokens (
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
       public         heap    postgres    false            
           1259    16530    strapi_transfer_tokens_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_transfer_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.strapi_transfer_tokens_id_seq;
       public          postgres    false    265                       0    0    strapi_transfer_tokens_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.strapi_transfer_tokens_id_seq OWNED BY public.strapi_transfer_tokens.id;
          public          postgres    false    266                       1259    16531    strapi_webhooks    TABLE     �   CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);
 #   DROP TABLE public.strapi_webhooks;
       public         heap    postgres    false                       1259    16536    strapi_webhooks_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.strapi_webhooks_id_seq;
       public          postgres    false    267                       0    0    strapi_webhooks_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;
          public          postgres    false    268                       1259    16537    up_permissions    TABLE     �   CREATE TABLE public.up_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 "   DROP TABLE public.up_permissions;
       public         heap    postgres    false                       1259    16540    up_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.up_permissions_id_seq;
       public          postgres    false    269                       0    0    up_permissions_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.up_permissions_id_seq OWNED BY public.up_permissions.id;
          public          postgres    false    270                       1259    16541    up_permissions_role_links    TABLE     �   CREATE TABLE public.up_permissions_role_links (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_order double precision
);
 -   DROP TABLE public.up_permissions_role_links;
       public         heap    postgres    false                       1259    16544     up_permissions_role_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_permissions_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.up_permissions_role_links_id_seq;
       public          postgres    false    271                       0    0     up_permissions_role_links_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.up_permissions_role_links_id_seq OWNED BY public.up_permissions_role_links.id;
          public          postgres    false    272                       1259    16545    up_roles    TABLE     8  CREATE TABLE public.up_roles (
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
       public         heap    postgres    false                       1259    16550    up_roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.up_roles_id_seq;
       public          postgres    false    273                       0    0    up_roles_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.up_roles_id_seq OWNED BY public.up_roles.id;
          public          postgres    false    274                       1259    16551    up_users    TABLE     �  CREATE TABLE public.up_users (
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
       public         heap    postgres    false                       1259    16556    up_users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.up_users_id_seq;
       public          postgres    false    275                       0    0    up_users_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.up_users_id_seq OWNED BY public.up_users.id;
          public          postgres    false    276                       1259    16557    up_users_role_links    TABLE     �   CREATE TABLE public.up_users_role_links (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    user_order double precision
);
 '   DROP TABLE public.up_users_role_links;
       public         heap    postgres    false                       1259    16560    up_users_role_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_users_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.up_users_role_links_id_seq;
       public          postgres    false    277                       0    0    up_users_role_links_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.up_users_role_links_id_seq OWNED BY public.up_users_role_links.id;
          public          postgres    false    278                       1259    16561    upload_folders    TABLE     +  CREATE TABLE public.upload_folders (
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
       public         heap    postgres    false                       1259    16566    upload_folders_id_seq    SEQUENCE     �   CREATE SEQUENCE public.upload_folders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.upload_folders_id_seq;
       public          postgres    false    279                       0    0    upload_folders_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.upload_folders_id_seq OWNED BY public.upload_folders.id;
          public          postgres    false    280                       1259    16567    upload_folders_parent_links    TABLE     �   CREATE TABLE public.upload_folders_parent_links (
    id integer NOT NULL,
    folder_id integer,
    inv_folder_id integer,
    folder_order double precision
);
 /   DROP TABLE public.upload_folders_parent_links;
       public         heap    postgres    false                       1259    16570 "   upload_folders_parent_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.upload_folders_parent_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.upload_folders_parent_links_id_seq;
       public          postgres    false    281                       0    0 "   upload_folders_parent_links_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.upload_folders_parent_links_id_seq OWNED BY public.upload_folders_parent_links.id;
          public          postgres    false    282            �           2604    16571    admin_permissions id    DEFAULT     |   ALTER TABLE ONLY public.admin_permissions ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_id_seq'::regclass);
 C   ALTER TABLE public.admin_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215                        2604    16572    admin_permissions_role_links id    DEFAULT     �   ALTER TABLE ONLY public.admin_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_role_links_id_seq'::regclass);
 N   ALTER TABLE public.admin_permissions_role_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217                       2604    16573    admin_roles id    DEFAULT     p   ALTER TABLE ONLY public.admin_roles ALTER COLUMN id SET DEFAULT nextval('public.admin_roles_id_seq'::regclass);
 =   ALTER TABLE public.admin_roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219                       2604    16574    admin_users id    DEFAULT     p   ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);
 =   ALTER TABLE public.admin_users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221                       2604    16575    admin_users_roles_links id    DEFAULT     �   ALTER TABLE ONLY public.admin_users_roles_links ALTER COLUMN id SET DEFAULT nextval('public.admin_users_roles_links_id_seq'::regclass);
 I   ALTER TABLE public.admin_users_roles_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223                       2604    16576    categories id    DEFAULT     n   ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);
 <   ALTER TABLE public.categories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225                       2604    16577 	   events id    DEFAULT     f   ALTER TABLE ONLY public.events ALTER COLUMN id SET DEFAULT nextval('public.events_id_seq'::regclass);
 8   ALTER TABLE public.events ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    227                       2604    16578    events_category_links id    DEFAULT     �   ALTER TABLE ONLY public.events_category_links ALTER COLUMN id SET DEFAULT nextval('public.events_category_links_id_seq'::regclass);
 G   ALTER TABLE public.events_category_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228                       2604    16579    files id    DEFAULT     d   ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);
 7   ALTER TABLE public.files ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    231                       2604    16580    files_folder_links id    DEFAULT     ~   ALTER TABLE ONLY public.files_folder_links ALTER COLUMN id SET DEFAULT nextval('public.files_folder_links_id_seq'::regclass);
 D   ALTER TABLE public.files_folder_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    232            	           2604    16581    files_related_morphs id    DEFAULT     �   ALTER TABLE ONLY public.files_related_morphs ALTER COLUMN id SET DEFAULT nextval('public.files_related_morphs_id_seq'::regclass);
 F   ALTER TABLE public.files_related_morphs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    235            
           2604    16582    i18n_locale id    DEFAULT     p   ALTER TABLE ONLY public.i18n_locale ALTER COLUMN id SET DEFAULT nextval('public.i18n_locale_id_seq'::regclass);
 =   ALTER TABLE public.i18n_locale ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    237            !           2604    17080    pastorals id    DEFAULT     l   ALTER TABLE ONLY public.pastorals ALTER COLUMN id SET DEFAULT nextval('public.pastorals_id_seq'::regclass);
 ;   ALTER TABLE public.pastorals ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    283    284    284                       2604    16583    posts id    DEFAULT     d   ALTER TABLE ONLY public.posts ALTER COLUMN id SET DEFAULT nextval('public.posts_id_seq'::regclass);
 7   ALTER TABLE public.posts ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    242    239                       2604    16584    posts_category_links id    DEFAULT     �   ALTER TABLE ONLY public.posts_category_links ALTER COLUMN id SET DEFAULT nextval('public.posts_category_links_id_seq'::regclass);
 F   ALTER TABLE public.posts_category_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    241    240            "           2604    17093    slugs id    DEFAULT     d   ALTER TABLE ONLY public.slugs ALTER COLUMN id SET DEFAULT nextval('public.slugs_id_seq'::regclass);
 7   ALTER TABLE public.slugs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    286    285    286                       2604    16585    strapi_api_token_permissions id    DEFAULT     �   ALTER TABLE ONLY public.strapi_api_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_id_seq'::regclass);
 N   ALTER TABLE public.strapi_api_token_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    244    243                       2604    16586 +   strapi_api_token_permissions_token_links id    DEFAULT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_token_links_id_seq'::regclass);
 Z   ALTER TABLE public.strapi_api_token_permissions_token_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    246    245                       2604    16587    strapi_api_tokens id    DEFAULT     |   ALTER TABLE ONLY public.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_tokens_id_seq'::regclass);
 C   ALTER TABLE public.strapi_api_tokens ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    248    247                       2604    16588    strapi_core_store_settings id    DEFAULT     �   ALTER TABLE ONLY public.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('public.strapi_core_store_settings_id_seq'::regclass);
 L   ALTER TABLE public.strapi_core_store_settings ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    250    249                       2604    16589    strapi_database_schema id    DEFAULT     �   ALTER TABLE ONLY public.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('public.strapi_database_schema_id_seq'::regclass);
 H   ALTER TABLE public.strapi_database_schema ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    252    251                       2604    16590    strapi_migrations id    DEFAULT     |   ALTER TABLE ONLY public.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_id_seq'::regclass);
 C   ALTER TABLE public.strapi_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    254    253                       2604    16591    strapi_release_actions id    DEFAULT     �   ALTER TABLE ONLY public.strapi_release_actions ALTER COLUMN id SET DEFAULT nextval('public.strapi_release_actions_id_seq'::regclass);
 H   ALTER TABLE public.strapi_release_actions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    256    255                       2604    16592 '   strapi_release_actions_release_links id    DEFAULT     �   ALTER TABLE ONLY public.strapi_release_actions_release_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_release_actions_release_links_id_seq'::regclass);
 V   ALTER TABLE public.strapi_release_actions_release_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    258    257                       2604    16593    strapi_releases id    DEFAULT     x   ALTER TABLE ONLY public.strapi_releases ALTER COLUMN id SET DEFAULT nextval('public.strapi_releases_id_seq'::regclass);
 A   ALTER TABLE public.strapi_releases ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    260    259                       2604    16594 $   strapi_transfer_token_permissions id    DEFAULT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_id_seq'::regclass);
 S   ALTER TABLE public.strapi_transfer_token_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    262    261                       2604    16595 0   strapi_transfer_token_permissions_token_links id    DEFAULT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_token_links_id_seq'::regclass);
 _   ALTER TABLE public.strapi_transfer_token_permissions_token_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    264    263                       2604    16596    strapi_transfer_tokens id    DEFAULT     �   ALTER TABLE ONLY public.strapi_transfer_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_tokens_id_seq'::regclass);
 H   ALTER TABLE public.strapi_transfer_tokens ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    266    265                       2604    16597    strapi_webhooks id    DEFAULT     x   ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);
 A   ALTER TABLE public.strapi_webhooks ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    268    267                       2604    16598    up_permissions id    DEFAULT     v   ALTER TABLE ONLY public.up_permissions ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_id_seq'::regclass);
 @   ALTER TABLE public.up_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    270    269                       2604    16599    up_permissions_role_links id    DEFAULT     �   ALTER TABLE ONLY public.up_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_role_links_id_seq'::regclass);
 K   ALTER TABLE public.up_permissions_role_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    272    271                       2604    16600    up_roles id    DEFAULT     j   ALTER TABLE ONLY public.up_roles ALTER COLUMN id SET DEFAULT nextval('public.up_roles_id_seq'::regclass);
 :   ALTER TABLE public.up_roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    274    273                       2604    16601    up_users id    DEFAULT     j   ALTER TABLE ONLY public.up_users ALTER COLUMN id SET DEFAULT nextval('public.up_users_id_seq'::regclass);
 :   ALTER TABLE public.up_users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    276    275                       2604    16602    up_users_role_links id    DEFAULT     �   ALTER TABLE ONLY public.up_users_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_users_role_links_id_seq'::regclass);
 E   ALTER TABLE public.up_users_role_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    278    277                       2604    16603    upload_folders id    DEFAULT     v   ALTER TABLE ONLY public.upload_folders ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_id_seq'::regclass);
 @   ALTER TABLE public.upload_folders ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    280    279                        2604    16604    upload_folders_parent_links id    DEFAULT     �   ALTER TABLE ONLY public.upload_folders_parent_links ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_parent_links_id_seq'::regclass);
 M   ALTER TABLE public.upload_folders_parent_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    282    281            �          0    16399    admin_permissions 
   TABLE DATA           �   COPY public.admin_permissions (id, action, action_parameters, subject, properties, conditions, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    215   =      �          0    16405    admin_permissions_role_links 
   TABLE DATA           d   COPY public.admin_permissions_role_links (id, permission_id, role_id, permission_order) FROM stdin;
    public          postgres    false    217   DC      �          0    16409    admin_roles 
   TABLE DATA           x   COPY public.admin_roles (id, name, code, description, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    219   >E      �          0    16415    admin_users 
   TABLE DATA           �   COPY public.admin_users (id, firstname, lastname, username, email, password, reset_password_token, registration_token, is_active, blocked, prefered_language, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    221   (F      �          0    16421    admin_users_roles_links 
   TABLE DATA           _   COPY public.admin_users_roles_links (id, user_id, role_id, role_order, user_order) FROM stdin;
    public          postgres    false    223   RG      �          0    16425 
   categories 
   TABLE DATA           j   COPY public.categories (id, name, created_at, updated_at, created_by_id, updated_by_id, slug) FROM stdin;
    public          postgres    false    225   yG      �          0    16429    events 
   TABLE DATA           v   COPY public.events (id, title, content, date, created_at, updated_at, created_by_id, updated_by_id, slug) FROM stdin;
    public          postgres    false    227   HH      �          0    16434    events_category_links 
   TABLE DATA           W   COPY public.events_category_links (id, event_id, category_id, event_order) FROM stdin;
    public          postgres    false    228   �M      �          0    16439    files 
   TABLE DATA           �   COPY public.files (id, name, alternative_text, caption, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, folder_path, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    231   �M      �          0    16444    files_folder_links 
   TABLE DATA           P   COPY public.files_folder_links (id, file_id, folder_id, file_order) FROM stdin;
    public          postgres    false    232   �[      �          0    16449    files_related_morphs 
   TABLE DATA           e   COPY public.files_related_morphs (id, file_id, related_id, related_type, field, "order") FROM stdin;
    public          postgres    false    235   �[      �          0    16455    i18n_locale 
   TABLE DATA           k   COPY public.i18n_locale (id, name, code, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    237   �\      �          0    17077 	   pastorals 
   TABLE DATA           w   COPY public.pastorals (id, title, description, slug, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    284   k]      �          0    16461    posts 
   TABLE DATA           u   COPY public.posts (id, title, content, date, created_at, updated_at, created_by_id, updated_by_id, slug) FROM stdin;
    public          postgres    false    239   \`      �          0    16466    posts_category_links 
   TABLE DATA           T   COPY public.posts_category_links (id, post_id, category_id, post_order) FROM stdin;
    public          postgres    false    240   �e      �          0    17090    slugs 
   TABLE DATA           f   COPY public.slugs (id, slug, count, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    286   �e      �          0    16471    strapi_api_token_permissions 
   TABLE DATA           x   COPY public.strapi_api_token_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    243    f      �          0    16475 (   strapi_api_token_permissions_token_links 
   TABLE DATA           �   COPY public.strapi_api_token_permissions_token_links (id, api_token_permission_id, api_token_id, api_token_permission_order) FROM stdin;
    public          postgres    false    245   f      �          0    16479    strapi_api_tokens 
   TABLE DATA           �   COPY public.strapi_api_tokens (id, name, description, type, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    247   :f      �          0    16485    strapi_core_store_settings 
   TABLE DATA           \   COPY public.strapi_core_store_settings (id, key, value, type, environment, tag) FROM stdin;
    public          postgres    false    249   Wf      �          0    16491    strapi_database_schema 
   TABLE DATA           J   COPY public.strapi_database_schema (id, schema, "time", hash) FROM stdin;
    public          postgres    false    251   �      �          0    16497    strapi_migrations 
   TABLE DATA           =   COPY public.strapi_migrations (id, name, "time") FROM stdin;
    public          postgres    false    253   +�      �          0    16501    strapi_release_actions 
   TABLE DATA           �   COPY public.strapi_release_actions (id, type, target_id, target_type, content_type, locale, created_at, updated_at, created_by_id, updated_by_id, is_entry_valid) FROM stdin;
    public          postgres    false    255   H�      �          0    16507 $   strapi_release_actions_release_links 
   TABLE DATA           w   COPY public.strapi_release_actions_release_links (id, release_action_id, release_id, release_action_order) FROM stdin;
    public          postgres    false    257   e�      �          0    16511    strapi_releases 
   TABLE DATA           �   COPY public.strapi_releases (id, name, released_at, scheduled_at, timezone, created_at, updated_at, created_by_id, updated_by_id, status) FROM stdin;
    public          postgres    false    259   ��      �          0    16517 !   strapi_transfer_token_permissions 
   TABLE DATA           }   COPY public.strapi_transfer_token_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    261   ��      �          0    16521 -   strapi_transfer_token_permissions_token_links 
   TABLE DATA           �   COPY public.strapi_transfer_token_permissions_token_links (id, transfer_token_permission_id, transfer_token_id, transfer_token_permission_order) FROM stdin;
    public          postgres    false    263   ��      �          0    16525    strapi_transfer_tokens 
   TABLE DATA           �   COPY public.strapi_transfer_tokens (id, name, description, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    265   ٌ      �          0    16531    strapi_webhooks 
   TABLE DATA           R   COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
    public          postgres    false    267   ��      �          0    16537    up_permissions 
   TABLE DATA           j   COPY public.up_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    269   �      �          0    16541    up_permissions_role_links 
   TABLE DATA           a   COPY public.up_permissions_role_links (id, permission_id, role_id, permission_order) FROM stdin;
    public          postgres    false    271   ��      �          0    16545    up_roles 
   TABLE DATA           u   COPY public.up_roles (id, name, description, type, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    273   ��      �          0    16551    up_users 
   TABLE DATA           �   COPY public.up_users (id, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    275   ��      �          0    16557    up_users_role_links 
   TABLE DATA           O   COPY public.up_users_role_links (id, user_id, role_id, user_order) FROM stdin;
    public          postgres    false    277   ��      �          0    16561    upload_folders 
   TABLE DATA           w   COPY public.upload_folders (id, name, path_id, path, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    279   ˏ      �          0    16567    upload_folders_parent_links 
   TABLE DATA           a   COPY public.upload_folders_parent_links (id, folder_id, inv_folder_id, folder_order) FROM stdin;
    public          postgres    false    281   �                  0    0    admin_permissions_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.admin_permissions_id_seq', 144, true);
          public          postgres    false    216            !           0    0 #   admin_permissions_role_links_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.admin_permissions_role_links_id_seq', 144, true);
          public          postgres    false    218            "           0    0    admin_roles_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.admin_roles_id_seq', 3, true);
          public          postgres    false    220            #           0    0    admin_users_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.admin_users_id_seq', 2, true);
          public          postgres    false    222            $           0    0    admin_users_roles_links_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.admin_users_roles_links_id_seq', 5, true);
          public          postgres    false    224            %           0    0    categories_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.categories_id_seq', 14, true);
          public          postgres    false    226            &           0    0    events_category_links_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.events_category_links_id_seq', 13, true);
          public          postgres    false    229            '           0    0    events_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.events_id_seq', 12, true);
          public          postgres    false    230            (           0    0    files_folder_links_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.files_folder_links_id_seq', 1, false);
          public          postgres    false    233            )           0    0    files_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.files_id_seq', 21, true);
          public          postgres    false    234            *           0    0    files_related_morphs_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.files_related_morphs_id_seq', 45, true);
          public          postgres    false    236            +           0    0    i18n_locale_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.i18n_locale_id_seq', 2, true);
          public          postgres    false    238            ,           0    0    pastorals_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.pastorals_id_seq', 6, true);
          public          postgres    false    283            -           0    0    posts_category_links_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.posts_category_links_id_seq', 6, true);
          public          postgres    false    241            .           0    0    posts_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.posts_id_seq', 15, true);
          public          postgres    false    242            /           0    0    slugs_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.slugs_id_seq', 1, false);
          public          postgres    false    285            0           0    0 #   strapi_api_token_permissions_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.strapi_api_token_permissions_id_seq', 1, false);
          public          postgres    false    244            1           0    0 /   strapi_api_token_permissions_token_links_id_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('public.strapi_api_token_permissions_token_links_id_seq', 1, false);
          public          postgres    false    246            2           0    0    strapi_api_tokens_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.strapi_api_tokens_id_seq', 1, true);
          public          postgres    false    248            3           0    0 !   strapi_core_store_settings_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.strapi_core_store_settings_id_seq', 34, true);
          public          postgres    false    250            4           0    0    strapi_database_schema_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.strapi_database_schema_id_seq', 19, true);
          public          postgres    false    252            5           0    0    strapi_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.strapi_migrations_id_seq', 1, false);
          public          postgres    false    254            6           0    0    strapi_release_actions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.strapi_release_actions_id_seq', 1, false);
          public          postgres    false    256            7           0    0 +   strapi_release_actions_release_links_id_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public.strapi_release_actions_release_links_id_seq', 1, false);
          public          postgres    false    258            8           0    0    strapi_releases_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.strapi_releases_id_seq', 1, false);
          public          postgres    false    260            9           0    0 (   strapi_transfer_token_permissions_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_id_seq', 1, false);
          public          postgres    false    262            :           0    0 4   strapi_transfer_token_permissions_token_links_id_seq    SEQUENCE SET     c   SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_token_links_id_seq', 1, false);
          public          postgres    false    264            ;           0    0    strapi_transfer_tokens_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.strapi_transfer_tokens_id_seq', 1, false);
          public          postgres    false    266            <           0    0    strapi_webhooks_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);
          public          postgres    false    268            =           0    0    up_permissions_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.up_permissions_id_seq', 25, true);
          public          postgres    false    270            >           0    0     up_permissions_role_links_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.up_permissions_role_links_id_seq', 25, true);
          public          postgres    false    272            ?           0    0    up_roles_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.up_roles_id_seq', 2, true);
          public          postgres    false    274            @           0    0    up_users_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.up_users_id_seq', 1, true);
          public          postgres    false    276            A           0    0    up_users_role_links_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.up_users_role_links_id_seq', 1, true);
          public          postgres    false    278            B           0    0    upload_folders_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.upload_folders_id_seq', 1, false);
          public          postgres    false    280            C           0    0 "   upload_folders_parent_links_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.upload_folders_parent_links_id_seq', 1, false);
          public          postgres    false    282            %           2606    16608 (   admin_permissions admin_permissions_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_pkey;
       public            postgres    false    215            +           2606    16610 >   admin_permissions_role_links admin_permissions_role_links_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_pkey;
       public            postgres    false    217            -           2606    16612 @   admin_permissions_role_links admin_permissions_role_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_unique UNIQUE (permission_id, role_id);
 j   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_unique;
       public            postgres    false    217    217            0           2606    16614    admin_roles admin_roles_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_pkey;
       public            postgres    false    219            4           2606    16616    admin_users admin_users_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_pkey;
       public            postgres    false    221            ;           2606    16618 4   admin_users_roles_links admin_users_roles_links_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_pkey;
       public            postgres    false    223            =           2606    16620 6   admin_users_roles_links admin_users_roles_links_unique 
   CONSTRAINT     }   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_unique UNIQUE (user_id, role_id);
 `   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_unique;
       public            postgres    false    223    223            @           2606    16622    categories categories_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public            postgres    false    225            B           2606    17123 !   categories categories_slug_unique 
   CONSTRAINT     \   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_slug_unique UNIQUE (slug);
 K   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_slug_unique;
       public            postgres    false    225            N           2606    16624 0   events_category_links events_category_links_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.events_category_links
    ADD CONSTRAINT events_category_links_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.events_category_links DROP CONSTRAINT events_category_links_pkey;
       public            postgres    false    228            P           2606    16626 2   events_category_links events_category_links_unique 
   CONSTRAINT     ~   ALTER TABLE ONLY public.events_category_links
    ADD CONSTRAINT events_category_links_unique UNIQUE (event_id, category_id);
 \   ALTER TABLE ONLY public.events_category_links DROP CONSTRAINT events_category_links_unique;
       public            postgres    false    228    228            F           2606    16628    events events_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.events DROP CONSTRAINT events_pkey;
       public            postgres    false    227            H           2606    17125    events events_slug_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_slug_unique UNIQUE (slug);
 C   ALTER TABLE ONLY public.events DROP CONSTRAINT events_slug_unique;
       public            postgres    false    227            _           2606    16630 *   files_folder_links files_folder_links_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_pkey;
       public            postgres    false    232            a           2606    16632 ,   files_folder_links files_folder_links_unique 
   CONSTRAINT     u   ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_unique UNIQUE (file_id, folder_id);
 V   ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_unique;
       public            postgres    false    232    232            S           2606    16634    files files_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.files DROP CONSTRAINT files_pkey;
       public            postgres    false    231            f           2606    16636 .   files_related_morphs files_related_morphs_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.files_related_morphs DROP CONSTRAINT files_related_morphs_pkey;
       public            postgres    false    235            i           2606    16638    i18n_locale i18n_locale_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_pkey;
       public            postgres    false    237            �           2606    17084    pastorals pastorals_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.pastorals
    ADD CONSTRAINT pastorals_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.pastorals DROP CONSTRAINT pastorals_pkey;
       public            postgres    false    284            �           2606    17086    pastorals pastorals_slug_unique 
   CONSTRAINT     Z   ALTER TABLE ONLY public.pastorals
    ADD CONSTRAINT pastorals_slug_unique UNIQUE (slug);
 I   ALTER TABLE ONLY public.pastorals DROP CONSTRAINT pastorals_slug_unique;
       public            postgres    false    284            u           2606    16640 .   posts_category_links posts_category_links_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.posts_category_links
    ADD CONSTRAINT posts_category_links_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.posts_category_links DROP CONSTRAINT posts_category_links_pkey;
       public            postgres    false    240            w           2606    16642 0   posts_category_links posts_category_links_unique 
   CONSTRAINT     {   ALTER TABLE ONLY public.posts_category_links
    ADD CONSTRAINT posts_category_links_unique UNIQUE (post_id, category_id);
 Z   ALTER TABLE ONLY public.posts_category_links DROP CONSTRAINT posts_category_links_unique;
       public            postgres    false    240    240            m           2606    16644    posts posts_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.posts DROP CONSTRAINT posts_pkey;
       public            postgres    false    239            o           2606    17127    posts posts_slug_unique 
   CONSTRAINT     R   ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_slug_unique UNIQUE (slug);
 A   ALTER TABLE ONLY public.posts DROP CONSTRAINT posts_slug_unique;
       public            postgres    false    239            �           2606    17097    slugs slugs_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.slugs
    ADD CONSTRAINT slugs_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.slugs DROP CONSTRAINT slugs_pkey;
       public            postgres    false    286            z           2606    16646 >   strapi_api_token_permissions strapi_api_token_permissions_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.strapi_api_token_permissions DROP CONSTRAINT strapi_api_token_permissions_pkey;
       public            postgres    false    243            �           2606    16648 V   strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT strapi_api_token_permissions_token_links_pkey;
       public            postgres    false    245            �           2606    16650 X   strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_unique UNIQUE (api_token_permission_id, api_token_id);
 �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT strapi_api_token_permissions_token_links_unique;
       public            postgres    false    245    245            �           2606    16652 (   strapi_api_tokens strapi_api_tokens_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_pkey;
       public            postgres    false    247            �           2606    16654 :   strapi_core_store_settings strapi_core_store_settings_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.strapi_core_store_settings
    ADD CONSTRAINT strapi_core_store_settings_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.strapi_core_store_settings DROP CONSTRAINT strapi_core_store_settings_pkey;
       public            postgres    false    249            �           2606    16656 2   strapi_database_schema strapi_database_schema_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.strapi_database_schema
    ADD CONSTRAINT strapi_database_schema_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.strapi_database_schema DROP CONSTRAINT strapi_database_schema_pkey;
       public            postgres    false    251            �           2606    16658 (   strapi_migrations strapi_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.strapi_migrations
    ADD CONSTRAINT strapi_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.strapi_migrations DROP CONSTRAINT strapi_migrations_pkey;
       public            postgres    false    253            �           2606    16660 2   strapi_release_actions strapi_release_actions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.strapi_release_actions DROP CONSTRAINT strapi_release_actions_pkey;
       public            postgres    false    255            �           2606    16662 N   strapi_release_actions_release_links strapi_release_actions_release_links_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_release_actions_release_links
    ADD CONSTRAINT strapi_release_actions_release_links_pkey PRIMARY KEY (id);
 x   ALTER TABLE ONLY public.strapi_release_actions_release_links DROP CONSTRAINT strapi_release_actions_release_links_pkey;
       public            postgres    false    257            �           2606    16664 P   strapi_release_actions_release_links strapi_release_actions_release_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_release_actions_release_links
    ADD CONSTRAINT strapi_release_actions_release_links_unique UNIQUE (release_action_id, release_id);
 z   ALTER TABLE ONLY public.strapi_release_actions_release_links DROP CONSTRAINT strapi_release_actions_release_links_unique;
       public            postgres    false    257    257            �           2606    16666 $   strapi_releases strapi_releases_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.strapi_releases DROP CONSTRAINT strapi_releases_pkey;
       public            postgres    false    259            �           2606    16668 H   strapi_transfer_token_permissions strapi_transfer_token_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_pkey PRIMARY KEY (id);
 r   ALTER TABLE ONLY public.strapi_transfer_token_permissions DROP CONSTRAINT strapi_transfer_token_permissions_pkey;
       public            postgres    false    261            �           2606    16670 `   strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links DROP CONSTRAINT strapi_transfer_token_permissions_token_links_pkey;
       public            postgres    false    263            �           2606    16672 b   strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_unique UNIQUE (transfer_token_permission_id, transfer_token_id);
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links DROP CONSTRAINT strapi_transfer_token_permissions_token_links_unique;
       public            postgres    false    263    263            �           2606    16674 2   strapi_transfer_tokens strapi_transfer_tokens_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.strapi_transfer_tokens DROP CONSTRAINT strapi_transfer_tokens_pkey;
       public            postgres    false    265            �           2606    16676 $   strapi_webhooks strapi_webhooks_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.strapi_webhooks DROP CONSTRAINT strapi_webhooks_pkey;
       public            postgres    false    267            �           2606    16678 "   up_permissions up_permissions_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_pkey;
       public            postgres    false    269            �           2606    16680 8   up_permissions_role_links up_permissions_role_links_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_pkey;
       public            postgres    false    271            �           2606    16682 :   up_permissions_role_links up_permissions_role_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_unique UNIQUE (permission_id, role_id);
 d   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_unique;
       public            postgres    false    271    271            �           2606    16684    up_roles up_roles_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_pkey;
       public            postgres    false    273            �           2606    16686    up_users up_users_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_pkey;
       public            postgres    false    275            �           2606    16688 ,   up_users_role_links up_users_role_links_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_pkey;
       public            postgres    false    277            �           2606    16690 .   up_users_role_links up_users_role_links_unique 
   CONSTRAINT     u   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_unique UNIQUE (user_id, role_id);
 X   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_unique;
       public            postgres    false    277    277            �           2606    16692 <   upload_folders_parent_links upload_folders_parent_links_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_pkey;
       public            postgres    false    281            �           2606    16694 >   upload_folders_parent_links upload_folders_parent_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_unique UNIQUE (folder_id, inv_folder_id);
 h   ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_unique;
       public            postgres    false    281    281            �           2606    16696 +   upload_folders upload_folders_path_id_index 
   CONSTRAINT     i   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_id_index UNIQUE (path_id);
 U   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_path_id_index;
       public            postgres    false    279            �           2606    16698 (   upload_folders upload_folders_path_index 
   CONSTRAINT     c   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_index UNIQUE (path);
 R   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_path_index;
       public            postgres    false    279            �           2606    16700 "   upload_folders upload_folders_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_pkey;
       public            postgres    false    279            #           1259    16701 "   admin_permissions_created_by_id_fk    INDEX     i   CREATE INDEX admin_permissions_created_by_id_fk ON public.admin_permissions USING btree (created_by_id);
 6   DROP INDEX public.admin_permissions_created_by_id_fk;
       public            postgres    false    215            '           1259    16702    admin_permissions_role_links_fk    INDEX     q   CREATE INDEX admin_permissions_role_links_fk ON public.admin_permissions_role_links USING btree (permission_id);
 3   DROP INDEX public.admin_permissions_role_links_fk;
       public            postgres    false    217            (           1259    16703 #   admin_permissions_role_links_inv_fk    INDEX     o   CREATE INDEX admin_permissions_role_links_inv_fk ON public.admin_permissions_role_links USING btree (role_id);
 7   DROP INDEX public.admin_permissions_role_links_inv_fk;
       public            postgres    false    217            )           1259    16704 )   admin_permissions_role_links_order_inv_fk    INDEX     ~   CREATE INDEX admin_permissions_role_links_order_inv_fk ON public.admin_permissions_role_links USING btree (permission_order);
 =   DROP INDEX public.admin_permissions_role_links_order_inv_fk;
       public            postgres    false    217            &           1259    16705 "   admin_permissions_updated_by_id_fk    INDEX     i   CREATE INDEX admin_permissions_updated_by_id_fk ON public.admin_permissions USING btree (updated_by_id);
 6   DROP INDEX public.admin_permissions_updated_by_id_fk;
       public            postgres    false    215            .           1259    16706    admin_roles_created_by_id_fk    INDEX     ]   CREATE INDEX admin_roles_created_by_id_fk ON public.admin_roles USING btree (created_by_id);
 0   DROP INDEX public.admin_roles_created_by_id_fk;
       public            postgres    false    219            1           1259    16707    admin_roles_updated_by_id_fk    INDEX     ]   CREATE INDEX admin_roles_updated_by_id_fk ON public.admin_roles USING btree (updated_by_id);
 0   DROP INDEX public.admin_roles_updated_by_id_fk;
       public            postgres    false    219            2           1259    16708    admin_users_created_by_id_fk    INDEX     ]   CREATE INDEX admin_users_created_by_id_fk ON public.admin_users USING btree (created_by_id);
 0   DROP INDEX public.admin_users_created_by_id_fk;
       public            postgres    false    221            6           1259    16709    admin_users_roles_links_fk    INDEX     a   CREATE INDEX admin_users_roles_links_fk ON public.admin_users_roles_links USING btree (user_id);
 .   DROP INDEX public.admin_users_roles_links_fk;
       public            postgres    false    223            7           1259    16710    admin_users_roles_links_inv_fk    INDEX     e   CREATE INDEX admin_users_roles_links_inv_fk ON public.admin_users_roles_links USING btree (role_id);
 2   DROP INDEX public.admin_users_roles_links_inv_fk;
       public            postgres    false    223            8           1259    16711     admin_users_roles_links_order_fk    INDEX     j   CREATE INDEX admin_users_roles_links_order_fk ON public.admin_users_roles_links USING btree (role_order);
 4   DROP INDEX public.admin_users_roles_links_order_fk;
       public            postgres    false    223            9           1259    16712 $   admin_users_roles_links_order_inv_fk    INDEX     n   CREATE INDEX admin_users_roles_links_order_inv_fk ON public.admin_users_roles_links USING btree (user_order);
 8   DROP INDEX public.admin_users_roles_links_order_inv_fk;
       public            postgres    false    223            5           1259    16713    admin_users_updated_by_id_fk    INDEX     ]   CREATE INDEX admin_users_updated_by_id_fk ON public.admin_users USING btree (updated_by_id);
 0   DROP INDEX public.admin_users_updated_by_id_fk;
       public            postgres    false    221            >           1259    16714    categories_created_by_id_fk    INDEX     [   CREATE INDEX categories_created_by_id_fk ON public.categories USING btree (created_by_id);
 /   DROP INDEX public.categories_created_by_id_fk;
       public            postgres    false    225            C           1259    16715    categories_updated_by_id_fk    INDEX     [   CREATE INDEX categories_updated_by_id_fk ON public.categories USING btree (updated_by_id);
 /   DROP INDEX public.categories_updated_by_id_fk;
       public            postgres    false    225            J           1259    16716    events_category_links_fk    INDEX     ^   CREATE INDEX events_category_links_fk ON public.events_category_links USING btree (event_id);
 ,   DROP INDEX public.events_category_links_fk;
       public            postgres    false    228            K           1259    16717    events_category_links_inv_fk    INDEX     e   CREATE INDEX events_category_links_inv_fk ON public.events_category_links USING btree (category_id);
 0   DROP INDEX public.events_category_links_inv_fk;
       public            postgres    false    228            L           1259    16718 "   events_category_links_order_inv_fk    INDEX     k   CREATE INDEX events_category_links_order_inv_fk ON public.events_category_links USING btree (event_order);
 6   DROP INDEX public.events_category_links_order_inv_fk;
       public            postgres    false    228            D           1259    16719    events_created_by_id_fk    INDEX     S   CREATE INDEX events_created_by_id_fk ON public.events USING btree (created_by_id);
 +   DROP INDEX public.events_created_by_id_fk;
       public            postgres    false    227            I           1259    16720    events_updated_by_id_fk    INDEX     S   CREATE INDEX events_updated_by_id_fk ON public.events USING btree (updated_by_id);
 +   DROP INDEX public.events_updated_by_id_fk;
       public            postgres    false    227            Q           1259    16721    files_created_by_id_fk    INDEX     Q   CREATE INDEX files_created_by_id_fk ON public.files USING btree (created_by_id);
 *   DROP INDEX public.files_created_by_id_fk;
       public            postgres    false    231            [           1259    16722    files_folder_links_fk    INDEX     W   CREATE INDEX files_folder_links_fk ON public.files_folder_links USING btree (file_id);
 )   DROP INDEX public.files_folder_links_fk;
       public            postgres    false    232            \           1259    16723    files_folder_links_inv_fk    INDEX     ]   CREATE INDEX files_folder_links_inv_fk ON public.files_folder_links USING btree (folder_id);
 -   DROP INDEX public.files_folder_links_inv_fk;
       public            postgres    false    232            ]           1259    16724    files_folder_links_order_inv_fk    INDEX     d   CREATE INDEX files_folder_links_order_inv_fk ON public.files_folder_links USING btree (file_order);
 3   DROP INDEX public.files_folder_links_order_inv_fk;
       public            postgres    false    232            b           1259    16725    files_related_morphs_fk    INDEX     [   CREATE INDEX files_related_morphs_fk ON public.files_related_morphs USING btree (file_id);
 +   DROP INDEX public.files_related_morphs_fk;
       public            postgres    false    235            c           1259    16726 $   files_related_morphs_id_column_index    INDEX     k   CREATE INDEX files_related_morphs_id_column_index ON public.files_related_morphs USING btree (related_id);
 8   DROP INDEX public.files_related_morphs_id_column_index;
       public            postgres    false    235            d           1259    16727     files_related_morphs_order_index    INDEX     d   CREATE INDEX files_related_morphs_order_index ON public.files_related_morphs USING btree ("order");
 4   DROP INDEX public.files_related_morphs_order_index;
       public            postgres    false    235            T           1259    16728    files_updated_by_id_fk    INDEX     Q   CREATE INDEX files_updated_by_id_fk ON public.files USING btree (updated_by_id);
 *   DROP INDEX public.files_updated_by_id_fk;
       public            postgres    false    231            g           1259    16729    i18n_locale_created_by_id_fk    INDEX     ]   CREATE INDEX i18n_locale_created_by_id_fk ON public.i18n_locale USING btree (created_by_id);
 0   DROP INDEX public.i18n_locale_created_by_id_fk;
       public            postgres    false    237            j           1259    16730    i18n_locale_updated_by_id_fk    INDEX     ]   CREATE INDEX i18n_locale_updated_by_id_fk ON public.i18n_locale USING btree (updated_by_id);
 0   DROP INDEX public.i18n_locale_updated_by_id_fk;
       public            postgres    false    237            �           1259    17087    pastorals_created_by_id_fk    INDEX     Y   CREATE INDEX pastorals_created_by_id_fk ON public.pastorals USING btree (created_by_id);
 .   DROP INDEX public.pastorals_created_by_id_fk;
       public            postgres    false    284            �           1259    17088    pastorals_updated_by_id_fk    INDEX     Y   CREATE INDEX pastorals_updated_by_id_fk ON public.pastorals USING btree (updated_by_id);
 .   DROP INDEX public.pastorals_updated_by_id_fk;
       public            postgres    false    284            q           1259    16731    posts_category_links_fk    INDEX     [   CREATE INDEX posts_category_links_fk ON public.posts_category_links USING btree (post_id);
 +   DROP INDEX public.posts_category_links_fk;
       public            postgres    false    240            r           1259    16732    posts_category_links_inv_fk    INDEX     c   CREATE INDEX posts_category_links_inv_fk ON public.posts_category_links USING btree (category_id);
 /   DROP INDEX public.posts_category_links_inv_fk;
       public            postgres    false    240            s           1259    16733 !   posts_category_links_order_inv_fk    INDEX     h   CREATE INDEX posts_category_links_order_inv_fk ON public.posts_category_links USING btree (post_order);
 5   DROP INDEX public.posts_category_links_order_inv_fk;
       public            postgres    false    240            k           1259    16734    posts_created_by_id_fk    INDEX     Q   CREATE INDEX posts_created_by_id_fk ON public.posts USING btree (created_by_id);
 *   DROP INDEX public.posts_created_by_id_fk;
       public            postgres    false    239            p           1259    16735    posts_updated_by_id_fk    INDEX     Q   CREATE INDEX posts_updated_by_id_fk ON public.posts USING btree (updated_by_id);
 *   DROP INDEX public.posts_updated_by_id_fk;
       public            postgres    false    239            �           1259    17098    slugs_created_by_id_fk    INDEX     Q   CREATE INDEX slugs_created_by_id_fk ON public.slugs USING btree (created_by_id);
 *   DROP INDEX public.slugs_created_by_id_fk;
       public            postgres    false    286            �           1259    17099    slugs_updated_by_id_fk    INDEX     Q   CREATE INDEX slugs_updated_by_id_fk ON public.slugs USING btree (updated_by_id);
 *   DROP INDEX public.slugs_updated_by_id_fk;
       public            postgres    false    286            x           1259    16736 -   strapi_api_token_permissions_created_by_id_fk    INDEX        CREATE INDEX strapi_api_token_permissions_created_by_id_fk ON public.strapi_api_token_permissions USING btree (created_by_id);
 A   DROP INDEX public.strapi_api_token_permissions_created_by_id_fk;
       public            postgres    false    243            |           1259    16737 +   strapi_api_token_permissions_token_links_fk    INDEX     �   CREATE INDEX strapi_api_token_permissions_token_links_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_permission_id);
 ?   DROP INDEX public.strapi_api_token_permissions_token_links_fk;
       public            postgres    false    245            }           1259    16738 /   strapi_api_token_permissions_token_links_inv_fk    INDEX     �   CREATE INDEX strapi_api_token_permissions_token_links_inv_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_id);
 C   DROP INDEX public.strapi_api_token_permissions_token_links_inv_fk;
       public            postgres    false    245            ~           1259    16739 5   strapi_api_token_permissions_token_links_order_inv_fk    INDEX     �   CREATE INDEX strapi_api_token_permissions_token_links_order_inv_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_permission_order);
 I   DROP INDEX public.strapi_api_token_permissions_token_links_order_inv_fk;
       public            postgres    false    245            {           1259    16740 -   strapi_api_token_permissions_updated_by_id_fk    INDEX        CREATE INDEX strapi_api_token_permissions_updated_by_id_fk ON public.strapi_api_token_permissions USING btree (updated_by_id);
 A   DROP INDEX public.strapi_api_token_permissions_updated_by_id_fk;
       public            postgres    false    243            �           1259    16741 "   strapi_api_tokens_created_by_id_fk    INDEX     i   CREATE INDEX strapi_api_tokens_created_by_id_fk ON public.strapi_api_tokens USING btree (created_by_id);
 6   DROP INDEX public.strapi_api_tokens_created_by_id_fk;
       public            postgres    false    247            �           1259    16742 "   strapi_api_tokens_updated_by_id_fk    INDEX     i   CREATE INDEX strapi_api_tokens_updated_by_id_fk ON public.strapi_api_tokens USING btree (updated_by_id);
 6   DROP INDEX public.strapi_api_tokens_updated_by_id_fk;
       public            postgres    false    247            �           1259    16743 '   strapi_release_actions_created_by_id_fk    INDEX     s   CREATE INDEX strapi_release_actions_created_by_id_fk ON public.strapi_release_actions USING btree (created_by_id);
 ;   DROP INDEX public.strapi_release_actions_created_by_id_fk;
       public            postgres    false    255            �           1259    16744 '   strapi_release_actions_release_links_fk    INDEX     �   CREATE INDEX strapi_release_actions_release_links_fk ON public.strapi_release_actions_release_links USING btree (release_action_id);
 ;   DROP INDEX public.strapi_release_actions_release_links_fk;
       public            postgres    false    257            �           1259    16745 +   strapi_release_actions_release_links_inv_fk    INDEX     �   CREATE INDEX strapi_release_actions_release_links_inv_fk ON public.strapi_release_actions_release_links USING btree (release_id);
 ?   DROP INDEX public.strapi_release_actions_release_links_inv_fk;
       public            postgres    false    257            �           1259    16746 1   strapi_release_actions_release_links_order_inv_fk    INDEX     �   CREATE INDEX strapi_release_actions_release_links_order_inv_fk ON public.strapi_release_actions_release_links USING btree (release_action_order);
 E   DROP INDEX public.strapi_release_actions_release_links_order_inv_fk;
       public            postgres    false    257            �           1259    16747 '   strapi_release_actions_updated_by_id_fk    INDEX     s   CREATE INDEX strapi_release_actions_updated_by_id_fk ON public.strapi_release_actions USING btree (updated_by_id);
 ;   DROP INDEX public.strapi_release_actions_updated_by_id_fk;
       public            postgres    false    255            �           1259    16748     strapi_releases_created_by_id_fk    INDEX     e   CREATE INDEX strapi_releases_created_by_id_fk ON public.strapi_releases USING btree (created_by_id);
 4   DROP INDEX public.strapi_releases_created_by_id_fk;
       public            postgres    false    259            �           1259    16749     strapi_releases_updated_by_id_fk    INDEX     e   CREATE INDEX strapi_releases_updated_by_id_fk ON public.strapi_releases USING btree (updated_by_id);
 4   DROP INDEX public.strapi_releases_updated_by_id_fk;
       public            postgres    false    259            �           1259    16750 2   strapi_transfer_token_permissions_created_by_id_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_created_by_id_fk ON public.strapi_transfer_token_permissions USING btree (created_by_id);
 F   DROP INDEX public.strapi_transfer_token_permissions_created_by_id_fk;
       public            postgres    false    261            �           1259    16751 0   strapi_transfer_token_permissions_token_links_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_token_links_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_permission_id);
 D   DROP INDEX public.strapi_transfer_token_permissions_token_links_fk;
       public            postgres    false    263            �           1259    16752 4   strapi_transfer_token_permissions_token_links_inv_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_token_links_inv_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_id);
 H   DROP INDEX public.strapi_transfer_token_permissions_token_links_inv_fk;
       public            postgres    false    263            �           1259    16753 :   strapi_transfer_token_permissions_token_links_order_inv_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_token_links_order_inv_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_permission_order);
 N   DROP INDEX public.strapi_transfer_token_permissions_token_links_order_inv_fk;
       public            postgres    false    263            �           1259    16754 2   strapi_transfer_token_permissions_updated_by_id_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_updated_by_id_fk ON public.strapi_transfer_token_permissions USING btree (updated_by_id);
 F   DROP INDEX public.strapi_transfer_token_permissions_updated_by_id_fk;
       public            postgres    false    261            �           1259    16755 '   strapi_transfer_tokens_created_by_id_fk    INDEX     s   CREATE INDEX strapi_transfer_tokens_created_by_id_fk ON public.strapi_transfer_tokens USING btree (created_by_id);
 ;   DROP INDEX public.strapi_transfer_tokens_created_by_id_fk;
       public            postgres    false    265            �           1259    16756 '   strapi_transfer_tokens_updated_by_id_fk    INDEX     s   CREATE INDEX strapi_transfer_tokens_updated_by_id_fk ON public.strapi_transfer_tokens USING btree (updated_by_id);
 ;   DROP INDEX public.strapi_transfer_tokens_updated_by_id_fk;
       public            postgres    false    265            �           1259    16757    up_permissions_created_by_id_fk    INDEX     c   CREATE INDEX up_permissions_created_by_id_fk ON public.up_permissions USING btree (created_by_id);
 3   DROP INDEX public.up_permissions_created_by_id_fk;
       public            postgres    false    269            �           1259    16758    up_permissions_role_links_fk    INDEX     k   CREATE INDEX up_permissions_role_links_fk ON public.up_permissions_role_links USING btree (permission_id);
 0   DROP INDEX public.up_permissions_role_links_fk;
       public            postgres    false    271            �           1259    16759     up_permissions_role_links_inv_fk    INDEX     i   CREATE INDEX up_permissions_role_links_inv_fk ON public.up_permissions_role_links USING btree (role_id);
 4   DROP INDEX public.up_permissions_role_links_inv_fk;
       public            postgres    false    271            �           1259    16760 &   up_permissions_role_links_order_inv_fk    INDEX     x   CREATE INDEX up_permissions_role_links_order_inv_fk ON public.up_permissions_role_links USING btree (permission_order);
 :   DROP INDEX public.up_permissions_role_links_order_inv_fk;
       public            postgres    false    271            �           1259    16761    up_permissions_updated_by_id_fk    INDEX     c   CREATE INDEX up_permissions_updated_by_id_fk ON public.up_permissions USING btree (updated_by_id);
 3   DROP INDEX public.up_permissions_updated_by_id_fk;
       public            postgres    false    269            �           1259    16762    up_roles_created_by_id_fk    INDEX     W   CREATE INDEX up_roles_created_by_id_fk ON public.up_roles USING btree (created_by_id);
 -   DROP INDEX public.up_roles_created_by_id_fk;
       public            postgres    false    273            �           1259    16763    up_roles_updated_by_id_fk    INDEX     W   CREATE INDEX up_roles_updated_by_id_fk ON public.up_roles USING btree (updated_by_id);
 -   DROP INDEX public.up_roles_updated_by_id_fk;
       public            postgres    false    273            �           1259    16764    up_users_created_by_id_fk    INDEX     W   CREATE INDEX up_users_created_by_id_fk ON public.up_users USING btree (created_by_id);
 -   DROP INDEX public.up_users_created_by_id_fk;
       public            postgres    false    275            �           1259    16765    up_users_role_links_fk    INDEX     Y   CREATE INDEX up_users_role_links_fk ON public.up_users_role_links USING btree (user_id);
 *   DROP INDEX public.up_users_role_links_fk;
       public            postgres    false    277            �           1259    16766    up_users_role_links_inv_fk    INDEX     ]   CREATE INDEX up_users_role_links_inv_fk ON public.up_users_role_links USING btree (role_id);
 .   DROP INDEX public.up_users_role_links_inv_fk;
       public            postgres    false    277            �           1259    16767     up_users_role_links_order_inv_fk    INDEX     f   CREATE INDEX up_users_role_links_order_inv_fk ON public.up_users_role_links USING btree (user_order);
 4   DROP INDEX public.up_users_role_links_order_inv_fk;
       public            postgres    false    277            �           1259    16768    up_users_updated_by_id_fk    INDEX     W   CREATE INDEX up_users_updated_by_id_fk ON public.up_users USING btree (updated_by_id);
 -   DROP INDEX public.up_users_updated_by_id_fk;
       public            postgres    false    275            U           1259    16769    upload_files_created_at_index    INDEX     U   CREATE INDEX upload_files_created_at_index ON public.files USING btree (created_at);
 1   DROP INDEX public.upload_files_created_at_index;
       public            postgres    false    231            V           1259    16770    upload_files_ext_index    INDEX     G   CREATE INDEX upload_files_ext_index ON public.files USING btree (ext);
 *   DROP INDEX public.upload_files_ext_index;
       public            postgres    false    231            W           1259    16771    upload_files_folder_path_index    INDEX     W   CREATE INDEX upload_files_folder_path_index ON public.files USING btree (folder_path);
 2   DROP INDEX public.upload_files_folder_path_index;
       public            postgres    false    231            X           1259    16772    upload_files_name_index    INDEX     I   CREATE INDEX upload_files_name_index ON public.files USING btree (name);
 +   DROP INDEX public.upload_files_name_index;
       public            postgres    false    231            Y           1259    16773    upload_files_size_index    INDEX     I   CREATE INDEX upload_files_size_index ON public.files USING btree (size);
 +   DROP INDEX public.upload_files_size_index;
       public            postgres    false    231            Z           1259    16774    upload_files_updated_at_index    INDEX     U   CREATE INDEX upload_files_updated_at_index ON public.files USING btree (updated_at);
 1   DROP INDEX public.upload_files_updated_at_index;
       public            postgres    false    231            �           1259    16775    upload_folders_created_by_id_fk    INDEX     c   CREATE INDEX upload_folders_created_by_id_fk ON public.upload_folders USING btree (created_by_id);
 3   DROP INDEX public.upload_folders_created_by_id_fk;
       public            postgres    false    279            �           1259    16776    upload_folders_parent_links_fk    INDEX     k   CREATE INDEX upload_folders_parent_links_fk ON public.upload_folders_parent_links USING btree (folder_id);
 2   DROP INDEX public.upload_folders_parent_links_fk;
       public            postgres    false    281            �           1259    16777 "   upload_folders_parent_links_inv_fk    INDEX     s   CREATE INDEX upload_folders_parent_links_inv_fk ON public.upload_folders_parent_links USING btree (inv_folder_id);
 6   DROP INDEX public.upload_folders_parent_links_inv_fk;
       public            postgres    false    281            �           1259    16778 (   upload_folders_parent_links_order_inv_fk    INDEX     x   CREATE INDEX upload_folders_parent_links_order_inv_fk ON public.upload_folders_parent_links USING btree (folder_order);
 <   DROP INDEX public.upload_folders_parent_links_order_inv_fk;
       public            postgres    false    281            �           1259    16779    upload_folders_updated_by_id_fk    INDEX     c   CREATE INDEX upload_folders_updated_by_id_fk ON public.upload_folders USING btree (updated_by_id);
 3   DROP INDEX public.upload_folders_updated_by_id_fk;
       public            postgres    false    279            �           2606    16780 4   admin_permissions admin_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_created_by_id_fk;
       public          postgres    false    221    215    4916            �           2606    16785 <   admin_permissions_role_links admin_permissions_role_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;
 f   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_fk;
       public          postgres    false    4901    217    215            �           2606    16790 @   admin_permissions_role_links admin_permissions_role_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;
 j   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_inv_fk;
       public          postgres    false    4912    217    219            �           2606    16795 4   admin_permissions admin_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_updated_by_id_fk;
       public          postgres    false    4916    215    221            �           2606    16800 (   admin_roles admin_roles_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_created_by_id_fk;
       public          postgres    false    4916    219    221            �           2606    16805 (   admin_roles admin_roles_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_updated_by_id_fk;
       public          postgres    false    4916    219    221            �           2606    16810 (   admin_users admin_users_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_created_by_id_fk;
       public          postgres    false    4916    221    221            �           2606    16815 2   admin_users_roles_links admin_users_roles_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_fk FOREIGN KEY (user_id) REFERENCES public.admin_users(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_fk;
       public          postgres    false    4916    223    221            �           2606    16820 6   admin_users_roles_links admin_users_roles_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_inv_fk;
       public          postgres    false    219    223    4912            �           2606    16825 (   admin_users admin_users_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_updated_by_id_fk;
       public          postgres    false    221    4916    221            �           2606    16830 &   categories categories_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 P   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_created_by_id_fk;
       public          postgres    false    221    225    4916            �           2606    16835 &   categories categories_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 P   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_updated_by_id_fk;
       public          postgres    false    4916    225    221            �           2606    16840 .   events_category_links events_category_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.events_category_links
    ADD CONSTRAINT events_category_links_fk FOREIGN KEY (event_id) REFERENCES public.events(id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.events_category_links DROP CONSTRAINT events_category_links_fk;
       public          postgres    false    4934    228    227            �           2606    16845 2   events_category_links events_category_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.events_category_links
    ADD CONSTRAINT events_category_links_inv_fk FOREIGN KEY (category_id) REFERENCES public.categories(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.events_category_links DROP CONSTRAINT events_category_links_inv_fk;
       public          postgres    false    4928    228    225            �           2606    16850    events events_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 H   ALTER TABLE ONLY public.events DROP CONSTRAINT events_created_by_id_fk;
       public          postgres    false    4916    227    221            �           2606    16855    events events_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 H   ALTER TABLE ONLY public.events DROP CONSTRAINT events_updated_by_id_fk;
       public          postgres    false    4916    227    221            �           2606    16860    files files_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.files DROP CONSTRAINT files_created_by_id_fk;
       public          postgres    false    4916    231    221            �           2606    16865 (   files_folder_links files_folder_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_fk;
       public          postgres    false    4947    232    231            �           2606    16870 ,   files_folder_links files_folder_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_inv_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_inv_fk;
       public          postgres    false    279    232    5069            �           2606    16875 ,   files_related_morphs files_related_morphs_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.files_related_morphs DROP CONSTRAINT files_related_morphs_fk;
       public          postgres    false    235    231    4947            �           2606    16880    files files_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.files DROP CONSTRAINT files_updated_by_id_fk;
       public          postgres    false    221    4916    231            �           2606    16885 (   i18n_locale i18n_locale_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_created_by_id_fk;
       public          postgres    false    237    4916    221            �           2606    16890 (   i18n_locale i18n_locale_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_updated_by_id_fk;
       public          postgres    false    221    4916    237                       2606    17100 $   pastorals pastorals_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.pastorals
    ADD CONSTRAINT pastorals_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 N   ALTER TABLE ONLY public.pastorals DROP CONSTRAINT pastorals_created_by_id_fk;
       public          postgres    false    284    4916    221                       2606    17105 $   pastorals pastorals_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.pastorals
    ADD CONSTRAINT pastorals_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 N   ALTER TABLE ONLY public.pastorals DROP CONSTRAINT pastorals_updated_by_id_fk;
       public          postgres    false    221    4916    284            �           2606    16895 ,   posts_category_links posts_category_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.posts_category_links
    ADD CONSTRAINT posts_category_links_fk FOREIGN KEY (post_id) REFERENCES public.posts(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.posts_category_links DROP CONSTRAINT posts_category_links_fk;
       public          postgres    false    4973    240    239            �           2606    16900 0   posts_category_links posts_category_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.posts_category_links
    ADD CONSTRAINT posts_category_links_inv_fk FOREIGN KEY (category_id) REFERENCES public.categories(id) ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public.posts_category_links DROP CONSTRAINT posts_category_links_inv_fk;
       public          postgres    false    4928    240    225            �           2606    16905    posts posts_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.posts DROP CONSTRAINT posts_created_by_id_fk;
       public          postgres    false    4916    239    221            �           2606    16910    posts posts_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.posts DROP CONSTRAINT posts_updated_by_id_fk;
       public          postgres    false    4916    239    221                       2606    17110    slugs slugs_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.slugs
    ADD CONSTRAINT slugs_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.slugs DROP CONSTRAINT slugs_created_by_id_fk;
       public          postgres    false    221    286    4916                       2606    17115    slugs slugs_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.slugs
    ADD CONSTRAINT slugs_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.slugs DROP CONSTRAINT slugs_updated_by_id_fk;
       public          postgres    false    286    221    4916            �           2606    16915 J   strapi_api_token_permissions strapi_api_token_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 t   ALTER TABLE ONLY public.strapi_api_token_permissions DROP CONSTRAINT strapi_api_token_permissions_created_by_id_fk;
       public          postgres    false    221    4916    243            �           2606    16920 T   strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_fk FOREIGN KEY (api_token_permission_id) REFERENCES public.strapi_api_token_permissions(id) ON DELETE CASCADE;
 ~   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT strapi_api_token_permissions_token_links_fk;
       public          postgres    false    243    245    4986            �           2606    16925 X   strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_inv_fk FOREIGN KEY (api_token_id) REFERENCES public.strapi_api_tokens(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT strapi_api_token_permissions_token_links_inv_fk;
       public          postgres    false    247    245    4997            �           2606    16930 J   strapi_api_token_permissions strapi_api_token_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 t   ALTER TABLE ONLY public.strapi_api_token_permissions DROP CONSTRAINT strapi_api_token_permissions_updated_by_id_fk;
       public          postgres    false    221    243    4916            �           2606    16935 4   strapi_api_tokens strapi_api_tokens_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_created_by_id_fk;
       public          postgres    false    4916    221    247                        2606    16940 4   strapi_api_tokens strapi_api_tokens_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_updated_by_id_fk;
       public          postgres    false    221    247    4916                       2606    16945 >   strapi_release_actions strapi_release_actions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 h   ALTER TABLE ONLY public.strapi_release_actions DROP CONSTRAINT strapi_release_actions_created_by_id_fk;
       public          postgres    false    255    4916    221                       2606    16950 L   strapi_release_actions_release_links strapi_release_actions_release_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_release_actions_release_links
    ADD CONSTRAINT strapi_release_actions_release_links_fk FOREIGN KEY (release_action_id) REFERENCES public.strapi_release_actions(id) ON DELETE CASCADE;
 v   ALTER TABLE ONLY public.strapi_release_actions_release_links DROP CONSTRAINT strapi_release_actions_release_links_fk;
       public          postgres    false    255    5007    257                       2606    16955 P   strapi_release_actions_release_links strapi_release_actions_release_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_release_actions_release_links
    ADD CONSTRAINT strapi_release_actions_release_links_inv_fk FOREIGN KEY (release_id) REFERENCES public.strapi_releases(id) ON DELETE CASCADE;
 z   ALTER TABLE ONLY public.strapi_release_actions_release_links DROP CONSTRAINT strapi_release_actions_release_links_inv_fk;
       public          postgres    false    5018    257    259                       2606    16960 >   strapi_release_actions strapi_release_actions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 h   ALTER TABLE ONLY public.strapi_release_actions DROP CONSTRAINT strapi_release_actions_updated_by_id_fk;
       public          postgres    false    4916    255    221                       2606    16965 0   strapi_releases strapi_releases_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 Z   ALTER TABLE ONLY public.strapi_releases DROP CONSTRAINT strapi_releases_created_by_id_fk;
       public          postgres    false    4916    259    221                       2606    16970 0   strapi_releases strapi_releases_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 Z   ALTER TABLE ONLY public.strapi_releases DROP CONSTRAINT strapi_releases_updated_by_id_fk;
       public          postgres    false    4916    259    221                       2606    16975 T   strapi_transfer_token_permissions strapi_transfer_token_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ~   ALTER TABLE ONLY public.strapi_transfer_token_permissions DROP CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk;
       public          postgres    false    4916    261    221            	           2606    16980 ^   strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_fk    FK CONSTRAINT        ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_fk FOREIGN KEY (transfer_token_permission_id) REFERENCES public.strapi_transfer_token_permissions(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links DROP CONSTRAINT strapi_transfer_token_permissions_token_links_fk;
       public          postgres    false    5022    263    261            
           2606    16985 b   strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_inv_fk FOREIGN KEY (transfer_token_id) REFERENCES public.strapi_transfer_tokens(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links DROP CONSTRAINT strapi_transfer_token_permissions_token_links_inv_fk;
       public          postgres    false    5033    263    265                       2606    16990 T   strapi_transfer_token_permissions strapi_transfer_token_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ~   ALTER TABLE ONLY public.strapi_transfer_token_permissions DROP CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk;
       public          postgres    false    4916    261    221                       2606    16995 >   strapi_transfer_tokens strapi_transfer_tokens_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 h   ALTER TABLE ONLY public.strapi_transfer_tokens DROP CONSTRAINT strapi_transfer_tokens_created_by_id_fk;
       public          postgres    false    265    221    4916                       2606    17000 >   strapi_transfer_tokens strapi_transfer_tokens_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 h   ALTER TABLE ONLY public.strapi_transfer_tokens DROP CONSTRAINT strapi_transfer_tokens_updated_by_id_fk;
       public          postgres    false    265    4916    221                       2606    17005 .   up_permissions up_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_created_by_id_fk;
       public          postgres    false    221    269    4916                       2606    17010 6   up_permissions_role_links up_permissions_role_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.up_permissions(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_fk;
       public          postgres    false    269    5039    271                       2606    17015 :   up_permissions_role_links up_permissions_role_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;
 d   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_inv_fk;
       public          postgres    false    5050    271    273                       2606    17020 .   up_permissions up_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_updated_by_id_fk;
       public          postgres    false    221    269    4916                       2606    17025 "   up_roles up_roles_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_created_by_id_fk;
       public          postgres    false    4916    273    221                       2606    17030 "   up_roles up_roles_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_updated_by_id_fk;
       public          postgres    false    221    273    4916                       2606    17035 "   up_users up_users_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_created_by_id_fk;
       public          postgres    false    221    275    4916                       2606    17040 *   up_users_role_links up_users_role_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_fk;
       public          postgres    false    277    275    5054                       2606    17045 .   up_users_role_links up_users_role_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_inv_fk;
       public          postgres    false    5050    277    273                       2606    17050 "   up_users up_users_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_updated_by_id_fk;
       public          postgres    false    275    221    4916                       2606    17055 .   upload_folders upload_folders_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_created_by_id_fk;
       public          postgres    false    221    279    4916                       2606    17060 :   upload_folders_parent_links upload_folders_parent_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;
 d   ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_fk;
       public          postgres    false    279    281    5069                       2606    17065 >   upload_folders_parent_links upload_folders_parent_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_inv_fk FOREIGN KEY (inv_folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;
 h   ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_inv_fk;
       public          postgres    false    281    279    5069                       2606    17070 .   upload_folders upload_folders_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_updated_by_id_fk;
       public          postgres    false    4916    279    221            �   1  x��ZMs�8='�"��B�~���63�h�l0��$�����Ȗ�jӌ������$�ZO��F2�;TϏe�eχ�ɋ��yq�㿻/����w4�|�m��b��<T����_>��y�]S/�[�})��2� ~b`s���t�E�a�^&|
ρ�χ��@P4���A����BB5��mU�O�����#Y0�&/��e�=�L�n ��OD�VG%�O鍎R�O$ƚ
��dSN7Bn6Z
,��(��NK��I]���⇩�u�o�y�?�6�����0N�ϧ�m�=�v_v]�ԃ�r�c��U�m������^o�x��}^V���6/e����0�צ-�s����i���']�h�v�������V5���c�Tz��B���J���pu�;�ë���bY���~k) Op�	�,E�+��NDP��$`"]Y?Vzۿt�v����*��JH�k�J��D�,yx��~�%�����dJ[�o�s�L,�QK7j_�!n�=�U1Y�� �r��&r,�h�{?Lf���n	.vd�p#jp��>Q*�������*JnLnn�������͢L��:u�5����a
5�N���Y5��͎�-Cze�4�8�[I.n�ۗ�x�9����2�E&����[.��5�T\��7��bW��~�U��np��QlX%i���|�
�q���z�6������
N�HP	�WBr�5/^�z����Z�J~Sbj'v���F2m�+LIT]b^i��H�O6�`t�b�]��9	F�j#�z��9�Ǯ�_��ٝ}�������H y��.����w�<᷊Xz��pq�u,2�[d�����N@�Gr;�
p��6W.��v�B��'yz�q
�.u��yX��@?��~H���H}U���m`���yT���60;�RX��ep���E*�Hx�n���X�I�i��}��rۛ�a���t�-G��&��6z���D�>���*7�Ѕz]�@l�t2����Z���u�[`pz'I����Ό�W��m��w���D���d n�yx[0�e�ڷy�}�m����)��TR@� Σ�?������9��~'��s-���I�c���F"�HR�[@/�|3�"��G��2{7]��9�| i�XF�(����pK�BĻA�Ǧ}��C8�	�@�];�'���(���;7�t�ck�@ɠ}��Lg~����Sۋ��wMm��4�]j��+�}�S ��.�}��V#��6s���/���=�w�t��'��	�˾��^��1�fBOЋn�M��LRj�gBE�3$�+�3oD����p���qf�ɓ/�99���M�?�;Rp�	1!A�q�wܪ���2�,�O��4S��B3�dBDl���q��K��M�y�cĤ?yy��.}�#���w}��U��A�۵��\�`1i@s:j�X�kQZ�8� �G���.��݌��K�Ϝ%��=y���.����G;�{T���&�R�ɷC����G���[�k.Aܥ���f��:g��]��=r�G|�����_Vም򽚟���0cW���R�+ s�O �D����" 7�      �   �  x��ۍ!�����s ��?���i5M(���a�CZrN��B[sn���g�p\����c%��Jf�s-��s^�b��Tʎ���L��5���T�!���.�p5{6Z� ��B�6/�������B|y#��H>�g!�HnF,�H�(�?$�#Z$w-Z8�,wO<��-9��E!yf�E#yl�� yr�Ň:V��E�D�����œ-ū-�V{����-�Y����V�堞�h����hy�<k��y͢�A��D+G��hh� Z%z���(�g-Z5�Z�V�~֢Շ96����>E���L������1e#Z�mD��P>Ѻ0��
B#��h=�g#ZxeO+���M�;t�0���SA�����I.�9B.��u=	*�r��.(�K_��p��]/�"�,YS.3�d]��Ȕ��2#W֗�Xc�^	w��\�)c֚�>��zs٨�Ys�7������0؁�Y;�=k�c�gz�����I      �   �   x�u�1n�0Eg���Yv�"[��]�fa%&�H�H��+W	�8���d�Ny�w�A�$\|�+j��Y3X��3`ppÀW�g�JNT9��W��fl����a�w{=v;=n��g�fP�,SLO�S���-��A(���a��BR�!�o�M^�::/�x�S����c��5{��>�9�r1�L/�[�̔�~b^�L_X�t����t���}�      �     x�}�]O�0���_���Ӯ�]��P>��h�)t�Ύ�X��W����IN�99ϋ���䨗�D��F�1��l�E���J.������j��Ю����>�-F�q.���.����x�ҝ-vM��^��㾫b/�8��|L��i �^h{���a����c���5Z��NO��kq�G����&v�t���|��ɭ|�e<����&�g�;Y���ظ]����Y�r�a-Q|pH���cE7�0�(%	 �U����G�~@�y��~�!�)�,�r�yǩs�      �      x�3�4�@.#N�b���� &��      �   �   x�u�1� @g8�(�@������5!�bj�Bơ��b�1&���?_����?^m�[�v9ʊ�
���` �B,9r�����6(p�c����'9����w
�O. k;��(��j�����삳��4�d�z���-��
�4�Y~UK&���9qHkH��c���.�p�4w��w�}r�QJ_�Kfk      �   H  x���n�F���S���(۱�[��@�&p4�\F˕�����m��z�#����I)M�&lK6w�;�����F7z��鯧?�Lt�ol#���k����=�/y��oBt�_��-�.��j�8O�D�V�)g�VQ��kә��ݑnL,�6�-fgM��ɵi��X�s�P�ԺF�htI�}��HQ7M
�0�3L�v��-1-�+�#�ڸ��q���s�tMpP��n�2�pA�Tj�� f,h�g�і��Y�����2�;#m�O�6�ѶN��Zj�7J������[�Ӊo��Ø��9�p�z�âd��!;� �b4
b����rI7��&��-$وb�;�J[>�6�M^��ާ��B>E/[DD�I3�G��c/A�<����9��\�:��^7�&��ɪAB�-{M	oGc����f2m�}m44���+��#AS�p���DTBz���s!i��� ������B~b��$�ǻZ�������|L�=���Ίwz��ZS~���]BX��ɾB�o���G�h�E��_�(y���&W�9�\�lS1����Ű��������L-�(�q�رwM�K	H|�:Y*G[9��1���0���N�o��B$6��:{��>����RD�`�L��)���1��s�Jm-�p>���袎���m제��9�.����U�3�5��E�[B+
%�yȻ^���v�t4C��I� ��c�ai�kA/��̰�~?H� Kq?=E[�(7Ԍ�CS�Foe�ɋWCf�����]�9�����C7�o��Y�fs���R�dy�o'�2nӢ97��ז��ru^,ϋj��zVTWT���닫�:�z�z�/u �bW�\�̝"w��;�#�t�2u�W��t4(����v�͚n-B}F�=E�D�]H������&^M��x5�����X^��K��gg�ry��u���)�ȜB�H}-L�� �=r�׳�� �phz]��u������]N9zc����j���	V�^0�*������uY]=]`e�9rdba�����d��rzI��U���;�wύ��pꭓןDSy�?-�3NY^����&RM��H5��Œ�Z��T��UU^T����B�m��U �^6�j�0���W�l<2�To�t�����(�t'=��T͟\�=�-�ߦ�HQ�X�&bMĚ��b��\��X����ճׅX��	�z��)G��SlO�Sp���0�q�μZ��!���?	d���"=��M���]F�Z�[����[�d�p�gX�&tM�����U�Vu��.�˳�g����=�D���	T�,�<���������?����?�U:      �   4   x���4�44�4���҆ ��
p��F�P�oF\1z\\\ ��      �   �  x��\Ys�J}&��ʳ����|g�,��d2��nUW�dl������� �KH����&��c8�[ ��<wn��;�������~��j����.�Y�*;���$��2g%?�3�=�V�]�4_���^�u�ļ�Y^s`�ue�.�-����˔��rb�����ח����L�_��i�fի��TF���'N������%�e�<v}�`��Fn�4 �_ϒ���e��u��-h�6G�@���Β�M �*M�OU�A|��Ǉd��/t]�	�'�����i>��4�!���Qǉz�%
���Q^�'�I�S�g�*�!j�I3�t0�S�E��D F��Ǖ���f�Ms�H]WO6cL�8i=`]�B��m�.m�����R��j�r��"���xUf��д�Y�|��B."��7�!� 2q	���8���-���g���鿼�Z��xUV����Pp���y'����"ˊY1��gTB�Mi���]��f,�	�qu=bg��L����4�#���2M�w��:MR�LA v��MR�Η���+� ?�'.��ʸ�*�{D<�FÉ����*'fٲ��9O�%w.?�>�~�܏��旹�,ʚ�)��F�k���,NҤJ��~�4{R	Y�sq̞%�J�V䱈E���e��DJ7��M��AX���@�h�G�e
{�3wʣ���'+�J�^���sc�p�Ѹ4����q���n� ��
�Z~1��x�N2��}ݮ@z>��)�TS�� U�f$j������h�Ύ����!#�x� ⊫����h��� $�u%ߪ��yH�Y�%��S�^��݂ݝ�};z]4ͣ*�m�w��y,�x�U,?��e�/�4ev1K
���5ϖµR^����>H�[zA7!ҳxˌ�1fs6��� UY둣o��@ؽ���S��PdƐ�F���r�	#m$��5�/�]bʝ>��_2���3
��w�blB�Z	_ �3[@ф@�����Z$�ڹaS^ݰ�ˏw)S����*ٴ�/5�кB�M3;�{,��r��G;�XA ���nMP�WP��*����:u�3�i��;�"���6| u��M�M���0-Y0$"��� �	��2��"m��aD݋�Y����R� S� 
���iS)F�� ���N��A���� >�܉�@�7 �5-Wy�Y��x�ܕL|�F����^�/���?�U�T��d�d��l�c2�y�j��<�y��N���5�y�j����6W��E���\���5fM�TDLEĴ����XЫ��}=���)�Ǯ;�!��h�3~�����^�ģ��Pc!+#�Ho�1��p�s�1�D!p��򳚖D��d$F��&#c�����{u��D�dvm(r��Kx���4��g�2���G����b)�*����4-r��,ο:�[ߍ�˫:���U��X�C6_����O���i��yY�Mi�k� �޳�>�G�5}KE���+��ۖ�B�|�r=,Y�Q r�R�v3�q��q84����18��29R3�F`�v3���_���pF�i�!�O�iF��]����˻>�ڌ>�E�l�^0l��O����
Y3�'<u���ϳ�3�nyJ�Ӿ���,��Ί��n߮��h��￶Y=�K�7=/O,ka�k5��h�����3H�-����vםO�
���eY;�bl�R� ,`#1�LF�>�8C>𺊷S�`-�0&MG�.�h���eɣ�j�1yP*�`Fa ��۴��ߝ�D(B��h�"W��h���������+|N�8s�W�`������->;���`�!�,��rfOS�h�кHW� v��rIhak���E���Qы��&��V���J ���q���I����A�\Vѥ"_H��l���s#<�
/=����1!,݇w�{����#޴����۳?�@n��0P�}w�D"#�ʤU~,>�U~A���֌�E�߲,ɝuq��>|>K���I;&�3�����fʱٽ[�<����j�0F��!ҩ���
����D��&�-�1tx��A�� ��S�g��ݪb�N2�KD�0����@���֑!az(�ٿe����$�m�1k��������%�kU>&�j����H(�����J4���{&�ğ x(�$��%V�)τM^��}�P^��ۻ���Y	q�>ta�T����߰��%{|�z���P��Q��6����w�3�PR}{��"��؃��{��_GV��;�
O�u�@���Ț�!m��4�<s޴�����9�o��61s�L�T,���^����R?�_h޽�=��V@�v�'8 BZk��ۢ�q�r�������}�#�v�з��E�3;YV�$�iQ>��N��+׼�4�f�2��$_�|3'\+�\O�%����_��&4��F�ѫ�-)s��g1���*��G�Q7��I�㏜�Yӄ��C֠��M:Ґ٘6]y�0$N���}^bԱ�1}PJaH"A7A�;IV>������P��GKP�5��c<���hS:��:�c�̅5	Mwؼ�Z��﮿��A,Ѩ=	��}��jס��P��ZR�Km�p6�0�9
���j��c&��3�������
�!e�;�z���)e�0�"oHZ���o��r���������bo	��n@QG�u�����{"���o������X��9�8bAz����;�B��A�l~�m��Q�휢?	
u|Q�sy)��o��<���ry3��P�3y3��e����cH�&�BoFF�Qɸ�C���Բxû������Qw���A7�W���Ƈ"���eC�[��,q�7,s����ݒ���v�7y|��!�x�9Kh�}S���T�A__�o���!�y(���
 ��~쬇u������Ӏ#e Y	��G�=�ܭnzn��:��bk�$nbr��[fRm����@��{.p���^mVzG���# vf��4Pd<q�&�&�?x�U��*�*�N�ʝ�?7ٛ��׳p�&�Bz,������T�AK�,B����zF��6#�9�a�����!�����P#��ΒQ�ٌ*Y�6�
5{Ɨh3��@��ڀ-��mT�6�LGE�Mn���W�����Q "�muB�H�!wK8x��m�6�ͻi��7�e����1�nO����~�O���ҋ4�%�+�Ǖh�=�b-*۞%!sOT@�@b��#�_Kr1|˹���x���9o�8�9�)o��-OK�3�$���r����<�"�׎2h��������s��onP?�]�oމ�z/�`��������S��í�����+�q;�i������:\�m���X�xB5/�����X�^P�KmO�C��Q��^��"+�R$��?5eLEV��C��i�HJoJ�&��ʛ��	��F��M��GR�w����D�ބ^5�]eC���ZPUf�	;�@8���F��/^��?W      �      x������ � �      �   �   x���ˊ�0E�7*��~�l�@iB��#�.��0�s��'%4���z]_������k}�&*��(`�7dD���|6'��@IB<��<�~|0���?��R 'PP�� ����.RW1.NfMҪ6��vs8I��-Rrz�,ɑ�|�����7EN��j1๗_�tHl��'��zpd�?
�:���<��r���#��K��$Ԫ���$���[q����@�5e_�4M�n�(a      �   r   x�3�t�K��,�P�H���L��4202�50�50Q04�20�20�315�)�D\F��E%�饩ũ
NE�U�9�
%�NA��`
a��������������	NqCNC�=... �$�      �   �  x�}T�n�@������a��+W�Ҭȕ|y�܃�5	R.Ri���2KROD���}��r�{���r��T��)��;�'N���$�~u@l�l�n@^6�|�8©>��3�@;��@��Wa2F��J�h*�s.��$��w%.�ƛ��h����goD�@������43\轧GZ��1m�/��ĳ�_�ԇ+��D$l��)B���0e�l�d��2Pt�9��n��w�sM���p<N�h2]-f��r���o�ޤ?=I��KS���0�`��#�v�:�g��{���ԑ��+��h�� ��7*��@A��-AU����cz�T�=��EʒK�;D��M�̭�K���[�D� �+S��!��e�C�K��>a/�a�B�3�c\�y��ޏ�����<�p��7�'��~�1T�VF�I]���(��&l�]'�q�-:]��H��?rHJ��Y�ə����T�i�t���̣���m�޴�H��s�U��Ja^Zd��^{�B,��Al��t��)��WR4+��r(!B���p�F0˙���o�f|��l5^����nyW%�'%>��l�B�Г��z�}�0�	0�5j����3P�y����Yu]�b�Ӄ���� HP��Vm/x��5.�#{]2�/�ŗ�\�2A�+��6ã?߬��um<�tT�L�nEt5M�ft? T���������>��+(h���:qz�~��h<����:�G�~�/J]&/      �   4  x��Kr�8���)� K���K9Iͤ2�L<�U6ٲ��\gVS��S�b�"%:��,?$� �����
.���ϜL��6�M0)kK{4�������|�]�����2��v�����%�����[(�D�崠ڻ�u����M���'�&U�6�G̽31�V7�e�0ѷ�[9Q�-�d��;y�f���(��9�՘�h���[��iqo��t"�_�'<��9~�L����x�35R�u�ۨ��F,�3���w\��uB�%7ęh�|"iښ-�&�Cj٦`jF(5[���G�y����p�8���4�:��Iə�CIdA�1l(���{L�+��Ao�侃$[C��Ms�N��AL�P�sE���(�Dc��H<9`Dw��=�	2D,#Q*菑�pk߶~�آ���eW��t`�x9���ia��04��у��t�L{�k�\�&�ҝ鴔{�cf�i ���;�?1�~T��S��GU���:,�
�Iv|��ZS}q_ܻ����P��+�~��,o�-���BF�QY�l�</���VL�����`�h�.�4�O��L%��ۜ�ZZ@����T�ڵ���� @)Ө�M6����Î��D3r�|�ۯ�v�*��e�̱��֔�.N��Z��|�"��>��F��{('�cpq��E2�W�ٚ��v'�J�CS�-���n��^�bꧻS>��y1�<�x���,�o1�����5�ø?�
2�RJ܏Ğ�*��=#{�aS��>�V� Y������z�H}�O���r���fчq�E���d�~���r\�E���{m5[/��j�R˳��Z]�j�9�ެ���ˋg���
u���:�k��
tԎ�(aN����F��=���o0iCc
� �'�����='HM�� 5Aj�ԋ��j���?��b�Y.��WW�^H�j�A�4�F�^	hT�ꫀf�Z�n�lq�V��o�Z�@"�pIBKEZ��s5��P�&BM����	�,�&����X�x�:]/�ꉣ�G=�Q�8�[ep8�B���-�l�X�����L���[��S(g*a��?��#�M����5Qk��D��K�g�U�W����Ь�.ԊB��鉟�G�=W�i
{���W�;X�%�{ͭǣf�� �⢆��[�0(��D�[&rM��5�k"׋%�R��#�V��euv����B�n��;c���u�QGaWQԙ�.�OZ��u�#Nfz'���b�{��i���T8kaV?k��	X�&`=�z]-_�t;^}�窺0G�F�Q0^!�r�P
',!��K5�Ͽ��t~      �   3   x�3�44�44�4�bC0��, $�L���2Q�@���)X%W�  _      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x��]�r�6���<EOW͟-�mٖ/]��*��*3^�e�;�帺�&Z͈M2$[��Rվƾ�>��N\�`7�n;������ 8|tT��$���FY=[EYt�J��"�Z�Q��Mi}W�j:��U�M�*WIU�
G�+T�IvU���/��ut���.��x�H���
E�|�>)p����ߧ�ǫ(����4O�ќ�0>�h���}^���9
ޔ1*q��������8�#�V��(Nj�/.L���6N�K��6���d���qC�qCL�PX��eR�zc��H�9Z�)c?�I�D�PRz�����9|�TVn^�:�q�u���J{���A����k�qQ4�m�a.�+A� p���!X���*�cL� ���Fޏ�2'ڜ��;󨛙K�`���#�E5��A�m
;1�g��*�}x]��צp^U�ƕ}����y�%b��U�����CS��wP����@t��kj<���i6�I�O�6����~��S0ՏQo���ӱY��
i�3P�-#�^�EP����'2�	�#&��唝��_���y��"�
����`�~�(�F���N�^��2;y�F��!c_޴�m��!8��{ٿ�CYA�μ��U]�h��0�S�{~	n)!�u��8	���N���6O��~�X���`XC��48V�U�	7(1�Ɠ]�FT$'u~������zt"N���,r�~�9��"Р5��D��>��QU�\�N)�Y��W��+AC�")QzS8Ę�Խ$Y���@� ���x�~� f;��=(uV� &�"U�(��T�9@C��[�T!��,��j(h� �J�i�س^P�I؍<��H6�T�{���_|Y�e�vr��4�赙�8�nΐd�M��t�P�QV-P�!α}�#�B,!�B,!ீ�>O,�q=���q{�`���qk�@K��tg��g���A�A,x�/&��4ছx���`m��u��Q<�f?�<� BD�9Óv�.�o��2��ì>�LX�~��AN�F]��I\/!Y�
�>�-Qr�睗��$���"/WQF6D�<6���˨��>da�!th�P����6����q�>�1o	ܚ#��2�{�2!~<g���E>t���0J�0���o�x鐕t�P���L �6��JCr���g �WȌ�����S���|H���a\�B>���Z9��ۣ��2B`�N�^`5]�e�EA"p�U�5�(TP't�R`> B�bS ��� �����4_�~��Xs�{66��A7�vD�5�A��1(!�qa���O1��X� PH���ĲsHK��~do^~o��q	oȲ=1���7���QZ�/��;�#� ��P��2�� .}��4�܄v���� �Vc��˲�� ��.`�~ ����N�����DA�j�D��;w�y���nC��@�Ԛ��l��ʜϷ@:*��iT�6�IP��@-�J�eO*,Ww��.� �E����x#���pDH�y,�!9�\'"�aT$�+u]&�����t ��9�C��oL �+�]�J�3��A�~]'%��ف2�q��Tt�6��8�$�A��M����c�'�ڝ?=��N�>������|�҈���x]ew��Q���3��!�uT^�zl\?7�)�ث:a�L�`@��5Z�3$�4�!��]w[&���4̸�?�$��*er���R�9�Ce�y�d�66�]�q�7�\0p�ΩR$<��(�`]sQ��FK U��2ĥK��;���{Q�\��e�����<�uF54n=�G�P���ns+�i��٤�3%�o�m�4��,�u���V�BN�I���'}O���'�B������˚5��%���n�2V���:v98 �@,�P��ws!΅�#v�E�*!K��}O��9��+4/slw"��o�d�3@�V崓Kf�?�O�n
e-�mt�
�6�11��i>�Fq�^�h��켊���f�{�,���*���a�^Ц`M���1X&qL~J�Vgg(\lp���\����}�ո��k�������yU��m���[F��#9�a���jF_Pԍ�;{�|��ԭ�n���%"�r���<r{�d)�6���{�m1� j��n�w�"3�_��B �{8l�A�9
��6G�C��6C�F��!��v+�������J�:���B^l�T��m�,��Q%g�����H���Q�t�D^c����+T
A'����'y�)_���R ·��|E�Yx�]�wC��H:�� Bk%=[������t�aS���_>6D�(�\��yy�~=5e�XV%X�jt��6������V0����Efw� k�v��3" �=�pҴy�������ը�	"���V��T��Wt�HY}��h���;��Cb�?t�ϫ�=���Χ��2�����pF��5�h��WpAz�+C��R[�-������ןI��}�p:��Cbsg��l0�������Y��� mn�{B�� �{⼭Q��G7��?mR�b�ZWBn~�rh�吙d<��Cb�g�4>h���}�����AA�"�N�X����n"~!��R*K�x�D;_fȾ$l���Vm�I"�e��ϳ���2MH�Z	���ז yU;�� 6EƗ���:4�oHp���]��&����
��ǚ�at̜?����]Y���Oww:�����	P�`�R��Jչ2�d�9����1��ͨ�����yq
�pM�e#]�_ހy���:�S?y泦J[2_�,�}@����Do@��V(NH>����h	Ei�ߢ��@EsD�0&��$ق�	�����hih�O��v�1��>���as��
Z�z�V���m����n|�x�8>!p^���:�<�t�}�Q��H�fv%���[�i��5އhӚ!��[@��9(67���@�@�[te�6u����]y�Xwez}�\Yv2�t=�I�R��71d����r��^�S���X��ٱ1I�pjJ0Sqf���x�V'}\x���!�!���������Y�mP� D%����M^��HϽ�%L�ʇ)yw�����ۍ[���Uܮ+��Ca���Ի9�6�v}���{[�+~��
|_�gN��2E9�k^K���T����o�iaaL���8�@��N�#�X i���=��FB�/*/3*3&3�����b�UFQ�RL����i�|uB�ǧo���ԏe��ԏyѡu�(+	Q��Ӌ6�b�����>�pH�!��g�!��5��l]kB+C�!{��8?�gԲKK9�QN��h��b�u�.���M:<����w-[��Z�F �g)�_�"�|G��y)Wwʡ)�6��Ww���B�H�II�R��l_
0��W1PyQR��@W���lx�m��˲�=��ҝ �� !J�n��b<l(�P5῀:����n�D��MC#�.�����gQWK��۹]�w�:m�A�����i^G�Z�zw�6"�"�=֖9�rvNU����kǗ�v�,�H��Rz�f��86����~a��F�n#v����y�X�wT��YG��?�R.��"ľC�Y�fbJ6�Z3��ʝ4d@���և��L7H}�Y$�Y�I8f����1��0+r�c�6Fй��p��[�YC�B���zIF㿢4QW �3:�m�}��`Q�E�\�7'���N�^��]~#����y6i&ȡh���`�i5�X7E�ν��9s�YCd�����[K�o�l�JMpgŦ�;�s ������e�U��g��[�|&�+����������CSj�ɆTj�=�R�%m�;OR[b$=�́$?2���r�l�OaM��UK
�����W4A�}�ݭ���2��N�Y��t#ōT�<8�!ӎoZ�C}��P��H���W��������rؘc�{k�]��OH���Oe��	���<Wz8l��J��	f�K1;=D=����l�tp��CQ��[��p���j��
���~��st��۱��hUT�&���?��;�خ%����F�i�s���]DUu��j�[>����z^�*T �  ��T/D�`��.��v�b
Q���#h+@��'�8Ű=�}�v�*�t�l
Ѥitkk�2�c�[�W�V��jL��ݠZ� ��z��qkc�����o�[�=�$2��n"��xg	#Z��Pz��MtEk�Y�y�Zѫ㽯>�d;4�%�֮n�K(����Vqn�ݭA/��%���纅{����~�_����������#�x�����IQ#��R���t�H�+T�X�]��k&g�W.��@}�zO~ew��^�?}H�#I&�sa�Z�QI�>/k~m,{S������=��N�cG�P��)$����1�.QJf�@��
�m�&S���ГTt���a���25y ��E�)}�<��}X%��sq*ˆ`T!�ç��M>e�|*�}��(�dR���9�}�Sa�ɡ���gR!��'�M��Z�x�~d#�`?~�q��C�ښ�~��@/aw��IENuހ�'ˆ���X����5�bf7u�CM4ʼ3k��,A���3�nn-�?�m/�Q�*Q�*�b�v�u�!v'>�k	��p�S�{�9uQc�9Y8�*���V.�q���Tg^]��=޴���CS��wP������k�Q���Ƞ���%ͧc����~�����'Cm����G-��l+a
�PEVC���'Z[iq�����A�D�Frki�lsq�x�ő�N���&y��\2A{Y/5��LTX�ۛHҾ�-�	-��./�<�˓J-�Ha��]c,�!���^'�W�H�
zA��W~Q�h\�'߿�]&�]���]��W����s�u��L��!8���0,��,N�?�����T?h�L��}:�H�v�V�Z�~� y�
o�λ�ꎐ�?�k����'���u�a��ձ0�VS��8V�Z�����\��G��v�tH���}�~���jv,��b��a���6��C|��*N�n:��-�!4*uV�����x:�����
BP��G�f�I��������[��Z:�	m��|���A�����6ƒ�C����H�k����N�+X�����l��eC�k`eckLY� �)H��˂,*I/��O��g�m�M,��OlR7��%��ԩ xʰ��0����6�ʍ���YMT�hT�s�
��{!&�r��j�树J��h7@<E��uC�ʵnc8�s�qC��^[��ނ*�;�s�zJf�,�R>�yv��
�%�~�ŭi�~r3a��a���?�q44�YĊ��Ⱥn┧;�%ep�D�G����G<��vCp1��l^"sUi?(�\Es/N�&�<�����lc�$��*���`/X���k�����?��ʢu��)�x3:}ntJ>�;ܽn�ɨ��:��%1��g�+���]�QVc�ͩ��̒�2�̩���9��I5�&De.;���q<�FwL�*�y���x���h~ME� ��o�@����
8���I�r���2ϯ[�UN�_�Q���#���4L\��_�,�
zf-6�����e[��B�~i�_�Ä�3mxX%�2��E���m���mՅI��ʄ|>��P�&u͏���M���
5���ʪ���N��d#��Ί2�_	&/|�&�7�]z��$�d��c;_v�����S2����Iv�~��ҁ�䣜�I�Ęc�>��Dq��{Eٚ�WYR�-\En��֗qN\*�su7�N����/�e�HN�QߩJK�b�|�
.Vk%u�k�b��'<��[>la�o�N��
��	Z;Ɖvr#GG�:Js��q�F]L���ZXq�n�B� �Dy��w�Sk��c��G��'<D&�xr�=5����3B��~��}���w4��͜c��م��:Mq�U����x�D��Vo�n�B9<�1g�yN��
��KRgR���F����.����V�2�֞��s�2K��m��T
���I����?؇'IξqG!!��j��vc�B��HMňM�0����_h��:�˨a�<J��R�6�^×w���hZ�/�>(������i|���y���������1�y���`�h���4�^�jD���Gt��~��*&��_�6�������;�#_����������2ʮ�	y6���g����y�˹�/�\�t����9�#62�f��9��E^�J�x���!3��nsN��:�w��d��}�r�&��~2kt��+��h4��i8���Û_�O��y�ܚ�7Q6G1V>�U�_������� b�I�L=fV�n�+�I)r��Z��&;RJ]�cs�,��Cg�æ���(K<��U~���M񟓂f]F$�}2;}?����� ����z�x��$&�V=ƫ�%J��X�N?����0^�-[OO'ϟ�G�YH��겵��ϟ�X<>{�`���'�昿�._]�L��|�cР)vz)5%A8j��ڃm�R~��R����I�ޛ�|�Z�n��
�~���<�Y��
/#�7�7�=V0���XdZi�w��K8P*�������u�����ě�c�C`?�C`ߵw,<���AQ}i��ku������Pl�N�)<���q�RPi�Ą���;�F��DB�砠��	�' ��x�	�' ��x�P��d_�G'������y"~	g����p/Zг7d�p,z�s�T:A�yɾؖ����x�����l�өDi� ��X
��]�C�<�u��q�{�2����[��ӻ��� �xv6z�ht�h�o��c���_�և�-.O��>|���ٳ��O�L�]�mJ�=�e�N�/�e�x���z��8�Ԩ-��C7o�}����Q��Lt��+s w���v/�7�8�n�Z�\�H��w̇{�m�ŧ+m/�l�am�8?�D�����}e��~O�0��=���/)k�5L�ϓo����G�      �   -
  x��]�s�6����׎��q�LڇN3yi��f��s@A�q:���/!$�Ź;=ıa���v�B_Ww��s(Z8u����	�;�NJ׋즔�Ĕ�p�:+��>���?��M��l�?�s����lv�?/E�c�{�%x�CZpBɶ$��GɳsO���?s��o9_oPЏ�sfA�r~�)t��ea��}�~��[Tx�Yt�k�W��?ɝq�DA��{'��-{4_ X>�$
��C��<�O-�?��.���j��ݐ%�F����Iڈ��F�ڨ�>V}& ,[��� �Ь�"OB7�ɞ�)�®ݎ���u"�}w����<8m�v:o�@7�}��ۜ���L�r��	=�,ۯb���)5��5\ʢQ�+0-�����>����c���U�n�y4oH*%�1J�),H���3�@�Z�D�]Q�!��E�Oh`B*D��*܀�6���ǯ~q�=R��s�z����S�y/�D�Z.I�'sڜ9鰶@���_��h�a3�K��lX��>�hT�BɆ$)��g/��hx�H �P�>E�)#�)�n-ɥ�M%�%Ű�%��H���c��	)� �@�휅a��(�fhj�6�8��"�,L+�̴��a6���>�Ш��Б؋|P�>N�����l��������{F�w@��CN��x���p<����4��ڐ��4u��&�1qab/���KL���*�NcԲ�5��>�m�=�p;=a'*a,�L��|��l'�$�4�䞅�3���g��.!3���΅�>;à7K��nV���Nd8b�v�`���I�1�x1��r�`���T;��������傶QBsƕ�,$���z7��{x�������-��QW+H ԭ�!�Y�i��ڑ��n������3FYKZT�
�"jU���h��:�;#���kwrj�c���V�a�l<���{�1*�s�dr!�@��2����`*6h�4+i#�{�(aq��1�Rٴ����7���nV�n����ꕳxm3z	l$ �2��*���UP��(�q�ƈ�\Fۅ����}J��:�j�k��ǮesR���qk������␒�\�s99�T��-�mX���mȹ�WC�ȫQ�3���3(�Ů�b��[�\� ���R=?G9��ܗ��]jGAE�~�G��^�P���`C��i�"4�L���Q���\]H�؃ �H�.&z$>�p�S���d�.|���V�^g�̖&2���J�}^^Y�jr�z48*qt(�L��MX{lLe�s��La�T���>*27�����+Ɠ�iQ:�m�G4w5�����z�-��[������:���#�v�ς�V��5
aǫ�,�aɆ%a�-�}HE���P�:���Uz�.���F����s�ر+!�u�������`���+�<��(hw���6Νr�#WoB�`����"Ўhm��^��K��g���ZЧ�Z<<e<����
�43f@�!��쌀=a@�	�f��L����2{��F�@eϡ?�3���6X�=m�\)V����f/��g�5bB�=�۷�Xy�7|yQ�!Ţ�En���a�O�K��e��)G�b/��,l�Jҕ�66Ǫ�蔪z��(�v�������,��%c�ox�{��H� ���_b  Y�lH�8`�^�0����g�0��
��6�p�m�bD�'�5�5� �;���wo�|���ߤ@�UZ��_yJ}�x�7,0l��P��rȍ�u0��E���I��p�����eհfX�3�|�r.���[�(�Lx�dJ�B�B�k9}� � �b�5fw���2p���k*xtޫU>��l���J���f�s���.Wl�����`���q\�j1���;K�&n�#�Ak���ѡ�ՂAd����hN8}��,tʱ�h�����^�Y�y�*�ʊ'~]%���q��q�g��Kx1�욵�8:��s�]&��_Nآ�\_���&�"��,�Q��_�g�)<h<(��2  ��8Е"�AM��]�p���4_Q��uEG�1-�s�v��i&$jT�K��r��;'�;<��
bppg*��x�e-�3(L��ZS)�g}.�*��l����c��IB�Dy:i�6񹏒x7�<ʁ�D}7��}qp���;�<�ݲ�GM;��C�F�>Tn|T�SW�+s�7H�^�!8 ]��T�B
�!���w���UE0]��4f�b#�8l�s�|:7Pi�P2�����h��:M�B
!`�t�.c��<
H:��ϒ�3eN\�hu\��ʙ�-)8)yO�f�B8��>:/�Y�n�MB�������{�.W�P���YrW�T:�x5TsՑ1=y$�9X=��E��Ao:exț�Lм�����!Gru3/ �c������Qr����<d�b�s0��{\�������(�Gk���RG���.򞹯]_��R��y��dPv��n��k���G�)�a+�����i��]��۫���/����W��׷�����������7��|��]��ۛ��������f������秋�����      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   g  x����N�0��q� �㧧�S�vRY��%m�x�v�#�:4!��$��
p�5}-c��&�0��Vje�9�ء�$�IJb�YJYJ .��|���ȼw'P������C���l�M�ʫ���x1|��R�ry���ڭ>�pKj�B[.���Ҵ��{ˊP����<TdD-�f���}+��j ��N2�i����(��bX2�1�R����[س[�l�*�D��'�\̇D�/���,�#����a�q'��k4?�?M'�K|�l�2N�j�e���p�����Fhx��{`8�G��� @�R<b�66�������i�p��1D�f�`�O~��|D�:�>w�(���ˏ      �   b   x�%���0��0�L!�t�9
TB��!qzqa�7���Ec�r�8ËjC�cQ������N%Ԧ`A9�JP�C��}?i%kߥ��'���-�      �   �   x�3�t,-�H�+�LN,IM�tIMK,�)Q(��IUH�,K�S(�WHDV�PZ�Z�ǉ"�id`d�k`�k`�`hle`je`�gl�K8����8J�r2�qXZ���������-��LͬL���-��6��qqq ��D�      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     