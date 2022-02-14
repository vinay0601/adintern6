

--1	 Display all the information of the EMP table?
SELECT
    empno, ename, job, mgr, hiredate, sal,comm, deptno, branchno
FROM
    EMP;
---------------------------------------------------------------------------------

--2	 Display unique Jobs from EMP table?
SELECT
    DISTINCT job
FROM
    Emp;
---------------------------------------------------------------------------------

--3	 List the emps in the asc order of their Salaries?
SELECT
    empno, ename, job, mgr, hiredate, sal,comm, deptno, branchno
FROM
    Emp
ORDER BY
    sal;
---------------------------------------------------------------------------------   
    
--4	 List the details of the emps in asc order of the Dptnos and desc of Jobs?
SELECT 
     empno, ename, job, mgr, hiredate, sal,comm, deptno, branchno
FROM
    Emp
ORDER BY
    deptno ASC ,job DESC;
---------------------------------------------------------------------------------

--5	 Display all the unique job groups in the descending order?
SELECT 
    DISTINCT job
FROM 
    Emp
ORDER BY 
    job DESC;
---------------------------------------------------------------------------------
    
--6	 Display all the details of all ‘Mgrs’
SELECT
     empno, ename, job, mgr, hiredate, sal,comm, deptno, branchno 
FROM
    Emp
WHERE
    job = 'MANAGER' ;
---------------------------------------------------------------------------------   
    
--7	 List the emps who joined before 1981
SELECT 
    empno, ename, job, mgr, hiredate, sal,comm, deptno, branchno
FROM
    Emp
WHERE
    hiredate <   '01-Jan-1981' ;
---------------------------------------------------------------------------------   
    
--8	 List the Empno, Ename, Sal, Daily sal of all emps in the asc order of Annsal
SELECT 
    Empno, Ename, sal, Sal/30 DailySal
FROM
    Emp 
ORDER BY 
    Sal*12 ;
---------------------------------------------------------------------------------
    
    
--9	 Display the Empno, Ename, job, Hiredate, Exp of all Mgrs
SELECT
    empno,ename ,job,hiredate, months_between(sysdate,hiredate) exp 
FROM
    emp 
WHERE
    empno in (SELECT mgr FROM emp);
---------------------------------------------------------------------------------    
    

--10	 List the Empno, Ename, Sal, Exp of all emps working for Mgr 7369
SELECT
    empno, ename, sal, months_between(sysdate,hiredate)/12 Exp
FROM 
    Emp
WHERE 
    Mgr = 7839 ;
---------------------------------------------------------------------------------


--11	 Display all the details of the emps whose Comm  Is more than their Sal
SELECT
    empno, ename, job, mgr, hiredate, sal,comm, deptno, branchno
FROM
    Emp
WHERE
    comm > sal;
---------------------------------------------------------------------------------    


--13	 List the emps along with their Exp and Daily Sal is more than Rs 100
SELECT
   empno, ename, job, mgr, hiredate, sal,comm, deptno, branchno,  months_between(sysdate,hiredate)/12 Exp
FROM
    Emp
WHERE
    Sal/30 > 100;
----------------------------------------------------------------------------------


--14	 List the emps who are either ‘CLERK’ or ‘ANALYST’ in the Desc order
SELECT
   empno, ename, job, mgr, hiredate, sal,comm, deptno, branchno
FROM
    Emp
WHERE   
    job IN ('CLERK' , 'ANALYST')
ORDER BY
    job DESC;
------------------------------------------------------------------------
SELECT
   empno, ename, job, mgr, hiredate, sal,comm, deptno, branchno
FROM
    Emp
WHERE   
    job='CLERK' or job='ANALYST'
ORDER BY
    job DESC;
--------------------------------------------------------------------------    
    
    
--15	 List the emps who joined on 1-MAY-81,3-DEC-81,17-DEC-81,19-JAN-80 in asc order of seniority
SELECT
    empno, ename, job, mgr, hiredate, sal,comm, deptno, branchno
FROM
    Emp
WHERE
   hiredate LIKE '01-MAY-81'
   OR hiredate LIKE '31-DEC-81'
   OR hiredate LIKE '17-DEC-81'
   OR hiredate LIKE '19-JAN-80'
ORDER BY
    hiredate ASC ;
---------------------------------------------------------------------------------


--16	 List the emp who are working for the Deptno 10 or 20
SELECT
    empno, ename, job, mgr, hiredate, sal,comm, deptno, branchno
