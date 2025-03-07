PGDMP  /    .    	            |            bd_donacion    16.3    16.3     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    24650    bd_donacion    DATABASE     �   CREATE DATABASE bd_donacion WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Ecuador.1252';
    DROP DATABASE bd_donacion;
                postgres    false            �            1259    32867    tb_don    TABLE     �   CREATE TABLE public.tb_don (
    id_don integer NOT NULL,
    beneficiario text,
    origen text,
    destino text,
    recurso text,
    estado text DEFAULT 'Espera'::text,
    donador integer
);
    DROP TABLE public.tb_don;
       public         heap    postgres    false            �            1259    32842    tb_pag    TABLE     ^   CREATE TABLE public.tb_pag (
    pag integer NOT NULL,
    descripcion text,
    path text
);
    DROP TABLE public.tb_pag;
       public         heap    postgres    false            �            1259    24658 	   tb_perfil    TABLE     U   CREATE TABLE public.tb_perfil (
    perfil integer NOT NULL,
    descripcion text
);
    DROP TABLE public.tb_perfil;
       public         heap    postgres    false            �            1259    32849 	   tb_perpag    TABLE     j   CREATE TABLE public.tb_perpag (
    id_perpag integer NOT NULL,
    id_per integer,
    id_pag integer
);
    DROP TABLE public.tb_perpag;
       public         heap    postgres    false            �            1259    24651 
   tb_usuario    TABLE     �   CREATE TABLE public.tb_usuario (
    nombre text,
    cedula text,
    "Correo" text,
    usuario text,
    "contraseña" text,
    id_us integer NOT NULL,
    id_per integer
);
    DROP TABLE public.tb_usuario;
       public         heap    postgres    false            �          0    32867    tb_don 
   TABLE DATA           a   COPY public.tb_don (id_don, beneficiario, origen, destino, recurso, estado, donador) FROM stdin;
    public          postgres    false    219   �       �          0    32842    tb_pag 
   TABLE DATA           8   COPY public.tb_pag (pag, descripcion, path) FROM stdin;
    public          postgres    false    217          �          0    24658 	   tb_perfil 
   TABLE DATA           8   COPY public.tb_perfil (perfil, descripcion) FROM stdin;
    public          postgres    false    216   q       �          0    32849 	   tb_perpag 
   TABLE DATA           >   COPY public.tb_perpag (id_perpag, id_per, id_pag) FROM stdin;
    public          postgres    false    218   �       �          0    24651 
   tb_usuario 
   TABLE DATA           e   COPY public.tb_usuario (nombre, cedula, "Correo", usuario, "contraseña", id_us, id_per) FROM stdin;
    public          postgres    false    215   �       3           2606    32874    tb_don tb_don_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.tb_don
    ADD CONSTRAINT tb_don_pkey PRIMARY KEY (id_don);
 <   ALTER TABLE ONLY public.tb_don DROP CONSTRAINT tb_don_pkey;
       public            postgres    false    219            /           2606    32848    tb_pag tb_pag_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.tb_pag
    ADD CONSTRAINT tb_pag_pkey PRIMARY KEY (pag);
 <   ALTER TABLE ONLY public.tb_pag DROP CONSTRAINT tb_pag_pkey;
       public            postgres    false    217            -           2606    24664    tb_perfil tb_perfil_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.tb_perfil
    ADD CONSTRAINT tb_perfil_pkey PRIMARY KEY (perfil);
 B   ALTER TABLE ONLY public.tb_perfil DROP CONSTRAINT tb_perfil_pkey;
       public            postgres    false    216            1           2606    32853    tb_perpag tb_perpag_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.tb_perpag
    ADD CONSTRAINT tb_perpag_pkey PRIMARY KEY (id_perpag);
 B   ALTER TABLE ONLY public.tb_perpag DROP CONSTRAINT tb_perpag_pkey;
       public            postgres    false    218            +           2606    24657    tb_usuario tb_usuario_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.tb_usuario
    ADD CONSTRAINT tb_usuario_pkey PRIMARY KEY (id_us);
 D   ALTER TABLE ONLY public.tb_usuario DROP CONSTRAINT tb_usuario_pkey;
       public            postgres    false    215            7           2606    32875    tb_don rdonador    FK CONSTRAINT     v   ALTER TABLE ONLY public.tb_don
    ADD CONSTRAINT rdonador FOREIGN KEY (donador) REFERENCES public.tb_usuario(id_us);
 9   ALTER TABLE ONLY public.tb_don DROP CONSTRAINT rdonador;
       public          postgres    false    219    215    4651            5           2606    32859    tb_perpag rpag    FK CONSTRAINT     n   ALTER TABLE ONLY public.tb_perpag
    ADD CONSTRAINT rpag FOREIGN KEY (id_pag) REFERENCES public.tb_pag(pag);
 8   ALTER TABLE ONLY public.tb_perpag DROP CONSTRAINT rpag;
       public          postgres    false    217    4655    218            4           2606    24665    tb_usuario rperfil    FK CONSTRAINT     x   ALTER TABLE ONLY public.tb_usuario
    ADD CONSTRAINT rperfil FOREIGN KEY (id_per) REFERENCES public.tb_perfil(perfil);
 <   ALTER TABLE ONLY public.tb_usuario DROP CONSTRAINT rperfil;
       public          postgres    false    216    4653    215            6           2606    32854    tb_perpag rperfil    FK CONSTRAINT     w   ALTER TABLE ONLY public.tb_perpag
    ADD CONSTRAINT rperfil FOREIGN KEY (id_per) REFERENCES public.tb_perfil(perfil);
 ;   ALTER TABLE ONLY public.tb_perpag DROP CONSTRAINT rperfil;
       public          postgres    false    216    4653    218            �   L   x�3�t/-�L-*J��L�ML/M<�1�HU&s�$&�p����'��sr�p:'��c*6424FQ���� ~�       �   _   x���K
�  е�O+qt�@�4t�E�>�t��4[*���E�f��u�� k�Q2�P:��~�H)g@�?&����f_�A�O~�Up�o23�      �   #   x�3�t��KL�/�2�tL����,.)�c���� �a	J      �      x�3�4�4�2�B�=... 
      �   m   x�+N�M�+�H�4472�422�4�L,NqH�M���K���,Ṋ�442�4�4�r*�L̃�53�L*�DR�T�	�!P�wj^X�	P��%gvj�j l0�h�=... �%�     