-- Write query to find the number of grade A's given by the teacher who has graded the most assignments
WITH MostGradedTeacher AS (
    SELECT teacher_id, COUNT(*) AS count
    FROM assignments
    GROUP BY teacher_id
    ORDER BY count DESC
    LIMIT 1
)

SELECT COUNT(*) AS count_of_grades
FROM assignments
WHERE teacher_id = (SELECT teacher_id FROM MostGradedTeacher)
    AND grade = 'A';
