/*WAQTD to find number of employees working in each Dept if there are at least 3 employees in each dept .*/

SELECT DEPTNO , COUNT(*) FROMEMP
GROUP BY DEPTNO HAYING COUNT(*)>=3 ;


/*WAQTD the designations in which there are at lest 2 employees Present.*/

SELECT JOB , COUNT(*) 
FROM EMP
GROUP BY JOB HAYING COUNT(*)>=2 ;

/*WAQTD the names that are repeated .*/

SELECT ENAME , COUNT(*) 
FROM EMP
GROUP BY ENAME HAYING COUNT(*) > 1 ;

/*WAQTD names that are repeated exactly twice .*/

SELECT ENAME , COUNT(*) 
FROM EMP
GROUP BY ENAME HAYING COUNT(*) = 2

/*WAQTD the salary that is repeated.*/

SELECT SAL, COUNT(*) 
FROM EMP
GROUP BY SAL HAYING COUNT(*) > 1 ;

/*WAQTD number of employees working in each dept having At least 2 emp's Character 'A' or 'S' in their names .*/

SELECT DEPTNO , COUNT(*) 
FROM EMP
WHERE ENAME LIKE '%A%' OR ENAME LIKE '%S%' GROUP BY DEPTNO
HAYING COUNT(*)>=2 ;

/*WAQTD job and total salary of each job , if the total salary Of each job is greater than 3450 .*/

SELECT JOB , SUM( SAL ) 
FROM EMP
GROUP BY JOB
HAYING SUM( SAL ) > 3450 ;

/*WAQTD job and total salary of the employees if the employees Are earning more than 1500.*/

SELECT JOB , SUM( SAL ) 
FROM EMP
WHERE SAL > 1500 GROUP BY JOB;

