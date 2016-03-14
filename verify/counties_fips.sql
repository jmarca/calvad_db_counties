-- Verify hpms_geocode:fips_counties on pg

BEGIN;

SELECT abbrev,fips,name
  FROM geocoding.counties_fips
 WHERE FALSE;

ROLLBACK;
