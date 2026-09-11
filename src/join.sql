/*WAQTD ename and dept name for all the employees .*/

SELECT ENAME , DNAME 
FROM EMP , DEPT
WHERE EMP.DEPTNO = DEPT.DEPTNO 

/*WAQTD ename and loc for all the employees working as Manager.*/

SELECT ENAME , LOC 
FROM EMP , DEPT
WHERE EMP.DEPTNO = DEPT.DEPTNO AND JOB ='MANAGER' ;

/*WAQTD ename, sal and dname of the employee working as Clerk in dept 20 with a salary of more than 1800 .*/

SELECT ENAME , SAL , DNAME 
FROM EMP , DEPT
WHERE EMP.DEPTNO =DEPT.DEPTNO AND
EMP.DEPTNO = 20 AND JOB ='CLERK' AND SAL> 1800;

/*WAQTD ename deptno , dname and loc of the employee earning more than 2000 in New York.*/

SELECT ENAME , EMP.DEPTNO , DNAME 
FROM EMP , DEPT
WHERE EMP.DEPTNO = DEPT.DEPTNO AND SAL> 2000 AND LOC ='NEW YORK' ;
