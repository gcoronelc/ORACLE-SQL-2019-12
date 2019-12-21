/*
Los empleados que su sueldo es mayor 
que el sueldo promedio.
*/


select * 
from HR.employees e
where e.salary > (select avg(salary) from HR.employees);


WITH
V1 AS (select avg(salary) PROMEDIO from HR.employees)
select E.*, ROUND(v1.promedio,2) PROMEDIO
from HR.employees e
JOIN V1 ON e.salary > v1.promedio;


/*
Los empleados que su sueldo es mayor 
que el sueldo promedio de su departamento.
*/

select * 
from HR.employees e
where e.salary > (
    select avg(salary) from HR.employees e2
    where e.department_id = e2.department_id);


WITH 
V1 AS (
    select department_id, AVG(salary) promedio
    FROM hr.employees
    GROUP BY department_id
)
select e.*, round(v1.promedio,2) promedio
from HR.employees e join v1 
on e.department_id = v1.department_id and  e.salary > v1.promedio;



