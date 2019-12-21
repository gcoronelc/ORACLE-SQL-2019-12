
select 
    cur_id CODIGO,  cur_nombre NOMBRE, 
    cur_matriculados * cur_precio recaudado,
    cur_vacantes * cur_precio A_RECAUDAR ,
    (cur_vacantes * cur_precio) - (cur_matriculados * cur_precio) FALTA_RECAUDAR 
from educa.curso;

select * from EDUCA.curso;


