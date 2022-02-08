SELECT count(assistance_requests.*) as total_requests, students.name
FROM students JOIN assistance_requests
ON students.id = student_id
WHERE students.name = 'Elliot Dickinson'
GROUP BY students.name;