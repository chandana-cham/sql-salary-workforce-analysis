-- Market size
SELECT COUNT(*) AS total_records
FROM ds_salaries;

-- Unique job roles
SELECT DISTINCT job_title
FROM ds_salaries;

-- Overall average salary
SELECT ROUND(AVG(salary_in_usd), 2) AS avg_salary_usd
FROM ds_salaries;

-- Salary by experience level
SELECT
    experience_level,
    ROUND(AVG(salary_in_usd), 2) AS avg_salary
FROM ds_salaries
GROUP BY experience_level;

-- Salary by job role
SELECT
    job_title,
    ROUND(AVG(salary_in_usd), 2) AS avg_salary
FROM ds_salaries
GROUP BY job_title
ORDER BY avg_salary DESC;

-- Employment type distribution
SELECT
    employment_type,
    COUNT(*) AS total_jobs
FROM ds_salaries
GROUP BY employment_type;

-- Salary by company size
SELECT
    company_size,
    ROUND(AVG(salary_in_usd), 2) AS avg_salary
FROM ds_salaries
GROUP BY company_size;

-- Country-wise salary comparison
SELECT
    company_location,
    ROUND(AVG(salary_in_usd), 2) AS avg_salary
FROM ds_salaries
GROUP BY company_location
HAVING COUNT(*) > 20
ORDER BY avg_salary DESC;

-- Salary trend over years
SELECT
    work_year,
    ROUND(AVG(salary_in_usd), 2) AS avg_salary
FROM ds_salaries
GROUP BY work_year
ORDER BY work_year;
