
DESC HR.departments;

INSERT INTO HR.departments(DEPARTMENT_ID,MANAGER_ID)
VALUES(500, 34);

/*
Error que empieza en la línea: 4 del comando :
INSERT INTO HR.departments(DEPARTMENT_ID,MANAGER_ID)
VALUES(500, 34)
Informe de error -
ORA-01400: no se puede realizar una inserción NULL en ("HR"."DEPARTMENTS"."DEPARTMENT_NAME")

*/

INSERT INTO HR.departments(DEPARTMENT_ID,department_name)
VALUES(500, 'ASUNTOS SIN IMPORTANCIA');

SELECT * FROM HR.departments;



select * from scott.emp;

select * from HR.employees;


insert into scott.emp(empno, ename, sal)
select e.employee_id, substr(e.first_name,1,10), e.salary
from HR.employees e;

select 
    substr('GUSTAVO CORONEL',1,5) dato1,
    substr('GUSTAVO CORONEL',-5)  dato2 
from dual;


-- Crear una tabla desde un SELECT


create table SCOTT.EMP2
as (select empno, sal from scott.emp);
  

select * from scott.emp2;  
select * from scott.emp;


-- Actualizar una tabla desde otra tabla

update scott.emp2
set sal = sal + 200;

select e1.empno, e1.ename, e1.sal, e2.sal
from scott.emp e1
join scott.emp2 e2
on e1.empno = e2.empno;

alter table scott.emp2
add constraint pk_emp2
primary key( empno );


update (
    select e1.empno, e1.ename, e1.sal, e2.sal sal2
    from scott.emp e1
    join scott.emp2 e2
    on e1.empno = e2.empno
)
set sal = sal2;


select * from scott.emp
for update;

ALTER SYSTEM KILL SESSION '108,5476';

select 
    sid || ',' || serial# as "serie",
    username, machine, blocking_session
from v$session
where username in ('SYSTEM','SCOTT');


SELECT * FROM EUREKA.CUENTA WHERE CHR_CUENCODIGO = '00100002';
SELECT * FROM EUREKA.MOVIMIENTO WHERE CHR_CUENCODIGO = '00100002';

