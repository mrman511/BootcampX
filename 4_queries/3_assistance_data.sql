SELECT teachers.name,
       students.name,
       assignments.name,
       (started_at - completed_at) as duration
FROM assistance_requests JOIN teachers
ON teachers.id = teacher_id
JOIN students
ON students.id = student_id
JOIN assignments
ON assignments.id = assignment_id
LIMIT 120;
