PGDMP     #                    {            tourism    15.3    15.3 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    25431    tourism    DATABASE     {   CREATE DATABASE tourism WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Turkish_Turkey.1254';
    DROP DATABASE tourism;
                postgres    false            �            1259    25433    agencies    TABLE     [   CREATE TABLE public.agencies (
    id integer NOT NULL,
    name character varying(255)
);
    DROP TABLE public.agencies;
       public         heap    postgres    false            �            1259    25432    agencies_id_seq    SEQUENCE     �   CREATE SEQUENCE public.agencies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.agencies_id_seq;
       public          postgres    false    215            �           0    0    agencies_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.agencies_id_seq OWNED BY public.agencies.id;
          public          postgres    false    214            �            1259    25440    contacts    TABLE     �   CREATE TABLE public.contacts (
    id integer NOT NULL,
    emails character varying(255),
    notes character varying(255),
    telephones character varying(255),
    rezervation_id integer
);
    DROP TABLE public.contacts;
       public         heap    postgres    false            �            1259    25439    contacts_id_seq    SEQUENCE     �   CREATE SEQUENCE public.contacts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.contacts_id_seq;
       public          postgres    false    217            �           0    0    contacts_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.contacts_id_seq OWNED BY public.contacts.id;
          public          postgres    false    216            �            1259    25449 	   customers    TABLE     �  CREATE TABLE public.customers (
    id integer NOT NULL,
    adress character varying(255),
    email character varying(255),
    first_name character varying(255),
    gender character varying(255),
    identity_number character varying(255),
    last_name character varying(255),
    region character varying(255),
    statu boolean,
    telephone character varying(255),
    rezervation_id integer
);
    DROP TABLE public.customers;
       public         heap    postgres    false            �            1259    25448    customers_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.customers_id_seq;
       public          postgres    false    219            �           0    0    customers_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.customers_id_seq OWNED BY public.customers.id;
          public          postgres    false    218            �            1259    25458 
   date_rooms    TABLE     �   CREATE TABLE public.date_rooms (
    id integer NOT NULL,
    dates timestamp(6) without time zone,
    room_id integer NOT NULL
);
    DROP TABLE public.date_rooms;
       public         heap    postgres    false            �            1259    25457    date_rooms_id_seq    SEQUENCE     �   CREATE SEQUENCE public.date_rooms_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.date_rooms_id_seq;
       public          postgres    false    221            �           0    0    date_rooms_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.date_rooms_id_seq OWNED BY public.date_rooms.id;
          public          postgres    false    220            �            1259    25465    features    TABLE     �   CREATE TABLE public.features (
    id integer NOT NULL,
    active boolean,
    description character varying(255),
    property character varying(255),
    room_id integer NOT NULL
);
    DROP TABLE public.features;
       public         heap    postgres    false            �            1259    25464    features_id_seq    SEQUENCE     �   CREATE SEQUENCE public.features_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.features_id_seq;
       public          postgres    false    223            �           0    0    features_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.features_id_seq OWNED BY public.features.id;
          public          postgres    false    222            �            1259    25474    hotel_features    TABLE     �   CREATE TABLE public.hotel_features (
    id integer NOT NULL,
    actives boolean,
    description character varying(255),
    property character varying(255),
    hotel_id integer NOT NULL
);
 "   DROP TABLE public.hotel_features;
       public         heap    postgres    false            �            1259    25473    hotel_features_id_seq    SEQUENCE     �   CREATE SEQUENCE public.hotel_features_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.hotel_features_id_seq;
       public          postgres    false    225            �           0    0    hotel_features_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.hotel_features_id_seq OWNED BY public.hotel_features.id;
          public          postgres    false    224            �            1259    25629    hotel_images    TABLE     }   CREATE TABLE public.hotel_images (
    id integer NOT NULL,
    url character varying(255),
    hotel_id integer NOT NULL
);
     DROP TABLE public.hotel_images;
       public         heap    postgres    false            �            1259    25628    hotel_images_id_seq    SEQUENCE     �   CREATE SEQUENCE public.hotel_images_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.hotel_images_id_seq;
       public          postgres    false    244            �           0    0    hotel_images_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.hotel_images_id_seq OWNED BY public.hotel_images.id;
          public          postgres    false    243            �            1259    25483    hotels    TABLE       CREATE TABLE public.hotels (
    id integer NOT NULL,
    decsription character varying(255),
    name character varying(255),
    rating real,
    stars integer,
    telephone character varying(255),
    type character varying(255),
    agency_id integer NOT NULL
);
    DROP TABLE public.hotels;
       public         heap    postgres    false            �            1259    25482    hotels_id_seq    SEQUENCE     �   CREATE SEQUENCE public.hotels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.hotels_id_seq;
       public          postgres    false    227            �           0    0    hotels_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.hotels_id_seq OWNED BY public.hotels.id;
          public          postgres    false    226            �            1259    25492 	   locations    TABLE     Q  CREATE TABLE public.locations (
    id integer NOT NULL,
    adress character varying(255),
    city character varying(255),
    description character varying(255),
    district character varying(255),
    feature character varying(255),
    latitude character varying(255),
    longitude character varying(255),
    hotel_id integer
);
    DROP TABLE public.locations;
       public         heap    postgres    false            �            1259    25491    locations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.locations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.locations_id_seq;
       public          postgres    false    229            �           0    0    locations_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.locations_id_seq OWNED BY public.locations.id;
          public          postgres    false    228            �            1259    25501    prices    TABLE     �   CREATE TABLE public.prices (
    id integer NOT NULL,
    discount integer,
    q1 double precision,
    q2 double precision,
    q3 double precision,
    q4 double precision,
    type character varying(255),
    room_id integer
);
    DROP TABLE public.prices;
       public         heap    postgres    false            �            1259    25500    prices_id_seq    SEQUENCE     �   CREATE SEQUENCE public.prices_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.prices_id_seq;
       public          postgres    false    231            �           0    0    prices_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.prices_id_seq OWNED BY public.prices.id;
          public          postgres    false    230            �            1259    25508    rezervations    TABLE       CREATE TABLE public.rezervations (
    id integer NOT NULL,
    adult integer,
    childs integer,
    day_time integer,
    due_date character varying(255),
    start_date character varying(255),
    total_prices double precision,
    hotel_id integer,
    room_id integer
);
     DROP TABLE public.rezervations;
       public         heap    postgres    false            �            1259    25507    rezervations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.rezervations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.rezervations_id_seq;
       public          postgres    false    233            �           0    0    rezervations_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.rezervations_id_seq OWNED BY public.rezervations.id;
          public          postgres    false    232            �            1259    25594    roles    TABLE     X   CREATE TABLE public.roles (
    id integer NOT NULL,
    name character varying(255)
);
    DROP TABLE public.roles;
       public         heap    postgres    false            �            1259    25593    roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.roles_id_seq;
       public          postgres    false    239            �           0    0    roles_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;
          public          postgres    false    238            �            1259    25517    roomimgs    TABLE     x   CREATE TABLE public.roomimgs (
    id integer NOT NULL,
    url character varying(255),
    room_id integer NOT NULL
);
    DROP TABLE public.roomimgs;
       public         heap    postgres    false            �            1259    25516    roomimgs_id_seq    SEQUENCE     �   CREATE SEQUENCE public.roomimgs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.roomimgs_id_seq;
       public          postgres    false    235            �           0    0    roomimgs_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.roomimgs_id_seq OWNED BY public.roomimgs.id;
          public          postgres    false    234            �            1259    25524    rooms    TABLE       CREATE TABLE public.rooms (
    id integer NOT NULL,
    capacity integer,
    description character varying(255),
    inventory integer,
    number_of_beds integer,
    square_meters integer,
    type character varying(255),
    hotel_id integer NOT NULL
);
    DROP TABLE public.rooms;
       public         heap    postgres    false            �            1259    25523    rooms_id_seq    SEQUENCE     �   CREATE SEQUENCE public.rooms_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.rooms_id_seq;
       public          postgres    false    237            �           0    0    rooms_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.rooms_id_seq OWNED BY public.rooms.id;
          public          postgres    false    236            �            1259    25600 
   user_roles    TABLE     ^   CREATE TABLE public.user_roles (
    user_id bigint NOT NULL,
    role_id integer NOT NULL
);
    DROP TABLE public.user_roles;
       public         heap    postgres    false            �            1259    25606    users    TABLE     �   CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying(255),
    password character varying(255),
    username character varying(255)
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    25605    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    242            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    241            �           2604    25436    agencies id    DEFAULT     j   ALTER TABLE ONLY public.agencies ALTER COLUMN id SET DEFAULT nextval('public.agencies_id_seq'::regclass);
 :   ALTER TABLE public.agencies ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            �           2604    25443    contacts id    DEFAULT     j   ALTER TABLE ONLY public.contacts ALTER COLUMN id SET DEFAULT nextval('public.contacts_id_seq'::regclass);
 :   ALTER TABLE public.contacts ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            �           2604    25452    customers id    DEFAULT     l   ALTER TABLE ONLY public.customers ALTER COLUMN id SET DEFAULT nextval('public.customers_id_seq'::regclass);
 ;   ALTER TABLE public.customers ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            �           2604    25461    date_rooms id    DEFAULT     n   ALTER TABLE ONLY public.date_rooms ALTER COLUMN id SET DEFAULT nextval('public.date_rooms_id_seq'::regclass);
 <   ALTER TABLE public.date_rooms ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221            �           2604    25468    features id    DEFAULT     j   ALTER TABLE ONLY public.features ALTER COLUMN id SET DEFAULT nextval('public.features_id_seq'::regclass);
 :   ALTER TABLE public.features ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            �           2604    25477    hotel_features id    DEFAULT     v   ALTER TABLE ONLY public.hotel_features ALTER COLUMN id SET DEFAULT nextval('public.hotel_features_id_seq'::regclass);
 @   ALTER TABLE public.hotel_features ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            �           2604    25632    hotel_images id    DEFAULT     r   ALTER TABLE ONLY public.hotel_images ALTER COLUMN id SET DEFAULT nextval('public.hotel_images_id_seq'::regclass);
 >   ALTER TABLE public.hotel_images ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    244    243    244            �           2604    25486 	   hotels id    DEFAULT     f   ALTER TABLE ONLY public.hotels ALTER COLUMN id SET DEFAULT nextval('public.hotels_id_seq'::regclass);
 8   ALTER TABLE public.hotels ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    227    227            �           2604    25495    locations id    DEFAULT     l   ALTER TABLE ONLY public.locations ALTER COLUMN id SET DEFAULT nextval('public.locations_id_seq'::regclass);
 ;   ALTER TABLE public.locations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228    229            �           2604    25504 	   prices id    DEFAULT     f   ALTER TABLE ONLY public.prices ALTER COLUMN id SET DEFAULT nextval('public.prices_id_seq'::regclass);
 8   ALTER TABLE public.prices ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230    231            �           2604    25511    rezervations id    DEFAULT     r   ALTER TABLE ONLY public.rezervations ALTER COLUMN id SET DEFAULT nextval('public.rezervations_id_seq'::regclass);
 >   ALTER TABLE public.rezervations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    233    233            �           2604    25597    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    238    239            �           2604    25520    roomimgs id    DEFAULT     j   ALTER TABLE ONLY public.roomimgs ALTER COLUMN id SET DEFAULT nextval('public.roomimgs_id_seq'::regclass);
 :   ALTER TABLE public.roomimgs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    235    235            �           2604    25527    rooms id    DEFAULT     d   ALTER TABLE ONLY public.rooms ALTER COLUMN id SET DEFAULT nextval('public.rooms_id_seq'::regclass);
 7   ALTER TABLE public.rooms ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    237    237            �           2604    25609    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    241    242    242            �          0    25433    agencies 
   TABLE DATA           ,   COPY public.agencies (id, name) FROM stdin;
    public          postgres    false    215   �       �          0    25440    contacts 
   TABLE DATA           Q   COPY public.contacts (id, emails, notes, telephones, rezervation_id) FROM stdin;
    public          postgres    false    217   :�       �          0    25449 	   customers 
   TABLE DATA           �   COPY public.customers (id, adress, email, first_name, gender, identity_number, last_name, region, statu, telephone, rezervation_id) FROM stdin;
    public          postgres    false    219   W�       �          0    25458 
   date_rooms 
   TABLE DATA           8   COPY public.date_rooms (id, dates, room_id) FROM stdin;
    public          postgres    false    221   t�       �          0    25465    features 
   TABLE DATA           N   COPY public.features (id, active, description, property, room_id) FROM stdin;
    public          postgres    false    223   ��       �          0    25474    hotel_features 
   TABLE DATA           V   COPY public.hotel_features (id, actives, description, property, hotel_id) FROM stdin;
    public          postgres    false    225   {�       �          0    25629    hotel_images 
   TABLE DATA           9   COPY public.hotel_images (id, url, hotel_id) FROM stdin;
    public          postgres    false    244   �       �          0    25483    hotels 
   TABLE DATA           b   COPY public.hotels (id, decsription, name, rating, stars, telephone, type, agency_id) FROM stdin;
    public          postgres    false    227   "�       �          0    25492 	   locations 
   TABLE DATA           t   COPY public.locations (id, adress, city, description, district, feature, latitude, longitude, hotel_id) FROM stdin;
    public          postgres    false    229   ��       �          0    25501    prices 
   TABLE DATA           M   COPY public.prices (id, discount, q1, q2, q3, q4, type, room_id) FROM stdin;
    public          postgres    false    231   ު       �          0    25508    rezervations 
   TABLE DATA           z   COPY public.rezervations (id, adult, childs, day_time, due_date, start_date, total_prices, hotel_id, room_id) FROM stdin;
    public          postgres    false    233   ��       �          0    25594    roles 
   TABLE DATA           )   COPY public.roles (id, name) FROM stdin;
    public          postgres    false    239   ��       �          0    25517    roomimgs 
   TABLE DATA           4   COPY public.roomimgs (id, url, room_id) FROM stdin;
    public          postgres    false    235   ݬ       �          0    25524    rooms 
   TABLE DATA           t   COPY public.rooms (id, capacity, description, inventory, number_of_beds, square_meters, type, hotel_id) FROM stdin;
    public          postgres    false    237   X�       �          0    25600 
   user_roles 
   TABLE DATA           6   COPY public.user_roles (user_id, role_id) FROM stdin;
    public          postgres    false    240   k�       �          0    25606    users 
   TABLE DATA           >   COPY public.users (id, email, password, username) FROM stdin;
    public          postgres    false    242   ��       �           0    0    agencies_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.agencies_id_seq', 1, false);
          public          postgres    false    214            �           0    0    contacts_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.contacts_id_seq', 1, false);
          public          postgres    false    216            �           0    0    customers_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.customers_id_seq', 1, false);
          public          postgres    false    218            �           0    0    date_rooms_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.date_rooms_id_seq', 1, false);
          public          postgres    false    220            �           0    0    features_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.features_id_seq', 149, true);
          public          postgres    false    222            �           0    0    hotel_features_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.hotel_features_id_seq', 150, true);
          public          postgres    false    224            �           0    0    hotel_images_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.hotel_images_id_seq', 1, false);
          public          postgres    false    243            �           0    0    hotels_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.hotels_id_seq', 25, true);
          public          postgres    false    226            �           0    0    locations_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.locations_id_seq', 25, true);
          public          postgres    false    228            �           0    0    prices_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.prices_id_seq', 75, true);
          public          postgres    false    230            �           0    0    rezervations_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.rezervations_id_seq', 1, false);
          public          postgres    false    232            �           0    0    roles_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.roles_id_seq', 1, false);
          public          postgres    false    238            �           0    0    roomimgs_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.roomimgs_id_seq', 1, true);
          public          postgres    false    234            �           0    0    rooms_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.rooms_id_seq', 75, true);
          public          postgres    false    236            �           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 13, true);
          public          postgres    false    241            �           2606    25438    agencies agencies_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.agencies
    ADD CONSTRAINT agencies_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.agencies DROP CONSTRAINT agencies_pkey;
       public            postgres    false    215            �           2606    25447    contacts contacts_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.contacts
    ADD CONSTRAINT contacts_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.contacts DROP CONSTRAINT contacts_pkey;
       public            postgres    false    217            �           2606    25456    customers customers_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.customers DROP CONSTRAINT customers_pkey;
       public            postgres    false    219            �           2606    25463    date_rooms date_rooms_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.date_rooms
    ADD CONSTRAINT date_rooms_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.date_rooms DROP CONSTRAINT date_rooms_pkey;
       public            postgres    false    221            �           2606    25472    features features_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.features
    ADD CONSTRAINT features_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.features DROP CONSTRAINT features_pkey;
       public            postgres    false    223            �           2606    25481 "   hotel_features hotel_features_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.hotel_features
    ADD CONSTRAINT hotel_features_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.hotel_features DROP CONSTRAINT hotel_features_pkey;
       public            postgres    false    225            �           2606    25634    hotel_images hotel_images_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.hotel_images
    ADD CONSTRAINT hotel_images_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.hotel_images DROP CONSTRAINT hotel_images_pkey;
       public            postgres    false    244            �           2606    25490    hotels hotels_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.hotels
    ADD CONSTRAINT hotels_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.hotels DROP CONSTRAINT hotels_pkey;
       public            postgres    false    227            �           2606    25499    locations locations_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.locations
    ADD CONSTRAINT locations_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.locations DROP CONSTRAINT locations_pkey;
       public            postgres    false    229            �           2606    25506    prices prices_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.prices
    ADD CONSTRAINT prices_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.prices DROP CONSTRAINT prices_pkey;
       public            postgres    false    231            �           2606    25515    rezervations rezervations_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.rezervations
    ADD CONSTRAINT rezervations_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.rezervations DROP CONSTRAINT rezervations_pkey;
       public            postgres    false    233            �           2606    25599    roles roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public            postgres    false    239            �           2606    25522    roomimgs roomimgs_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.roomimgs
    ADD CONSTRAINT roomimgs_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.roomimgs DROP CONSTRAINT roomimgs_pkey;
       public            postgres    false    235            �           2606    25531    rooms rooms_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.rooms
    ADD CONSTRAINT rooms_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.rooms DROP CONSTRAINT rooms_pkey;
       public            postgres    false    237            �           2606    25617 !   users uk6dotkott2kjsp8vw4d0m25fb7 
   CONSTRAINT     ]   ALTER TABLE ONLY public.users
    ADD CONSTRAINT uk6dotkott2kjsp8vw4d0m25fb7 UNIQUE (email);
 K   ALTER TABLE ONLY public.users DROP CONSTRAINT uk6dotkott2kjsp8vw4d0m25fb7;
       public            postgres    false    242            �           2606    25615 !   users ukr43af9ap4edm43mmtq01oddj6 
   CONSTRAINT     `   ALTER TABLE ONLY public.users
    ADD CONSTRAINT ukr43af9ap4edm43mmtq01oddj6 UNIQUE (username);
 K   ALTER TABLE ONLY public.users DROP CONSTRAINT ukr43af9ap4edm43mmtq01oddj6;
       public            postgres    false    242            �           2606    25604    user_roles user_roles_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT user_roles_pkey PRIMARY KEY (user_id, role_id);
 D   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT user_roles_pkey;
       public            postgres    false    240    240            �           2606    25613    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    242            �           2606    25582 $   roomimgs fk15ddkgjnd6vedsmvld5evmp1f    FK CONSTRAINT     �   ALTER TABLE ONLY public.roomimgs
    ADD CONSTRAINT fk15ddkgjnd6vedsmvld5evmp1f FOREIGN KEY (room_id) REFERENCES public.rooms(id);
 N   ALTER TABLE ONLY public.roomimgs DROP CONSTRAINT fk15ddkgjnd6vedsmvld5evmp1f;
       public          postgres    false    235    3285    237            �           2606    25572 (   rezervations fk20qethlbp02rwdami8hbc3j61    FK CONSTRAINT     �   ALTER TABLE ONLY public.rezervations
    ADD CONSTRAINT fk20qethlbp02rwdami8hbc3j61 FOREIGN KEY (hotel_id) REFERENCES public.hotels(id);
 R   ALTER TABLE ONLY public.rezervations DROP CONSTRAINT fk20qethlbp02rwdami8hbc3j61;
       public          postgres    false    233    227    3275            �           2606    25562 %   locations fk3uni8mne0skhsr58mj4saaeaf    FK CONSTRAINT     �   ALTER TABLE ONLY public.locations
    ADD CONSTRAINT fk3uni8mne0skhsr58mj4saaeaf FOREIGN KEY (hotel_id) REFERENCES public.hotels(id);
 O   ALTER TABLE ONLY public.locations DROP CONSTRAINT fk3uni8mne0skhsr58mj4saaeaf;
       public          postgres    false    229    227    3275            �           2606    25577 (   rezervations fk40u3xow2qus0lwh773p5jgdd5    FK CONSTRAINT     �   ALTER TABLE ONLY public.rezervations
    ADD CONSTRAINT fk40u3xow2qus0lwh773p5jgdd5 FOREIGN KEY (room_id) REFERENCES public.rooms(id);
 R   ALTER TABLE ONLY public.rezervations DROP CONSTRAINT fk40u3xow2qus0lwh773p5jgdd5;
       public          postgres    false    233    237    3285            �           2606    25547 $   features fk4wnerv9tdvmyo1hwd4c2pp14u    FK CONSTRAINT     �   ALTER TABLE ONLY public.features
    ADD CONSTRAINT fk4wnerv9tdvmyo1hwd4c2pp14u FOREIGN KEY (room_id) REFERENCES public.rooms(id);
 N   ALTER TABLE ONLY public.features DROP CONSTRAINT fk4wnerv9tdvmyo1hwd4c2pp14u;
       public          postgres    false    3285    237    223            �           2606    25537 %   customers fkbnt26fho26foqjlrni83ynsdr    FK CONSTRAINT     �   ALTER TABLE ONLY public.customers
    ADD CONSTRAINT fkbnt26fho26foqjlrni83ynsdr FOREIGN KEY (rezervation_id) REFERENCES public.rezervations(id);
 O   ALTER TABLE ONLY public.customers DROP CONSTRAINT fkbnt26fho26foqjlrni83ynsdr;
       public          postgres    false    3281    219    233            �           2606    25557 "   hotels fkcnd8jv7a9brkk43t1qgciuh14    FK CONSTRAINT     �   ALTER TABLE ONLY public.hotels
    ADD CONSTRAINT fkcnd8jv7a9brkk43t1qgciuh14 FOREIGN KEY (agency_id) REFERENCES public.agencies(id);
 L   ALTER TABLE ONLY public.hotels DROP CONSTRAINT fkcnd8jv7a9brkk43t1qgciuh14;
       public          postgres    false    3263    215    227            �           2606    25567 "   prices fkeilrtjmq53csjpth1hc8j6hgq    FK CONSTRAINT     �   ALTER TABLE ONLY public.prices
    ADD CONSTRAINT fkeilrtjmq53csjpth1hc8j6hgq FOREIGN KEY (room_id) REFERENCES public.rooms(id);
 L   ALTER TABLE ONLY public.prices DROP CONSTRAINT fkeilrtjmq53csjpth1hc8j6hgq;
       public          postgres    false    237    3285    231            �           2606    25552 *   hotel_features fkh7tbdngadmh0qiu2fxkw7qitn    FK CONSTRAINT     �   ALTER TABLE ONLY public.hotel_features
    ADD CONSTRAINT fkh7tbdngadmh0qiu2fxkw7qitn FOREIGN KEY (hotel_id) REFERENCES public.hotels(id);
 T   ALTER TABLE ONLY public.hotel_features DROP CONSTRAINT fkh7tbdngadmh0qiu2fxkw7qitn;
       public          postgres    false    227    225    3275            �           2606    25618 &   user_roles fkh8ciramu9cc9q3qcqiv4ue8a6    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT fkh8ciramu9cc9q3qcqiv4ue8a6 FOREIGN KEY (role_id) REFERENCES public.roles(id);
 P   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT fkh8ciramu9cc9q3qcqiv4ue8a6;
       public          postgres    false    239    240    3287            �           2606    25623 &   user_roles fkhfh9dx7w3ubf1co1vdev94g3f    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT fkhfh9dx7w3ubf1co1vdev94g3f FOREIGN KEY (user_id) REFERENCES public.users(id);
 P   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT fkhfh9dx7w3ubf1co1vdev94g3f;
       public          postgres    false    3295    242    240            �           2606    25532 $   contacts fkkgwqyoihcw3796hp0qfj806gm    FK CONSTRAINT     �   ALTER TABLE ONLY public.contacts
    ADD CONSTRAINT fkkgwqyoihcw3796hp0qfj806gm FOREIGN KEY (rezervation_id) REFERENCES public.rezervations(id);
 N   ALTER TABLE ONLY public.contacts DROP CONSTRAINT fkkgwqyoihcw3796hp0qfj806gm;
       public          postgres    false    217    3281    233            �           2606    25587 !   rooms fkp5lufxy0ghq53ugm93hdc941k    FK CONSTRAINT     �   ALTER TABLE ONLY public.rooms
    ADD CONSTRAINT fkp5lufxy0ghq53ugm93hdc941k FOREIGN KEY (hotel_id) REFERENCES public.hotels(id);
 K   ALTER TABLE ONLY public.rooms DROP CONSTRAINT fkp5lufxy0ghq53ugm93hdc941k;
       public          postgres    false    237    227    3275            �           2606    25635 (   hotel_images fkrj3n45f8oqy1yr996g14j757i    FK CONSTRAINT     �   ALTER TABLE ONLY public.hotel_images
    ADD CONSTRAINT fkrj3n45f8oqy1yr996g14j757i FOREIGN KEY (hotel_id) REFERENCES public.hotels(id);
 R   ALTER TABLE ONLY public.hotel_images DROP CONSTRAINT fkrj3n45f8oqy1yr996g14j757i;
       public          postgres    false    227    3275    244            �           2606    25542 %   date_rooms fkx94qef135dghfw6grp0sy10s    FK CONSTRAINT     �   ALTER TABLE ONLY public.date_rooms
    ADD CONSTRAINT fkx94qef135dghfw6grp0sy10s FOREIGN KEY (room_id) REFERENCES public.rooms(id);
 O   ALTER TABLE ONLY public.date_rooms DROP CONSTRAINT fkx94qef135dghfw6grp0sy10s;
       public          postgres    false    237    221    3285            �      x�3�)M/NM����� '[      �      x������ � �      �      x������ � �      �      x������ � �      �   �  x�}�;�A�a{�0���u<��3Hk��Z�!-���c��T��̧���������ǿ�����/ϯϿ_�|�x{2�|�h����c����ǉ��;7N>X
fb6�`�
P�`��:L`ـ	.�0f&�l��T�V�P�|���UQ�Zm�B�vT�V�P�U�Յ*��Fj��	�VЄZ34���N����	��фZhB�M4���PkM���.�zAj�ЅZ��B��[�>f]���.��Dj}���хZ?Bm�6C���!�F�j�g�:�PC���!���j�`
�Y0��4L�6+�P�S�͎)�&�NuxNL�6�P�S�̓%�V�j˰�ڪXBm5,��:�P[����������b��?����s�R��c_����
=��}�yL����c��W�_�J�a�;a��L��36��L0'Ca��L��r2v��\-'sa��̅�r���d.����R�d0l+��JF�>����{	g8l+���J��.����J�����dB,��#�B��H��>R($��
��o����	�B,ĺ�
��#�B��H���>R(D��
��#�B��H���>R(Ĺ�(����M*boX�r)��G
�$��B!�}�P�q)b�G
���B!��[O���>R(D����f&Ĳ��>R(䷏
��#�Bz�H��>R(d��
��G�Br�H��>R(䶏��x&Ć���>|��?�S��      �   z  x����nA��맸'���ۙؒ����dt����l	?/ANf��%�j�v�馧��;e�]v�����������믻�t9_�����ӷ�Jp� �e�$�I�]&Kq�"�ˌR]�Js�&:�"��S*ꋭAԗ[��/�&Q_r͢��ZD���E�OU��SM��Ra��>��
�OE	ɧ���SYBY�>��=��v�	L�n�����V��$q��3�%�{|&��u��(q��3Q%��z&��uO�Wl��n���JtTE�#+R]����%GY�/9�"y���K���\r�E���.Җ<�I���Yr�EȲ�.�Y���^�O�������Y�%�CX�%�#X�%P$�K`��j,�*��XM
+����6#B�lK�L6Qʶ�HDٖ�(�z"e[P�a��>����G�:A���v���&��ߜ% E��J�P��甈&��!�Ț_/�����.�	���9P�]LNa���ވ�RyoD��7"�<dQ��f�hR=�T�#՜Ya��4gZX�q�x}�4o��Y ?�Ç��2��R��D��zF�4~A2����/�ҜY���pkظ7���~��pw�N_'dL�53�,^63x�lNf�8���n������b��i?B�Qv��P1�=h������P?��*�����\��λ�������s���{����t�q[c: f �r�1�l��K�r�����h x��B�#<i����n��{lGi|����a�n:=Ͻ��ii�������67u�@�46AqS����f ��T7�O��Y1�<S�,�M��T�w�+zO�ir����Y
��>g)oʘ����c�W���-KA	ӧ,���8�\pD�xY
�H�y{"��8��2��RY>���tG@      �      x������ � �      �   �	  x��Y�r�H}_Q��U`��~�0�D8b��2<�K�T�+V-5*�������E=ƞ ��TU�d�����qr{�aٛn���?�w�i�!�vv�2�����Ýq���������z;t~��8,}okc{o�f������\����0N~������e��[79�̭m�Ѹ_�%�i��`��N���q��8^����q�����_z�M��+{<y� ���y[�U�z��_���-��Ou���uu���v����X�I�l���ƅyk������ar� ���ܸ�a�Z8�xr�0��a��0�@ӯ�`�wD�y��� ������a�.���l�.`k�`x��N�V(��|>x�uv�v��i��)�~W���,�>����Kg�';c�	�l*���ӄE��>گ�@��XM��k=_�wO= <�2��s�E�boe�iH�AZg)�{�1����t�%X�^�W�qJ�>�vv����[���*�p葍v�(į�:oΪ�Op�<��"�"m4覷�����ZbB���
�n�����&���$6ʿr�b
���(4�h�s±.�C�m�r����U|1+�U�z�p!�Z�9c3����pVo�����z]}r��C��-E��)�3��]�쁌�H^�3<53��V�hf��~$�w�u-���=f����1�� <X�������,ؒ^�2�EAU��}BU���<�-����b�I͚�3M쏄t鼄�$=�9	I�H*��"��|I�d1�Y�N��l[�kby����Ir���֝�\]�i��\���*�d\�����&c#@?�����Q��<����[䋼;��@���y�R3buB`  �V-T9^�q?xΛ��j���&�/[؊�9 F�j�.S���R,Qi,V��ac~��Hnܥ��L��ț�y[��7�����)Pu����ET��sґ�t�j�\��xa�v��?�az���>%\)_����v�E�6�h�/�֒�¥�f���v�)~��Ĝ=E�y�5k�����#r�	R���f8r�S�P��>|��}k�#-��ի2�L�( ��$9l��Qd�qi��ew�� v�uƵU�W�G�9�W'Y鳒U(R����LSn$��_~�4]D���gB��,E̅YitX������c*I�����17]��c4���.<���2�\����>)�t��f���BL��Nd�r�5Q�5�3��'
"�1�V+�ZP�6
*�,��q��KI+ݯ�P�"G2WA�U�7;��]gO�uR}��k�a����R�b�DT9�+�u�����@���E>bn�jj�R�0oo�Ί쒰����e���w4:+������m2�h�"�s��
��v��@̝V��_�6�5�%5ƶ���'R*0�X�m�E���e�&�gG����\�?��S����������[����F�EV`���գ&Tr��xX���5Q,�.#"cO����W������烗c�Y�27��Ԅ����#9ԥ�E�IW[�ma>	�����x����u��"�{x�#�\�'R�c������44�\�խe��Wd<�+��slvi|�*�*�mZ>zd�.%�/����$�T���P�N���Y�1�o�$Ӝ���Y�����VP�K�� C^�Pޢ2��}j��)S����R^-oG����_2���ľ���M��y i
p?�_��d�j�P����-�̿�h-���%f���h\\����IL���k�n����'�?�.��SM�A������O�M�A�q�}�w��Kd��؛�+)?�0H	H��>J�dC� �5��z�}��^�A�]���*E���Ã4�>r5Ndѽ�H�Q�E�|f�tQ�>��yu�yPǨ�2-�g��V� �����mY�ڱr�!:�RN��&|�S:�h2E�驖8�/��85�x��<��5�V�ot����(G���3p��c�+4Y�7n�u��2b���eT�8���p�^����ٞ���|��Pԧ�E����
��ɥ6����6�3�����^m����r{U��ȍ�Lst�)�vGN�U���>��Ԇ嫽h.^MK�(%M�:��H`6�2:��т�W�۬��bS�w~@�}IA�;rI�IuU���݈�k���S7(#�Q}�4��	�4�d�L�R�(�^�&L=��;Ҍ��DC=s]���s��pŐ0��-�鳩tZ���~)$t�e�d�z�Ue�Uş6��R�H�͑�W��)��< {V~���;�<��Ra|Wf0��dl�5��'�t�JǴ}�ۺ��I�L���^p�.٨ʫV=t�/���759����^=ԫ�x�5Ej��~�u.-Bt���7�s�nK��t���g��0�`�v�J���kz�!�s�3�����_���:��"�=���=.�n���dK���KI�?��)R��Nf���a(�Ֆ�0[x� ��:��o��x����ŋ����      �   �  x����N#G��=O��8]���lD,Q�R.�0F3��ɼ��ANQ8�_r�f�^�w�JYV+-3�㩟��_eb�f��X��^l�����l�i���G;�Ǖ�Rp���V;����eW�7˛m��}-l�R9et�I�'�3F����Q!�n�>�n4���jr'���m�{�-I���ƙ�����쑂7N�`�Ӱ�Y�㋻���b3Y̒���M�i�����7^yhA�	�IB���+4y2L����l����>Gt�:̢���>�%�y]WՊl�|���P�/ٸ��F�`�sR:�D`���w2X�%�b�0l?6������'6M9�z\Ki�xT#��z�U�j�8�0���/�C D��펦�Y�P��� ����U��Ȣ�������Q$R�-�,��l����Ӥ��B�Y>NA��o�K�oI2.�E�*4@���³��lq�su}5̍ ��֍pZ~*���na����6P(-SU
�$%�
�(<�|��b����pu�<���ݏdBj�7��E�He�6J�@����u��#�
��4w8AK��&�,?���? �"PA)rڻ,�jt�V��#Q1|b\�|��v1����]=,oVA�'VH�e{Qv�x�ge}~�A"�E��Xtt�M,JF�R{�QA��t��XL�d~��|���ʫ�#h/��Zi)K�H�*%�pN� �-����Ha���e�oa��Ϗ����%d�3867�K	 �hQ�W�ǋ�T67�������)MC>�M�J"����!XL7m�'���V�ʁM���ݸ.�I�P8(��:�j��{�� ���ОM����l+�6��x�v�	���) K��BXF� �~+�j�fB���~=<�}��=���;]���';r�h��C@��3Q\�_<�A�=�HjdN:����y	m�h@�1�t`PϿF��)<��3�"v�`f���EW��6ͣq}���H�nu�0B"���e���,fp�Ӷ�!����*'�٠�ELL�8�OSby�� �!�B5ԐD�dߓ�H���Z����y����mT7�KZs<88�����2��Y"�hq�\eE�$�+�2M��$�'�2�D�M(�H��:�c@¸r=��+>@0I��tr�a`����#
̮eγtCs���߽j�S\�s��f�~PO��ɺW��3cJ&��4VjrkIb�P8��	R��U�Tp��{GL�v3»� �z�=v�k�+�� ��j��ģ���/H���&� ������e;��4�����ҹ�O��(��~�j�!�3��y�\��O�׎E�-�r�N[4KzJk$������TM�p����0���	�m�U@���8��M~{�������3�VT�ͫ}�U��
!,6&uQx��l��m���,���ƃ�ԩ���c��u(��X���/x$\[^9�c٥Fvi�V�W���:��@sKS��/��?�T�      �   �  x�e��q�0Dcm1�&{p����ar ~����g<�c<�����0���۬0�FV�a66A�A �Aک�z(2�wꠞ�V��_rU%8NW�s��*a����D���N�J(��IW�<��]2+t�)���-�O4������ze�
NYmUj`�̼Rg�zy��Ξ��Oyk=���%��l\n�!��.�
�6�THVv� ��L*u��^)�J@�2�J'd�6T=,�hT4�&Z<(A��{�rFn*P�������6;6a�����S�福3\;U�uj�;<:x�����B���@P�� Dߋ`�t[Ah�Ud�?lwm�5�=��s�Ԡ�]ԡ��um5��W�:���=it�"����L����2L�����^�e{��s�����~� �\��;      �      x������ � �      �   )   x�3���q�wt����2B�C8��.�A�!�A\1z\\\ '��      �   k   x�3�t���	-N-*��)NMKL����Ku)�,K���M,N<����𞘘��Լ�J�_Z�Y��������U�Z��S�[��_��kjib`n��U���i����� ��&�      �     x�훻��0Ekݯ`zca>e�I�)��ih��K@�
��mVK�8�����g`�@�e���i�����2�8eq��+a�E�Tb�#�4����P1=�}��q]{\KX{L�9�%.w�D���A�4,�DI���.���-ik��q��5��r�$�.���=<�9�#!1�)u�~��F���9�u�T��kot���Nv�u?�o~.��j(��n(��i(��m(��k(�C�P���Ҟpn(���P\y��-啐-	�T�-)�Ԑ-I�4�-i���-��t�-���![�+y�lI���%�RG���JI���J)���Ji���J���JY(י�ےK���/aN�.��LY�Zf������cxk����,�?fZ+�%?���ߣRNO{���-�[P���- &/Jߘ��H���qL���z�҅�4O,�~4�,��s�)p��L4��ٵN��[�4�K|{��3���u'��Ѡ���46��46Z2����VLc��Ck���8A���8C[��a_Gh�ъCB��V
�u�������a!�8,i��`XI+�����8���Vg�����VZqH�ҊC���V����0�l���e+]q|Y�?�?��e1�Q��;"��tG��U6�:YYRwD,{�H˪�#r�e[�9ñ����ҺG"��Z�Hk���co�#1p,�{$��u������H>O�r,�<Np��<��YZ+uD����C�g]}�г�>���YTx�l�<,~=��$�A      �      x�3�4�2�4�2�4����� A      �   �  x�}��r�8���9���`�ȱ���� �0`3���;���+Io���������1�U4iyy׬h�����`�/n�~L����I�h���fx��ʔ�Qd`ձ��@~w���r�ST�8�!*�y��w{5N��`�_�{'�{�:�c����$�ɕ��2�LƸI���Y�6��W�8"��ک��n��9�jW�f�T��)��x��ҋ\�(;'K�2x #�]����'�7d@Z�zi����ir��v��t�m�Ib��uv�ł^�Ⴝ�*f�P'#L���z
�0f�T�����xH5���Y�� �6X�_��,�;z��{�����ZX�E�*w
S�ʩB���\My�ׁ^{�ri�e*2P~�+�O��i�7_����q"XM!x�C�@���pu�M�{�9u�4���=w������7��h����;���bn,ի�G> [^kn�&=��!��ʋRrF"�I���&h��K_�j�l����B`����-L۝oꄟUԘk�v|��E��fL�������tl�Ћ6�%��zY�3��`�~���k+O�3�N��suQƛ3��)�Y�x���"�-��L\>�q��������i�]�<M����;hA-�u?��%��}� ��Tۿ�K,� [��y΀��[�����.�wc\�Z�gё��ṁ=     