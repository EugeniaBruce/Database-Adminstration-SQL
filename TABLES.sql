--CREATING DATABASE AND TABLES

--Tool: POSTGRESQL
--Task: Create tables,insert data and modify existing tables
--Concepts: Primary and Foreign Keys, indexes, constraints 

--Create a customer based table called account 

CREATE TABLE account (user_id SERIAL PRIMARY KEY,
username VARCHAR(50) UNIQUE NOT NULL,
password VARCHAR(50) UNIQUE NOT NULL,
email VARCHAR(250)UNIQUE NOT NULL,
created_on TIMESTAMP NOT NULL,
last_login TIMESTAMP);

--Create another table called job with 2 columns 

CREATE TABLE job (job_id SERIAL PRIMARY KEY,
job_name VARCHAR(200) UNIQUE NOT NULL);

--Create a third table referencing a foreign key

CREATE TABLE account_job(user_id INTEGER REFERENCES account(user_id),
job_id INTEGER REFERENCES job(job_id),
hire_date TIMESTAMP);

--Insert records into accout table

INSERT INTO account (username,password,email,created_on)
VALUES
('Jones','Welcome','Jones@gmail.com', CURRENT_TIMESTAMP);

--Insert data into reference column

INSERT INTO account_job(user_id,job_id)
VALUES
(1,1);

--Update records in account table 

UPDATE account 
SET last_login = CURRENT_TIMESTAMP;

--Update input in account_job table based on account table 

UPDATE account_job
SET hire_date = account.created_on
FROM account 
WHERE account_job.user_id = account.user_id

--Delete row from table

DELETE FROM job
WHERE job_name = 'Doctor'
RETURNING job_id,job_name;

--Rename account table to new_account

ALTER TABLE account
RENAME TO new_account;

--Remove constraint from a column
ALTER TABLE account
ALTER COLUMN email DROP NOT NULL;

--Remove last_login column from accout table

ALTER TABLE account 
DROP COLUMN last_login;

--Create an employee table using CHECK constraint

CREATE TABLE employees(emp_id SERIAL PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL, birthdate DATE CHECK (birthdate >'1900-01-01'),
hiredate DATE CHECK (hiredate > birthdate),
SALARY INTEGER CHECK (salary >0));

--Disclaimer: Part of a virtual SQL bootcamp hosted by Udemy

