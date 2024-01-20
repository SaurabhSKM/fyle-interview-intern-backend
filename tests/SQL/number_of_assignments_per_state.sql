-- Write query to get number of assignments for each state
SELECT state , Count(*)
FROM assignments
GROUP BY state

