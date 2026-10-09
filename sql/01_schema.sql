--
-- PostgreSQL database dump
--

\restrict W6gPFUphWpNotXSqJRK4nANdFWTlMqxwRPZA7cGphIvLdl3LyKgfC6dapSo3rYx

-- Dumped from database version 17.11 (Debian 17.11-1.pgdg13+2)
-- Dumped by pg_dump version 17.11 (Debian 17.11-1.pgdg13+2)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: crop_history; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.crop_history (
    id bigint NOT NULL,
    state text,
    city text,
    crop_year integer,
    season text,
    crop text,
    area_hectares numeric(14,2),
    production_tonnes numeric(14,2),
    yield_tonnes_per_hectare numeric(12,4),
    rainfall_mm numeric(10,2),
    average_temperature_c numeric(6,2),
    soil_ph numeric(5,2),
    nitrogen_kg_ha numeric(10,2),
    source text
);


ALTER TABLE public.crop_history OWNER TO postgres;

--
-- Name: crop_history_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.crop_history ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.crop_history_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: rainfall_raw; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rainfall_raw (
    state text,
    district text,
    observation_date text,
    daily_actual text,
    daily_normal text,
    daily_departure_per text,
    daily_category text,
    week_date text,
    weekly_actual text,
    weekly_normal text,
    weekly_departure_per text,
    weekly_category text,
    cumulative_date text,
    cumulative_actual text,
    cumulative_normal text,
    cumulative_departure_per text,
    cumulative_category text,
    monthly_date text,
    monthly_actual text,
    monthly_normal text,
    monthly_departure_per text,
    monthly_category text
);


ALTER TABLE public.rainfall_raw OWNER TO postgres;

--
-- Name: soil_data; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.soil_data (
    id bigint NOT NULL,
    state text,
    district text,
    observation_date date,
    soil_texture text,
    drainage_class text,
    ph numeric(5,2),
    ec_ds_m numeric(8,3),
    organic_carbon_percent numeric(6,3),
    available_n_kg_ha numeric(10,2),
    available_p_kg_ha numeric(10,2),
    available_k_kg_ha numeric(10,2),
    available_s_kg_ha numeric(10,2),
    zinc_mg_kg numeric(8,3),
    iron_mg_kg numeric(8,3),
    copper_mg_kg numeric(8,3),
    manganese_mg_kg numeric(8,3),
    boron_mg_kg numeric(8,3),
    organic_carbon_status text,
    nitrogen_status text,
    phosphorus_status text,
    potassium_status text,
    sulphur_status text,
    zinc_status text,
    iron_status text,
    copper_status text,
    manganese_status text,
    boron_status text,
    source text
);


ALTER TABLE public.soil_data OWNER TO postgres;

--
-- Name: soil_data_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.soil_data ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.soil_data_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: students; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.students (
    roll_no integer NOT NULL,
    name character varying(50),
    branch character varying(30),
    marks integer
);


ALTER TABLE public.students OWNER TO postgres;

--
-- Name: crop_history crop_history_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.crop_history
    ADD CONSTRAINT crop_history_pkey PRIMARY KEY (id);


--
-- Name: soil_data soil_data_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.soil_data
    ADD CONSTRAINT soil_data_pkey PRIMARY KEY (id);


--
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (roll_no);


--
-- PostgreSQL database dump complete
--

\unrestrict W6gPFUphWpNotXSqJRK4nANdFWTlMqxwRPZA7cGphIvLdl3LyKgfC6dapSo3rYx

