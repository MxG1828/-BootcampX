SELECT teachers.name as teacher, (SELECT name FROM cohorts WHERE name ='JUL02'), COUNT(assistance_requests.*)
FROM assistance_requests
JOIN teachers ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN assignments ON assignment_id = assignments.id
JOIN cohorts ON students.cohort_id = cohorts.id
WHERE cohorts.name = 'JUL02'
GROUP BY teachers.name
ORDER BY teachers.name;