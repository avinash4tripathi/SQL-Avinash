/*WAQTD name of the employee if the employee earns less than The employees working as salesman .*/

SELECT ENAME FROMEMP
WHERE SAL < ALL ( SELECT SAL
                      FROM EMP
                       WHERE JOB='SALESMAN' ) ;
/*WAQTD name of the employee if the employee earns less than At least a salesman .*/
SELECT ENAME 
FROM EMP
WHERE SAL < ANY ( SELECT SAL 
                     FROM EMP
                     WHERE JOB ='SALESMAN' ) ;
/*WAQTD names of the employees earning more than ADAMS.*/
SELECT ENAME
FROM EMP
WHERE SAL > ALL ( SELECT SAL 
                       FROM EMP
                       WHERE ENAME ='ADAMS' ) ;

/*WAQTD maximum salary given to an employee .*/
SELECT MAX( SAL )  
FROM EMP;

/*WAQTD second maximum salary given to an employee*/
SELECT MAX( SAL )
FROM EMP
WHERE SAL < ( SELECT MAX( SAL)
                  FROM EMP);

/*WAQTD 3rd maximum salary .*/

SELECT MAX( SAL )
FROM EMP
WHERE SAL < ( SELECT MAX( SAL ) 
               FROM EMP
                   WHERE SAL < ( SELECT MAX( SAL )  
                       FROM EMP))

/*WAQTD 4th maximum salary .*/

SELECT MAX( SAL ) 
FROM EMP
WHERE SAL < ( SELECT MAX( SAL ) FROM EMP
WHERE SAL < ( SELECT MAX( SAL ) FROM EMP
WHERE SAL < ( SELECT MAX( SAL ) FROM EMP)))

/*WAQTD 3 minimum salary .*/

SELECT MIN(SAL)
FROM EMP
WHERE SAL> ( SELECT MIN(SAL ) 
             FROM EMP
               WHERE SAL > ( SELECT MIN ( SAL )
                   FROM EMP));

/*WAQTD Dept name of the employee getting 2nd Minimum salary.*/

SELECT DNAME 
FROM DEPT
WHERE DEPTNO = ( SELECT DEPTNO 
                        FROM EMP
                         WHERE SAL= (SELECT MIN( SAL) 
                         FROM EMP
                            WHERE SAL> ( SELECT MIN( SAL) 
                             FROM EMP ) ) );
