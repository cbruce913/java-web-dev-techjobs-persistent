## Part 1: Test it with SQL
SELECT INTEGER id, VARCHAR name, VARCHAR employer, VARCHAR skill
FROM tech_jobs.job

## Part 2: Test it with SQL
SELECT VARCHAR name
FROM tech_jobs.employers
WHERE (location = "St. Louis")

## Part 3: Test it with SQL
DROP TABLE tech_jobs.job

## Part 4: Test it with SQL
SELECT VARCHAR name, VARCHAR description
FROM tech_jobs.skill
WHERE EXISTS (SELECT VARCHAR name FROM tech_jobs.job WHERE tech_jobs.job.id = tech_jobs.job_skills.jobs_id AND tech_jobs.skill.id = tech_jobs.job_skills.skill_id)
ORDER BY DESC