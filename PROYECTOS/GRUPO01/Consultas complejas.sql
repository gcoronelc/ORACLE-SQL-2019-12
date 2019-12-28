--Q.01: LOS EMPLEADO QUE SU SALARIO SEA MAYOR AL PROMEDIO;  
with
v1 as (select avg(salario) Promedio from empleado)
select E.*,round(v1.promedio,2) Promedio
from empleado e
join v1 on e.salario > v1.promedio;

--Q.02: LOS EMPLEADO QUE SU SALARIO SEA MENOR AL PROMEDIO;  
with
v1 as (select avg(salario) Promedio from empleado)
select E.*,round(v1.promedio,2) Promedio
from empleado e
join v1 on e.salario < v1.promedio;

--Q.03: SE QUIERE SABER EL NOMBRE PRODUCTO, CATEGORIA, PRECIO DE COMPRA, PRECIO DE VENTA Y EL NOMBRE DEL PROVEEDOR 
SELECT P.NOMBRE PRODUCTO,C.NOMBRE CATEGORIA,R.NOMBRE PROVEEDOR,
P.PRECIO_COMPRA,P.PRECIO_VENTA FROM PRODUCTOS P INNER JOIN PROVEEDORES R 
ON P.IDPROVEEDOR=R.IDPROVEEDOR INNER JOIN CATEGORIA C ON P.IDCATEGORIA=C.IDCATEGORIA;


--Q.04: SE QUIERE SABER EL NOMBRE PRODUCTO, CATEGORIA, PRECIO DE COMPRA, PRECIO DE VENTA Y EL NOMBRE DEL PROVEEDOR 
-----------QUE SU PRECIO DE COMPRA SEA MENOR AL PROMEDIO
SELECT P.NOMBRE PRODUCTO,C.NOMBRE CATEGORIA,R.NOMBRE PROVEEDOR,
P.PRECIO_COMPRA,P.PRECIO_VENTA FROM PRODUCTOS P INNER JOIN PROVEEDORES R 
ON P.IDPROVEEDOR=R.IDPROVEEDOR INNER JOIN CATEGORIA C ON P.IDCATEGORIA=C.IDCATEGORIA  
WHERE P.PRECIO_COMPRA <= 
(SELECT AVG(PRECIO_COMPRA)FROM PRODUCTOS);

--Q.05: SE REQUIERE SABER EL TOTAL DE VENTAS EN EL 2019 POR EMPLEADO

select idempleado, sum(total)
from ventas
group by idempleado;

--Q.06: SE REQUIERE SABER EL TOTAL DE VENTAS EN EL 2019 POR CLIENTE

select idcliente, sum(total)
from ventas
group by idcliente;


--Q.07: seleccionar todos los empleados que tengan el mismo cargo que P007
select idcargo from supermercado.empleado where idempleado= 'P007';
select idempleado, nombre,apellidos, idcargo from supermercado.empleado where idcargo = (select idcargo from supermercado.empleado where idempleado= 'P007');

--Q.08: MOSTRAR valorización de STOCK de los productos de categoría que tenga la misma categoría que d004
select idcategoria from supermercado.productos where idproducto= 'D004';
select idproducto,nombre,stock*precio_compra as valorizacion from SUPERMERCADO.PRODUCTOS WHERE idcategoria=(select idcategoria from supermercado.productos where idproducto= 'D004' ) ;

--Q.09: MOSTRAR cliente que compra el importe maximo 
select idventa,idcliente,fecha,total,idempleado from supermercado.ventas where total=(SELECt max(total) from supermercado.ventas);

--Q.10: Mostrar cliente que compra el importe mínimo
select idventa,idcliente,fecha,total,idempleado from supermercado.ventas where total=(SELECt min(total) from supermercado.ventas);

---Q.11: mostrar detalles de empleados cuyos salrios maximos sean mayores a  5000

select*
from SUPERMERCADO.empleado
where idcargo in (select idcargo from supermercado.empleado group by idcargo having max(salario)>5000);
