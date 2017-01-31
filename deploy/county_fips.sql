-- Deploy calvad_db_county:county_fips to pg
-- requires: calvad_db_geocode_schema:geocode_schema

BEGIN;

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = geocoding, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE geocoding.counties_fips (
    fips character varying(5) NOT NULL,
    name text NOT NULL,
    abbrev character varying(5) NOT NULL
);

ALTER TABLE ONLY counties_fips
    ADD CONSTRAINT counties_abbrev_unique UNIQUE (abbrev);


ALTER TABLE ONLY counties_fips
    ADD CONSTRAINT counties_fips_pkey PRIMARY KEY (fips);


ALTER TABLE ONLY counties_fips
    ADD CONSTRAINT counties_name_unique UNIQUE (name);

insert into counties_fips (abbrev, fips, name)
values
('ALA','06001','Alameda'),
('ALP','06003','Alpine'),
('AMA','06005','Amador'),
('BUT','06007','Butte'),
('CAL','06009','Calaveras'),
('COL','06011','Colusa'),
('CC','06013','Contra Costa'),
('DN','06015','Del Norte'),
('ED','06017','El Dorado'),
('FRE','06019','Fresno'),
('GLE','06021','Glenn'),
('HUM','06023','Humboldt'),
('IMP','06025','Imperial'),
('INY','06027','Inyo'),
('KER','06029','Kern'),
('KIN','06031','Kings'),
('LAK','06033','Lake'),
('LAS','06035','Lassen'),
('LA','06037','Los Angeles'),
('MAD','06039','Madera'),
('MRN','06041','Marin'),
('MOD','06049','Modoc'),
('MPA','06043','Mariposa'),
('MEN','06045','Mendocino'),
('MER','06047','Merced'),
('MNO','06051','Mono'),
('MON','06053','Monterey'),
('NAP','06055','Napa'),
('NEV','06057','Nevada'),
('ORA','06059','Orange'),
('PLA','06061','Placer'),
('PLU','06063','Plumas'),
('RIV','06065','Riverside'),
('SAC','06067','Sacramento'),
('SBT','06069','San Benito'),
('SBD','06071','San Bernardino'),
('SD','06073','San Diego'),
('SF','06075','San Francisco'),
('SJ','06077','San Joaquin'),
('SLO','06079','San Luis Obispo'),
('SM','06081','San Mateo'),
('SB','06083','Santa Barbara'),
('SCL','06085','Santa Clara'),
('SCR','06087','Santa Cruz'),
('SHA','06089','Shasta'),
('SIE','06091','Sierra'),
('SIS','06093','Siskiyou'),
('SOL','06095','Solano'),
('SON','06097','Sonoma'),
('STA','06099','Stanislaus'),
('SUT','06101','Sutter'),
('TEH','06103','Tehama'),
('TRI','06105','Trinity'),
('TUL','06107','Tulare'),
('TUO','06109','Tuolumne'),
('VEN','06111','Ventura'),
('YOL','06113','Yolo'),
('YUB','06115','Yuba')
;


COMMIT;
