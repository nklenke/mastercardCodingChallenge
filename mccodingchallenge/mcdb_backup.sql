PGDMP     +            	        y            codingchallenge    12.2    12.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    33175    codingchallenge    DATABASE     �   CREATE DATABASE codingchallenge WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE codingchallenge;
                postgres    false            �            1259    33248 	   addresses    TABLE     �   CREATE TABLE public.addresses (
    id integer NOT NULL,
    country character varying(64),
    address character varying(255)
);
    DROP TABLE public.addresses;
       public         heap    postgres    false            �            1259    33246    addresses_id_seq    SEQUENCE     �   CREATE SEQUENCE public.addresses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.addresses_id_seq;
       public          postgres    false    203                       0    0    addresses_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.addresses_id_seq OWNED BY public.addresses.id;
          public          postgres    false    202            
           2604    33251    addresses id    DEFAULT     l   ALTER TABLE ONLY public.addresses ALTER COLUMN id SET DEFAULT nextval('public.addresses_id_seq'::regclass);
 ;   ALTER TABLE public.addresses ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    203    203                      0    33248 	   addresses 
   TABLE DATA           9   COPY public.addresses (id, country, address) FROM stdin;
    public          postgres    false    203   �
       	           0    0    addresses_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.addresses_id_seq', 2, true);
          public          postgres    false    202            �
           2606    33253    addresses addresses_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.addresses
    ADD CONSTRAINT addresses_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.addresses DROP CONSTRAINT addresses_pkey;
       public            postgres    false    203               h   x�3�v�4�03Pp.��-��S�O�Vp)�Q�M,�,���I�Q��Q03203�2�tI��M,���)�K)NOLIU04�Q04�0Rp�/H��HLO��Q�*����� ɗ,     