-- Texas Deathrow Data Exploration
-- Executed Inmates from 1976 to 2018
-- Aggregate Functions, Converting Data Types, Filter NULLs, Operators, Creating Views

-- creating the table

DROP TABLE if exists tx_deathrow;

CREATE TABLE tx_deathrow (
    execution INT,
    date_of_birth DATE,
    date_of_offence DATE,
    highest_education_level real,
    last_name TEXT, 
    first_name TEXT,
    tdcj_number varchar (20),
    age_at_execution INT,
    date_received DATE,
    execution_date DATE,
    race TEXT,
    county TEXT,
    eye_color TEXT,
    weight real,
    height TEXT,
    native_county TEXT,
    native_state TEXT,
	last_statement TEXT
);


-- display entire table
SELECT * FROM tx_deathrow;

-- checking for duplicates

SELECT COUNT(execution)
FROM tx_deathrow;

-- check for repeat first and last names
-- 4 repeat names
SELECT first_name, last_name, COUNT(*)
FROM tx_deathrow
GROUP BY first_name, last_name
HAVING COUNT(*) > 1

-- check for repeat texas dept of criminal justice IDs
SELECT execution, first_name, last_name, COUNT(tdcj_number)
FROM tx_deathrow
GROUP BY execution, first_name, last_name, tdcj_number
HAVING COUNT(tdcj_number) > 1



-- who is the oldest executed deathrow inmate?
-- Lester Bower, age 67
SELECT first_name, last_name, age_at_execution
FROM tx_deathrow
ORDER BY age_at_execution DESC
LIMIT 1;



-- average age and education
-- age of 39.47 and education level of 10.2
SELECT 
	CAST(AVG(age_at_execution) AS NUMERIC(10,2)) AS avg_age,
	CAST(AVG(highest_education_level) AS NUMERIC(10,1)) avg_educ
FROM tx_deathrow;

-- who has the highest education
SELECT highest_education_level, first_name, last_name
FROM tx_deathrow
ORDER BY highest_education_level DESC;



-- who was the first person executed?
-- Charlie Brooks, Jr. Executed in 1982 at age 40
SELECT first_name, last_name, age_at_execution, execution_date
FROM tx_deathrow
ORDER BY execution_date ASC
LIMIT 1;

-- how long was each inmate on deathrow
SELECT * FROM tx_deathrow;

ALTER TABLE tx_deathrow
ADD time_on_deathrow NUMERIC(10,1);

UPDATE tx_deathrow
SET time_on_deathrow = (execution_date::date - date_received::date)/365.0;

ALTER TABLE tx_deathrow
DROP COLUMN time_on_deathrow

--average time on deathrow

SELECT CAST(AVG(time_on_deathrow) AS NUMERIC(10,1)) AS avg_deathrow_time
FROM tx_deathrow;




-- percentage of deathrow whose native state is Texas
-- returns 524 not NULL native_state values
SELECT COUNT(native_state)
FROM tx_deathrow
WHERE native_state is not NULL;

-- roughly 64.69%
SELECT ROUND(((COUNT(native_state))/524.0) * 100, 2) AS texas_percentage
FROM tx_deathrow
WHERE native_state = 'Texas';

-- exact numbers of executions for each native state
SELECT COUNT(execution), native_state
FROM tx_deathrow
GROUP BY (native_state)
ORDER BY COUNT(native_state) DESC;



-- grouping executions by race

CREATE OR REPLACE VIEW race_group AS
SELECT race, COUNT(first_name) AS Executions
FROM tx_deathrow
WHERE race IS NOT NULL
GROUP BY race
ORDER BY COUNT(first_name) DESC;

SELECT * FROM race_group;


-- number of deathrow inmates who mention God in their last statement
-- 185 mentions 
CREATE OR REPLACE VIEW contract_with_god AS
SELECT COUNT(last_statement) AS mentions
FROM tx_deathrow
WHERE last_statement LIKE '%God%'
	OR last_statement LIKE '%Lord%';

SELECT * FROM contract_with_god;



