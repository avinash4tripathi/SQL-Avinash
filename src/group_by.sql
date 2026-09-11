 /*WAQTD number of employees working in each dept except the Employee working as analyst .*/

SELECT DEPTNO , COUNT(*) 
FROM EMP
WHERE JOB NOT IN 'ANALYST' GROUP BY DEPTNO ;

/*WAQTD maximum salary given to each job .*/

SELECT JOB , MAX( SAL ) 
FROM EMP 
GROUP BY JOB;

/*WAQTD number of employees working in each job if the employees Have character 'A' in their names .*/

SELECT JOB , COUNT(*) 
FROM EMP
WHERE ENAME LIKE '%A%' GROUP BY JOB;

/*WAQTD number of employees getting commission in each dept.*/

SELECT DEPTNO , COUNT( COMM )
FROM EMP
GROUP BY DEPTNO ;
