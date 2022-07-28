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

--Questão 3
SELECT
	"writerId" AS writer,
	COUNT("message") AS testimonials
FROM testimonials
WHERE "writerId" = 435
GROUP BY "writerId";

--Questão 4
SELECT
	MAX(jobs.salary) AS "maximumSalary",
	roles.name AS "role"
FROM jobs
JOIN roles ON
jobs."roleId" = roles.id
GROUP BY roles.name;

--Questão Bônus
SELECT
	schools.name AS school,
	courses.name AS course,
	COUNT(educations."userId") AS "studentsCount",
	educations.status AS "role"
FROM educations
JOIN schools ON
schools.id = educations."schoolId"
JOIN courses ON
courses.id = educations."courseId"
WHERE educations.status = 'finished'
OR educations.status = 'ongoing'
GROUP BY
	schools.name,
	courses.name,
	educations.status
ORDER BY "studentsCount" DESC
LIMIT 3;