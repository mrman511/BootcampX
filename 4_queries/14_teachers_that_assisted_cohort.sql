SELECT teachers.name, cohorts.name
FROM assistance_requests JOIN teachers
ON teachers.id = teacher_id
JOIN students 
ON students.id = student_id
JOIN cohorts
ON cohorts.id = students.cohort_id
WHERE cohorts.name = 'JUL02'
GROUP BY teachers.name;