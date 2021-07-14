-- Query 1------
;
select F_NAME , L_NAME
from EMPLOYEES
where ADDRESS LIKE '%Elgin,IL%';


--Query 2-- 
select F_NAME, L_NAME 
from EMPLOYEES 
where B_DATE LIKE '197%'; 


--Query 3--
select * 
from EMPLOYEES 
where ( SALARY BETWEEN 60000 AND 70000) and DEP_ID = 5;


--Query 4-- 
select F_NAME, L_NAME, DEP_ID
from EMPLOYEES 
order by DEP_ID;


--Query 5-- 
select F_NAME, L_NAME, DEP_ID 
from EMPLOYEES
order by DEP_ID desc, L_NAME desc;

--Query 6-- 
select DEP_ID , COUNT(*)
from EMPLOYEES
group by DEP_ID;


--Query 7-- 
select DEP_ID, COUNT(*) ,AVG(SALARY)
from EMPLOYEES 
group by DEP_ID; 


--Query 8--
select DEP_ID, COUNT(*) AS "NUM_EMPLOYEES", AVG(SALARY) AS "AVG_SALARY"
from EMPLOYEES
group by DEP_ID;


--Query 9-- 
select DEP_ID, COUNT(*) AS "NUM_EMPLOYEES", AVG(SALARY) AS "AVG_SALARY"
from EMPLOYEES
group by DEP_ID
order by AVG_SALARY;


--Query 10-- 
select DEP_ID, COUNT(*) AS "NUM_EMPLOYEES", AVG(SALARY) AS "AVG_SALARY"
from EMPLOYEES
group by DEP_ID
having count(*) < 4
order by AVG_SALARY;

-- Query 10 alternative: if you want to use the label
select DEP_ID, NUM_EMPLOYEES, AVG_SALARY from
  ( select DEP_ID, COUNT(*) AS NUM_EMPLOYEES, AVG(SALARY) AS AVG_SALARY from EMPLOYEES group by DEP_ID)
  where NUM_EMPLOYEES < 4
order by AVG_SALARY;

--Query 11--

select D.DEP_NAME , E.F_NAME, E.L_NAME
from EMPLOYEES as E, DEPARTMENTS as D
where E.DEP_ID = D.DEPT_ID_DEP
order by D.DEP_NAME, E.L_NAME desc ;


























