QUESTION 1
Display details of employees working as CLERK and earning less than 1500.

ANSWER:
SELECT *
FROM EMP
WHERE JOB = 'CLERK'
AND SAL < 1500;


QUESTION 2
Display name and hire date of employees working as MANAGER in department 30.

ANSWER:
SELECT ENAME, HIREDATE
FROM EMP
WHERE JOB = 'MANAGER'
AND DEPTNO = 30;


QUESTION 3
Display details of employees along with annual salary if they are working in department 30 as SALESMAN and their annual salary is greater than 14000.

ANSWER:
SELECT EMP.*, SAL * 12 AS ANNUAL_SALARY
FROM EMP
WHERE DEPTNO = 30
AND JOB = 'SALESMAN'
AND SAL * 12 > 14000;


QUESTION 4
Display all details of employees working in department 30 OR working as ANALYST.

ANSWER:
SELECT *
FROM EMP
WHERE DEPTNO = 30
OR JOB = 'ANALYST';


QUESTION 5
Display names of employees whose salary is less than 1100 and designation is CLERK.

ANSWER:
SELECT ENAME
FROM EMP
WHERE SAL < 1100
AND JOB = 'CLERK';


QUESTION 6
Display name, salary, annual salary and department number if department number is 20, salary is more than 1100 and annual salary exceeds 12000.

ANSWER:
SELECT ENAME, SAL, SAL * 12 AS ANNUAL_SALARY, DEPTNO
FROM EMP
WHERE DEPTNO = 20
AND SAL > 1100
AND SAL * 12 > 12000;


QUESTION 7
Display employee number and names of employees working as MANAGER in department 20.

ANSWER:
SELECT EMPNO, ENAME
FROM EMP
WHERE JOB = 'MANAGER'
AND DEPTNO = 20;


QUESTION 8
Display details of employees working in department 20 OR 30.

ANSWER:
SELECT *
FROM EMP
WHERE DEPTNO IN (20, 30);


QUESTION 9
Display details of employees working as ANALYST in department 10.

ANSWER:
SELECT *
FROM EMP
WHERE JOB = 'ANALYST'
AND DEPTNO = 10;


QUESTION 10
Display details of employee working as PRESIDENT with salary of 4000 rupees.

ANSWER:
SELECT *
FROM EMP
WHERE JOB = 'PRESIDENT'
AND SAL = 4000;


QUESTION 11
Display names, department number and job of employees working as CLERK in department 10 OR 20.

ANSWER:
SELECT ENAME, DEPTNO, JOB
FROM EMP
WHERE JOB = 'CLERK'
AND DEPTNO IN (10, 20);


QUESTION 12
Display details of employees working as CLERK or MANAGER in department 10.

ANSWER:
SELECT *
FROM EMP
WHERE DEPTNO = 10
AND JOB IN ('CLERK', 'MANAGER');


QUESTION 13
Display names of employees working in department 10, 20, 30 or 40.

ANSWER:
SELECT ENAME
FROM EMP
WHERE DEPTNO IN (10, 20, 30, 40);


QUESTION 14
Display details of employees with employee numbers 7902 and 7839.

ANSWER:
SELECT *
FROM EMP
WHERE EMPNO IN (7902, 7839);


QUESTION 15
Display details of employees working as MANAGER or SALESMAN or CLERK.

ANSWER:
SELECT *
FROM EMP
WHERE JOB IN ('MANAGER', 'SALESMAN', 'CLERK');


QUESTION 16
Display names of employees hired after 1981 and before 1987.

ANSWER:
SELECT ENAME
FROM EMP
WHERE HIREDATE > DATE '1981-12-31'
AND HIREDATE < DATE '1987-01-01';


QUESTION 17
Display details of employees earning more than 1250 but less than 3000.

ANSWER:
SELECT *
FROM EMP
WHERE SAL > 1250
AND SAL < 3000;


QUESTION 18
Display names of employees hired after 1981 in department 10 or 30.

ANSWER:
SELECT ENAME
FROM EMP
WHERE HIREDATE > DATE '1981-12-31'
AND DEPTNO IN (10, 30);


QUESTION 19
Display names of employees along with annual salary for employees working as MANAGER or CLERK in department 10 or 30.

ANSWER:
SELECT ENAME, SAL * 12 AS ANNUAL_SALARY
FROM EMP
WHERE JOB IN ('MANAGER', 'CLERK')
AND DEPTNO IN (10, 30);


QUESTION 20
Display all details along with annual salary if salary is between 1000 and 1400 and annual salary is more than 15000.

ANSWER:
SELECT EMP.*, SAL * 12 AS ANNUAL_SALARY
FROM EMP
WHERE SAL BETWEEN 1000 AND 1400
AND SAL * 12 > 15000;


