

SELECT * FROM RECURSOS.EMPLEADO
WHERE SUELDO > 3000 AND (IDDEPARTAMENTO = '102' OR IDDEPARTAMENTO = '103');


SELECT * FROM RECURSOS.EMPLEADO
WHERE SUELDO > 3000 AND IDDEPARTAMENTO IN ('102','103');