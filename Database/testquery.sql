SELECT pid, usename, application_name, client_addr, client_port, backend_start
FROM pg_stat_activity
WHERE datname = 'company_db';