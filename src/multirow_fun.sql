/*WAQTD maximum salary given to a manager .*/

SELECT MAX( SAL ) 
FROM EMP
WHERE JOB ='MANAGER' ;
/*WAQTD Total salary given to dept 10,*/
SELECT SUM( SAL )
FROM EMP
WHERE DEPTNO =10 ;
/*WAQTD number of employees earing more than 1500 in dept 20*/ 
SELECT COUNT(*)
FROM EMP
WHERE SAL > 1500 AND DEPTNO = 20 ;

/*WAQTD number of employee having 'E' in their names .*/

SELECT COUNT(*) 
FROM EMP
WHERE ENAME LIKE '%E%' ;

/*WAQTD minimum salary given to the employees working as clerk in Dept 10 or 20.*/

SELECT MIN( SAL) 
FROM EMP
WHERE JOB='CLERK' AND DEPTNO IN ( 10 , 20 ) ;

/*WAQTD number of employees hired after 1982 and before 1985 into Dept 10 or 30 .*/

SELECT COUNT(*) 
FROM EMP
WHERE HIREDATE >'31-DEC-1982' AND HIREDATE <'01- JAN-1985' AND DEPTNO IN ( 10, 30);

/*WAQTD number of employees getting commission .*/

SELECT COUNT(*) 
FROM EMP
WHERE COMM IS NOT NULL ;


/*WAQTD maximum salary given to employees if the emp has character 'S' in the name and works as a Manager in dept 10 with as salary of more than 1800 .*/

SELECT MAX( SAL ) 
FROM EMP
WHERE ENAME LIKE '%S%' AND JOB ='MANAGER' AND DEPTNO = 10 AND SAL> 1800;

/*WAQTD number of employees working in dept 10 or 30 and getting commission without the salary .*/

SELECT COUNT(*) 
FROM EMP
WHERE DEPTNO IN ( 10 , 30 ) AND COMM IS NOT NULL AND SAL IS NULL ;


/*WAQTD maximum salary given to a manager working in dept 20 and also his comm must be greater than his salary .*/

SELECT MAX( SAL ) 
FROM EMP
WHERE JOB ='MANAGER' AND DEPTNO = 20 AND COMM> SAL;