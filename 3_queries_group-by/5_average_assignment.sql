SELECT students.name as student, avg(assignment_submissions.duration) as assignment_average_duration 
FROM students JOIN assignment_submissions
ON students.id = student_id
WHERE students.end_date IS NULL
GROUP BY student
ORDER BY assignment_average_duration DESC;