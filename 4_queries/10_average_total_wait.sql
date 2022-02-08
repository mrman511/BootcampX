SELECT avg(wait_times.average_wait_time) as average_total_wait_time
FROM (
  SELECT avg(started_at - created_at) as average_wait_time
from assistance_requests
) as wait_times;