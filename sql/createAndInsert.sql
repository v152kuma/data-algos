-- Create DPT table

CREATE TABLE DPT (

deptno SERIAL PRIMARY KEY,

dname VARCHAR(50) NOT NULL,

location VARCHAR(50) NOT NULL

);

-- Insert values into DPT table

INSERT INTO DPT (dname, location)

VALUES

('Accounting', 'New York'),

('Research', 'Dallas'),

('Sales', 'Chicago'),

('Operations', 'Boston');

-- Create EMP table

CREATE TABLE EMP (

empno SERIAL PRIMARY KEY,

ename VARCHAR(50) NOT NULL,

job VARCHAR(50),

mgr INT,

hiredate DATE,

sal NUMERIC(10, 2),

comm NUMERIC(10, 2),

deptno INT,

CONSTRAINT fk_deptno FOREIGN KEY (deptno) REFERENCES DPT(deptno)

);

-- Insert values into EMP table (example data for 16 rows)

INSERT INTO EMP (ename, job, mgr, hiredate, sal, comm, deptno)

VALUES

('John Doe', 'Manager', NULL, '2023-01-15', 6000, NULL, 1),

('Jane Smith', 'Clerk', 1, '2023-02-10', 3000, 500, 2),

('Alice Johnson', 'Salesman', 1, '2023-03-05', 4000, 700, 3),

('Robert Brown', 'Analyst', 2, '2023-04-12', 5000, NULL, 4),

('Emily Davis', 'Clerk', 1, '2023-05-20', 2800, 200, 1),

('Michael Wilson', 'Salesman', 3, '2023-06-15', 4500, 600, 3),

('Chris Moore', 'Manager', NULL, '2023-07-10', 6200, NULL, 2),

('Sarah Taylor', 'Analyst', 4, '2023-08-17', 5200, NULL, 4),

('Jessica White', 'Clerk', 3, '2023-09-05', 3100, 300, 2),

('Daniel Harris', 'Salesman', 6, '2023-10-10', 4300, 400, 3),

('Angela Martin', 'Manager', NULL, '2023-11-15', 5800, NULL, 1),

('Kevin Lee', 'Analyst', 5, '2023-12-01', 5100, NULL, 4),

('Laura Scott', 'Clerk', 7, '2024-01-10', 2900, 150, 2),

('Paul Walker', 'Salesman', 10, '2024-02-20', 4400, 500, 3),

('Nancy Adams', 'Manager', NULL, '2024-03-15', 6100, NULL, 1),

('David Clark', 'Analyst', 11, '2024-04-05', 5300, NULL, 4);

-- Verify data

SELECT * FROM DPT;

SELECT * FROM EMP;