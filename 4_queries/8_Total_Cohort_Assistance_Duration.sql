SELECT coh.name, SUM(assis.completed_at - assis.started_at) AS total_duration
FROM assistance_requests assis
JOIN students stud ON stud.id = assis.student_id
JOIN cohorts coh ON coh.id = stud.cohort_id
GROUP BY coh.id
ORDER BY total_duration;
