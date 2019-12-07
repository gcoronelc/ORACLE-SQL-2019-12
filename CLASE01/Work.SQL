-- Fecha: 07.DIC.2019

-- INICIO DE SESIÃ“N

CONNECT SYSTEM/oracle


-- CERRAR SESION

DISCONNECT


-- Desbloquear scott.

alter user scott
identified by tiger
account unlock;

-- Desbloquear HR.

alter user hr
identified by hr
account unlock;


-- El resultado es segun la conexión

select * from tab;

select * from cat;







