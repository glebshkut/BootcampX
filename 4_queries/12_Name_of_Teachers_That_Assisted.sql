SELECT DISTINCT tec.name, coh.name
FROM teachers tec
JOIN assistance_requests ON teacher_id = tec.id
JOIN students ON student_id = students.id
JOIN cohorts coh ON cohort_id = coh.id
WHERE coh.name = 'JUL02'
ORDER BY tec.name;
