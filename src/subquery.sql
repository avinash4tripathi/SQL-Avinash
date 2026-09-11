/*WAQTD names of the employees earning more than 2500 .*/

SELECT ENAME 
FROM EMP
WHERE SAL > 2500 ;

/*WAQTD names of the employees earning less than MILLER . */
SELECT ENAME
FROM EMP
WHERE SAL < ( SELECT SAL
                  FROM  EMP
                     WHERE ENAME = 'MILLER' );

/*WAQTD name and deptno of the employees working in the same Dept as SMITH .*/

SELECT ENAME , DEPTNO 
FROM EMP
WHERE DEPTNO = ( SELECT DEPTNO
                         FROM EMP
                           WHERE ENAME ='SMITH' ) ;

/*WAQTD name and hiredate of the employees if the employee Was hired after JONES.*/

SELECT ENAME , HIREDATE 
FROM EMP
WHERE HIREDATE > ( SELECT HIREDATE
                              FROM EMP
                              WHERE ENAME ='JONES' ) ;

/*WAQTD all the details of the employee working in the same Designation as KING .*/

SELECT* 
FROM EMP
WHERE JOB = ( SELECT JOB
                FROM EMP
                WHERE ENAME ='KING' );

/*WAQTD name , sal , deptno of the employees if the employees Earn more than 2000 and work in the same dept as JAMES.*/

SELECT ENAME , SAL , DEPTNO 
FROM EMP
WHERE SAL > 2000 AND DEPTNO = ( SELECT DEPTNO 
                                  FROM EMP
                                  WHERE ENAME ='JAMES' ) ;

/*WAQTD all the details of the employees working in the Same designation as MILLER and earning more than 1500.*/

SELECT* 
FROM EMP
WHERE SAL > 1500 AND JOB = ( SELECT JOB
                             FROM EMP
                              WHERE ENAME ='MILLER') ;


/*WAQTD details of the employees earning more than SMITH But less than KING .*/

SELECT* 
FROM EMP
WHERE SAL > ( SELECT SAL 
                   FROM EMP
                    WHERE ENAME ='SMITH' ) AND SAL< ( SELECT SAL
                            FROM EMP
                              WHERE ENAME ='KING' ) ;

/*WAQTD name , sal and deptno of the employees if the employee Is earning commission in dept 20 and earning salary more than Scott .*/

SELECT ENAME , SAL , DEPTNO 
FROM EMP
WHERE COMM IS NOT NULL AND DEPTNO = 20 AND SAL > ( SELECT SAL
FROM EMP
WHERE ENAME ='SCOTT' ) ;

/*WAQTD name and hiredate of the employees who's name ends with 'S' and hired after James.*/

SELECT ENAME, HIREDATE 
FROM EMP
WHERE ENAME LIKE '%S' AND HIREDATE > ( SELECT HIREDATE 
                                             FROM EMP
                                             WHERE ENAME ='JAMES' ) ;
 
/*CASE - 2*/

/*WAQTD deptno of the employee whose name is Miller .*/

SELECT DEPTNO 
FROM DEPT
WHERE ENAME ='MILLER' ;

/*WAQTD dname of the employee whose name is Miller .*/

SELECT LOC
FROM DEPT
WHERE DEPTNO = ( SELECT DEPTNO
                          FROM EMP
                          WHERE ENAME = 'MILLER') ;

/*WAQTD Location of ADAMS*/

SELECT LOC 
FROM DEPT
WHERE DEPTNO = ( SELECT DEPTNO 
                        FROM EMP
                        WHERE ENAME ='ADAMS' ) ;

/*WAQTD names of the employees working in Location L2.*/

SELECT ENAME 
FROM EMP
WHERE DEPTNO = ( SELECT DEPTNO 
                   FROM DEPT
                    WHERE LOC ='L2' ) ;

/*WAQTD number of employees working in dept D3 .*/

SELECT COUNT(*) 
FROM EMP
WHERE DEPTNO = ( SELECT DEPTNO
                      FROM DEPT
                      WHERE DNAME ='D3');
