PGDMP         2                {            tourism    15.3    15.3 d    t           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            u           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            v           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            w           1262    25431    tourism    DATABASE     {   CREATE DATABASE tourism WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Turkish_Turkey.1254';
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
       public          postgres    false    215            x           0    0    agencies_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.agencies_id_seq OWNED BY public.agencies.id;
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
       public          postgres    false    217            y           0    0    contacts_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.contacts_id_seq OWNED BY public.contacts.id;
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
       public          postgres    false    219            z           0    0    customers_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.customers_id_seq OWNED BY public.customers.id;
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
       public          postgres    false    221            {           0    0    date_rooms_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.date_rooms_id_seq OWNED BY public.date_rooms.id;
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
       public          postgres    false    223            |           0    0    features_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.features_id_seq OWNED BY public.features.id;
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
       public          postgres    false    225            }           0    0    hotel_features_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.hotel_features_id_seq OWNED BY public.hotel_features.id;
          public          postgres    false    224            �            1259    25483    hotels    TABLE       CREATE TABLE public.hotels (
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
       public          postgres    false    227            ~           0    0    hotels_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.hotels_id_seq OWNED BY public.hotels.id;
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
       public          postgres    false    229                       0    0    locations_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.locations_id_seq OWNED BY public.locations.id;
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
          public          postgres    false    232            �            1259    25517    roomimgs    TABLE     x   CREATE TABLE public.roomimgs (
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
          public          postgres    false    236            �           2604    25436    agencies id    DEFAULT     j   ALTER TABLE ONLY public.agencies ALTER COLUMN id SET DEFAULT nextval('public.agencies_id_seq'::regclass);
 :   ALTER TABLE public.agencies ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            �           2604    25443    contacts id    DEFAULT     j   ALTER TABLE ONLY public.contacts ALTER COLUMN id SET DEFAULT nextval('public.contacts_id_seq'::regclass);
 :   ALTER TABLE public.contacts ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            �           2604    25452    customers id    DEFAULT     l   ALTER TABLE ONLY public.customers ALTER COLUMN id SET DEFAULT nextval('public.customers_id_seq'::regclass);
 ;   ALTER TABLE public.customers ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219            �           2604    25461    date_rooms id    DEFAULT     n   ALTER TABLE ONLY public.date_rooms ALTER COLUMN id SET DEFAULT nextval('public.date_rooms_id_seq'::regclass);
 <   ALTER TABLE public.date_rooms ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221            �           2604    25468    features id    DEFAULT     j   ALTER TABLE ONLY public.features ALTER COLUMN id SET DEFAULT nextval('public.features_id_seq'::regclass);
 :   ALTER TABLE public.features ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            �           2604    25477    hotel_features id    DEFAULT     v   ALTER TABLE ONLY public.hotel_features ALTER COLUMN id SET DEFAULT nextval('public.hotel_features_id_seq'::regclass);
 @   ALTER TABLE public.hotel_features ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224    225            �           2604    25486 	   hotels id    DEFAULT     f   ALTER TABLE ONLY public.hotels ALTER COLUMN id SET DEFAULT nextval('public.hotels_id_seq'::regclass);
 8   ALTER TABLE public.hotels ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    227    227            �           2604    25495    locations id    DEFAULT     l   ALTER TABLE ONLY public.locations ALTER COLUMN id SET DEFAULT nextval('public.locations_id_seq'::regclass);
 ;   ALTER TABLE public.locations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    229    229            �           2604    25504 	   prices id    DEFAULT     f   ALTER TABLE ONLY public.prices ALTER COLUMN id SET DEFAULT nextval('public.prices_id_seq'::regclass);
 8   ALTER TABLE public.prices ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    231    231            �           2604    25511    rezervations id    DEFAULT     r   ALTER TABLE ONLY public.rezervations ALTER COLUMN id SET DEFAULT nextval('public.rezervations_id_seq'::regclass);
 >   ALTER TABLE public.rezervations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    232    233            �           2604    25520    roomimgs id    DEFAULT     j   ALTER TABLE ONLY public.roomimgs ALTER COLUMN id SET DEFAULT nextval('public.roomimgs_id_seq'::regclass);
 :   ALTER TABLE public.roomimgs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    234    235            �           2604    25527    rooms id    DEFAULT     d   ALTER TABLE ONLY public.rooms ALTER COLUMN id SET DEFAULT nextval('public.rooms_id_seq'::regclass);
 7   ALTER TABLE public.rooms ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    237    237            [          0    25433    agencies 
   TABLE DATA           ,   COPY public.agencies (id, name) FROM stdin;
    public          postgres    false    215   t       ]          0    25440    contacts 
   TABLE DATA           Q   COPY public.contacts (id, emails, notes, telephones, rezervation_id) FROM stdin;
    public          postgres    false    217   )t       _          0    25449 	   customers 
   TABLE DATA           �   COPY public.customers (id, adress, email, first_name, gender, identity_number, last_name, region, statu, telephone, rezervation_id) FROM stdin;
    public          postgres    false    219   Ft       a          0    25458 
   date_rooms 
   TABLE DATA           8   COPY public.date_rooms (id, dates, room_id) FROM stdin;
    public          postgres    false    221   ct       c          0    25465    features 
   TABLE DATA           N   COPY public.features (id, active, description, property, room_id) FROM stdin;
    public          postgres    false    223   �t       e          0    25474    hotel_features 
   TABLE DATA           V   COPY public.hotel_features (id, actives, description, property, hotel_id) FROM stdin;
    public          postgres    false    225   �t       g          0    25483    hotels 
   TABLE DATA           b   COPY public.hotels (id, decsription, name, rating, stars, telephone, type, agency_id) FROM stdin;
    public          postgres    false    227   �t       i          0    25492 	   locations 
   TABLE DATA           t   COPY public.locations (id, adress, city, description, district, feature, latitude, longitude, hotel_id) FROM stdin;
    public          postgres    false    229   �t       k          0    25501    prices 
   TABLE DATA           M   COPY public.prices (id, discount, q1, q2, q3, q4, type, room_id) FROM stdin;
    public          postgres    false    231   �t       m          0    25508    rezervations 
   TABLE DATA           z   COPY public.rezervations (id, adult, childs, day_time, due_date, start_date, total_prices, hotel_id, room_id) FROM stdin;
    public          postgres    false    233   u       o          0    25517    roomimgs 
   TABLE DATA           4   COPY public.roomimgs (id, url, room_id) FROM stdin;
    public          postgres    false    235   .u       q          0    25524    rooms 
   TABLE DATA           t   COPY public.rooms (id, capacity, description, inventory, number_of_beds, square_meters, type, hotel_id) FROM stdin;
    public          postgres    false    237   Ku       �           0    0    agencies_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.agencies_id_seq', 1, false);
          public          postgres    false    214            �           0    0    contacts_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.contacts_id_seq', 1, false);
          public          postgres    false    216            �           0    0    customers_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.customers_id_seq', 1, false);
          public          postgres    false    218            �           0    0    date_rooms_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.date_rooms_id_seq', 1, false);
          public          postgres    false    220            �           0    0    features_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.features_id_seq', 1, false);
          public          postgres    false    222            �           0    0    hotel_features_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.hotel_features_id_seq', 1, false);
          public          postgres    false    224            �           0    0    hotels_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.hotels_id_seq', 1, false);
          public          postgres    false    226            �           0    0    locations_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.locations_id_seq', 1, false);
          public          postgres    false    228            �           0    0    prices_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.prices_id_seq', 1, false);
          public          postgres    false    230            �           0    0    rezervations_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.rezervations_id_seq', 1, false);
          public          postgres    false    232            �           0    0    roomimgs_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.roomimgs_id_seq', 1, false);
          public          postgres    false    234            �           0    0    rooms_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.rooms_id_seq', 1, false);
          public          postgres    false    236            �           2606    25438    agencies agencies_pkey 
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
       public            postgres    false    225            �           2606    25490    hotels hotels_pkey 
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
       public            postgres    false    233            �           2606    25522    roomimgs roomimgs_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.roomimgs
    ADD CONSTRAINT roomimgs_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.roomimgs DROP CONSTRAINT roomimgs_pkey;
       public            postgres    false    235            �           2606    25531    rooms rooms_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.rooms
    ADD CONSTRAINT rooms_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.rooms DROP CONSTRAINT rooms_pkey;
       public            postgres    false    237            �           2606    25582 $   roomimgs fk15ddkgjnd6vedsmvld5evmp1f    FK CONSTRAINT     �   ALTER TABLE ONLY public.roomimgs
    ADD CONSTRAINT fk15ddkgjnd6vedsmvld5evmp1f FOREIGN KEY (room_id) REFERENCES public.rooms(id);
 N   ALTER TABLE ONLY public.roomimgs DROP CONSTRAINT fk15ddkgjnd6vedsmvld5evmp1f;
       public          postgres    false    235    3263    237            �           2606    25572 (   rezervations fk20qethlbp02rwdami8hbc3j61    FK CONSTRAINT     �   ALTER TABLE ONLY public.rezervations
    ADD CONSTRAINT fk20qethlbp02rwdami8hbc3j61 FOREIGN KEY (hotel_id) REFERENCES public.hotels(id);
 R   ALTER TABLE ONLY public.rezervations DROP CONSTRAINT fk20qethlbp02rwdami8hbc3j61;
       public          postgres    false    3253    227    233            �           2606    25562 %   locations fk3uni8mne0skhsr58mj4saaeaf    FK CONSTRAINT     �   ALTER TABLE ONLY public.locations
    ADD CONSTRAINT fk3uni8mne0skhsr58mj4saaeaf FOREIGN KEY (hotel_id) REFERENCES public.hotels(id);
 O   ALTER TABLE ONLY public.locations DROP CONSTRAINT fk3uni8mne0skhsr58mj4saaeaf;
       public          postgres    false    3253    229    227            �           2606    25577 (   rezervations fk40u3xow2qus0lwh773p5jgdd5    FK CONSTRAINT     �   ALTER TABLE ONLY public.rezervations
    ADD CONSTRAINT fk40u3xow2qus0lwh773p5jgdd5 FOREIGN KEY (room_id) REFERENCES public.rooms(id);
 R   ALTER TABLE ONLY public.rezervations DROP CONSTRAINT fk40u3xow2qus0lwh773p5jgdd5;
       public          postgres    false    237    3263    233            �           2606    25547 $   features fk4wnerv9tdvmyo1hwd4c2pp14u    FK CONSTRAINT     �   ALTER TABLE ONLY public.features
    ADD CONSTRAINT fk4wnerv9tdvmyo1hwd4c2pp14u FOREIGN KEY (room_id) REFERENCES public.rooms(id);
 N   ALTER TABLE ONLY public.features DROP CONSTRAINT fk4wnerv9tdvmyo1hwd4c2pp14u;
       public          postgres    false    3263    237    223            �           2606    25537 %   customers fkbnt26fho26foqjlrni83ynsdr    FK CONSTRAINT     �   ALTER TABLE ONLY public.customers
    ADD CONSTRAINT fkbnt26fho26foqjlrni83ynsdr FOREIGN KEY (rezervation_id) REFERENCES public.rezervations(id);
 O   ALTER TABLE ONLY public.customers DROP CONSTRAINT fkbnt26fho26foqjlrni83ynsdr;
       public          postgres    false    219    233    3259            �           2606    25557 "   hotels fkcnd8jv7a9brkk43t1qgciuh14    FK CONSTRAINT     �   ALTER TABLE ONLY public.hotels
    ADD CONSTRAINT fkcnd8jv7a9brkk43t1qgciuh14 FOREIGN KEY (agency_id) REFERENCES public.agencies(id);
 L   ALTER TABLE ONLY public.hotels DROP CONSTRAINT fkcnd8jv7a9brkk43t1qgciuh14;
       public          postgres    false    227    3241    215            �           2606    25567 "   prices fkeilrtjmq53csjpth1hc8j6hgq    FK CONSTRAINT     �   ALTER TABLE ONLY public.prices
    ADD CONSTRAINT fkeilrtjmq53csjpth1hc8j6hgq FOREIGN KEY (room_id) REFERENCES public.rooms(id);
 L   ALTER TABLE ONLY public.prices DROP CONSTRAINT fkeilrtjmq53csjpth1hc8j6hgq;
       public          postgres    false    231    3263    237            �           2606    25552 *   hotel_features fkh7tbdngadmh0qiu2fxkw7qitn    FK CONSTRAINT     �   ALTER TABLE ONLY public.hotel_features
    ADD CONSTRAINT fkh7tbdngadmh0qiu2fxkw7qitn FOREIGN KEY (hotel_id) REFERENCES public.hotels(id);
 T   ALTER TABLE ONLY public.hotel_features DROP CONSTRAINT fkh7tbdngadmh0qiu2fxkw7qitn;
       public          postgres    false    3253    225    227            �           2606    25532 $   contacts fkkgwqyoihcw3796hp0qfj806gm    FK CONSTRAINT     �   ALTER TABLE ONLY public.contacts
    ADD CONSTRAINT fkkgwqyoihcw3796hp0qfj806gm FOREIGN KEY (rezervation_id) REFERENCES public.rezervations(id);
 N   ALTER TABLE ONLY public.contacts DROP CONSTRAINT fkkgwqyoihcw3796hp0qfj806gm;
       public          postgres    false    233    3259    217            �           2606    25587 !   rooms fkp5lufxy0ghq53ugm93hdc941k    FK CONSTRAINT     �   ALTER TABLE ONLY public.rooms
    ADD CONSTRAINT fkp5lufxy0ghq53ugm93hdc941k FOREIGN KEY (hotel_id) REFERENCES public.hotels(id);
 K   ALTER TABLE ONLY public.rooms DROP CONSTRAINT fkp5lufxy0ghq53ugm93hdc941k;
       public          postgres    false    227    237    3253            �           2606    25542 %   date_rooms fkx94qef135dghfw6grp0sy10s    FK CONSTRAINT     �   ALTER TABLE ONLY public.date_rooms
    ADD CONSTRAINT fkx94qef135dghfw6grp0sy10s FOREIGN KEY (room_id) REFERENCES public.rooms(id);
 O   ALTER TABLE ONLY public.date_rooms DROP CONSTRAINT fkx94qef135dghfw6grp0sy10s;
       public          postgres    false    237    221    3263            [      x������ � �      ]      x������ � �      _      x������ � �      a      x������ � �      c      x������ � �      e      x������ � �      g      x������ � �      i      x������ � �      k      x������ � �      m      x������ � �      o      x������ � �      q      x������ � �     