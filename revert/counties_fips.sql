-- Revert hpms_geocode:fips_counties from pg

BEGIN;

SET search_path = geocoding;

DROP TABLE counties_fips;

COMMIT;
