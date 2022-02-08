SELECT cohorts.name, 
       sum(started_at - created_at) as total_wait_time
FROM assistance_requests JOIN students
ON students.id = assistance_requests.student_id
JOIN cohorts
ON students.cohort_id = cohorts.id
GROUP BY cohorts.name
ORDER BY total_wait_time;