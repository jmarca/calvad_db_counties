-- Verify calvad_db_county:county_fips on pg

BEGIN;

SELECT abbrev,fips,name
  FROM geocoding.counties_fips
 WHERE FALSE;

ROLLBACK;
