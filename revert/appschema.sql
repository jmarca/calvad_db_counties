-- Revert hpms_geocode:appschema from pg

BEGIN;

DROP SCHEMA geocoding;

COMMIT;
