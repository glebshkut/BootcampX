SELECT asgn.day, count(asgn.*), sum(asgn.duration)
FROM assignments asgn
GROUP BY asgn.day
ORDER BY day ASC
;
