
-- -----DROP TABLES -------------------------------
DROP TABLE BC_JOBS;
DROP TABLE BC_EMPLOYEES;
DROP TABLE BC_PROJECTS;
DROP TABLE BC_BILLINGS;

-- -------CREATE TABLES -----------------------------

- Create BC_JOBS table
CREATE TABLE BC_JOBS (
  job_id INTEGER,
  job_title VARCHAR2(50),
  charge_hour DECIMAL
);

--------- Create BC_EMPLOYEES table------------
CREATE TABLE BC_EMPLOYEES (
  employee_id INTEGER,
  first_name VARCHAR2(50),
  last_name VARCHAR2(50),
  job_id DECIMAL
);

-- -----Create BC_PROJECTS table---------
CREATE TABLE BC_PROJECTS (
  project_id INTEGER,
  project_name VARCHAR2(100),
  project_leader_id INTEGER
);

-- ------Create BC_BILLINGS table------------
CREATE TABLE BC_BILLINGS (
  project_id INTEGER,
  employee_id INTEGER,
  hours_billed INTEGER
);


-----------INSERT Data -------------------------------
INSERT ALL
INTO bc_billings VALUES (15, 103, 23.8)
INTO bc_billings VALUES (15, 101, 19.4)
INTO bc_billings VALUES (15, 105, 35.7)
INTO bc_billings VALUES (15, 106, 12.6)
INTO bc_billings VALUES (15, 102, 23.8)
INTO bc_billings VALUES (18, 114, 25.6)
INTO bc_billings VALUES (18, 118, 45.3)
INTO bc_billings VALUES (18, 104, 32.4)
INTO bc_billings VALUES (18, 112, 45.0)
INTO bc_billings VALUES (22, 105, 65.7)
INTO bc_billings VALUES (22, 104, 48.4)
INTO bc_billings VALUES (22, 113, 23.6)
INTO bc_billings VALUES (22, 111, 22.0)
INTO bc_billings VALUES (25, 106, 12.8)
INTO bc_billings VALUES (25, 107, 25.6)
INTO bc_billings VALUES (25, 115, 45.8)
INTO bc_billings VALUES (25, 101, 56.3)
INTO bc_billings VALUES (25, 114, 33.1)
INTO bc_billings VALUES (25, 108, 23.6)
INTO bc_billings VALUES (25, 118, 30.5)
INTO bc_billings VALUES (25, 112, 41.4)
SELECT 1 FROM DUAL;

INSERT ALL
INTO bc_employees VALUES (103, 'June',     'Arbough',    501)
INTO bc_employees VALUES (101, 'John',     'News',       502)
INTO bc_employees VALUES (105, 'Alice',    'Johnson',    502)
INTO bc_employees VALUES (106, 'William',  'Smith',      503)
INTO bc_employees VALUES (102, 'David',    'Senior',     504)
INTO bc_employees VALUES (114, 'Annelise', 'Jones',      503)
INTO bc_employees VALUES (118, 'James',    'Frommer',    505)
INTO bc_employees VALUES (104, 'Anne',     'Ramoras',    504)
INTO bc_employees VALUES (112, 'Darlene',  'Smithson',   506)
INTO bc_employees VALUES (113, 'Jen',      'Clarke',     503)
INTO bc_employees VALUES (111, 'Geoff',    'Wabash',     507)
INTO bc_employees VALUES (107, 'Maria',    'Alonzo',     503)
INTO bc_employees VALUES (115, 'Travis',   'Bawangi',    504)
INTO bc_employees VALUES (108, 'Ralph',    'Washington', 504)
SELECT 1 FROM DUAL;


-- -----------Other DML Statements --------------------

INSERT INTO BC_PROJECTS (project_id, project_name) VALUES (15,'Lakeview');
INSERT INTO BC_PROJECTS (project_id, project_name) VALUES (18,'WebApp');
INSERT INTO BC_PROJECTS (project_id, project_name) VALUES (22,'Blue Light');
INSERT INTO BC_PROJECTS (project_id, project_name) VALUES (25,'Power Lite');

INSERT INTO BC_JOBS (job_id, job_title, charge_hour) VALUES (501,'Lead Programmer', 85.50);
INSERT INTO BC_JOBS (job_id, job_title, charge_hour) VALUES (502,'Database Designer', 105.00);
INSERT INTO BC_JOBS (job_id, job_title, charge_hour) VALUES (503,'Programmer', 37.75);
INSERT INTO BC_JOBS (job_id, job_title, charge_hour) VALUES (504,'Systems Analyst', 96.75);
INSERT INTO BC_JOBS (job_id, job_title, charge_hour) VALUES (505,'General Support', 18.36);
INSERT INTO BC_JOBS (job_id, job_title, charge_hour) VALUES (506,'DDS Analyst', 45.95);
INSERT INTO BC_JOBS (job_id, job_title, charge_hour) VALUES (507,'Clerical Support', 26.87);

---------------- updating bc_project table---------------
UPDATE BC_PROJECTS
SET project_leader_id = 105
WHERE project_id = 15;

UPDATE BC_PROJECTS
SET project_leader_id = 104
WHERE project_id = 18;

UPDATE BC_PROJECTS
SET project_leader_id = 101
WHERE project_id = 25;


-- --------deleting employee based on first_name and last_name-------------
DELETE FROM bc_employees 
WHERE first_name = 'Darlene' AND last_name  = 'Smithson';



-- -----updating hourss_billed base on project_id and employee_id-----------
UPDATE BC_BILLINGS
SET hours_billed = 49.5
WHERE project_id = 15
AND employee_id = 105;





