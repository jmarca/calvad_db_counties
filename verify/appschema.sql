-- Verify hpms_geocode:appschema on pg

BEGIN;

SELECT pg_catalog.has_schema_privilege('geocoding', 'usage');


ROLLBACK;
