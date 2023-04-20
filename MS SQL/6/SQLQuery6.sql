use UNIVER
SELECT SUBJECT, COUNT(*) AS 'Number of Students with Grades 8 and 9'
FROM PROGRESS
WHERE NOTE IN (8, 9)
GROUP BY SUBJECT
HAVING COUNT(*) > 0
ORDER BY COUNT(*) DESC;
