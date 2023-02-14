CREATE USER datadog WITH PASSWORD 'datadog';
CREATE USER datadog_no_catalog WITH PASSWORD 'datadog';
CREATE USER bob WITH PASSWORD 'bob';
CREATE USER blocking_bob WITH PASSWORD 'bob';
CREATE USER dd_admin WITH PASSWORD 'dd_admin';
CREATE USER replicator WITH REPLICATION;
ALTER USER dd_admin WITH SUPERUSER;
REVOKE SELECT ON ALL tables IN SCHEMA pg_catalog from public;
GRANT SELECT ON pg_stat_database TO datadog;
GRANT SELECT ON pg_stat_database TO datadog_no_catalog;
GRANT SELECT ON ALL tables IN SCHEMA pg_catalog to datadog;
CREATE DATABASE datadog_test;
GRANT ALL PRIVILEGES ON DATABASE datadog_test TO datadog;
CREATE DATABASE dogs;
GRANT USAGE on SCHEMA public to bob;
GRANT USAGE on SCHEMA public to blocking_bob;
CREATE DATABASE dogs_nofunc;
CREATE DATABASE dogs_noschema;
