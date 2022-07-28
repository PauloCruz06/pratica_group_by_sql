--Questão 1
SELECT COUNT("endDate")
FROM experiences;

--Questão 2
SELECT
	"userId" AS id,
	COUNT(status) AS educations
FROM educations
WHERE status = 'finished'
GROUP BY "userId";