--------------------------------------------------------
-- Archivo creado  - viernes-diciembre-27-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table CARGO
--------------------------------------------------------

  CREATE TABLE "SUPERMERCADO"."CARGO" 
   (	"IDCARGO" NCHAR(10), 
	"PUESTO" VARCHAR2(30 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table CATEGORIA
--------------------------------------------------------

  CREATE TABLE "SUPERMERCADO"."CATEGORIA" 
   (	"IDCATEGORIA" NCHAR(10), 
	"NOMBRE" VARCHAR2(30 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table CLIENTES
--------------------------------------------------------

  CREATE TABLE "SUPERMERCADO"."CLIENTES" 
   (	"IDCLIENTE" NCHAR(10), 
	"NOMBRE" VARCHAR2(30 BYTE), 
	"DIRECCION" VARCHAR2(30 BYTE), 
	"DNI" VARCHAR2(30 BYTE), 
	"TELEFONO" VARCHAR2(30 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table COMPRAS
--------------------------------------------------------

  CREATE TABLE "SUPERMERCADO"."COMPRAS" 
   (	"IDCOMPRA" NCHAR(10), 
	"IDPROVEEDOR" NCHAR(10), 
	"IDEMPLEADO" NCHAR(10), 
	"FECHA" DATE, 
	"TOTAL" NUMBER(8,2)
   ) ;
--------------------------------------------------------
--  DDL for Table EMPLEADO
--------------------------------------------------------

  CREATE TABLE "SUPERMERCADO"."EMPLEADO" 
   (	"IDEMPLEADO" NCHAR(10), 
	"NOMBRE" VARCHAR2(30 BYTE), 
	"APELLIDOS" VARCHAR2(30 BYTE), 
	"DIRECCION" VARCHAR2(30 BYTE), 
	"IDCARGO" NCHAR(10), 
	"SALARIO" NUMBER(8,2)
   ) ;
--------------------------------------------------------
--  DDL for Table PRODUCTOS
--------------------------------------------------------

  CREATE TABLE "SUPERMERCADO"."PRODUCTOS" 
   (	"IDPRODUCTO" NCHAR(10), 
	"NOMBRE" VARCHAR2(30 BYTE), 
	"IDCATEGORIA" NCHAR(10), 
	"IDPROVEEDOR" NCHAR(10), 
	"PRECIO_COMPRA" NUMBER(8,2), 
	"PRECIO_VENTA" NUMBER(8,2), 
	"STOCK" NUMBER(8,2)
   ) ;
--------------------------------------------------------
--  DDL for Table PROVEEDORES
--------------------------------------------------------

  CREATE TABLE "SUPERMERCADO"."PROVEEDORES" 
   (	"IDPROVEEDOR" NCHAR(10), 
	"NOMBRE" VARCHAR2(30 BYTE), 
	"DIRECCION" VARCHAR2(30 BYTE), 
	"RUC" VARCHAR2(30 BYTE), 
	"TELEFONO" VARCHAR2(30 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table VENTAS
--------------------------------------------------------

  CREATE TABLE "SUPERMERCADO"."VENTAS" 
   (	"IDVENTA" NCHAR(10), 
	"IDCLIENTE" NCHAR(10), 
	"IDEMPLEADO" NCHAR(10), 
	"FECHA" DATE, 
	"TOTAL" NUMBER(8,2)
   ) ;
REM INSERTING into SUPERMERCADO.CARGO
SET DEFINE OFF;
Insert into SUPERMERCADO.CARGO (IDCARGO,PUESTO) values ('E001      ','GERENTE');
Insert into SUPERMERCADO.CARGO (IDCARGO,PUESTO) values ('E002      ','CAJERO');
Insert into SUPERMERCADO.CARGO (IDCARGO,PUESTO) values ('E003      ','REPONEDORES');
Insert into SUPERMERCADO.CARGO (IDCARGO,PUESTO) values ('E004      ','TECNICO');
Insert into SUPERMERCADO.CARGO (IDCARGO,PUESTO) values ('E005      ','SUBGERENTE');
Insert into SUPERMERCADO.CARGO (IDCARGO,PUESTO) values ('E006      ','ALMACENERO');
Insert into SUPERMERCADO.CARGO (IDCARGO,PUESTO) values ('E007      ','AUXILIAR LIMPIEZA');
commit;
REM INSERTING into SUPERMERCADO.CATEGORIA
SET DEFINE OFF;
Insert into SUPERMERCADO.CATEGORIA (IDCATEGORIA,NOMBRE) values ('T001      ','GASEOSA');
Insert into SUPERMERCADO.CATEGORIA (IDCATEGORIA,NOMBRE) values ('T002      ','FRITURAS');
Insert into SUPERMERCADO.CATEGORIA (IDCATEGORIA,NOMBRE) values ('T003      ','GOLOSINAS');
Insert into SUPERMERCADO.CATEGORIA (IDCATEGORIA,NOMBRE) values ('T004      ','ABARROTES');
Insert into SUPERMERCADO.CATEGORIA (IDCATEGORIA,NOMBRE) values ('T005      ','ROPA');
commit;
REM INSERTING into SUPERMERCADO.CLIENTES
SET DEFINE OFF;
Insert into SUPERMERCADO.CLIENTES (IDCLIENTE,NOMBRE,DIRECCION,DNI,TELEFONO) values ('C001      ','JUAN LUIS','JR.CAMANA 123','12345678','4567890');
Insert into SUPERMERCADO.CLIENTES (IDCLIENTE,NOMBRE,DIRECCION,DNI,TELEFONO) values ('C002      ','DIEGO SEBASTIAN','JR.CHIMU 234','72345632','5671034');
Insert into SUPERMERCADO.CLIENTES (IDCLIENTE,NOMBRE,DIRECCION,DNI,TELEFONO) values ('C003      ','GABY JANET','AV.ALAMOS 149','72354657','8907654');
Insert into SUPERMERCADO.CLIENTES (IDCLIENTE,NOMBRE,DIRECCION,DNI,TELEFONO) values ('C004      ','CAMILA ANDREA','AV.PERU 345','72345678','5645678');
Insert into SUPERMERCADO.CLIENTES (IDCLIENTE,NOMBRE,DIRECCION,DNI,TELEFONO) values ('C005      ','GIANELLA DAVILA','AV.CHURIN  678','76545672','5689087');
commit;
REM INSERTING into SUPERMERCADO.COMPRAS
SET DEFINE OFF;
Insert into SUPERMERCADO.COMPRAS (IDCOMPRA,IDPROVEEDOR,IDEMPLEADO,FECHA,TOTAL) values ('F001      ','R005      ','P001      ',to_date('05/12/18','DD/MM/RR'),'345');
Insert into SUPERMERCADO.COMPRAS (IDCOMPRA,IDPROVEEDOR,IDEMPLEADO,FECHA,TOTAL) values ('F002      ','R001      ','P003      ',to_date('03/12/18','DD/MM/RR'),'400');
Insert into SUPERMERCADO.COMPRAS (IDCOMPRA,IDPROVEEDOR,IDEMPLEADO,FECHA,TOTAL) values ('F003      ','R005      ','P005      ',to_date('05/07/18','DD/MM/RR'),'340');
Insert into SUPERMERCADO.COMPRAS (IDCOMPRA,IDPROVEEDOR,IDEMPLEADO,FECHA,TOTAL) values ('F004      ','R002      ','P006      ',to_date('08/07/18','DD/MM/RR'),'200');
Insert into SUPERMERCADO.COMPRAS (IDCOMPRA,IDPROVEEDOR,IDEMPLEADO,FECHA,TOTAL) values ('F005      ','R004      ','P002      ',to_date('16/05/18','DD/MM/RR'),'120');
Insert into SUPERMERCADO.COMPRAS (IDCOMPRA,IDPROVEEDOR,IDEMPLEADO,FECHA,TOTAL) values ('F006      ','R001      ','P007      ',to_date('17/05/19','DD/MM/RR'),'340');
Insert into SUPERMERCADO.COMPRAS (IDCOMPRA,IDPROVEEDOR,IDEMPLEADO,FECHA,TOTAL) values ('F007      ','R002      ','P008      ',to_date('12/09/19','DD/MM/RR'),'340');
Insert into SUPERMERCADO.COMPRAS (IDCOMPRA,IDPROVEEDOR,IDEMPLEADO,FECHA,TOTAL) values ('F008      ','R003      ','P010      ',to_date('21/09/18','DD/MM/RR'),'220');
Insert into SUPERMERCADO.COMPRAS (IDCOMPRA,IDPROVEEDOR,IDEMPLEADO,FECHA,TOTAL) values ('F009      ','R003      ','P002      ',to_date('07/11/19','DD/MM/RR'),'200');
Insert into SUPERMERCADO.COMPRAS (IDCOMPRA,IDPROVEEDOR,IDEMPLEADO,FECHA,TOTAL) values ('F010      ','R004      ','P008      ',to_date('25/11/19','DD/MM/RR'),'100');
commit;
REM INSERTING into SUPERMERCADO.EMPLEADO
SET DEFINE OFF;
Insert into SUPERMERCADO.EMPLEADO (IDEMPLEADO,NOMBRE,APELLIDOS,DIRECCION,IDCARGO,SALARIO) values ('P001      ','JAVIER','MONTE RAMOS','JR.CHIMPU OCLLO 143','E002      ','4500');
Insert into SUPERMERCADO.EMPLEADO (IDEMPLEADO,NOMBRE,APELLIDOS,DIRECCION,IDCARGO,SALARIO) values ('P002      ','ALAN GIOVANNI','VALVERDE ORTIZ','JR.LAS ROSAS 123','E002      ','4500');
Insert into SUPERMERCADO.EMPLEADO (IDEMPLEADO,NOMBRE,APELLIDOS,DIRECCION,IDCARGO,SALARIO) values ('P003      ','VANNES ','MONTES CASTRO','JR.LAS FLORES 345','E003      ','3200');
Insert into SUPERMERCADO.EMPLEADO (IDEMPLEADO,NOMBRE,APELLIDOS,DIRECCION,IDCARGO,SALARIO) values ('P004      ','FERNANDO','CHANG BRAVO','JR.LOS ALAMOS 890','E001      ','8000');
Insert into SUPERMERCADO.EMPLEADO (IDEMPLEADO,NOMBRE,APELLIDOS,DIRECCION,IDCARGO,SALARIO) values ('P005      ','DIEGO SEBASTIAN','BRAVO PAPEL','AV.PERU 2300','E005      ','6500');
Insert into SUPERMERCADO.EMPLEADO (IDEMPLEADO,NOMBRE,APELLIDOS,DIRECCION,IDCARGO,SALARIO) values ('P006      ','CAMILA ANDREA','GRACIA MARTINEZ','AV.UCAYALI 1234','E003      ','3200');
Insert into SUPERMERCADO.EMPLEADO (IDEMPLEADO,NOMBRE,APELLIDOS,DIRECCION,IDCARGO,SALARIO) values ('P007      ','MANUEL','GONZALES GOMEZ','AV.LOS CEDROS 209','E004      ','5100');
Insert into SUPERMERCADO.EMPLEADO (IDEMPLEADO,NOMBRE,APELLIDOS,DIRECCION,IDCARGO,SALARIO) values ('P008      ','MIGUEL ANGEL','MORENO JIMENEZ','JR.CALLAO 123','E004      ','5100');
Insert into SUPERMERCADO.EMPLEADO (IDEMPLEADO,NOMBRE,APELLIDOS,DIRECCION,IDCARGO,SALARIO) values ('P009      ','JUAN ANTONIO ','ROSARIO LOZANO','JR.CAMANA 345','E006      ','2400');
Insert into SUPERMERCADO.EMPLEADO (IDEMPLEADO,NOMBRE,APELLIDOS,DIRECCION,IDCARGO,SALARIO) values ('P010      ','FRANCISCO ','ROSARIO MU�OZ','JR.LOS ALAMOS 456','E006      ','2400');
commit;
REM INSERTING into SUPERMERCADO.PRODUCTOS
SET DEFINE OFF;
Insert into SUPERMERCADO.PRODUCTOS (IDPRODUCTO,NOMBRE,IDCATEGORIA,IDPROVEEDOR,PRECIO_COMPRA,PRECIO_VENTA,STOCK) values ('D001      ','INCAKOLA','T001      ','R005      ','345','500','20');
Insert into SUPERMERCADO.PRODUCTOS (IDPRODUCTO,NOMBRE,IDCATEGORIA,IDPROVEEDOR,PRECIO_COMPRA,PRECIO_VENTA,STOCK) values ('D002      ','POLOS HOMBRE','T005      ','R001      ','400','650','30');
Insert into SUPERMERCADO.PRODUCTOS (IDPRODUCTO,NOMBRE,IDCATEGORIA,IDPROVEEDOR,PRECIO_COMPRA,PRECIO_VENTA,STOCK) values ('D003      ','BLUSAS','T005      ','R001      ','340','600','20');
Insert into SUPERMERCADO.PRODUCTOS (IDPRODUCTO,NOMBRE,IDCATEGORIA,IDPROVEEDOR,PRECIO_COMPRA,PRECIO_VENTA,STOCK) values ('D004      ','CHIZITOS','T002      ','R002      ','200','400','50');
Insert into SUPERMERCADO.PRODUCTOS (IDPRODUCTO,NOMBRE,IDCATEGORIA,IDPROVEEDOR,PRECIO_COMPRA,PRECIO_VENTA,STOCK) values ('D005      ','DORITOS','T002      ','R002      ','340','500','40');
Insert into SUPERMERCADO.PRODUCTOS (IDPRODUCTO,NOMBRE,IDCATEGORIA,IDPROVEEDOR,PRECIO_COMPRA,PRECIO_VENTA,STOCK) values ('D006      ','CHICLES','T003      ','R004      ','120','400','30');
Insert into SUPERMERCADO.PRODUCTOS (IDPRODUCTO,NOMBRE,IDCATEGORIA,IDPROVEEDOR,PRECIO_COMPRA,PRECIO_VENTA,STOCK) values ('D007      ','CARAMELOS','T003      ','R004      ','100','310','60');
Insert into SUPERMERCADO.PRODUCTOS (IDPRODUCTO,NOMBRE,IDCATEGORIA,IDPROVEEDOR,PRECIO_COMPRA,PRECIO_VENTA,STOCK) values ('D008      ','ARROZ','T004      ','R003      ','200','300','34');
Insert into SUPERMERCADO.PRODUCTOS (IDPRODUCTO,NOMBRE,IDCATEGORIA,IDPROVEEDOR,PRECIO_COMPRA,PRECIO_VENTA,STOCK) values ('D009      ','ACEITE','T004      ','R003      ','220','500','45');
commit;
REM INSERTING into SUPERMERCADO.PROVEEDORES
SET DEFINE OFF;
Insert into SUPERMERCADO.PROVEEDORES (IDPROVEEDOR,NOMBRE,DIRECCION,RUC,TELEFONO) values ('R001      ','IKEA','JR.CHIMU 123','34567890234','5671064');
Insert into SUPERMERCADO.PROVEEDORES (IDPROVEEDOR,NOMBRE,DIRECCION,RUC,TELEFONO) values ('R002      ','SONY','JR.VI�ERA 123','45678912345','6751234');
Insert into SUPERMERCADO.PROVEEDORES (IDPROVEEDOR,NOMBRE,DIRECCION,RUC,TELEFONO) values ('R003      ','LEGO','JR.QUIPAN 345','56789012345','5678901');
Insert into SUPERMERCADO.PROVEEDORES (IDPROVEEDOR,NOMBRE,DIRECCION,RUC,TELEFONO) values ('R004      ','CANON','JR.MI�ANO','98756798123','5437891');
Insert into SUPERMERCADO.PROVEEDORES (IDPROVEEDOR,NOMBRE,DIRECCION,RUC,TELEFONO) values ('R005      ','PEPSI','JR.CHIMPU 123','987456789123','5680987');
commit;
REM INSERTING into SUPERMERCADO.VENTAS
SET DEFINE OFF;
Insert into SUPERMERCADO.VENTAS (IDVENTA,IDCLIENTE,IDEMPLEADO,FECHA,TOTAL) values ('V001      ','C001      ','P002      ',to_date('04/12/19','DD/MM/RR'),'120');
Insert into SUPERMERCADO.VENTAS (IDVENTA,IDCLIENTE,IDEMPLEADO,FECHA,TOTAL) values ('V002      ','C001      ','P008      ',to_date('29/12/19','DD/MM/RR'),'234');
Insert into SUPERMERCADO.VENTAS (IDVENTA,IDCLIENTE,IDEMPLEADO,FECHA,TOTAL) values ('V003      ','C003      ','P002      ',to_date('20/06/19','DD/MM/RR'),'345');
Insert into SUPERMERCADO.VENTAS (IDVENTA,IDCLIENTE,IDEMPLEADO,FECHA,TOTAL) values ('V004      ','C003      ','P008      ',to_date('12/06/19','DD/MM/RR'),'567');
Insert into SUPERMERCADO.VENTAS (IDVENTA,IDCLIENTE,IDEMPLEADO,FECHA,TOTAL) values ('V005      ','C002      ','P007      ',to_date('08/05/19','DD/MM/RR'),'145');
Insert into SUPERMERCADO.VENTAS (IDVENTA,IDCLIENTE,IDEMPLEADO,FECHA,TOTAL) values ('V006      ','C002      ','P007      ',to_date('14/05/19','DD/MM/RR'),'123');
Insert into SUPERMERCADO.VENTAS (IDVENTA,IDCLIENTE,IDEMPLEADO,FECHA,TOTAL) values ('V007      ','C005      ','P005      ',to_date('13/08/19','DD/MM/RR'),'360');
Insert into SUPERMERCADO.VENTAS (IDVENTA,IDCLIENTE,IDEMPLEADO,FECHA,TOTAL) values ('V008      ','C005      ','P005      ',to_date('09/07/19','DD/MM/RR'),'230');
commit;
--------------------------------------------------------
--  DDL for Index PK_CLIENTE
--------------------------------------------------------

  CREATE UNIQUE INDEX "SUPERMERCADO"."PK_CLIENTE" ON "SUPERMERCADO"."CLIENTES" ("IDCLIENTE") 
  ;
--------------------------------------------------------
--  DDL for Index PK_EMPLEADO
--------------------------------------------------------

  CREATE UNIQUE INDEX "SUPERMERCADO"."PK_EMPLEADO" ON "SUPERMERCADO"."EMPLEADO" ("IDEMPLEADO") 
  ;
--------------------------------------------------------
--  DDL for Index PK_VENTAS
--------------------------------------------------------

  CREATE UNIQUE INDEX "SUPERMERCADO"."PK_VENTAS" ON "SUPERMERCADO"."VENTAS" ("IDVENTA") 
  ;
--------------------------------------------------------
--  DDL for Index PK_IDCATEGORIA
--------------------------------------------------------

  CREATE UNIQUE INDEX "SUPERMERCADO"."PK_IDCATEGORIA" ON "SUPERMERCADO"."CATEGORIA" ("IDCATEGORIA") 
  ;
--------------------------------------------------------
--  DDL for Index PK_IDPROVEEDOR
--------------------------------------------------------

  CREATE UNIQUE INDEX "SUPERMERCADO"."PK_IDPROVEEDOR" ON "SUPERMERCADO"."PROVEEDORES" ("IDPROVEEDOR") 
  ;
--------------------------------------------------------
--  DDL for Index PK_IDCARGO
--------------------------------------------------------

  CREATE UNIQUE INDEX "SUPERMERCADO"."PK_IDCARGO" ON "SUPERMERCADO"."CARGO" ("IDCARGO") 
  ;
--------------------------------------------------------
--  DDL for Index PK_COMPRAS
--------------------------------------------------------

  CREATE UNIQUE INDEX "SUPERMERCADO"."PK_COMPRAS" ON "SUPERMERCADO"."COMPRAS" ("IDCOMPRA") 
  ;
--------------------------------------------------------
--  DDL for Index PK_P_PRODUCTOS
--------------------------------------------------------

  CREATE UNIQUE INDEX "SUPERMERCADO"."PK_P_PRODUCTOS" ON "SUPERMERCADO"."PRODUCTOS" ("IDPRODUCTO") 
  ;
--------------------------------------------------------
--  Constraints for Table EMPLEADO
--------------------------------------------------------

  ALTER TABLE "SUPERMERCADO"."EMPLEADO" ADD CONSTRAINT "PK_EMPLEADO" PRIMARY KEY ("IDEMPLEADO") ENABLE;
 
  ALTER TABLE "SUPERMERCADO"."EMPLEADO" MODIFY ("IDEMPLEADO" NOT NULL ENABLE);
 
  ALTER TABLE "SUPERMERCADO"."EMPLEADO" MODIFY ("NOMBRE" NOT NULL ENABLE);
 
  ALTER TABLE "SUPERMERCADO"."EMPLEADO" MODIFY ("APELLIDOS" NOT NULL ENABLE);
 
  ALTER TABLE "SUPERMERCADO"."EMPLEADO" MODIFY ("DIRECCION" NOT NULL ENABLE);
 
  ALTER TABLE "SUPERMERCADO"."EMPLEADO" MODIFY ("IDCARGO" NOT NULL ENABLE);
 
  ALTER TABLE "SUPERMERCADO"."EMPLEADO" MODIFY ("SALARIO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CARGO
--------------------------------------------------------

  ALTER TABLE "SUPERMERCADO"."CARGO" ADD CONSTRAINT "PK_IDCARGO" PRIMARY KEY ("IDCARGO") ENABLE;
 
  ALTER TABLE "SUPERMERCADO"."CARGO" MODIFY ("IDCARGO" NOT NULL ENABLE);
 
  ALTER TABLE "SUPERMERCADO"."CARGO" MODIFY ("PUESTO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table COMPRAS
--------------------------------------------------------

  ALTER TABLE "SUPERMERCADO"."COMPRAS" ADD CONSTRAINT "PK_COMPRAS" PRIMARY KEY ("IDCOMPRA") ENABLE;
 
  ALTER TABLE "SUPERMERCADO"."COMPRAS" MODIFY ("IDCOMPRA" NOT NULL ENABLE);
 
  ALTER TABLE "SUPERMERCADO"."COMPRAS" MODIFY ("IDPROVEEDOR" NOT NULL ENABLE);
 
  ALTER TABLE "SUPERMERCADO"."COMPRAS" MODIFY ("IDEMPLEADO" NOT NULL ENABLE);
 
  ALTER TABLE "SUPERMERCADO"."COMPRAS" MODIFY ("FECHA" NOT NULL ENABLE);
 
  ALTER TABLE "SUPERMERCADO"."COMPRAS" MODIFY ("TOTAL" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CATEGORIA
--------------------------------------------------------

  ALTER TABLE "SUPERMERCADO"."CATEGORIA" ADD CONSTRAINT "PK_IDCATEGORIA" PRIMARY KEY ("IDCATEGORIA") ENABLE;
 
  ALTER TABLE "SUPERMERCADO"."CATEGORIA" MODIFY ("IDCATEGORIA" NOT NULL ENABLE);
 
  ALTER TABLE "SUPERMERCADO"."CATEGORIA" MODIFY ("NOMBRE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table VENTAS
--------------------------------------------------------

  ALTER TABLE "SUPERMERCADO"."VENTAS" ADD CONSTRAINT "PK_VENTAS" PRIMARY KEY ("IDVENTA") ENABLE;
 
  ALTER TABLE "SUPERMERCADO"."VENTAS" MODIFY ("IDVENTA" NOT NULL ENABLE);
 
  ALTER TABLE "SUPERMERCADO"."VENTAS" MODIFY ("IDCLIENTE" NOT NULL ENABLE);
 
  ALTER TABLE "SUPERMERCADO"."VENTAS" MODIFY ("IDEMPLEADO" NOT NULL ENABLE);
 
  ALTER TABLE "SUPERMERCADO"."VENTAS" MODIFY ("FECHA" NOT NULL ENABLE);
 
  ALTER TABLE "SUPERMERCADO"."VENTAS" MODIFY ("TOTAL" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CLIENTES
--------------------------------------------------------

  ALTER TABLE "SUPERMERCADO"."CLIENTES" ADD CONSTRAINT "PK_CLIENTE" PRIMARY KEY ("IDCLIENTE") ENABLE;
 
  ALTER TABLE "SUPERMERCADO"."CLIENTES" MODIFY ("IDCLIENTE" NOT NULL ENABLE);
 
  ALTER TABLE "SUPERMERCADO"."CLIENTES" MODIFY ("NOMBRE" NOT NULL ENABLE);
 
  ALTER TABLE "SUPERMERCADO"."CLIENTES" MODIFY ("DIRECCION" NOT NULL ENABLE);
 
  ALTER TABLE "SUPERMERCADO"."CLIENTES" MODIFY ("DNI" NOT NULL ENABLE);
 
  ALTER TABLE "SUPERMERCADO"."CLIENTES" MODIFY ("TELEFONO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PROVEEDORES
--------------------------------------------------------

  ALTER TABLE "SUPERMERCADO"."PROVEEDORES" ADD CONSTRAINT "PK_IDPROVEEDOR" PRIMARY KEY ("IDPROVEEDOR") ENABLE;
 
  ALTER TABLE "SUPERMERCADO"."PROVEEDORES" MODIFY ("IDPROVEEDOR" NOT NULL ENABLE);
 
  ALTER TABLE "SUPERMERCADO"."PROVEEDORES" MODIFY ("NOMBRE" NOT NULL ENABLE);
 
  ALTER TABLE "SUPERMERCADO"."PROVEEDORES" MODIFY ("DIRECCION" NOT NULL ENABLE);
 
  ALTER TABLE "SUPERMERCADO"."PROVEEDORES" MODIFY ("RUC" NOT NULL ENABLE);
 
  ALTER TABLE "SUPERMERCADO"."PROVEEDORES" MODIFY ("TELEFONO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PRODUCTOS
--------------------------------------------------------

  ALTER TABLE "SUPERMERCADO"."PRODUCTOS" ADD CONSTRAINT "PK_P_PRODUCTOS" PRIMARY KEY ("IDPRODUCTO") ENABLE;
 
  ALTER TABLE "SUPERMERCADO"."PRODUCTOS" MODIFY ("IDPRODUCTO" NOT NULL ENABLE);
 
  ALTER TABLE "SUPERMERCADO"."PRODUCTOS" MODIFY ("NOMBRE" NOT NULL ENABLE);
 
  ALTER TABLE "SUPERMERCADO"."PRODUCTOS" MODIFY ("IDCATEGORIA" NOT NULL ENABLE);
 
  ALTER TABLE "SUPERMERCADO"."PRODUCTOS" MODIFY ("IDPROVEEDOR" NOT NULL ENABLE);
 
  ALTER TABLE "SUPERMERCADO"."PRODUCTOS" MODIFY ("PRECIO_COMPRA" NOT NULL ENABLE);
 
  ALTER TABLE "SUPERMERCADO"."PRODUCTOS" MODIFY ("PRECIO_VENTA" NOT NULL ENABLE);
 
  ALTER TABLE "SUPERMERCADO"."PRODUCTOS" MODIFY ("STOCK" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table COMPRAS
--------------------------------------------------------

  ALTER TABLE "SUPERMERCADO"."COMPRAS" ADD CONSTRAINT "FK_C_IDPROVEEDOR" FOREIGN KEY ("IDPROVEEDOR")
	  REFERENCES "SUPERMERCADO"."PROVEEDORES" ("IDPROVEEDOR") ENABLE;
 
  ALTER TABLE "SUPERMERCADO"."COMPRAS" ADD CONSTRAINT "FK_EMPLEADO" FOREIGN KEY ("IDEMPLEADO")
	  REFERENCES "SUPERMERCADO"."EMPLEADO" ("IDEMPLEADO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EMPLEADO
--------------------------------------------------------

  ALTER TABLE "SUPERMERCADO"."EMPLEADO" ADD CONSTRAINT "FK_IDCARGO" FOREIGN KEY ("IDCARGO")
	  REFERENCES "SUPERMERCADO"."CARGO" ("IDCARGO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PRODUCTOS
--------------------------------------------------------

  ALTER TABLE "SUPERMERCADO"."PRODUCTOS" ADD CONSTRAINT "FK_P_IDCATEGORIA" FOREIGN KEY ("IDCATEGORIA")
	  REFERENCES "SUPERMERCADO"."CATEGORIA" ("IDCATEGORIA") ENABLE;
 
  ALTER TABLE "SUPERMERCADO"."PRODUCTOS" ADD CONSTRAINT "FK_P_IDPROVEEDOR" FOREIGN KEY ("IDPROVEEDOR")
	  REFERENCES "SUPERMERCADO"."PROVEEDORES" ("IDPROVEEDOR") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table VENTAS
--------------------------------------------------------

  ALTER TABLE "SUPERMERCADO"."VENTAS" ADD CONSTRAINT "FK_E_EMPLEADO" FOREIGN KEY ("IDEMPLEADO")
	  REFERENCES "SUPERMERCADO"."EMPLEADO" ("IDEMPLEADO") ENABLE;
 
  ALTER TABLE "SUPERMERCADO"."VENTAS" ADD CONSTRAINT "FK_V_IDCLIENTE" FOREIGN KEY ("IDCLIENTE")
	  REFERENCES "SUPERMERCADO"."CLIENTES" ("IDCLIENTE") ENABLE;
