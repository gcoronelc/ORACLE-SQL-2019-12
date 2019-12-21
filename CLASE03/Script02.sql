/*
Consultar los empleados con su nombre de departamento.
*/


select 
    d.department_id, d.department_name,
    e.employee_id, e.first_name, e.last_name
from HR.departments d
join HR.employees e on d.department_id = e.department_id;


/*
Se necesita saber la cantidad de empleados por ciudad.
*/

select l.city Ciudad, count(1) Empleados
from HR.locations l
join HR.departments d on l.location_id = d.location_id
join HR.employees e on d.department_id = e.department_id
group by l.city;



/*
Utilizando la base de datos EDUCA, se necesita
saber cuando se ha recaudado por curso.
Tambien se necesita saber cuanto se debio haber recaudado
y cuanto falta por recaudar.
También se necesita saber el código y el nombre del curso.
*/

-- Provisionado

SELECT CUR_ID, SUM(MAT_PRECIO) PROVISIONADO
FROM EDUCA.matricula
GROUP BY CUR_ID;

-- Recaudado

SELECT 
    cur_id, SUM(pag_importe) RECAUDADO
FROM EDUCA.pago
GROUP BY CUR_ID;


WITH
V1 AS (
    SELECT CUR_ID, SUM(MAT_PRECIO) PROVISIONADO
    FROM EDUCA.matricula
    GROUP BY CUR_ID
),
V2 AS (
    SELECT cur_id, SUM(pag_importe) RECAUDADO
    FROM EDUCA.pago
    GROUP BY CUR_ID
),
V3 AS (
    SELECT V1.CUR_ID, V1.PROVISIONADO, NVL(V2.RECAUDADO,0) RECAUDADO
    FROM V1 
    LEFT JOIN V2 ON v1.cur_id = v2.cur_id
)
SELECT 
    C.CUR_ID, C.CUR_NOMBRE, 
    v3.provisionado, v3.recaudado, 
    v3.provisionado - v3.recaudado Devengado
FROM EDUCA.CURSO C
JOIN V3 ON C.CUR_ID = V3.CUR_ID;













