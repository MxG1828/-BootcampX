SELECT name, id, cohort_id
FROM students
where email IS NULL OR phone IS NULL
ORDER BY name;