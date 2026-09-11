/*WAQTD name of the employee who is not getting salary . */
SELECT ENAME
FROM EMP
WHERE SAL IS NULL ;
/*WAQTD name of the emp who doesn't get commission.*/ 
SELECT ENAME
FROM EMP
WHERE COMM IS NULL ;
/*WAQTD name, sal and comm of the emp if the emp doesn't earn both.*/

SELECT ENAME , SAL , COMM 
FROM EMP
WHERE COMM IS NULL AND SAL IS NULL

/*WAQTD name of the employee who is getting salary.*/
SELECT ENAME
FROM EMP
WHERE SAL IS NOT NULL ;

/*WAQTD name of the emp who gets commission .*/
SELECT ENAME
FROM EMP
WHERE COMM IS NOT NULL ;

/*WAQTD name, sal and comm of the emp if the emp doesn't earn commission but gets salary .*/

SELECT ENAME , SAL , COMM 
FROM EMP
WHERE COMM IS NULL AND SAL IS NOT NULL