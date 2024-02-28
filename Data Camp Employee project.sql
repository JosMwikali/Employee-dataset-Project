-- 1. Distribution by race/Ethinicity

-- Disparities in Representation Across Departments or Positions
SELECT department, race, COUNT(*) AS count
FROM employee.employee
GROUP BY department, race ;

-- Racial/Ethnic Composition of the Workforce
SELECT race , COUNT(*) AS count
FROM employee.employee
GROUP BY race;

-- 2. Gender Representation

-- Gender Distribution Within the Organization
SELECT gender, COUNT(*) AS count
FROM employee.employee
GROUP BY gender;

-- Gender Imbalances in Certain Departments or Roles
SELECT department, gender, COUNT(*) AS count
FROM employee.employee
GROUP BY department, gender;

-- 3. Employment Type Distribution

-- Proportion of Employees by Employment Type
SELECT employment_type, COUNT(*) AS count
FROM employee.employee
GROUP BY employment_type;

-- Differences in Employment Types Across Departments or Positions
SELECT department, position_title, employment_type, COUNT(*) AS count
FROM employee.employee
GROUP BY department, position_title, employment_type;

-- 4. NO CODE BECAUSE THE DATASET LACKS AGE COLUMN

-- 5. Tenure Analysis
-- Distribution of Employee Tenure


-- 6. Salary Distribution

-- Distribution of Base Salaries (mean, mode, median)
-- Mean
SELECT AVG(base_salary) AS mean_salary
FROM employee.employee;
-- Mode
SELECT base_salary AS mode_salary
FROM employee.employee
GROUP BY base_salary
ORDER BY COUNT(*) DESC
LIMIT 1
-- Median
SELECT AVG(base_salary) AS median
FROM (
    SELECT base_salary
    FROM employee.employee
    WHERE base_salary IS NOT NULL
    ORDER BY base_salary
    LIMIT 2 - (SELECT COUNT(*) FROM employee.employee) % 2
    OFFSET (SELECT FLOOR(COUNT(*) / 2) FROM table_name)
) AS median_subquery;

-- 7.  Salary Disparities
-- Average Salary by Gender
SELECT GENDER, AVG(BASE_SALARY) AS avg_salary
FROM employee.employee
GROUP BY GENDER;

-- 8.  Salary by Department/Position
-- Average Salary Within Each Department or Position Title
SELECT department, position_title, AVG(base_salary) AS mean_salary
FROM employee.employee
GROUP BY department, position_title;
-- Average Salary by Race/Ethnicity
SELECT race,base_salary
      (AVG base_salary ) AS avg_salary
FROM employee.employee
GROUP BY race;





