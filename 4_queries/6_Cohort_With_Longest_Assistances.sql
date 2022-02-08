SELECT coh.name, AVG(assis.completed_at - assis.started_at) AS average_assistance_time
FROM assistance_requests assis
JOIN students stud ON stud.id = assis.student_id
JOIN cohorts coh ON coh.id = stud.cohort_id
GROUP BY coh.id
ORDER BY average_assistance_time DESC
LIMIT 1;