FROM
    Emp
WHERE
    deptno in (10, 20)
ORDER BY
    deptno;
---------------------------------------------------------------------------------


--17	 List the emps who are joined in the year 81
SELECT
    empno, ename, job, mgr, hiredate, sal,comm, deptno, branchno
FROM
    Emp
WHERE
    hiredate like '%81';
    
---------------------------------------------------------------------------------


--19	 List the emps Who Annual sal ranging from 22000 and 45000
SELECT
    empno, ename, job, mgr, hiredate, sal,comm, deptno, branchno
FROM
    EMP
WHERE
    SAL*12 BETWEEN 22000 and 45000;
    
---------------------------------------------------------------------------------


--20	 List the Enames those are having five characters in their Names
SELECT
    ename
FROM
    Emp
WHERE
    ename like '_____';
---------------------------------------------------------------------------------


--21	 List the Enames those are starting with ‘S’ and with five characters
SELECT
    ename
FROM
    Emp
WHERE
    ename like 'S____'; 
---------------------------------------------------------------------------------


--22	 List the emps those are having four chars and third character must be ‘r’
SELECT
    empno, ename, job, mgr, hiredate, sal,comm, deptno, branchno
FROM
    Emp
WHERE
    ename like '__R_'; 
---------------------------------------------------------------------------------


--23	 List the Five character names starting with ‘S’ and ending with ‘H’
SELECT
    empno, ename, job, mgr, hiredate, sal,comm, deptno, branchno
FROM
    Emp
WHERE
    ename like 'S___H'; 
    
   
---------------------------------------------------------------------------------


--24	 List the emps who joined in January
SELECT
    empno, ename, job, mgr, hiredate, sal,comm, deptno, branchno
FROM
    Emp
WHERE
    hiredate like '%JAN%'; 
---------------------------------------------------------------------------------


--27	 List the emps whose names having a character set ‘ll’ together
SELECT
    empno, ename, job, mgr, hiredate, sal,comm, deptno, branchno
FROM
    Emp
WHERE
    ename like '%LL%'; 
---------------------------------------------------------------------------------


--29	 List the emps who does not belong to Deptno 20
SELECT
    empno, ename, job, mgr, hiredate, sal,comm, deptno, branchno
FROM
    Emp
WHERE
    deptno NOT IN (20)
ORDER BY
    deptno;
---------------------------------------------------------------------------------



--30	 List all the emps except ‘PRESIDENT’ & ‘MGR” in asc order of Salaries
SELECT
    empno, ename, job, mgr, hiredate, sal,comm, deptno, branchno
FROM
    Emp
WHERE
    job NOT IN ('PRESIDENT', 'MANAGER')
ORDER BY
    sal;
---------------------------------------------------------------------------------



--31	 List the emps whose Empno not starting with digit78
SELECT
    empno, ename, job, mgr, hiredate, sal,comm, deptno, branchno
FROM
    Emp
WHERE
    empno not like '78%'
ORDER BY
    empno;
---------------------------------------------------------------------------------



--33	 List the emps who are working under ‘MGR’
SELECT
    empno, ename, job, mgr, hiredate, sal,comm, deptno, branchno
FROM
    Emp
WHERE
    job IN ('MANAGER');
---------------------------------------------------------------------------------


--34	 List the emps who joined in any year but not belongs to the month of March
SELECT
    empno, ename, job, mgr, hiredate, sal,comm, deptno, branchno
FROM
    Emp
WHERE
   hiredate not like '%MAR%';
---------------------------------------------------------------------------------



--35	 List all the Clerks of Deptno 20
SELECT
    empno, ename, job, mgr, hiredate, sal,comm, deptno, branchno
FROM
    Emp
WHERE
    job='CLERK' and deptno=20;
---------------------------------------------------------------------------------



--36	 List the emps of Deptno 30 or 10 joined in the year 1981
SELECT
    empno, ename, job, mgr, hiredate, sal,comm, deptno, branchno
FROM
    Emp
WHERE
    deptno in (10,30) AND hiredate like '%81%'
ORDER BY
    deptno;
---------------------------------------------------------------------------------



--37	 Display the details of SMITH
SELECT
    empno, ename, job, mgr, hiredate, sal,comm, deptno, branchno
FROM
    Emp
WHERE
    ename = 'SMITH';
---------------------------------------------------------------------------------



--38	 Display the location of SMITH

---------------------------------------------------------------------------------


COMMIT;

