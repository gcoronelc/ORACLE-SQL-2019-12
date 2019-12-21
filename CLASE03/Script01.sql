/*
Departamentos que tienen su planilla mayor a 20,000
sin considerar los gerentes.
*/

SELECT * FROM HR.employees;

SELECT * FROM HR.jobs
WHERE job_title LIKE '%Manager%'
ORDER BY 1;


SELECT department_id, COUNT(1) TRABAJADORES, SUM(salary) PLANILLA
FROM HR.employees
WHERE job_id NOT IN ('AC_MGR','FI_MGR','MK_MAN','PU_MAN','SA_MAN','ST_MAN')
GROUP BY department_id
HAVING SUM(salary) > 20000
ORDER BY 3 DESC;



