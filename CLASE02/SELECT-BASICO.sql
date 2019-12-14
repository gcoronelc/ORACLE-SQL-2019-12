-- Consulta Generica

select * 
from scott.emp;


-- Selección de columnas

select alu_id, alu_nombre, alu_telefono
from educa.alumno;


-- Titulo de las columnas

select 
    alu_id "CODIGO", 
    alu_nombre "NOMBRE", 
    alu_telefono "TELEFONO"
from educa.alumno;


-- Expresiones

select 
    idprod "codigo",
    nombre,
    precio,
    stock,
    precio * stock "valorizado"
from ventas.producto;


-- Valores nulos

select 
    empno, ename, sal, comm, 
    sal + comm "total"
from scott.emp;

select nvl(50,60) from dual;

select nvl(null,60) from dual;

select nvl('','GUSTAVO') from dual;


select 
    empno, ename, sal, comm, 
    sal + NVL(comm,0) "total"
from scott.emp;


select nvl2(10,20,30) from dual;

select nvl2(NULL,20,30) from dual;


select 
    empno, ename, sal, comm, 
    NVL2(comm, sal + comm, sal) "total"
from scott.emp;


-- TO_CHAR

SELECT * 
FROM SCOTT.EMP;


SELECT 
    TO_CHAR(SYSDATE,'DD/MONTH/YYYY HH24:MM') "HOY"
FROM DUAL;


SELECT 
    EMPNO, ENAME,TO_CHAR(HIREDATE,'DD/MM/YYYY HH24:MM') "FECHA INGRESO"
FROM SCOTT.EMP;


-- Empleados que su sueldo es mayor a 3000.

select * from recursos.empleado
where sueldo > 3000;


-- Empleados que su sueldo es mayor a 3000
-- y su comisión es mayor que cero.

select * from recursos.empleado
where sueldo > 3000 and comision > 0;


-- Ejercicio 1
-- Empleados que su sueldo es mayor a 3000
-- de los departamentos 102 y 103.


-- Like

select * 
from scott.emp
where ename like 'A%';


select * 
from scott.emp
where ename like '%S';


select * 
from scott.emp
where ename like 'A%S';


select * 
from scott.emp
where ename like '_O%';


select * 
from scott.emp
where ename like '_O%';


-- IN

select * 
from scott.emp
where deptno IN (10,20);

select * 
from scott.emp
where deptno NOT IN (10,20);


-- BETWEEN

INSERT INTO SCOTT.EMP(EMPNO,ENAME) VALUES(8888,'M');

SELECT * 
FROM SCOTT.EMP
ORDER BY ENAME;

SELECT * 
FROM SCOTT.EMP
WHERE ENAME BETWEEN 'C' AND 'M'
ORDER BY ENAME;

SELECT * 
FROM SCOTT.EMP
WHERE SUBSTR(ENAME,1,1) BETWEEN 'C' AND 'M'
ORDER BY ENAME;

SELECT * 
FROM SCOTT.EMP
WHERE SUBSTR(ENAME,1,2) BETWEEN 'CO' AND 'MA'
ORDER BY ENAME;

SELECT * 
FROM RECURSOS.EMPLEADO
WHERE SUELDO BETWEEN 3000 AND 7000
ORDER BY NOMBRE;





