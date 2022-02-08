SELECT AVG(assis.started_at - assis.created_at) AS average_wait_time
FROM assistance_requests assis;
