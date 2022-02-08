SELECT AVG(assis.completed_at - assis.started_at) AS average_assistance_request_duration
FROM assistance_requests assis;
