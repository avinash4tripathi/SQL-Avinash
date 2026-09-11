/*WAQTD name and deptno of the employees hired After '0l-JAN-87'*/

SELECT ENAME , DEPTNO FROMEMP
WHERE HIREDATE > '01-JAN-1987'

/*WAQTD name and hiredate of the employees hired before 31-JUL-88*/

SELECT ENAME, HIREDATE FROMEMP
WHERE HIREDATE < '3l-JUL-88' 

/*WAQTD name and deptno along with job for the employee working in dept 10*/

SELECT ENAME , DEPTNO , JOB FROMEMP
WHERE DEPTNO = 10 ;

/* WAQTD name and deptno along with job for the employee working as manager in dept 10*/

SELECT ENAME , DEPTNO , JOB FROMEMP
WHERE JOB ='MANAGER' AND DEPTNO = 10

/*WAQTD name, deptno, salary of the employee working in dept 20 and earning less than 3000*/

SELECT ENAME, DEPTNO , SAL FROMEMP
WHERE DEPTNO = 20 AND SAL < 3000

/*WAQTD name and salary of the employee if emp earns More than 1250 but less than 3000.*/

SELECT ENAME , SAL FROMEMP
WHERE SAL > 1250 AND SAL < 3000

/* WAQTD name and deptno of the employees if the works in dept 10 or 20*/

SELECT ENAME , DEPTNO FROMEMP
WHERE DEPTNO = 10 OR DEPTNO = 20 ;

/*WAQTD name and sal and deptno of the employees If emp gets more than 1250 but less than 4000 and works in dept 20*/
SELECT ENAME , SAL , DEPTNO FROMEMP
WHERE SAL> 1250 AND SAL< 4000 AND DEPTNO=20;

/*WAQTD name , job , deptno of the employees working as a manager in dept 10 or 30 .*/

SELECT ENAME , JOB , DEPTNO FROMEMP
WHERE JOB ='MANAGER' AND ( DEPTNO = 10 OR DEPTNO = 20 )

/* WAQTD name , deptno , job of the employees working in dept 10 or 20 or 30 as a clerk */

SELECT ENAME , JOB , DEPTNO FROMEMP
WHERE JOB ='CLERK' AND ( DEPTNO = 10 OR DEPTNO = 20 AND DEPTNO = 30 ) ;

/*WAQTD name ,job and deptno of the employees working as clerk or manager in dept 10 */

SELECT ENAME , JOB , DEPTNO FROMEMP
WHERE ( JOB = 'CLERK' OR JOB ='MANAGER' ) AND DEPTNO = 10 ;

/*WAQTD name , job , deptno , sal of the employees working as clerk or salesman in dept 10 or 30 and earning more than 1800 .*/

SELECT ENAME , JOB , SAL FROMEMP
WHERE ( JOB ='CLERK' OR JOB ='SALESMAN') AND ( DEPTNO = 10 OR DEPTNO = 30 ) AND SAL > 1800;

/*WAQTD ALL THE DETAILS ALONG WITH ANNUAL SALARY IF SAL IS BETWEEN 1000 AND 4000 ANNUAL SALARY MORE THAN 15000*/
SELECT emp.*,sal*12 as ANNUAL_SAlARY
FROM EMP 
WHERE SAL IS BETWEEN 1000 AND SAL*12>
