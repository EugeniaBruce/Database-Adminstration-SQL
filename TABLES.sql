--CREATE TABLE account (user_id SERIAL PRIMARY KEY,
--username VARCHAR(50) UNIQUE NOT NULL,
--password VARCHAR(50) UNIQUE NOT NULL,
--email VARCHAR(250)UNIQUE NOT NULL,
--created_on TIMESTAMP NOT NULL,
--last_login TIMESTAMP);
--CREATE TABLE job (job_id SERIAL PRIMARY KEY,
--job_name VARCHAR(200) UNIQUE NOT NULL);
--CREATE TABLE account_job(user_id INTEGER REFERENCES account(user_id),
--job_id INTEGER REFERENCES job(job_id),
--hire_date TIMESTAMP);
--INSERT INTO account (username,password,email,created_on)
--VALUES
--('Jones','Welcome','Jones@gmail.com', CURRENT_TIMESTAMP);
--INSERT INTO account_job(user_id,job_id,hire_date)
--VALUES
--(1,1,CURRENT_TIMESTAMP);
--UPDATE account 
--SET last_login = CURRENT_TIMESTAMP;
--UPDATE account_job
--SET hire_date = account.created_on
--FROM account 
--WHERE account_job.user_id = account.user_id
--DELETE FROM job
--WHERE job_name = 'Doctor'
--RETURNING job_id,job_name;
--ALTER TABLE account
--RENAME TO new_account;
--ALTER TABLE account
--ALTER COLUMN email DROP NOT NULL;
--ALTER TABLE account 
--DROP COLUMN last_login;
--CREATE TABLE employees(emp_id SERIAL PRIMARY KEY,
--first_name VARCHAR(50) NOT NULL,
--last_name VARCHAR(50) NOT NULL, birthdate DATE CHECK (birthdate >'1900-01-01'),
--hiredate DATE CHECK (hiredate > birthdate),
--SALARY INTEGER CHECK (salary >0));
--CREATE TABLE students (student_id SERIAL PRIMARY KEY,
--first_name VARCHAR(50)NOT NULL,last_name VARCHAR(50) NOT NULL,
--homeroom_number INTEGER, Phone VARCHAR(50) UNIQUE NOT NULL, 
--email VARCHAR(100)UNIQUE,
--graduation_year INTEGER);
--CREATE TABLE teachers (teacher_id SERIAL PRIMARY KEY,
--first_name VARCHAR(50)NOT NULL,last_name VARCHAR(50) NOT NULL,
--homeroom_number INTEGER, department VARCHAR(50),
--Phone VARCHAR(50) UNIQUE NOT NULL, 
--email VARCHAR(100)UNIQUE);
 
	
