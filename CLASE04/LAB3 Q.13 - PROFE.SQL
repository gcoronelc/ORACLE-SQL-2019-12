/*
Desarrolle una consulta que muestre las personas que tienen el menor sueldo por 
departamento. Base de datos RH.
*/

-- Previa

Select e.department_id, min(e.salary) sueldo 
from hr.employees e
where e.department_id is not null
group by e.department_id;


-- Case 1
-- Utilizando WITH

with
v1 as (
    Select e.department_id, min(e.salary) sueldo 
    from hr.employees e
    where e.department_id is not null
    group by e.department_id
)
select e.department_id, e.salary, e.first_name, e.last_name
from HR.employees e
join v1 on e.department_id = v1.department_id
and e.salary = v1.sueldo 
order by e.department_id, e.salary;


-- Caso 2
-- Utilizando IN

select e.department_id, e.salary, e.first_name, e.last_name
from HR.employees e
where (e.department_id, e.salary) in (
Select e.department_id, min(e.salary) sueldo 
    from hr.employees e
    where e.department_id is not null
    group by e.department_id
)
order by e.department_id, e.salary;


-- Caso 3
-- Subconsulta como tabla derivada

select e.department_id, e.salary, e.first_name, e.last_name
from HR.employees e
join (
    Select e.department_id, min(e.salary) sueldo 
    from hr.employees e
    where e.department_id is not null
    group by e.department_id
) v1 
on e.department_id = v1.department_id
and e.salary = v1.sueldo 
order by e.department_id, e.salary;






