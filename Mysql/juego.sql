--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.0
-- Dumped by pg_dump version 9.5.0

-- Started on 2016-02-12 15:11:00

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 184 (class 3079 OID 12355)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2131 (class 0 OID 0)
-- Dependencies: 184
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 183 (class 1259 OID 16508)
-- Name: Alquiler; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "Alquiler" (
    "Id" integer NOT NULL,
    id_cliente integer,
    fechaexp character varying,
    fechade character varying,
    "Mora" character varying,
    id_juego integer
);


ALTER TABLE "Alquiler" OWNER TO postgres;

--
-- TOC entry 180 (class 1259 OID 16478)
-- Name: Cliente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "Cliente" (
    id integer NOT NULL,
    "Nombre" character varying,
    "Apellido" character varying,
    "Cedula" integer,
    "Direccion" character varying,
    "Correo" character varying,
    "Telefono" character varying
);


ALTER TABLE "Cliente" OWNER TO postgres;

--
-- TOC entry 182 (class 1259 OID 16494)
-- Name: Juego; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "Juego" (
    "Id" integer NOT NULL,
    "Titulo" character varying,
    "Genero" character varying,
    "Precio" integer
);


ALTER TABLE "Juego" OWNER TO postgres;

--
-- TOC entry 181 (class 1259 OID 16486)
-- Name: Ventas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "Ventas" (
    id integer NOT NULL,
    id_cliente integer,
    id_juego integer,
    fecha character varying
);


ALTER TABLE "Ventas" OWNER TO postgres;

--
-- TOC entry 2123 (class 0 OID 16508)
-- Dependencies: 183
-- Data for Name: Alquiler; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Alquiler" ("Id", id_cliente, fechaexp, fechade, "Mora", id_juego) FROM stdin;
\.


--
-- TOC entry 2120 (class 0 OID 16478)
-- Dependencies: 180
-- Data for Name: Cliente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Cliente" (id, "Nombre", "Apellido", "Cedula", "Direccion", "Correo", "Telefono") FROM stdin;
\.


--
-- TOC entry 2122 (class 0 OID 16494)
-- Dependencies: 182
-- Data for Name: Juego; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Juego" ("Id", "Titulo", "Genero", "Precio") FROM stdin;
\.


--
-- TOC entry 2121 (class 0 OID 16486)
-- Dependencies: 181
-- Data for Name: Ventas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Ventas" (id, id_cliente, id_juego, fecha) FROM stdin;
\.


--
-- TOC entry 2002 (class 2606 OID 16515)
-- Name: Alquiler_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Alquiler"
    ADD CONSTRAINT "Alquiler_pkey" PRIMARY KEY ("Id");


--
-- TOC entry 2000 (class 2606 OID 16501)
-- Name: Juego_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Juego"
    ADD CONSTRAINT "Juego_pkey" PRIMARY KEY ("Id");


--
-- TOC entry 1996 (class 2606 OID 16485)
-- Name: Primaria_cliente; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Cliente"
    ADD CONSTRAINT "Primaria_cliente" PRIMARY KEY (id);


--
-- TOC entry 1998 (class 2606 OID 16493)
-- Name: primaria_venta; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Ventas"
    ADD CONSTRAINT primaria_venta PRIMARY KEY (id);


--
-- TOC entry 2004 (class 2606 OID 16516)
-- Name: Alquiler_id_cliente_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Alquiler"
    ADD CONSTRAINT "Alquiler_id_cliente_fkey" FOREIGN KEY (id_cliente) REFERENCES "Cliente"(id);


--
-- TOC entry 2005 (class 2606 OID 16521)
-- Name: Alquiler_id_juego_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Alquiler"
    ADD CONSTRAINT "Alquiler_id_juego_fkey" FOREIGN KEY (id_juego) REFERENCES "Juego"("Id");


--
-- TOC entry 2003 (class 2606 OID 16503)
-- Name: Ventas_id_juego_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Ventas"
    ADD CONSTRAINT "Ventas_id_juego_fkey" FOREIGN KEY (id_juego) REFERENCES "Juego"("Id");


--
-- TOC entry 2130 (class 0 OID 0)
-- Dependencies: 5
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2016-02-12 15:11:00

--
-- PostgreSQL database dump complete
--

