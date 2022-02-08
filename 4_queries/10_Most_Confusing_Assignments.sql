SELECT asgn.id, asgn.day, asgn.chapter, asgn.name, COUNT(asgn.id) as total_requests
FROM assistance_requests assis
JOIN assignments asgn ON asgn.id = assis.assignment_id
GROUP BY asgn.id
ORDER BY total_requests DESC;
