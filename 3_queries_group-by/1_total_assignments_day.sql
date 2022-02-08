/*total assignmets per day */

SELECT day, count(assignments.duration) as total_duration
FROM assignments
JOIN assignment_submissions 
ON assignment_id = assignments.id
GROUP BY assignments.day
ORDER BY day;
