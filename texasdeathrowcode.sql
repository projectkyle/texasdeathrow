-- Texas Deathrow Data Exploration
-- Executed Inmates from 1976 to 2018
-- Aggregate Functions, Converting Data Types, Filter NULLs, Operators, Creating Views

-- creating the table

DROP TABLE if exists tx_deathrow
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



-- percentage of deathrow whose native state is Texas
-- returns 524 not NULL native_state values
SELECT COUNT(native_state)
FROM tx_deathrow
WHERE native_state is not NULL;

-- roughly 64.69%
SELECT ((COUNT(native_state))/524.0) * 100 as texas_percentage
FROM tx_deathrow
WHERE native_state = 'Texas';



-- number of deathrow inmates who mention God in their last statement
-- 185 mentions 
CREATE OR REPLACE VIEW contract_with_god as
SELECT COUNT(last_statement) as mentions
FROM tx_deathrow
WHERE last_statement LIKE '%God%'
	OR last_statement LIKE '%Lord%';



-- who is the oldest executed deathrow inmate?
-- Lester Bower, age 67
SELECT first_name, last_name, age_at_execution
FROM tx_deathrow
ORDER BY age_at_execution DESC
LIMIT 1;



-- average age and education
-- age of 39.47 and education level of 10.2
SELECT 
	CAST(AVG(age_at_execution) as NUMERIC(10,2)) as avg_age, 
	CAST(AVG(highest_education_level) as NUMERIC(10,1)) avg_educ
FROM tx_deathrow;



-- who was the first person executed?
-- Charlie Brooks, Jr. Executed in 1982 at age 40
SELECT first_name, last_name, age_at_execution, execution_date
FROM tx_deathrow
ORDER BY execution_date ASC
LIMIT 1;


-- grouping executions by race

SELECT race, COUNT(first_name) as Executions
FROM tx_deathrow
WHERE race IS NOT NULL
GROUP BY race
ORDER BY COUNT(first_name) DESC;


