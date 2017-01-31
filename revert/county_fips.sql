-- Revert calvad_db_county:county_fips from pg

BEGIN;

SET search_path = geocoding;

DROP TABLE counties_fips;

COMMIT;
