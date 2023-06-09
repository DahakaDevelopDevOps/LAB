use UNIVER
SELECT NOTE, COUNT(*) AS NOTE_COUNT
FROM (
  SELECT CASE 
           WHEN NOTE >= 9 THEN '9-10'
           WHEN NOTE >= 7 THEN '7-8'
           WHEN NOTE >= 5 THEN '5-6'
           ELSE '0-4'
         END AS GRADE_INTERVAL,
         NOTE
  FROM PROGRESS
  WHERE PDATE BETWEEN '2014-01-01' AND '2014-01-31'
) AS GRADES
GROUP BY NOTE
ORDER BY NOTE DESC;
