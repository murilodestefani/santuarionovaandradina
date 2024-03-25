PGDMP      (                |            santuariodb    16.2    16.2 �   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    17324    santuariodb    DATABASE     �   CREATE DATABASE santuariodb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE santuariodb;
                postgres    false            �            1259    17325    admin_permissions    TABLE     g  CREATE TABLE public.admin_permissions (
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
       public         heap    postgres    false            �            1259    17330    admin_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.admin_permissions_id_seq;
       public          postgres    false    215            �           0    0    admin_permissions_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.admin_permissions_id_seq OWNED BY public.admin_permissions.id;
          public          postgres    false    216            �            1259    17331    admin_permissions_role_links    TABLE     �   CREATE TABLE public.admin_permissions_role_links (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_order double precision
);
 0   DROP TABLE public.admin_permissions_role_links;
       public         heap    postgres    false            �            1259    17334 #   admin_permissions_role_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_permissions_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.admin_permissions_role_links_id_seq;
       public          postgres    false    217            �           0    0 #   admin_permissions_role_links_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.admin_permissions_role_links_id_seq OWNED BY public.admin_permissions_role_links.id;
          public          postgres    false    218            �            1259    17335    admin_roles    TABLE     ;  CREATE TABLE public.admin_roles (
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
       public         heap    postgres    false            �            1259    17340    admin_roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.admin_roles_id_seq;
       public          postgres    false    219            �           0    0    admin_roles_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.admin_roles_id_seq OWNED BY public.admin_roles.id;
          public          postgres    false    220            �            1259    17341    admin_users    TABLE     B  CREATE TABLE public.admin_users (
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
       public         heap    postgres    false            �            1259    17346    admin_users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.admin_users_id_seq;
       public          postgres    false    221            �           0    0    admin_users_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.admin_users_id_seq OWNED BY public.admin_users.id;
          public          postgres    false    222            �            1259    17347    admin_users_roles_links    TABLE     �   CREATE TABLE public.admin_users_roles_links (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    role_order double precision,
    user_order double precision
);
 +   DROP TABLE public.admin_users_roles_links;
       public         heap    postgres    false            �            1259    17350    admin_users_roles_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_users_roles_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.admin_users_roles_links_id_seq;
       public          postgres    false    223                        0    0    admin_users_roles_links_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.admin_users_roles_links_id_seq OWNED BY public.admin_users_roles_links.id;
          public          postgres    false    224            �            1259    17351 
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
       public         heap    postgres    false            �            1259    17356    categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.categories_id_seq;
       public          postgres    false    225                       0    0    categories_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;
          public          postgres    false    226            �            1259    17357    events    TABLE     0  CREATE TABLE public.events (
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
       public         heap    postgres    false            �            1259    17362    events_category_links    TABLE     �   CREATE TABLE public.events_category_links (
    id integer NOT NULL,
    event_id integer,
    category_id integer,
    event_order double precision
);
 )   DROP TABLE public.events_category_links;
       public         heap    postgres    false            �            1259    17365    events_category_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.events_category_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.events_category_links_id_seq;
       public          postgres    false    228                       0    0    events_category_links_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.events_category_links_id_seq OWNED BY public.events_category_links.id;
          public          postgres    false    229            �            1259    17366    events_id_seq    SEQUENCE     �   CREATE SEQUENCE public.events_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.events_id_seq;
       public          postgres    false    227                       0    0    events_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.events_id_seq OWNED BY public.events.id;
          public          postgres    false    230            �            1259    17367    files    TABLE     �  CREATE TABLE public.files (
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
       public         heap    postgres    false            �            1259    17372    files_folder_links    TABLE     �   CREATE TABLE public.files_folder_links (
    id integer NOT NULL,
    file_id integer,
    folder_id integer,
    file_order double precision
);
 &   DROP TABLE public.files_folder_links;
       public         heap    postgres    false            �            1259    17375    files_folder_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.files_folder_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.files_folder_links_id_seq;
       public          postgres    false    232                       0    0    files_folder_links_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.files_folder_links_id_seq OWNED BY public.files_folder_links.id;
          public          postgres    false    233            �            1259    17376    files_id_seq    SEQUENCE     �   CREATE SEQUENCE public.files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.files_id_seq;
       public          postgres    false    231                       0    0    files_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.files_id_seq OWNED BY public.files.id;
          public          postgres    false    234            �            1259    17377    files_related_morphs    TABLE     �   CREATE TABLE public.files_related_morphs (
    id integer NOT NULL,
    file_id integer,
    related_id integer,
    related_type character varying(255),
    field character varying(255),
    "order" double precision
);
 (   DROP TABLE public.files_related_morphs;
       public         heap    postgres    false            �            1259    17382    files_related_morphs_id_seq    SEQUENCE     �   CREATE SEQUENCE public.files_related_morphs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.files_related_morphs_id_seq;
       public          postgres    false    235                       0    0    files_related_morphs_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.files_related_morphs_id_seq OWNED BY public.files_related_morphs.id;
          public          postgres    false    236            �            1259    17383    i18n_locale    TABLE       CREATE TABLE public.i18n_locale (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.i18n_locale;
       public         heap    postgres    false            �            1259    17388    i18n_locale_id_seq    SEQUENCE     �   CREATE SEQUENCE public.i18n_locale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.i18n_locale_id_seq;
       public          postgres    false    237                       0    0    i18n_locale_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.i18n_locale_id_seq OWNED BY public.i18n_locale.id;
          public          postgres    false    238            �            1259    17389 	   pastorals    TABLE     (  CREATE TABLE public.pastorals (
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
       public         heap    postgres    false            �            1259    17394    pastorals_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pastorals_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.pastorals_id_seq;
       public          postgres    false    239                       0    0    pastorals_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.pastorals_id_seq OWNED BY public.pastorals.id;
          public          postgres    false    240            �            1259    17395    posts    TABLE     /  CREATE TABLE public.posts (
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
       public         heap    postgres    false            �            1259    17400    posts_category_links    TABLE     �   CREATE TABLE public.posts_category_links (
    id integer NOT NULL,
    post_id integer,
    category_id integer,
    post_order double precision
);
 (   DROP TABLE public.posts_category_links;
       public         heap    postgres    false            �            1259    17403    posts_category_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.posts_category_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.posts_category_links_id_seq;
       public          postgres    false    242            	           0    0    posts_category_links_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.posts_category_links_id_seq OWNED BY public.posts_category_links.id;
          public          postgres    false    243            �            1259    17404    posts_id_seq    SEQUENCE     �   CREATE SEQUENCE public.posts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.posts_id_seq;
       public          postgres    false    241            
           0    0    posts_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.posts_id_seq OWNED BY public.posts.id;
          public          postgres    false    244            �            1259    17405    slugs    TABLE     �   CREATE TABLE public.slugs (
    id integer NOT NULL,
    slug text,
    count integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.slugs;
       public         heap    postgres    false            �            1259    17410    slugs_id_seq    SEQUENCE     �   CREATE SEQUENCE public.slugs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.slugs_id_seq;
       public          postgres    false    245                       0    0    slugs_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.slugs_id_seq OWNED BY public.slugs.id;
          public          postgres    false    246            �            1259    17411    strapi_api_token_permissions    TABLE       CREATE TABLE public.strapi_api_token_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 0   DROP TABLE public.strapi_api_token_permissions;
       public         heap    postgres    false            �            1259    17414 #   strapi_api_token_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_api_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.strapi_api_token_permissions_id_seq;
       public          postgres    false    247                       0    0 #   strapi_api_token_permissions_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.strapi_api_token_permissions_id_seq OWNED BY public.strapi_api_token_permissions.id;
          public          postgres    false    248            �            1259    17415 (   strapi_api_token_permissions_token_links    TABLE     �   CREATE TABLE public.strapi_api_token_permissions_token_links (
    id integer NOT NULL,
    api_token_permission_id integer,
    api_token_id integer,
    api_token_permission_order double precision
);
 <   DROP TABLE public.strapi_api_token_permissions_token_links;
       public         heap    postgres    false            �            1259    17418 /   strapi_api_token_permissions_token_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_api_token_permissions_token_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE public.strapi_api_token_permissions_token_links_id_seq;
       public          postgres    false    249                       0    0 /   strapi_api_token_permissions_token_links_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.strapi_api_token_permissions_token_links_id_seq OWNED BY public.strapi_api_token_permissions_token_links.id;
          public          postgres    false    250            �            1259    17419    strapi_api_tokens    TABLE     �  CREATE TABLE public.strapi_api_tokens (
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
       public         heap    postgres    false            �            1259    17424    strapi_api_tokens_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_api_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.strapi_api_tokens_id_seq;
       public          postgres    false    251                       0    0    strapi_api_tokens_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNED BY public.strapi_api_tokens.id;
          public          postgres    false    252            �            1259    17425    strapi_core_store_settings    TABLE     �   CREATE TABLE public.strapi_core_store_settings (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);
 .   DROP TABLE public.strapi_core_store_settings;
       public         heap    postgres    false            �            1259    17430 !   strapi_core_store_settings_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_core_store_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.strapi_core_store_settings_id_seq;
       public          postgres    false    253                       0    0 !   strapi_core_store_settings_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNED BY public.strapi_core_store_settings.id;
          public          postgres    false    254            �            1259    17431    strapi_database_schema    TABLE     �   CREATE TABLE public.strapi_database_schema (
    id integer NOT NULL,
    schema json,
    "time" timestamp without time zone,
    hash character varying(255)
);
 *   DROP TABLE public.strapi_database_schema;
       public         heap    postgres    false                        1259    17436    strapi_database_schema_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_database_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.strapi_database_schema_id_seq;
       public          postgres    false    255                       0    0    strapi_database_schema_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.strapi_database_schema_id_seq OWNED BY public.strapi_database_schema.id;
          public          postgres    false    256                       1259    17437    strapi_migrations    TABLE     �   CREATE TABLE public.strapi_migrations (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);
 %   DROP TABLE public.strapi_migrations;
       public         heap    postgres    false                       1259    17440    strapi_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.strapi_migrations_id_seq;
       public          postgres    false    257                       0    0    strapi_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.strapi_migrations_id_seq OWNED BY public.strapi_migrations.id;
          public          postgres    false    258                       1259    17441    strapi_release_actions    TABLE     �  CREATE TABLE public.strapi_release_actions (
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
       public         heap    postgres    false                       1259    17446    strapi_release_actions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_release_actions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.strapi_release_actions_id_seq;
       public          postgres    false    259                       0    0    strapi_release_actions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.strapi_release_actions_id_seq OWNED BY public.strapi_release_actions.id;
          public          postgres    false    260                       1259    17447 $   strapi_release_actions_release_links    TABLE     �   CREATE TABLE public.strapi_release_actions_release_links (
    id integer NOT NULL,
    release_action_id integer,
    release_id integer,
    release_action_order double precision
);
 8   DROP TABLE public.strapi_release_actions_release_links;
       public         heap    postgres    false                       1259    17450 +   strapi_release_actions_release_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_release_actions_release_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public.strapi_release_actions_release_links_id_seq;
       public          postgres    false    261                       0    0 +   strapi_release_actions_release_links_id_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public.strapi_release_actions_release_links_id_seq OWNED BY public.strapi_release_actions_release_links.id;
          public          postgres    false    262                       1259    17451    strapi_releases    TABLE     �  CREATE TABLE public.strapi_releases (
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
       public         heap    postgres    false                       1259    17456    strapi_releases_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_releases_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.strapi_releases_id_seq;
       public          postgres    false    263                       0    0    strapi_releases_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.strapi_releases_id_seq OWNED BY public.strapi_releases.id;
          public          postgres    false    264            	           1259    17457 !   strapi_transfer_token_permissions    TABLE     
  CREATE TABLE public.strapi_transfer_token_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 5   DROP TABLE public.strapi_transfer_token_permissions;
       public         heap    postgres    false            
           1259    17460 (   strapi_transfer_token_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_transfer_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.strapi_transfer_token_permissions_id_seq;
       public          postgres    false    265                       0    0 (   strapi_transfer_token_permissions_id_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public.strapi_transfer_token_permissions_id_seq OWNED BY public.strapi_transfer_token_permissions.id;
          public          postgres    false    266                       1259    17461 -   strapi_transfer_token_permissions_token_links    TABLE     �   CREATE TABLE public.strapi_transfer_token_permissions_token_links (
    id integer NOT NULL,
    transfer_token_permission_id integer,
    transfer_token_id integer,
    transfer_token_permission_order double precision
);
 A   DROP TABLE public.strapi_transfer_token_permissions_token_links;
       public         heap    postgres    false                       1259    17464 4   strapi_transfer_token_permissions_token_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 K   DROP SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq;
       public          postgres    false    267                       0    0 4   strapi_transfer_token_permissions_token_links_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq OWNED BY public.strapi_transfer_token_permissions_token_links.id;
          public          postgres    false    268                       1259    17465    strapi_transfer_tokens    TABLE     �  CREATE TABLE public.strapi_transfer_tokens (
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
       public         heap    postgres    false                       1259    17470    strapi_transfer_tokens_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_transfer_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.strapi_transfer_tokens_id_seq;
       public          postgres    false    269                       0    0    strapi_transfer_tokens_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.strapi_transfer_tokens_id_seq OWNED BY public.strapi_transfer_tokens.id;
          public          postgres    false    270                       1259    17471    strapi_webhooks    TABLE     �   CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);
 #   DROP TABLE public.strapi_webhooks;
       public         heap    postgres    false                       1259    17476    strapi_webhooks_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.strapi_webhooks_id_seq;
       public          postgres    false    271                       0    0    strapi_webhooks_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;
          public          postgres    false    272                       1259    17477    up_permissions    TABLE     �   CREATE TABLE public.up_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 "   DROP TABLE public.up_permissions;
       public         heap    postgres    false                       1259    17480    up_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.up_permissions_id_seq;
       public          postgres    false    273                       0    0    up_permissions_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.up_permissions_id_seq OWNED BY public.up_permissions.id;
          public          postgres    false    274                       1259    17481    up_permissions_role_links    TABLE     �   CREATE TABLE public.up_permissions_role_links (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_order double precision
);
 -   DROP TABLE public.up_permissions_role_links;
       public         heap    postgres    false                       1259    17484     up_permissions_role_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_permissions_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.up_permissions_role_links_id_seq;
       public          postgres    false    275                       0    0     up_permissions_role_links_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.up_permissions_role_links_id_seq OWNED BY public.up_permissions_role_links.id;
          public          postgres    false    276                       1259    17485    up_roles    TABLE     8  CREATE TABLE public.up_roles (
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
       public         heap    postgres    false                       1259    17490    up_roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.up_roles_id_seq;
       public          postgres    false    277                       0    0    up_roles_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.up_roles_id_seq OWNED BY public.up_roles.id;
          public          postgres    false    278                       1259    17491    up_users    TABLE     �  CREATE TABLE public.up_users (
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
       public         heap    postgres    false                       1259    17496    up_users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.up_users_id_seq;
       public          postgres    false    279                       0    0    up_users_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.up_users_id_seq OWNED BY public.up_users.id;
          public          postgres    false    280                       1259    17497    up_users_role_links    TABLE     �   CREATE TABLE public.up_users_role_links (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    user_order double precision
);
 '   DROP TABLE public.up_users_role_links;
       public         heap    postgres    false                       1259    17500    up_users_role_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_users_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.up_users_role_links_id_seq;
       public          postgres    false    281                       0    0    up_users_role_links_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.up_users_role_links_id_seq OWNED BY public.up_users_role_links.id;
          public          postgres    false    282                       1259    17501    upload_folders    TABLE     +  CREATE TABLE public.upload_folders (
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
       public         heap    postgres    false                       1259    17506    upload_folders_id_seq    SEQUENCE     �   CREATE SEQUENCE public.upload_folders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.upload_folders_id_seq;
       public          postgres    false    283                       0    0    upload_folders_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.upload_folders_id_seq OWNED BY public.upload_folders.id;
          public          postgres    false    284                       1259    17507    upload_folders_parent_links    TABLE     �   CREATE TABLE public.upload_folders_parent_links (
    id integer NOT NULL,
    folder_id integer,
    inv_folder_id integer,
    folder_order double precision
);
 /   DROP TABLE public.upload_folders_parent_links;
       public         heap    postgres    false                       1259    17510 "   upload_folders_parent_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.upload_folders_parent_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.upload_folders_parent_links_id_seq;
       public          postgres    false    285                       0    0 "   upload_folders_parent_links_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.upload_folders_parent_links_id_seq OWNED BY public.upload_folders_parent_links.id;
          public          postgres    false    286            �           2604    17511    admin_permissions id    DEFAULT     |   ALTER TABLE ONLY public.admin_permissions ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_id_seq'::regclass);
 C   ALTER TABLE public.admin_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215                        2604    17512    admin_permissions_role_links id    DEFAULT     �   ALTER TABLE ONLY public.admin_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_role_links_id_seq'::regclass);
 N   ALTER TABLE public.admin_permissions_role_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217                       2604    17513    admin_roles id    DEFAULT     p   ALTER TABLE ONLY public.admin_roles ALTER COLUMN id SET DEFAULT nextval('public.admin_roles_id_seq'::regclass);
 =   ALTER TABLE public.admin_roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219                       2604    17514    admin_users id    DEFAULT     p   ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);
 =   ALTER TABLE public.admin_users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221                       2604    17515    admin_users_roles_links id    DEFAULT     �   ALTER TABLE ONLY public.admin_users_roles_links ALTER COLUMN id SET DEFAULT nextval('public.admin_users_roles_links_id_seq'::regclass);
 I   ALTER TABLE public.admin_users_roles_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223                       2604    17516    categories id    DEFAULT     n   ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);
 <   ALTER TABLE public.categories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225                       2604    17517 	   events id    DEFAULT     f   ALTER TABLE ONLY public.events ALTER COLUMN id SET DEFAULT nextval('public.events_id_seq'::regclass);
 8   ALTER TABLE public.events ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    227                       2604    17518    events_category_links id    DEFAULT     �   ALTER TABLE ONLY public.events_category_links ALTER COLUMN id SET DEFAULT nextval('public.events_category_links_id_seq'::regclass);
 G   ALTER TABLE public.events_category_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228                       2604    17519    files id    DEFAULT     d   ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);
 7   ALTER TABLE public.files ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    231                       2604    17520    files_folder_links id    DEFAULT     ~   ALTER TABLE ONLY public.files_folder_links ALTER COLUMN id SET DEFAULT nextval('public.files_folder_links_id_seq'::regclass);
 D   ALTER TABLE public.files_folder_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    232            	           2604    17521    files_related_morphs id    DEFAULT     �   ALTER TABLE ONLY public.files_related_morphs ALTER COLUMN id SET DEFAULT nextval('public.files_related_morphs_id_seq'::regclass);
 F   ALTER TABLE public.files_related_morphs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    235            
           2604    17522    i18n_locale id    DEFAULT     p   ALTER TABLE ONLY public.i18n_locale ALTER COLUMN id SET DEFAULT nextval('public.i18n_locale_id_seq'::regclass);
 =   ALTER TABLE public.i18n_locale ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    237                       2604    17523    pastorals id    DEFAULT     l   ALTER TABLE ONLY public.pastorals ALTER COLUMN id SET DEFAULT nextval('public.pastorals_id_seq'::regclass);
 ;   ALTER TABLE public.pastorals ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    239                       2604    17524    posts id    DEFAULT     d   ALTER TABLE ONLY public.posts ALTER COLUMN id SET DEFAULT nextval('public.posts_id_seq'::regclass);
 7   ALTER TABLE public.posts ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    244    241                       2604    17525    posts_category_links id    DEFAULT     �   ALTER TABLE ONLY public.posts_category_links ALTER COLUMN id SET DEFAULT nextval('public.posts_category_links_id_seq'::regclass);
 F   ALTER TABLE public.posts_category_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    243    242                       2604    17526    slugs id    DEFAULT     d   ALTER TABLE ONLY public.slugs ALTER COLUMN id SET DEFAULT nextval('public.slugs_id_seq'::regclass);
 7   ALTER TABLE public.slugs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    246    245                       2604    17527    strapi_api_token_permissions id    DEFAULT     �   ALTER TABLE ONLY public.strapi_api_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_id_seq'::regclass);
 N   ALTER TABLE public.strapi_api_token_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    248    247                       2604    17528 +   strapi_api_token_permissions_token_links id    DEFAULT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_token_links_id_seq'::regclass);
 Z   ALTER TABLE public.strapi_api_token_permissions_token_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    250    249                       2604    17529    strapi_api_tokens id    DEFAULT     |   ALTER TABLE ONLY public.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_tokens_id_seq'::regclass);
 C   ALTER TABLE public.strapi_api_tokens ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    252    251                       2604    17530    strapi_core_store_settings id    DEFAULT     �   ALTER TABLE ONLY public.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('public.strapi_core_store_settings_id_seq'::regclass);
 L   ALTER TABLE public.strapi_core_store_settings ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    254    253                       2604    17531    strapi_database_schema id    DEFAULT     �   ALTER TABLE ONLY public.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('public.strapi_database_schema_id_seq'::regclass);
 H   ALTER TABLE public.strapi_database_schema ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    256    255                       2604    17532    strapi_migrations id    DEFAULT     |   ALTER TABLE ONLY public.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_id_seq'::regclass);
 C   ALTER TABLE public.strapi_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    258    257                       2604    17533    strapi_release_actions id    DEFAULT     �   ALTER TABLE ONLY public.strapi_release_actions ALTER COLUMN id SET DEFAULT nextval('public.strapi_release_actions_id_seq'::regclass);
 H   ALTER TABLE public.strapi_release_actions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    260    259                       2604    17534 '   strapi_release_actions_release_links id    DEFAULT     �   ALTER TABLE ONLY public.strapi_release_actions_release_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_release_actions_release_links_id_seq'::regclass);
 V   ALTER TABLE public.strapi_release_actions_release_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    262    261                       2604    17535    strapi_releases id    DEFAULT     x   ALTER TABLE ONLY public.strapi_releases ALTER COLUMN id SET DEFAULT nextval('public.strapi_releases_id_seq'::regclass);
 A   ALTER TABLE public.strapi_releases ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    264    263                       2604    17536 $   strapi_transfer_token_permissions id    DEFAULT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_id_seq'::regclass);
 S   ALTER TABLE public.strapi_transfer_token_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    266    265                       2604    17537 0   strapi_transfer_token_permissions_token_links id    DEFAULT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_token_links_id_seq'::regclass);
 _   ALTER TABLE public.strapi_transfer_token_permissions_token_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    268    267                       2604    17538    strapi_transfer_tokens id    DEFAULT     �   ALTER TABLE ONLY public.strapi_transfer_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_tokens_id_seq'::regclass);
 H   ALTER TABLE public.strapi_transfer_tokens ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    270    269                       2604    17539    strapi_webhooks id    DEFAULT     x   ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);
 A   ALTER TABLE public.strapi_webhooks ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    272    271                       2604    17540    up_permissions id    DEFAULT     v   ALTER TABLE ONLY public.up_permissions ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_id_seq'::regclass);
 @   ALTER TABLE public.up_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    274    273                       2604    17541    up_permissions_role_links id    DEFAULT     �   ALTER TABLE ONLY public.up_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_role_links_id_seq'::regclass);
 K   ALTER TABLE public.up_permissions_role_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    276    275                       2604    17542    up_roles id    DEFAULT     j   ALTER TABLE ONLY public.up_roles ALTER COLUMN id SET DEFAULT nextval('public.up_roles_id_seq'::regclass);
 :   ALTER TABLE public.up_roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    278    277                       2604    17543    up_users id    DEFAULT     j   ALTER TABLE ONLY public.up_users ALTER COLUMN id SET DEFAULT nextval('public.up_users_id_seq'::regclass);
 :   ALTER TABLE public.up_users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    280    279                        2604    17544    up_users_role_links id    DEFAULT     �   ALTER TABLE ONLY public.up_users_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_users_role_links_id_seq'::regclass);
 E   ALTER TABLE public.up_users_role_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    282    281            !           2604    17545    upload_folders id    DEFAULT     v   ALTER TABLE ONLY public.upload_folders ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_id_seq'::regclass);
 @   ALTER TABLE public.upload_folders ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    284    283            "           2604    17546    upload_folders_parent_links id    DEFAULT     �   ALTER TABLE ONLY public.upload_folders_parent_links ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_parent_links_id_seq'::regclass);
 M   ALTER TABLE public.upload_folders_parent_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    286    285            �          0    17325    admin_permissions 
   TABLE DATA           �   COPY public.admin_permissions (id, action, action_parameters, subject, properties, conditions, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    215   �<      �          0    17331    admin_permissions_role_links 
   TABLE DATA           d   COPY public.admin_permissions_role_links (id, permission_id, role_id, permission_order) FROM stdin;
    public          postgres    false    217   4C      �          0    17335    admin_roles 
   TABLE DATA           x   COPY public.admin_roles (id, name, code, description, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    219   .E      �          0    17341    admin_users 
   TABLE DATA           �   COPY public.admin_users (id, firstname, lastname, username, email, password, reset_password_token, registration_token, is_active, blocked, prefered_language, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    221   F      �          0    17347    admin_users_roles_links 
   TABLE DATA           _   COPY public.admin_users_roles_links (id, user_id, role_id, role_order, user_order) FROM stdin;
    public          postgres    false    223   BG      �          0    17351 
   categories 
   TABLE DATA           j   COPY public.categories (id, name, created_at, updated_at, created_by_id, updated_by_id, slug) FROM stdin;
    public          postgres    false    225   iG      �          0    17357    events 
   TABLE DATA           v   COPY public.events (id, title, content, date, created_at, updated_at, created_by_id, updated_by_id, slug) FROM stdin;
    public          postgres    false    227   8H      �          0    17362    events_category_links 
   TABLE DATA           W   COPY public.events_category_links (id, event_id, category_id, event_order) FROM stdin;
    public          postgres    false    228   `      �          0    17367    files 
   TABLE DATA           �   COPY public.files (id, name, alternative_text, caption, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, folder_path, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    231   k`      �          0    17372    files_folder_links 
   TABLE DATA           P   COPY public.files_folder_links (id, file_id, folder_id, file_order) FROM stdin;
    public          postgres    false    232   #i      �          0    17377    files_related_morphs 
   TABLE DATA           e   COPY public.files_related_morphs (id, file_id, related_id, related_type, field, "order") FROM stdin;
    public          postgres    false    235   @i      �          0    17383    i18n_locale 
   TABLE DATA           k   COPY public.i18n_locale (id, name, code, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    237   �i      �          0    17389 	   pastorals 
   TABLE DATA           w   COPY public.pastorals (id, title, description, slug, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    239   Pj      �          0    17395    posts 
   TABLE DATA           u   COPY public.posts (id, title, content, date, created_at, updated_at, created_by_id, updated_by_id, slug) FROM stdin;
    public          postgres    false    241   mj      �          0    17400    posts_category_links 
   TABLE DATA           T   COPY public.posts_category_links (id, post_id, category_id, post_order) FROM stdin;
    public          postgres    false    242   �j      �          0    17405    slugs 
   TABLE DATA           f   COPY public.slugs (id, slug, count, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    245   �j      �          0    17411    strapi_api_token_permissions 
   TABLE DATA           x   COPY public.strapi_api_token_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    247   �j      �          0    17415 (   strapi_api_token_permissions_token_links 
   TABLE DATA           �   COPY public.strapi_api_token_permissions_token_links (id, api_token_permission_id, api_token_id, api_token_permission_order) FROM stdin;
    public          postgres    false    249   �j      �          0    17419    strapi_api_tokens 
   TABLE DATA           �   COPY public.strapi_api_tokens (id, name, description, type, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    251   �j      �          0    17425    strapi_core_store_settings 
   TABLE DATA           \   COPY public.strapi_core_store_settings (id, key, value, type, environment, tag) FROM stdin;
    public          postgres    false    253   k      �          0    17431    strapi_database_schema 
   TABLE DATA           J   COPY public.strapi_database_schema (id, schema, "time", hash) FROM stdin;
    public          postgres    false    255   h�      �          0    17437    strapi_migrations 
   TABLE DATA           =   COPY public.strapi_migrations (id, name, "time") FROM stdin;
    public          postgres    false    257   ��      �          0    17441    strapi_release_actions 
   TABLE DATA           �   COPY public.strapi_release_actions (id, type, target_id, target_type, content_type, locale, created_at, updated_at, created_by_id, updated_by_id, is_entry_valid) FROM stdin;
    public          postgres    false    259   ��      �          0    17447 $   strapi_release_actions_release_links 
   TABLE DATA           w   COPY public.strapi_release_actions_release_links (id, release_action_id, release_id, release_action_order) FROM stdin;
    public          postgres    false    261   Ґ      �          0    17451    strapi_releases 
   TABLE DATA           �   COPY public.strapi_releases (id, name, released_at, scheduled_at, timezone, created_at, updated_at, created_by_id, updated_by_id, status) FROM stdin;
    public          postgres    false    263   �      �          0    17457 !   strapi_transfer_token_permissions 
   TABLE DATA           }   COPY public.strapi_transfer_token_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    265   �      �          0    17461 -   strapi_transfer_token_permissions_token_links 
   TABLE DATA           �   COPY public.strapi_transfer_token_permissions_token_links (id, transfer_token_permission_id, transfer_token_id, transfer_token_permission_order) FROM stdin;
    public          postgres    false    267   )�      �          0    17465    strapi_transfer_tokens 
   TABLE DATA           �   COPY public.strapi_transfer_tokens (id, name, description, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    269   F�      �          0    17471    strapi_webhooks 
   TABLE DATA           R   COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
    public          postgres    false    271   c�      �          0    17477    up_permissions 
   TABLE DATA           j   COPY public.up_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    273   ��      �          0    17481    up_permissions_role_links 
   TABLE DATA           a   COPY public.up_permissions_role_links (id, permission_id, role_id, permission_order) FROM stdin;
    public          postgres    false    275   ��      �          0    17485    up_roles 
   TABLE DATA           u   COPY public.up_roles (id, name, description, type, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    277   i�      �          0    17491    up_users 
   TABLE DATA           �   COPY public.up_users (id, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    279   ��      �          0    17497    up_users_role_links 
   TABLE DATA           O   COPY public.up_users_role_links (id, user_id, role_id, user_order) FROM stdin;
    public          postgres    false    281   �      �          0    17501    upload_folders 
   TABLE DATA           w   COPY public.upload_folders (id, name, path_id, path, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    283   8�      �          0    17507    upload_folders_parent_links 
   TABLE DATA           a   COPY public.upload_folders_parent_links (id, folder_id, inv_folder_id, folder_order) FROM stdin;
    public          postgres    false    285   U�                  0    0    admin_permissions_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.admin_permissions_id_seq', 144, true);
          public          postgres    false    216            !           0    0 #   admin_permissions_role_links_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.admin_permissions_role_links_id_seq', 144, true);
          public          postgres    false    218            "           0    0    admin_roles_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.admin_roles_id_seq', 3, true);
          public          postgres    false    220            #           0    0    admin_users_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.admin_users_id_seq', 2, true);
          public          postgres    false    222            $           0    0    admin_users_roles_links_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.admin_users_roles_links_id_seq', 5, true);
          public          postgres    false    224            %           0    0    categories_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.categories_id_seq', 14, true);
          public          postgres    false    226            &           0    0    events_category_links_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.events_category_links_id_seq', 27, true);
          public          postgres    false    229            '           0    0    events_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.events_id_seq', 26, true);
          public          postgres    false    230            (           0    0    files_folder_links_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.files_folder_links_id_seq', 1, false);
          public          postgres    false    233            )           0    0    files_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.files_id_seq', 36, true);
          public          postgres    false    234            *           0    0    files_related_morphs_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.files_related_morphs_id_seq', 60, true);
          public          postgres    false    236            +           0    0    i18n_locale_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.i18n_locale_id_seq', 2, true);
          public          postgres    false    238            ,           0    0    pastorals_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.pastorals_id_seq', 6, true);
          public          postgres    false    240            -           0    0    posts_category_links_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.posts_category_links_id_seq', 6, true);
          public          postgres    false    243            .           0    0    posts_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.posts_id_seq', 15, true);
          public          postgres    false    244            /           0    0    slugs_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.slugs_id_seq', 1, false);
          public          postgres    false    246            0           0    0 #   strapi_api_token_permissions_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.strapi_api_token_permissions_id_seq', 1, false);
          public          postgres    false    248            1           0    0 /   strapi_api_token_permissions_token_links_id_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('public.strapi_api_token_permissions_token_links_id_seq', 1, false);
          public          postgres    false    250            2           0    0    strapi_api_tokens_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.strapi_api_tokens_id_seq', 1, true);
          public          postgres    false    252            3           0    0 !   strapi_core_store_settings_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.strapi_core_store_settings_id_seq', 34, true);
          public          postgres    false    254            4           0    0    strapi_database_schema_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.strapi_database_schema_id_seq', 22, true);
          public          postgres    false    256            5           0    0    strapi_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.strapi_migrations_id_seq', 1, false);
          public          postgres    false    258            6           0    0    strapi_release_actions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.strapi_release_actions_id_seq', 1, false);
          public          postgres    false    260            7           0    0 +   strapi_release_actions_release_links_id_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public.strapi_release_actions_release_links_id_seq', 1, false);
          public          postgres    false    262            8           0    0    strapi_releases_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.strapi_releases_id_seq', 1, false);
          public          postgres    false    264            9           0    0 (   strapi_transfer_token_permissions_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_id_seq', 1, false);
          public          postgres    false    266            :           0    0 4   strapi_transfer_token_permissions_token_links_id_seq    SEQUENCE SET     c   SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_token_links_id_seq', 1, false);
          public          postgres    false    268            ;           0    0    strapi_transfer_tokens_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.strapi_transfer_tokens_id_seq', 1, false);
          public          postgres    false    270            <           0    0    strapi_webhooks_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);
          public          postgres    false    272            =           0    0    up_permissions_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.up_permissions_id_seq', 25, true);
          public          postgres    false    274            >           0    0     up_permissions_role_links_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.up_permissions_role_links_id_seq', 25, true);
          public          postgres    false    276            ?           0    0    up_roles_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.up_roles_id_seq', 2, true);
          public          postgres    false    278            @           0    0    up_users_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.up_users_id_seq', 1, true);
          public          postgres    false    280            A           0    0    up_users_role_links_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.up_users_role_links_id_seq', 1, true);
          public          postgres    false    282            B           0    0    upload_folders_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.upload_folders_id_seq', 1, false);
          public          postgres    false    284            C           0    0 "   upload_folders_parent_links_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.upload_folders_parent_links_id_seq', 1, false);
          public          postgres    false    286            %           2606    17550 (   admin_permissions admin_permissions_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_pkey;
       public            postgres    false    215            +           2606    17552 >   admin_permissions_role_links admin_permissions_role_links_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_pkey;
       public            postgres    false    217            -           2606    17554 @   admin_permissions_role_links admin_permissions_role_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_unique UNIQUE (permission_id, role_id);
 j   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_unique;
       public            postgres    false    217    217            0           2606    17556    admin_roles admin_roles_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_pkey;
       public            postgres    false    219            4           2606    17558    admin_users admin_users_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_pkey;
       public            postgres    false    221            ;           2606    17560 4   admin_users_roles_links admin_users_roles_links_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_pkey;
       public            postgres    false    223            =           2606    17562 6   admin_users_roles_links admin_users_roles_links_unique 
   CONSTRAINT     }   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_unique UNIQUE (user_id, role_id);
 `   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_unique;
       public            postgres    false    223    223            @           2606    17564    categories categories_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public            postgres    false    225            B           2606    17566 !   categories categories_slug_unique 
   CONSTRAINT     \   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_slug_unique UNIQUE (slug);
 K   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_slug_unique;
       public            postgres    false    225            N           2606    17568 0   events_category_links events_category_links_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.events_category_links
    ADD CONSTRAINT events_category_links_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.events_category_links DROP CONSTRAINT events_category_links_pkey;
       public            postgres    false    228            P           2606    17570 2   events_category_links events_category_links_unique 
   CONSTRAINT     ~   ALTER TABLE ONLY public.events_category_links
    ADD CONSTRAINT events_category_links_unique UNIQUE (event_id, category_id);
 \   ALTER TABLE ONLY public.events_category_links DROP CONSTRAINT events_category_links_unique;
       public            postgres    false    228    228            F           2606    17572    events events_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.events DROP CONSTRAINT events_pkey;
       public            postgres    false    227            H           2606    17574    events events_slug_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_slug_unique UNIQUE (slug);
 C   ALTER TABLE ONLY public.events DROP CONSTRAINT events_slug_unique;
       public            postgres    false    227            _           2606    17576 *   files_folder_links files_folder_links_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_pkey;
       public            postgres    false    232            a           2606    17578 ,   files_folder_links files_folder_links_unique 
   CONSTRAINT     u   ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_unique UNIQUE (file_id, folder_id);
 V   ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_unique;
       public            postgres    false    232    232            S           2606    17580    files files_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.files DROP CONSTRAINT files_pkey;
       public            postgres    false    231            f           2606    17582 .   files_related_morphs files_related_morphs_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.files_related_morphs DROP CONSTRAINT files_related_morphs_pkey;
       public            postgres    false    235            i           2606    17584    i18n_locale i18n_locale_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_pkey;
       public            postgres    false    237            m           2606    17586    pastorals pastorals_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.pastorals
    ADD CONSTRAINT pastorals_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.pastorals DROP CONSTRAINT pastorals_pkey;
       public            postgres    false    239            o           2606    17588    pastorals pastorals_slug_unique 
   CONSTRAINT     Z   ALTER TABLE ONLY public.pastorals
    ADD CONSTRAINT pastorals_slug_unique UNIQUE (slug);
 I   ALTER TABLE ONLY public.pastorals DROP CONSTRAINT pastorals_slug_unique;
       public            postgres    false    239            {           2606    17590 .   posts_category_links posts_category_links_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.posts_category_links
    ADD CONSTRAINT posts_category_links_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.posts_category_links DROP CONSTRAINT posts_category_links_pkey;
       public            postgres    false    242            }           2606    17592 0   posts_category_links posts_category_links_unique 
   CONSTRAINT     {   ALTER TABLE ONLY public.posts_category_links
    ADD CONSTRAINT posts_category_links_unique UNIQUE (post_id, category_id);
 Z   ALTER TABLE ONLY public.posts_category_links DROP CONSTRAINT posts_category_links_unique;
       public            postgres    false    242    242            s           2606    17594    posts posts_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.posts DROP CONSTRAINT posts_pkey;
       public            postgres    false    241            u           2606    17596    posts posts_slug_unique 
   CONSTRAINT     R   ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_slug_unique UNIQUE (slug);
 A   ALTER TABLE ONLY public.posts DROP CONSTRAINT posts_slug_unique;
       public            postgres    false    241            �           2606    17598    slugs slugs_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.slugs
    ADD CONSTRAINT slugs_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.slugs DROP CONSTRAINT slugs_pkey;
       public            postgres    false    245            �           2606    17600 >   strapi_api_token_permissions strapi_api_token_permissions_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.strapi_api_token_permissions DROP CONSTRAINT strapi_api_token_permissions_pkey;
       public            postgres    false    247            �           2606    17602 V   strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT strapi_api_token_permissions_token_links_pkey;
       public            postgres    false    249            �           2606    17604 X   strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_unique UNIQUE (api_token_permission_id, api_token_id);
 �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT strapi_api_token_permissions_token_links_unique;
       public            postgres    false    249    249            �           2606    17606 (   strapi_api_tokens strapi_api_tokens_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_pkey;
       public            postgres    false    251            �           2606    17608 :   strapi_core_store_settings strapi_core_store_settings_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.strapi_core_store_settings
    ADD CONSTRAINT strapi_core_store_settings_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.strapi_core_store_settings DROP CONSTRAINT strapi_core_store_settings_pkey;
       public            postgres    false    253            �           2606    17610 2   strapi_database_schema strapi_database_schema_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.strapi_database_schema
    ADD CONSTRAINT strapi_database_schema_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.strapi_database_schema DROP CONSTRAINT strapi_database_schema_pkey;
       public            postgres    false    255            �           2606    17612 (   strapi_migrations strapi_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.strapi_migrations
    ADD CONSTRAINT strapi_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.strapi_migrations DROP CONSTRAINT strapi_migrations_pkey;
       public            postgres    false    257            �           2606    17614 2   strapi_release_actions strapi_release_actions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.strapi_release_actions DROP CONSTRAINT strapi_release_actions_pkey;
       public            postgres    false    259            �           2606    17616 N   strapi_release_actions_release_links strapi_release_actions_release_links_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_release_actions_release_links
    ADD CONSTRAINT strapi_release_actions_release_links_pkey PRIMARY KEY (id);
 x   ALTER TABLE ONLY public.strapi_release_actions_release_links DROP CONSTRAINT strapi_release_actions_release_links_pkey;
       public            postgres    false    261            �           2606    17618 P   strapi_release_actions_release_links strapi_release_actions_release_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_release_actions_release_links
    ADD CONSTRAINT strapi_release_actions_release_links_unique UNIQUE (release_action_id, release_id);
 z   ALTER TABLE ONLY public.strapi_release_actions_release_links DROP CONSTRAINT strapi_release_actions_release_links_unique;
       public            postgres    false    261    261            �           2606    17620 $   strapi_releases strapi_releases_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.strapi_releases DROP CONSTRAINT strapi_releases_pkey;
       public            postgres    false    263            �           2606    17622 H   strapi_transfer_token_permissions strapi_transfer_token_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_pkey PRIMARY KEY (id);
 r   ALTER TABLE ONLY public.strapi_transfer_token_permissions DROP CONSTRAINT strapi_transfer_token_permissions_pkey;
       public            postgres    false    265            �           2606    17624 `   strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links DROP CONSTRAINT strapi_transfer_token_permissions_token_links_pkey;
       public            postgres    false    267            �           2606    17626 b   strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_unique UNIQUE (transfer_token_permission_id, transfer_token_id);
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links DROP CONSTRAINT strapi_transfer_token_permissions_token_links_unique;
       public            postgres    false    267    267            �           2606    17628 2   strapi_transfer_tokens strapi_transfer_tokens_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.strapi_transfer_tokens DROP CONSTRAINT strapi_transfer_tokens_pkey;
       public            postgres    false    269            �           2606    17630 $   strapi_webhooks strapi_webhooks_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.strapi_webhooks DROP CONSTRAINT strapi_webhooks_pkey;
       public            postgres    false    271            �           2606    17632 "   up_permissions up_permissions_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_pkey;
       public            postgres    false    273            �           2606    17634 8   up_permissions_role_links up_permissions_role_links_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_pkey;
       public            postgres    false    275            �           2606    17636 :   up_permissions_role_links up_permissions_role_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_unique UNIQUE (permission_id, role_id);
 d   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_unique;
       public            postgres    false    275    275            �           2606    17638    up_roles up_roles_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_pkey;
       public            postgres    false    277            �           2606    17640    up_users up_users_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_pkey;
       public            postgres    false    279            �           2606    17642 ,   up_users_role_links up_users_role_links_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_pkey;
       public            postgres    false    281            �           2606    17644 .   up_users_role_links up_users_role_links_unique 
   CONSTRAINT     u   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_unique UNIQUE (user_id, role_id);
 X   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_unique;
       public            postgres    false    281    281            �           2606    17646 <   upload_folders_parent_links upload_folders_parent_links_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_pkey;
       public            postgres    false    285            �           2606    17648 >   upload_folders_parent_links upload_folders_parent_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_unique UNIQUE (folder_id, inv_folder_id);
 h   ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_unique;
       public            postgres    false    285    285            �           2606    17650 +   upload_folders upload_folders_path_id_index 
   CONSTRAINT     i   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_id_index UNIQUE (path_id);
 U   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_path_id_index;
       public            postgres    false    283            �           2606    17652 (   upload_folders upload_folders_path_index 
   CONSTRAINT     c   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_index UNIQUE (path);
 R   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_path_index;
       public            postgres    false    283            �           2606    17654 "   upload_folders upload_folders_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_pkey;
       public            postgres    false    283            #           1259    17655 "   admin_permissions_created_by_id_fk    INDEX     i   CREATE INDEX admin_permissions_created_by_id_fk ON public.admin_permissions USING btree (created_by_id);
 6   DROP INDEX public.admin_permissions_created_by_id_fk;
       public            postgres    false    215            '           1259    17656    admin_permissions_role_links_fk    INDEX     q   CREATE INDEX admin_permissions_role_links_fk ON public.admin_permissions_role_links USING btree (permission_id);
 3   DROP INDEX public.admin_permissions_role_links_fk;
       public            postgres    false    217            (           1259    17657 #   admin_permissions_role_links_inv_fk    INDEX     o   CREATE INDEX admin_permissions_role_links_inv_fk ON public.admin_permissions_role_links USING btree (role_id);
 7   DROP INDEX public.admin_permissions_role_links_inv_fk;
       public            postgres    false    217            )           1259    17658 )   admin_permissions_role_links_order_inv_fk    INDEX     ~   CREATE INDEX admin_permissions_role_links_order_inv_fk ON public.admin_permissions_role_links USING btree (permission_order);
 =   DROP INDEX public.admin_permissions_role_links_order_inv_fk;
       public            postgres    false    217            &           1259    17659 "   admin_permissions_updated_by_id_fk    INDEX     i   CREATE INDEX admin_permissions_updated_by_id_fk ON public.admin_permissions USING btree (updated_by_id);
 6   DROP INDEX public.admin_permissions_updated_by_id_fk;
       public            postgres    false    215            .           1259    17660    admin_roles_created_by_id_fk    INDEX     ]   CREATE INDEX admin_roles_created_by_id_fk ON public.admin_roles USING btree (created_by_id);
 0   DROP INDEX public.admin_roles_created_by_id_fk;
       public            postgres    false    219            1           1259    17661    admin_roles_updated_by_id_fk    INDEX     ]   CREATE INDEX admin_roles_updated_by_id_fk ON public.admin_roles USING btree (updated_by_id);
 0   DROP INDEX public.admin_roles_updated_by_id_fk;
       public            postgres    false    219            2           1259    17662    admin_users_created_by_id_fk    INDEX     ]   CREATE INDEX admin_users_created_by_id_fk ON public.admin_users USING btree (created_by_id);
 0   DROP INDEX public.admin_users_created_by_id_fk;
       public            postgres    false    221            6           1259    17663    admin_users_roles_links_fk    INDEX     a   CREATE INDEX admin_users_roles_links_fk ON public.admin_users_roles_links USING btree (user_id);
 .   DROP INDEX public.admin_users_roles_links_fk;
       public            postgres    false    223            7           1259    17664    admin_users_roles_links_inv_fk    INDEX     e   CREATE INDEX admin_users_roles_links_inv_fk ON public.admin_users_roles_links USING btree (role_id);
 2   DROP INDEX public.admin_users_roles_links_inv_fk;
       public            postgres    false    223            8           1259    17665     admin_users_roles_links_order_fk    INDEX     j   CREATE INDEX admin_users_roles_links_order_fk ON public.admin_users_roles_links USING btree (role_order);
 4   DROP INDEX public.admin_users_roles_links_order_fk;
       public            postgres    false    223            9           1259    17666 $   admin_users_roles_links_order_inv_fk    INDEX     n   CREATE INDEX admin_users_roles_links_order_inv_fk ON public.admin_users_roles_links USING btree (user_order);
 8   DROP INDEX public.admin_users_roles_links_order_inv_fk;
       public            postgres    false    223            5           1259    17667    admin_users_updated_by_id_fk    INDEX     ]   CREATE INDEX admin_users_updated_by_id_fk ON public.admin_users USING btree (updated_by_id);
 0   DROP INDEX public.admin_users_updated_by_id_fk;
       public            postgres    false    221            >           1259    17668    categories_created_by_id_fk    INDEX     [   CREATE INDEX categories_created_by_id_fk ON public.categories USING btree (created_by_id);
 /   DROP INDEX public.categories_created_by_id_fk;
       public            postgres    false    225            C           1259    17669    categories_updated_by_id_fk    INDEX     [   CREATE INDEX categories_updated_by_id_fk ON public.categories USING btree (updated_by_id);
 /   DROP INDEX public.categories_updated_by_id_fk;
       public            postgres    false    225            J           1259    17670    events_category_links_fk    INDEX     ^   CREATE INDEX events_category_links_fk ON public.events_category_links USING btree (event_id);
 ,   DROP INDEX public.events_category_links_fk;
       public            postgres    false    228            K           1259    17671    events_category_links_inv_fk    INDEX     e   CREATE INDEX events_category_links_inv_fk ON public.events_category_links USING btree (category_id);
 0   DROP INDEX public.events_category_links_inv_fk;
       public            postgres    false    228            L           1259    17672 "   events_category_links_order_inv_fk    INDEX     k   CREATE INDEX events_category_links_order_inv_fk ON public.events_category_links USING btree (event_order);
 6   DROP INDEX public.events_category_links_order_inv_fk;
       public            postgres    false    228            D           1259    17673    events_created_by_id_fk    INDEX     S   CREATE INDEX events_created_by_id_fk ON public.events USING btree (created_by_id);
 +   DROP INDEX public.events_created_by_id_fk;
       public            postgres    false    227            I           1259    17674    events_updated_by_id_fk    INDEX     S   CREATE INDEX events_updated_by_id_fk ON public.events USING btree (updated_by_id);
 +   DROP INDEX public.events_updated_by_id_fk;
       public            postgres    false    227            Q           1259    17675    files_created_by_id_fk    INDEX     Q   CREATE INDEX files_created_by_id_fk ON public.files USING btree (created_by_id);
 *   DROP INDEX public.files_created_by_id_fk;
       public            postgres    false    231            [           1259    17676    files_folder_links_fk    INDEX     W   CREATE INDEX files_folder_links_fk ON public.files_folder_links USING btree (file_id);
 )   DROP INDEX public.files_folder_links_fk;
       public            postgres    false    232            \           1259    17677    files_folder_links_inv_fk    INDEX     ]   CREATE INDEX files_folder_links_inv_fk ON public.files_folder_links USING btree (folder_id);
 -   DROP INDEX public.files_folder_links_inv_fk;
       public            postgres    false    232            ]           1259    17678    files_folder_links_order_inv_fk    INDEX     d   CREATE INDEX files_folder_links_order_inv_fk ON public.files_folder_links USING btree (file_order);
 3   DROP INDEX public.files_folder_links_order_inv_fk;
       public            postgres    false    232            b           1259    17679    files_related_morphs_fk    INDEX     [   CREATE INDEX files_related_morphs_fk ON public.files_related_morphs USING btree (file_id);
 +   DROP INDEX public.files_related_morphs_fk;
       public            postgres    false    235            c           1259    17680 $   files_related_morphs_id_column_index    INDEX     k   CREATE INDEX files_related_morphs_id_column_index ON public.files_related_morphs USING btree (related_id);
 8   DROP INDEX public.files_related_morphs_id_column_index;
       public            postgres    false    235            d           1259    17681     files_related_morphs_order_index    INDEX     d   CREATE INDEX files_related_morphs_order_index ON public.files_related_morphs USING btree ("order");
 4   DROP INDEX public.files_related_morphs_order_index;
       public            postgres    false    235            T           1259    17682    files_updated_by_id_fk    INDEX     Q   CREATE INDEX files_updated_by_id_fk ON public.files USING btree (updated_by_id);
 *   DROP INDEX public.files_updated_by_id_fk;
       public            postgres    false    231            g           1259    17683    i18n_locale_created_by_id_fk    INDEX     ]   CREATE INDEX i18n_locale_created_by_id_fk ON public.i18n_locale USING btree (created_by_id);
 0   DROP INDEX public.i18n_locale_created_by_id_fk;
       public            postgres    false    237            j           1259    17684    i18n_locale_updated_by_id_fk    INDEX     ]   CREATE INDEX i18n_locale_updated_by_id_fk ON public.i18n_locale USING btree (updated_by_id);
 0   DROP INDEX public.i18n_locale_updated_by_id_fk;
       public            postgres    false    237            k           1259    17685    pastorals_created_by_id_fk    INDEX     Y   CREATE INDEX pastorals_created_by_id_fk ON public.pastorals USING btree (created_by_id);
 .   DROP INDEX public.pastorals_created_by_id_fk;
       public            postgres    false    239            p           1259    17686    pastorals_updated_by_id_fk    INDEX     Y   CREATE INDEX pastorals_updated_by_id_fk ON public.pastorals USING btree (updated_by_id);
 .   DROP INDEX public.pastorals_updated_by_id_fk;
       public            postgres    false    239            w           1259    17687    posts_category_links_fk    INDEX     [   CREATE INDEX posts_category_links_fk ON public.posts_category_links USING btree (post_id);
 +   DROP INDEX public.posts_category_links_fk;
       public            postgres    false    242            x           1259    17688    posts_category_links_inv_fk    INDEX     c   CREATE INDEX posts_category_links_inv_fk ON public.posts_category_links USING btree (category_id);
 /   DROP INDEX public.posts_category_links_inv_fk;
       public            postgres    false    242            y           1259    17689 !   posts_category_links_order_inv_fk    INDEX     h   CREATE INDEX posts_category_links_order_inv_fk ON public.posts_category_links USING btree (post_order);
 5   DROP INDEX public.posts_category_links_order_inv_fk;
       public            postgres    false    242            q           1259    17690    posts_created_by_id_fk    INDEX     Q   CREATE INDEX posts_created_by_id_fk ON public.posts USING btree (created_by_id);
 *   DROP INDEX public.posts_created_by_id_fk;
       public            postgres    false    241            v           1259    17691    posts_updated_by_id_fk    INDEX     Q   CREATE INDEX posts_updated_by_id_fk ON public.posts USING btree (updated_by_id);
 *   DROP INDEX public.posts_updated_by_id_fk;
       public            postgres    false    241            ~           1259    17692    slugs_created_by_id_fk    INDEX     Q   CREATE INDEX slugs_created_by_id_fk ON public.slugs USING btree (created_by_id);
 *   DROP INDEX public.slugs_created_by_id_fk;
       public            postgres    false    245            �           1259    17693    slugs_updated_by_id_fk    INDEX     Q   CREATE INDEX slugs_updated_by_id_fk ON public.slugs USING btree (updated_by_id);
 *   DROP INDEX public.slugs_updated_by_id_fk;
       public            postgres    false    245            �           1259    17694 -   strapi_api_token_permissions_created_by_id_fk    INDEX        CREATE INDEX strapi_api_token_permissions_created_by_id_fk ON public.strapi_api_token_permissions USING btree (created_by_id);
 A   DROP INDEX public.strapi_api_token_permissions_created_by_id_fk;
       public            postgres    false    247            �           1259    17695 +   strapi_api_token_permissions_token_links_fk    INDEX     �   CREATE INDEX strapi_api_token_permissions_token_links_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_permission_id);
 ?   DROP INDEX public.strapi_api_token_permissions_token_links_fk;
       public            postgres    false    249            �           1259    17696 /   strapi_api_token_permissions_token_links_inv_fk    INDEX     �   CREATE INDEX strapi_api_token_permissions_token_links_inv_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_id);
 C   DROP INDEX public.strapi_api_token_permissions_token_links_inv_fk;
       public            postgres    false    249            �           1259    17697 5   strapi_api_token_permissions_token_links_order_inv_fk    INDEX     �   CREATE INDEX strapi_api_token_permissions_token_links_order_inv_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_permission_order);
 I   DROP INDEX public.strapi_api_token_permissions_token_links_order_inv_fk;
       public            postgres    false    249            �           1259    17698 -   strapi_api_token_permissions_updated_by_id_fk    INDEX        CREATE INDEX strapi_api_token_permissions_updated_by_id_fk ON public.strapi_api_token_permissions USING btree (updated_by_id);
 A   DROP INDEX public.strapi_api_token_permissions_updated_by_id_fk;
       public            postgres    false    247            �           1259    17699 "   strapi_api_tokens_created_by_id_fk    INDEX     i   CREATE INDEX strapi_api_tokens_created_by_id_fk ON public.strapi_api_tokens USING btree (created_by_id);
 6   DROP INDEX public.strapi_api_tokens_created_by_id_fk;
       public            postgres    false    251            �           1259    17700 "   strapi_api_tokens_updated_by_id_fk    INDEX     i   CREATE INDEX strapi_api_tokens_updated_by_id_fk ON public.strapi_api_tokens USING btree (updated_by_id);
 6   DROP INDEX public.strapi_api_tokens_updated_by_id_fk;
       public            postgres    false    251            �           1259    17701 '   strapi_release_actions_created_by_id_fk    INDEX     s   CREATE INDEX strapi_release_actions_created_by_id_fk ON public.strapi_release_actions USING btree (created_by_id);
 ;   DROP INDEX public.strapi_release_actions_created_by_id_fk;
       public            postgres    false    259            �           1259    17702 '   strapi_release_actions_release_links_fk    INDEX     �   CREATE INDEX strapi_release_actions_release_links_fk ON public.strapi_release_actions_release_links USING btree (release_action_id);
 ;   DROP INDEX public.strapi_release_actions_release_links_fk;
       public            postgres    false    261            �           1259    17703 +   strapi_release_actions_release_links_inv_fk    INDEX     �   CREATE INDEX strapi_release_actions_release_links_inv_fk ON public.strapi_release_actions_release_links USING btree (release_id);
 ?   DROP INDEX public.strapi_release_actions_release_links_inv_fk;
       public            postgres    false    261            �           1259    17704 1   strapi_release_actions_release_links_order_inv_fk    INDEX     �   CREATE INDEX strapi_release_actions_release_links_order_inv_fk ON public.strapi_release_actions_release_links USING btree (release_action_order);
 E   DROP INDEX public.strapi_release_actions_release_links_order_inv_fk;
       public            postgres    false    261            �           1259    17705 '   strapi_release_actions_updated_by_id_fk    INDEX     s   CREATE INDEX strapi_release_actions_updated_by_id_fk ON public.strapi_release_actions USING btree (updated_by_id);
 ;   DROP INDEX public.strapi_release_actions_updated_by_id_fk;
       public            postgres    false    259            �           1259    17706     strapi_releases_created_by_id_fk    INDEX     e   CREATE INDEX strapi_releases_created_by_id_fk ON public.strapi_releases USING btree (created_by_id);
 4   DROP INDEX public.strapi_releases_created_by_id_fk;
       public            postgres    false    263            �           1259    17707     strapi_releases_updated_by_id_fk    INDEX     e   CREATE INDEX strapi_releases_updated_by_id_fk ON public.strapi_releases USING btree (updated_by_id);
 4   DROP INDEX public.strapi_releases_updated_by_id_fk;
       public            postgres    false    263            �           1259    17708 2   strapi_transfer_token_permissions_created_by_id_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_created_by_id_fk ON public.strapi_transfer_token_permissions USING btree (created_by_id);
 F   DROP INDEX public.strapi_transfer_token_permissions_created_by_id_fk;
       public            postgres    false    265            �           1259    17709 0   strapi_transfer_token_permissions_token_links_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_token_links_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_permission_id);
 D   DROP INDEX public.strapi_transfer_token_permissions_token_links_fk;
       public            postgres    false    267            �           1259    17710 4   strapi_transfer_token_permissions_token_links_inv_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_token_links_inv_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_id);
 H   DROP INDEX public.strapi_transfer_token_permissions_token_links_inv_fk;
       public            postgres    false    267            �           1259    17711 :   strapi_transfer_token_permissions_token_links_order_inv_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_token_links_order_inv_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_permission_order);
 N   DROP INDEX public.strapi_transfer_token_permissions_token_links_order_inv_fk;
       public            postgres    false    267            �           1259    17712 2   strapi_transfer_token_permissions_updated_by_id_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_updated_by_id_fk ON public.strapi_transfer_token_permissions USING btree (updated_by_id);
 F   DROP INDEX public.strapi_transfer_token_permissions_updated_by_id_fk;
       public            postgres    false    265            �           1259    17713 '   strapi_transfer_tokens_created_by_id_fk    INDEX     s   CREATE INDEX strapi_transfer_tokens_created_by_id_fk ON public.strapi_transfer_tokens USING btree (created_by_id);
 ;   DROP INDEX public.strapi_transfer_tokens_created_by_id_fk;
       public            postgres    false    269            �           1259    17714 '   strapi_transfer_tokens_updated_by_id_fk    INDEX     s   CREATE INDEX strapi_transfer_tokens_updated_by_id_fk ON public.strapi_transfer_tokens USING btree (updated_by_id);
 ;   DROP INDEX public.strapi_transfer_tokens_updated_by_id_fk;
       public            postgres    false    269            �           1259    17715    up_permissions_created_by_id_fk    INDEX     c   CREATE INDEX up_permissions_created_by_id_fk ON public.up_permissions USING btree (created_by_id);
 3   DROP INDEX public.up_permissions_created_by_id_fk;
       public            postgres    false    273            �           1259    17716    up_permissions_role_links_fk    INDEX     k   CREATE INDEX up_permissions_role_links_fk ON public.up_permissions_role_links USING btree (permission_id);
 0   DROP INDEX public.up_permissions_role_links_fk;
       public            postgres    false    275            �           1259    17717     up_permissions_role_links_inv_fk    INDEX     i   CREATE INDEX up_permissions_role_links_inv_fk ON public.up_permissions_role_links USING btree (role_id);
 4   DROP INDEX public.up_permissions_role_links_inv_fk;
       public            postgres    false    275            �           1259    17718 &   up_permissions_role_links_order_inv_fk    INDEX     x   CREATE INDEX up_permissions_role_links_order_inv_fk ON public.up_permissions_role_links USING btree (permission_order);
 :   DROP INDEX public.up_permissions_role_links_order_inv_fk;
       public            postgres    false    275            �           1259    17719    up_permissions_updated_by_id_fk    INDEX     c   CREATE INDEX up_permissions_updated_by_id_fk ON public.up_permissions USING btree (updated_by_id);
 3   DROP INDEX public.up_permissions_updated_by_id_fk;
       public            postgres    false    273            �           1259    17720    up_roles_created_by_id_fk    INDEX     W   CREATE INDEX up_roles_created_by_id_fk ON public.up_roles USING btree (created_by_id);
 -   DROP INDEX public.up_roles_created_by_id_fk;
       public            postgres    false    277            �           1259    17721    up_roles_updated_by_id_fk    INDEX     W   CREATE INDEX up_roles_updated_by_id_fk ON public.up_roles USING btree (updated_by_id);
 -   DROP INDEX public.up_roles_updated_by_id_fk;
       public            postgres    false    277            �           1259    17722    up_users_created_by_id_fk    INDEX     W   CREATE INDEX up_users_created_by_id_fk ON public.up_users USING btree (created_by_id);
 -   DROP INDEX public.up_users_created_by_id_fk;
       public            postgres    false    279            �           1259    17723    up_users_role_links_fk    INDEX     Y   CREATE INDEX up_users_role_links_fk ON public.up_users_role_links USING btree (user_id);
 *   DROP INDEX public.up_users_role_links_fk;
       public            postgres    false    281            �           1259    17724    up_users_role_links_inv_fk    INDEX     ]   CREATE INDEX up_users_role_links_inv_fk ON public.up_users_role_links USING btree (role_id);
 .   DROP INDEX public.up_users_role_links_inv_fk;
       public            postgres    false    281            �           1259    17725     up_users_role_links_order_inv_fk    INDEX     f   CREATE INDEX up_users_role_links_order_inv_fk ON public.up_users_role_links USING btree (user_order);
 4   DROP INDEX public.up_users_role_links_order_inv_fk;
       public            postgres    false    281            �           1259    17726    up_users_updated_by_id_fk    INDEX     W   CREATE INDEX up_users_updated_by_id_fk ON public.up_users USING btree (updated_by_id);
 -   DROP INDEX public.up_users_updated_by_id_fk;
       public            postgres    false    279            U           1259    17727    upload_files_created_at_index    INDEX     U   CREATE INDEX upload_files_created_at_index ON public.files USING btree (created_at);
 1   DROP INDEX public.upload_files_created_at_index;
       public            postgres    false    231            V           1259    17728    upload_files_ext_index    INDEX     G   CREATE INDEX upload_files_ext_index ON public.files USING btree (ext);
 *   DROP INDEX public.upload_files_ext_index;
       public            postgres    false    231            W           1259    17729    upload_files_folder_path_index    INDEX     W   CREATE INDEX upload_files_folder_path_index ON public.files USING btree (folder_path);
 2   DROP INDEX public.upload_files_folder_path_index;
       public            postgres    false    231            X           1259    17730    upload_files_name_index    INDEX     I   CREATE INDEX upload_files_name_index ON public.files USING btree (name);
 +   DROP INDEX public.upload_files_name_index;
       public            postgres    false    231            Y           1259    17731    upload_files_size_index    INDEX     I   CREATE INDEX upload_files_size_index ON public.files USING btree (size);
 +   DROP INDEX public.upload_files_size_index;
       public            postgres    false    231            Z           1259    17732    upload_files_updated_at_index    INDEX     U   CREATE INDEX upload_files_updated_at_index ON public.files USING btree (updated_at);
 1   DROP INDEX public.upload_files_updated_at_index;
       public            postgres    false    231            �           1259    17733    upload_folders_created_by_id_fk    INDEX     c   CREATE INDEX upload_folders_created_by_id_fk ON public.upload_folders USING btree (created_by_id);
 3   DROP INDEX public.upload_folders_created_by_id_fk;
       public            postgres    false    283            �           1259    17734    upload_folders_parent_links_fk    INDEX     k   CREATE INDEX upload_folders_parent_links_fk ON public.upload_folders_parent_links USING btree (folder_id);
 2   DROP INDEX public.upload_folders_parent_links_fk;
       public            postgres    false    285            �           1259    17735 "   upload_folders_parent_links_inv_fk    INDEX     s   CREATE INDEX upload_folders_parent_links_inv_fk ON public.upload_folders_parent_links USING btree (inv_folder_id);
 6   DROP INDEX public.upload_folders_parent_links_inv_fk;
       public            postgres    false    285            �           1259    17736 (   upload_folders_parent_links_order_inv_fk    INDEX     x   CREATE INDEX upload_folders_parent_links_order_inv_fk ON public.upload_folders_parent_links USING btree (folder_order);
 <   DROP INDEX public.upload_folders_parent_links_order_inv_fk;
       public            postgres    false    285            �           1259    17737    upload_folders_updated_by_id_fk    INDEX     c   CREATE INDEX upload_folders_updated_by_id_fk ON public.upload_folders USING btree (updated_by_id);
 3   DROP INDEX public.upload_folders_updated_by_id_fk;
       public            postgres    false    283            �           2606    17738 4   admin_permissions admin_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_created_by_id_fk;
       public          postgres    false    215    221    4916            �           2606    17743 <   admin_permissions_role_links admin_permissions_role_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;
 f   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_fk;
       public          postgres    false    215    4901    217            �           2606    17748 @   admin_permissions_role_links admin_permissions_role_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;
 j   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_inv_fk;
       public          postgres    false    219    217    4912            �           2606    17753 4   admin_permissions admin_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_updated_by_id_fk;
       public          postgres    false    221    215    4916            �           2606    17758 (   admin_roles admin_roles_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_created_by_id_fk;
       public          postgres    false    219    221    4916            �           2606    17763 (   admin_roles admin_roles_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_updated_by_id_fk;
       public          postgres    false    219    221    4916            �           2606    17768 (   admin_users admin_users_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_created_by_id_fk;
       public          postgres    false    221    4916    221            �           2606    17773 2   admin_users_roles_links admin_users_roles_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_fk FOREIGN KEY (user_id) REFERENCES public.admin_users(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_fk;
       public          postgres    false    4916    221    223            �           2606    17778 6   admin_users_roles_links admin_users_roles_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_inv_fk;
       public          postgres    false    219    4912    223            �           2606    17783 (   admin_users admin_users_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_updated_by_id_fk;
       public          postgres    false    221    221    4916            �           2606    17788 &   categories categories_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 P   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_created_by_id_fk;
       public          postgres    false    225    221    4916            �           2606    17793 &   categories categories_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 P   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_updated_by_id_fk;
       public          postgres    false    225    4916    221            �           2606    17798 .   events_category_links events_category_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.events_category_links
    ADD CONSTRAINT events_category_links_fk FOREIGN KEY (event_id) REFERENCES public.events(id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.events_category_links DROP CONSTRAINT events_category_links_fk;
       public          postgres    false    228    4934    227            �           2606    17803 2   events_category_links events_category_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.events_category_links
    ADD CONSTRAINT events_category_links_inv_fk FOREIGN KEY (category_id) REFERENCES public.categories(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.events_category_links DROP CONSTRAINT events_category_links_inv_fk;
       public          postgres    false    4928    225    228            �           2606    17808    events events_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 H   ALTER TABLE ONLY public.events DROP CONSTRAINT events_created_by_id_fk;
       public          postgres    false    227    221    4916            �           2606    17813    events events_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 H   ALTER TABLE ONLY public.events DROP CONSTRAINT events_updated_by_id_fk;
       public          postgres    false    4916    227    221            �           2606    17818    files files_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.files DROP CONSTRAINT files_created_by_id_fk;
       public          postgres    false    221    231    4916            �           2606    17823 (   files_folder_links files_folder_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_fk;
       public          postgres    false    231    232    4947            �           2606    17828 ,   files_folder_links files_folder_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_inv_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_inv_fk;
       public          postgres    false    5079    283    232            �           2606    17833 ,   files_related_morphs files_related_morphs_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.files_related_morphs DROP CONSTRAINT files_related_morphs_fk;
       public          postgres    false    231    4947    235            �           2606    17838    files files_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.files DROP CONSTRAINT files_updated_by_id_fk;
       public          postgres    false    231    4916    221            �           2606    17843 (   i18n_locale i18n_locale_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_created_by_id_fk;
       public          postgres    false    4916    237    221            �           2606    17848 (   i18n_locale i18n_locale_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_updated_by_id_fk;
       public          postgres    false    221    237    4916            �           2606    17853 $   pastorals pastorals_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.pastorals
    ADD CONSTRAINT pastorals_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 N   ALTER TABLE ONLY public.pastorals DROP CONSTRAINT pastorals_created_by_id_fk;
       public          postgres    false    239    4916    221            �           2606    17858 $   pastorals pastorals_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.pastorals
    ADD CONSTRAINT pastorals_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 N   ALTER TABLE ONLY public.pastorals DROP CONSTRAINT pastorals_updated_by_id_fk;
       public          postgres    false    4916    239    221            �           2606    17863 ,   posts_category_links posts_category_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.posts_category_links
    ADD CONSTRAINT posts_category_links_fk FOREIGN KEY (post_id) REFERENCES public.posts(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.posts_category_links DROP CONSTRAINT posts_category_links_fk;
       public          postgres    false    242    4979    241            �           2606    17868 0   posts_category_links posts_category_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.posts_category_links
    ADD CONSTRAINT posts_category_links_inv_fk FOREIGN KEY (category_id) REFERENCES public.categories(id) ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public.posts_category_links DROP CONSTRAINT posts_category_links_inv_fk;
       public          postgres    false    225    242    4928            �           2606    17873    posts posts_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.posts DROP CONSTRAINT posts_created_by_id_fk;
       public          postgres    false    241    4916    221            �           2606    17878    posts posts_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.posts DROP CONSTRAINT posts_updated_by_id_fk;
       public          postgres    false    221    4916    241            �           2606    17883    slugs slugs_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.slugs
    ADD CONSTRAINT slugs_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.slugs DROP CONSTRAINT slugs_created_by_id_fk;
       public          postgres    false    4916    245    221            �           2606    17888    slugs slugs_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.slugs
    ADD CONSTRAINT slugs_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.slugs DROP CONSTRAINT slugs_updated_by_id_fk;
       public          postgres    false    221    245    4916            �           2606    17893 J   strapi_api_token_permissions strapi_api_token_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 t   ALTER TABLE ONLY public.strapi_api_token_permissions DROP CONSTRAINT strapi_api_token_permissions_created_by_id_fk;
       public          postgres    false    4916    247    221                       2606    17898 T   strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_fk FOREIGN KEY (api_token_permission_id) REFERENCES public.strapi_api_token_permissions(id) ON DELETE CASCADE;
 ~   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT strapi_api_token_permissions_token_links_fk;
       public          postgres    false    247    4996    249                       2606    17903 X   strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_inv_fk FOREIGN KEY (api_token_id) REFERENCES public.strapi_api_tokens(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT strapi_api_token_permissions_token_links_inv_fk;
       public          postgres    false    249    251    5007                        2606    17908 J   strapi_api_token_permissions strapi_api_token_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 t   ALTER TABLE ONLY public.strapi_api_token_permissions DROP CONSTRAINT strapi_api_token_permissions_updated_by_id_fk;
       public          postgres    false    221    4916    247                       2606    17913 4   strapi_api_tokens strapi_api_tokens_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_created_by_id_fk;
       public          postgres    false    221    4916    251                       2606    17918 4   strapi_api_tokens strapi_api_tokens_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_updated_by_id_fk;
       public          postgres    false    221    251    4916                       2606    17923 >   strapi_release_actions strapi_release_actions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 h   ALTER TABLE ONLY public.strapi_release_actions DROP CONSTRAINT strapi_release_actions_created_by_id_fk;
       public          postgres    false    221    259    4916                       2606    17928 L   strapi_release_actions_release_links strapi_release_actions_release_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_release_actions_release_links
    ADD CONSTRAINT strapi_release_actions_release_links_fk FOREIGN KEY (release_action_id) REFERENCES public.strapi_release_actions(id) ON DELETE CASCADE;
 v   ALTER TABLE ONLY public.strapi_release_actions_release_links DROP CONSTRAINT strapi_release_actions_release_links_fk;
       public          postgres    false    5017    259    261                       2606    17933 P   strapi_release_actions_release_links strapi_release_actions_release_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_release_actions_release_links
    ADD CONSTRAINT strapi_release_actions_release_links_inv_fk FOREIGN KEY (release_id) REFERENCES public.strapi_releases(id) ON DELETE CASCADE;
 z   ALTER TABLE ONLY public.strapi_release_actions_release_links DROP CONSTRAINT strapi_release_actions_release_links_inv_fk;
       public          postgres    false    5028    261    263                       2606    17938 >   strapi_release_actions strapi_release_actions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 h   ALTER TABLE ONLY public.strapi_release_actions DROP CONSTRAINT strapi_release_actions_updated_by_id_fk;
       public          postgres    false    4916    221    259            	           2606    17943 0   strapi_releases strapi_releases_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 Z   ALTER TABLE ONLY public.strapi_releases DROP CONSTRAINT strapi_releases_created_by_id_fk;
       public          postgres    false    4916    263    221            
           2606    17948 0   strapi_releases strapi_releases_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 Z   ALTER TABLE ONLY public.strapi_releases DROP CONSTRAINT strapi_releases_updated_by_id_fk;
       public          postgres    false    263    221    4916                       2606    17953 T   strapi_transfer_token_permissions strapi_transfer_token_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ~   ALTER TABLE ONLY public.strapi_transfer_token_permissions DROP CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk;
       public          postgres    false    221    4916    265                       2606    17958 ^   strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_fk    FK CONSTRAINT        ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_fk FOREIGN KEY (transfer_token_permission_id) REFERENCES public.strapi_transfer_token_permissions(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links DROP CONSTRAINT strapi_transfer_token_permissions_token_links_fk;
       public          postgres    false    267    5032    265                       2606    17963 b   strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_inv_fk FOREIGN KEY (transfer_token_id) REFERENCES public.strapi_transfer_tokens(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links DROP CONSTRAINT strapi_transfer_token_permissions_token_links_inv_fk;
       public          postgres    false    267    5043    269                       2606    17968 T   strapi_transfer_token_permissions strapi_transfer_token_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ~   ALTER TABLE ONLY public.strapi_transfer_token_permissions DROP CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk;
       public          postgres    false    265    4916    221                       2606    17973 >   strapi_transfer_tokens strapi_transfer_tokens_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 h   ALTER TABLE ONLY public.strapi_transfer_tokens DROP CONSTRAINT strapi_transfer_tokens_created_by_id_fk;
       public          postgres    false    269    221    4916                       2606    17978 >   strapi_transfer_tokens strapi_transfer_tokens_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 h   ALTER TABLE ONLY public.strapi_transfer_tokens DROP CONSTRAINT strapi_transfer_tokens_updated_by_id_fk;
       public          postgres    false    4916    269    221                       2606    17983 .   up_permissions up_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_created_by_id_fk;
       public          postgres    false    273    4916    221                       2606    17988 6   up_permissions_role_links up_permissions_role_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.up_permissions(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_fk;
       public          postgres    false    5049    273    275                       2606    17993 :   up_permissions_role_links up_permissions_role_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;
 d   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_inv_fk;
       public          postgres    false    5060    277    275                       2606    17998 .   up_permissions up_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_updated_by_id_fk;
       public          postgres    false    273    4916    221                       2606    18003 "   up_roles up_roles_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_created_by_id_fk;
       public          postgres    false    277    4916    221                       2606    18008 "   up_roles up_roles_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_updated_by_id_fk;
       public          postgres    false    221    277    4916                       2606    18013 "   up_users up_users_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_created_by_id_fk;
       public          postgres    false    221    4916    279                       2606    18018 *   up_users_role_links up_users_role_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_fk;
       public          postgres    false    279    5064    281                       2606    18023 .   up_users_role_links up_users_role_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_inv_fk;
       public          postgres    false    5060    277    281                       2606    18028 "   up_users up_users_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_updated_by_id_fk;
       public          postgres    false    221    279    4916                       2606    18033 .   upload_folders upload_folders_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_created_by_id_fk;
       public          postgres    false    283    221    4916                       2606    18038 :   upload_folders_parent_links upload_folders_parent_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;
 d   ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_fk;
       public          postgres    false    285    5079    283                       2606    18043 >   upload_folders_parent_links upload_folders_parent_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_inv_fk FOREIGN KEY (inv_folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;
 h   ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_inv_fk;
       public          postgres    false    285    5079    283                       2606    18048 .   upload_folders upload_folders_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_updated_by_id_fk;
       public          postgres    false    221    283    4916            �   1  x��ZMs�8='�"��B�~���63�h�l0��$�����Ȗ�jӌ������$�ZO��F2�;TϏe�eχ�ɋ��yq�㿻/����w4�|�m��b��<T����_>��y�]S/�[�})��2� ~b`s���t�E�a�^&|
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
�4�Y~UK&���9qHkH��c���.�p�4w��w�}r�QJ_�Kfk      �      x��\�n�H�}���@
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
�|�I��g�׵����,O7(L�������_&\��      �   S   x����PѳS���B�u0�Do�^�-����FG�>J��u��PZ)nu�z�!���Kp�b Q������}%      �   �  x���Ys۶���_���%��X�4ʭ�Qݛ�I�Lg0�HI��%Z�e��/H�d�z&�}���6�(H�d����j���/W��~����M����E�����8����A�q|;+�odg�|;��7��Yy��~9ۮ�����e�H����FY���4�˃��,��o���{�F>咄2�aFX�n�.��Ô!f��l�Y>K���eV�'��Z�S�_[&��=�mQ����c� "��]�V�� �e۳|<)�p
��wϒ�0aV����1�ifZ`gf�5f��D6��|;3a����k�������0,ְ�GKǦ�Sb�L���<ɍ���7���u�߳���_V�NQ��{`�������\�O?);�-�[,�IQ~�:�ʽ!$!�T��9'P�Z�� ��4����5�lNW���_�/?�F��7�>�, �
{�W�TG�Re�U6y���X^>ʏ�7������!�Ld������T�6lZ����c�g,r�W����N8":Rv�	]��g\!:a����PD��(]��hS6:�J��QLh�z�v�VDD!�"��ݠ��Z�W���$+��*�%�<�fɝ|;��TD��4����H�F�H#��H�g߻A�� Ao�V!L˅Q�[�����z����CӒ��
��9U��Z��%����p�DGt��y���c�{���&Q��VM�iE����zR� �[�W���f���S�����j��Wd��`r7�/�N)��L{��r�}.�3��/���#(RF�5n����4ZJ G�����5���;@�@G��n~�g�����#�:�Nu���'����x�A�O�߾��#|0�w�lPpܴ ��^�,�m>.�M6��5}M�����8�G4"��}(SI-��R�;��� 1�"m.�QLK�1�v�a
���Rs�bjj�qdzݬ�?r��/6�0����9���I���������c��W�Q��=�	C( a{��5�}ǭ�+�ǁzg�Qx���a�]���'ӿ>,>����B���D�)��ϥ�$��*����w2�d��$����1�!��GG�������\��F��G������;�]q��{��O,��bd�����u����n}B����a���'PM[���8L�����:�\���^�����`�.�L���ɷ�����h%�$B���X�0_�9���1��[�·�^�B�/�8�RV��%�p<H�İX�qf�ZJtV/�xsc�L���lyƢ����ǀa}eƒ�I[�i����(�Y�'a6��7Y>/6_�~��n5��x�r"7V�<�)����2�T��'��)'<KZN��F1�����n�������[S{"Cjx��hj#�������ܓA �{��m�}Na��s�d�t_�J�����6��vBc �^�.h�N����q0Mfy����&)��<�������p�o^��He<�w|�Kj��u_���/�t��M;�B�D͢w
ej{s&��:�Q�;��;���� D�đK�1|'}bW����ی턤g8���O�S�*5����Q/�p��]Yg�UBD͓��zU%��, Y.�l�l�p�����{��b�T"�<�r8�_��J$U&ٛI�K;��R!���؄����^������X�<�!5�W�:*��\��M<��o񋝾����zF��>|�ڷ�@�sYQy�=���=���8n�z��=����
g�cƷ7�|���
��|(!�#�+[e�e���2�Ty�Q.�hH��E�v1�wc��.+��#���%���*� <6ȧ�m�Ջ�S�mW�G���#>'�g���k��V/xЃ�;j�j�j{M�"�&q{�g�iYgw�28	��U���*O�W^\�i?�?Ei�ë<�G�y�F���J�m"�0�e�A��m��z܌B���~ġ>X�.�E�����p��e{�O��2scluOjv�,M�Z�e��F������O��6�>D������.h���x~��cʕ���,���?	L4��q'v�|U�dNb��p��6���NS�mn��D�z��f�Ĥ��w��Ө���h1ä�Gn5V�Q9Q���Zw0���m�d�_�N.45���1��0m}=j��)0z������"��W�^�Y�*�      �      x������ � �      �   ~   x�}�;�0D��z1��ǎ���D� ��~��f�9�H�+����6���.���:�I�1Gʵ(3�B0E�@(&H�a�p��9m���+����D�91��OK?k>���z]�ےR�����      �   r   x�3�t�K��,�P�H���L��4202�50�50Q04�20�20�315�)�D\F��E%�饩ũ
NE�U�9�
%�NA��`
a��������������	NqCNC�=... �$�      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x��]�n�8���<EM�gaWb'Υ�ӻ��4�3�$�e�$(�%��m���Tv܍�5���I�w񪢪���&�'�E���<������Q���`:�gi�j����
���ZQ�����A9�F�
��i�,KT��q	�
�W�x���r�\G�	O�b���T���� *�K�I��}G�>8�"��A���h�y�c���I�6+�����������(����c�/�a�~�����q]��A�6�JD��{���kb���R9/`N�у<��`�%�=���P�S�z1���9|P�n^�:�q�t"󿈒Ry� �A����+㼨~k�>ÜR�
� K�}����T�ǈ*b�ʯT��
y?~��irJ��ͣjfR$�c۬/q� �@|a�ں��lp���Dއ�u�y�{�U&�b\��w�+*ܟWU"�(+�X�ݶo�;ԅ}����	Dwٺ"ƃ��@�f후�$j�阽�P�����7���B�]PPp�ԓ̴��jm�U[d��՞����<�����(#�}|����pP���N��3���� P��������#�ev���yޏ��}yS:7Y����T��e�J�;�f�W�����A�T��K0Ki�~J���/�� N����Y|�ն����?� C� 	+h��h*������h@��>@#��I�]�~�7m|����S�a�����?�ՠՅ�D�j�>�&QY�/]�N*�Y��W��AC�sP��.�c�e�^��#�Ue�GM<D�� �`��8�V ӎ"e����T�9����7�;0�D@�YF{�P��G +�b�;A�'a7r���t�mP�h#�w|Y�e��m����RK��fN���9C6ۭ;���8����r��q���!�b	!�b	��eb	��8�`�7G��]7F���O�@q:>|�>�A�����j"N����;�	�f:]�I�d����a"<�)���|��-�J/>���˄E��/��ti�&�q�jic��� �������u�YI
�>.�bU��/�ǚ�_�b��i&�{DJ�g�ݗ6�k�
�M#y�k��o�[Zn���\�����O�X!z�g���E>p��{;Ri?�$��o ��z鐖�t�o���&��J}r.��g �W�O:h�ŧ�����ʯ#��J�qA��Vk�Vn������[�{-�K�UZ��X�]~-��]���!v���ф��ߛ��k�0*�ZC��<l�Y�h��(�K�Ab<�$�A�a�A�1r$��VTDKz�B����%;���@�G�����0����(;�R�xi�=j@
�6Yg�wd@3�b�\p���枙�V����U�d�d�,�JXk�~ ����N�ʪ�r���Y9_�U�@�����<K@��^2 �k���0]d�2��uM�"%V�$*^��$�� ��%Ĳ����K�4Y^��r�c6�ģ1{���#U 7Ǣ���5�a�"�]��^�+������1z�1��/@z�m�)�OQ���m�c�L���Z��B�=`0�z����b�����k���[{���U�'Ʋ�e��Dl�'~E�(�{��J��4��i�XE�����s͛����� �f���+^���,�O�|��5p����aF������R)/��KH����&����6���"6c&o6.�`�|�S�px"�A�v�D�i)����&]��yĸ��B��*�.������3��q�9O?�i��Ҿy��6�b�V��M�>��V�K[Tc���ֵ��)�l���Xz�����>L$r�o���^֬f���4/�Gey��ԗxԲ;���D�e %�^�n��s���Y��~��(~��ay1��y��e��N$�m�l}��*�vRc��l�7�W��\٭��4:lF��(����$�_���W�� Hv^D�\!��=Q��٦*��᰹�	XS���,a�߸��tZ��7�.6���b��.����Ҫ���5Vm`�WWܼ���6�t���Ƒ�^3�ln��)�F���}���x��X�d~��c�{�Z���HY�w�;0�^Ey�t�ϩ5m�[��;&��ޯ��\	 �;6�Š�s�U���!��K�!A-�͐�K���Φ�����Ju���蝸ب�`M[�CQ`*�LNS�@E[/��+R���ɠ��|i��W������',�ߋO�4�R�X'�	M���o]V�
��z����FK:�� ��Jj� ݻ�o%��4��[�~��q��s�.������9|Y�"U�ʍL2i��ݑV0����Af�* ��f��5"${��4�n��]���ګQ�D��[ɓ�SEV���E���@Gc�������pL��?�Nw�NZ�~sˈ�C����R6( ��D��X�׺Ҥ[-5�ڠ~'�[p���;�ٷ���{�`f��fvxfv�g(��is3���1��m���>��h��i���ոr��C{,��$��͎�G�����w�
ۇB�O�ʈ-��MWxR��l�v���4���m'�	���Ӓm������ٯ�Ⱥ̪7⹍�ٳ�����p_���فw�Vc�s����z�=1��U�x7g�iw�[M���r
�]{�$W��Sb;�kÚ�R�w\┨/��FClO�qnatܢ&8�� �|���������C>c.ey$�2#�1�r0�i�f�.�'Y��O�0������:I��C
=6}�����K���QvP�K���g6:��l%m�����L�� ��j�O;c��C	8$��?3�5��d��Ӷ2�֚����|O��jYZ�Y0�:w"�F�u磯�w�L��,	�M�}�7r�_�V��,-y2ޞ�\�m��!%���vn�N�6ao��R���a������������l^
P��V�����r]� ]�������7��`�.��<�/�
�H
����ƈp!F����K����VJND�:]7�nO���^��"ZTi�z}�@���|�j({;����.^'5��ߑؚ���UT�e�w����� m�����&dD��*��W�i:��,�H�����7���b8llD��ۈ�=l-t^.��%o��Q��	o)	��PlW���m�V��M�Nj2V�]��CT@*�[�>g,b���I8b��n�Y��gG�Y�C뀴1J�-��ݡ|�8+��^_���h�O�@[���fWn;X�`Q��E���ײ���WD|w�_�:��>M'�9�U��>-iN��Hչ�P���@�o[�l}O���Ğ�lk����Ŧ�;�3 ���p���2ز���3~l�[�|&�K���ӧ/�˻�8ˠ|}���:o>B��93�ŷ�r�]��w�{����>�1a,�a��������+���߆>��V�/�xy�M��m���ZJ��@9dڑи�+��P��=��W�w�-���[��^��ޚn�>3���'�KN����!��᰹�+f'�����tA�H����Tp��CQ�Z��ѭ���c]V�*/�MdE��>E���.��T��76|������S`��b�w�@�f�O<p��U)�����Es��+Z�F�#����<@� �|�`������ {Wܪ~�u:-������C�h�YԠ��	��Y(�D�P�����g��*1>�꓏�
_�%����~�# �A���~�*�s�8�o��zY=�(I��=W-�[��-�(���M�UV�M�/�Lk��P(mUɐ�tsB�;Df⣬�v�����'�5�#�ù$��ALȿ�^49�b���A��J�ǃbs�=:�����ND��FG�p�;���c�Rչ4�8g��nN/�n�������a��l>��T�F�D?gu{�
V��<�Y��ΗYXj��(��N�FYţ(��P�ن�3�%�-�����p�0T9��iJ���J�)Z�
�M��v�1�6��}VP��j��䂴����~������y��<*���������F�"�������)���W��&� 8  �C�%4��A������oѥ��n�M�+�v�dݥ��1�bm�ʰ��[&�ZU�G�D�EZ��a�>�!p2U��|ˎ%(pP����&�3%gFȎ�Uipb����W���Ǘ�{���H��3��6��i�R<,�t*i�RPUHȈ�]��k�gt^g����G(X�\��[�a�����eE���۬�X�^k٫�l�/��Hf��/&����H$+>6ԋ'�%@�1�l������_�]�TTƴ�J����e�����}abR_&�2uV���\���>����)���e}�)��S�ҙ�g���S�aO>��s(��I�����^:ǖZ�xg�f+��~�^�
��3��2�-�J=��ٍ�;�����j�(�Cd$�^c�������8�q���5n�2��8	(�,��ҹ>��:u]�#[���X ��^D�"_l�z�^l�ى��BJg�.�E�d�^nN^�~N�«L�Ÿҕ�c\�hͫ��Ǜt�b���P��n���pwٚV��>P�*cA	n	D�阽�:���	�~,%K�A+�t�A9��l+`������� ������%3gig�&�5��T>�H����N�#�눽��D�/}�d+8�z�N栫��R��D��.lqHh\^py��]�Pj~�Y����&��\�L��u�\sg�U�,]̾�l]G�:�����c�wyԱw�oԫ_q�P�,�-P�"H�m��,��}p���a��o�9�hԺ{a�婚�X�����tԑHyj�T�N�b"��-��9��;B��|��ƟkX<	��6��\k�ز:���h��Ǌ\)��1�����Hʮ�
I�E�%a��},)K��fe��q�z�p܆�5���<�J��K7-���-T�!42uV�����x:����i	�p(P�#��g�I���}#sWi���uk�t/����K�"��~$��X��>�>�j_l�ٕ���W����> i,yY/A˚����oYcJKzNN�_�ʢ��.�|ڹgb�K,��T��dI[E(U*<��h��l-�%�6���ʍ�\p�@Ug��*��^��zKD�X�҃@�!o�#c��(�C<E��uC|/Ѹ���F[w18���,�"��;Ǯ~��<�.��s�]� Ă~	�Ł_*~O^���Lٰ�s�T���Q?�q4���Ǌ�
����S�S��F��� >���&����q�n.&���Kd�*���Kc�h�ũ�_��?�v~�'Yϸ��fQ�yV�w����`�����	-�Sv쑖E�*{U@�X�:}�uz���XP���ǣ*�����ؔkg�E� c�cvUDi��֧JR<K"����H2��a9��&xe&;�6�q<�wT�J�x���hē�h~=&Y��Y�gM�2��@GSdS6�\.�_f�u��I��:*@vxS+?5WYv�քvX�=�����r}��/�Ц_���/��LkVp^de��ظ�i�ݖm�d�� �ń��V;jdg��h� kRw�W�iYEHUV]�uZt&9�v�B����M���\���f�l�q�/��-��rh�K�N��J������Q�����b��
�1GV}F����w��&�Ja�5p�E�\_�v�����D�9�g+������)�@J|�,-�2p��*�X����96�h��]�>p�l���	ZQE8���1N�+7bt�pɣ4��o�Ŵ.D����f9�D��3�� Y����Qk��c����'4D:�xt�<5����3L�v��~��7$��͌c��$�����$Aݗ�rb�M���������}m&��d����?�u&X��+0Ѫ��,���X��(2b����o+�t�^G)H�@!�� O�����f㍀�`ƫ�.�ۡ��`VF�����!I�������CǣjU#��GIV�_
�f2Bk��n]"M*�����?��?D��4���߿��-�����"B�(��D�h���]َ�UUو���ϔQE$����F�߼����� �o��w����%z���n���?�S�3��e�<Y����/�\�t����9���HcL�9��d�Y1*��!V'��2�x�9:��s8��k��8�����F�
-��ۉBS���C2K?���y�$�w�ּ(���9���ѯ���b�,T�B� �� _s�"]���0���1,x�5Z�_ܤGJ���v�����г�r�)�z��,�z�e�D�躯��D���<�����N��%eDt�#����μ�T�ƭR>��_'������~g��3|7�e��CR2I�����~�7������Ԕ�a2�%���Q�!���!����䞋�Hj�lfa�,���ĵ�M���l����S(28S�s1Ͷ�CR��j����b�9x��� �.ŷ֌ۋ<}u��Pd?7�3����x��6����f�A����|x����̇�bI�9n�[,���%ז�<��������3m�y���6�- ���[v~Q<?=<������tLG���z�ӥ���O�<;r��ѹ� vˉh�6�	~X������MYհ�z�!x��탷���FQ�2���u�%����v/�����O�����i^d��D:[��-^dW�����?'9��2�_"Of���������z
<��)�(�kX�[W���C�n� ^-Ѡ�><C��om�ZlDN'O�ʹ|�Yl�cӵ�O<�\�18_8X�+tɢ�{v�Z�h�W�î�������z�^O@�9�rܲ��A>1�!_O[<��}v�T�)]=��(�/w����Gx� Ϡ�6>sf������� ;����gw+��f*�u�����H�jk�Xo)��X7�'����qo      �    
  x��]K��6>'������n�&�['ɡ�N/IOmFCK�ͮ,��ɦ��^Q�EQ$Ehc���� 	| ߷���s(�8u����	�;wNJ׋즴�SJ�}���KA�i���d����(Ȏa���R�1.�z	>�2N(ٗ�qB�(yt�h��U�Ϝi�˷���w(��ȹ� X9aD����t��ea��}�n��[�T��Y�t�k�W��?ɽ�&b���7(�B�N�����
���I��u�����j	��3����\���`7dI���0�q�6��I�pk�l��2El�(�(4k��?�Ѝqr$iJ��k��dnn��b��>��ww�Nۢ��WG(��b_���5�4p%S:���p�C����XfiiJ�����h����̇�����w�Uڼj�-� ����@�7FI�o
i��{�q-N�ܮ(�����'��0!�?�V{17��I'�m����8�a>���4m~���'U��L-��x��9m^8鰶@���_��h�)f���ٰ��|@Ѩ���IR
��^�h��H �P�~�RF�SL�Z�K�{�J$xOذ�H(����e��C��	)� ��A�휥��P���ԲmZq�iEX�V3ӊ��ٴBC/��B��W�V@Gb/�A��8�C�-�^2�V���"���69��:B���J[P>7Є^kC����^�dcbfbO���KL���*�NcԲ�-��:�m���p;�`'*a,�,��|��l�$�4�➅�+����0�]Bf�ѣ�}}v�Ao���ݬ�_�]�p��p������c��bf�'���T��va���qGF���8�P�k���E��;f���-h����|�T�)ԩU�_cU<v-���֘�[�x����x|
Z))����~�〿p�R	���6�j\�6��أ�d|Ѩ���!
(۵��k��9�h���������IT�K8�.u��"r�="�C;� �ؐ��)�P��2y�rDA#�f��5�6%�Y�@�g\L�@����e�GLQ�g��%����]+q���&2���J�}^^Y}jr�\4�7�Ψ�ѡ@w0�G7a��1����2��S]��<�Q:
dnf��g���iQ:6��#�;�}�cx�ZO�f��*lq��y���?R��,xj5���Q;^��f�K6,�Kn�n%�jZCA��&V�i�\�ҫ�E.�4�)�cWB���E��!�� �P *��n^���}@�=�m��%�9r�&tO��	n-���a*�i���+zEz�}
���%�aO����X �G9G;��CR�I`3Lp�N�uh��MGO#`����\�)��������+Q�sp��e�z㬽��o]b7��P�EᎰMϋ�PZI�=t�JmԽ䨛�~l�}�_t-J[cU�tIU�rWfY�4J��l�EY{J�b�%c���G	��t�����.3q���}�>_�6��X��S]� AU��W��Ѓ�.r⿪���]/]O��I kI���U]D���BSm �T�zW���P��dն�%r`և]���ƃ�1Ĉ�e��Ʌ��BTh������ؠ�dxЬ���+�pQ���qc8��i}A����6v��ᶺ.���^9��6����F�H0|ʝm�s�_ ��YC�Gz!>X�U���UW�U�Tp׍PH��k�x��DD�'�5�0����~�V�x�ˇ���{/� ®�R�ީ�S껍^}�Æ�mE,���(��b��!�j��$���YTʜr�1�vY5����L-_`��Kl��V#�,^%%e�I�͵��Nge�H����;g�i�i��5<�	��*��l���J�ܨ1͜�\M)]�<�S{Փ'�Ri����b'�w�"pM��'FV��0S��C�q���N�/"gќp�)Y�c10��b#p')��;�����0UX�O�4�J�3��JI�,H��A��a")�5k?&jqv(<e�`�4�9a��r��F��bj�%�a{y��eD}���QdpI�p�-O|�,��Q�N,$��H����{�����B���Y@
�����Y���z�@�{���S��*��¼l�1�A��a;��̧��1%sZQ���ں��4-�6�&x�!F	�MR ���.�����7eN\�hu\�� EDRpR���pjc}t]��t��&�_�\�{zvHXr��ԡ����SU:�x5TsՑ1=�#�9X=��S9��Ao�cx���\ͼ�����!Gru3/ �c������Qr��Y�<d7K�s0�+k\��-Y����(�k���Rg��nÚys���	��_��)�ɠ��mW<��wK)5��S�m�Rn�+A�����֥�@|y�ǣ��k+�FN�����D"Ł'V]f��3G�R�4L�������m�f�+*ӹ���e0`��nY@1mÄD��ȝh�(��uN�?#81���J�<^pY$L�4Z�5��{�gA�P���W����;P�L�<N|���v}�y�~��v����n����͏��ͳ����z��l��7k��lon6/7�7x�ï�����?>����-      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   g  x����N�0��q� �㧧�S�vRY��%m�x�v�#�:4!��$��
p�5}-c��&�0��Vje�9�ء�$�IJb�YJYJ .��|���ȼw'P������C���l�M�ʫ���x1|��R�ry���ڭ>�pKj�B[.���Ҵ��{ˊP����<TdD-�f���}+��j ��N2�i����(��bX2�1�R����[س[�l�*�D��'�\̇D�/���,�#����a�q'��k4?�?M'�K|�l�2N�j�e���p�����Fhx��{`8�G��� @�R<b�66�������i�p��1D�f�`�O~��|D�:�>w�(���ˏ      �   b   x�%���0��0�L!�t�9
TB��!qzqa�7���Ec�r�8ËjC�cQ������N%Ԧ`A9�JP�C��}?i%kߥ��'���-�      �   �   x�3�t,-�H�+�LN,IM�tIMK,�)Q(��IUH�,K�S(�WHDV�PZ�Z�ǉ"�id`d�k`�k`�`hle`je`�gl�K8����8J�r2�qXZ���������-��LͬL���-��6��qqq ��D�      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     