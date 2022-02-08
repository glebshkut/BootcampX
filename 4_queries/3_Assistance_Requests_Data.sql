SELECT tec.name teacher, stud.name student , asgn.name assignment, (assis.completed_at - assis.started_at) AS duration
FROM assistance_requests assis
JOIN students stud ON stud.id = assis.student_id
JOIN teachers tec ON tec.id = assis.teacher_id
JOIN assignments asgn ON asgn.id = assis.assignment_id
ORDER BY duration;
