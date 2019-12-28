-- Generado por Oracle SQL Developer Data Modeler 4.2.0.932
--   en:        2019-12-27 21:45:03 COT
--   sitio:      Oracle Database 10g
--   tipo:      Oracle Database 10g



DROP TABLE supermercado.cargo CASCADE CONSTRAINTS;

DROP TABLE supermercado.categoria CASCADE CONSTRAINTS;

DROP TABLE supermercado.clientes CASCADE CONSTRAINTS;

DROP TABLE supermercado.compras CASCADE CONSTRAINTS;

DROP TABLE supermercado.empleado CASCADE CONSTRAINTS;

DROP TABLE supermercado.productos CASCADE CONSTRAINTS;

DROP TABLE supermercado.proveedores CASCADE CONSTRAINTS;

DROP TABLE supermercado.ventas CASCADE CONSTRAINTS;

CREATE TABLE supermercado.cargo (
    idcargo   NCHAR(10) NOT NULL,
    puesto    VARCHAR2(30 BYTE) NOT NULL
);

CREATE UNIQUE INDEX supermercado.pk_idcargo ON
    supermercado.cargo ( idcargo ASC );

ALTER TABLE supermercado.cargo ADD CONSTRAINT pk_idcargo PRIMARY KEY ( idcargo );

CREATE TABLE supermercado.categoria (
    idcategoria   NCHAR(10) NOT NULL,
    nombre        VARCHAR2(30 BYTE) NOT NULL
);

CREATE UNIQUE INDEX supermercado.pk_idcategoria ON
    supermercado.categoria ( idcategoria ASC );

ALTER TABLE supermercado.categoria ADD CONSTRAINT pk_idcategoria PRIMARY KEY ( idcategoria );

CREATE TABLE supermercado.clientes (
    idcliente   NCHAR(10) NOT NULL,
    nombre      VARCHAR2(30 BYTE) NOT NULL,
    direccion   VARCHAR2(30 BYTE) NOT NULL,
    dni         VARCHAR2(30 BYTE) NOT NULL,
    telefono    VARCHAR2(30 BYTE) NOT NULL
);

CREATE UNIQUE INDEX supermercado.pk_cliente ON
    supermercado.clientes ( idcliente ASC );

ALTER TABLE supermercado.clientes ADD CONSTRAINT pk_cliente PRIMARY KEY ( idcliente );

CREATE TABLE supermercado.compras (
    idcompra      NCHAR(10) NOT NULL,
    idproveedor   NCHAR(10) NOT NULL,
    idempleado    NCHAR(10) NOT NULL,
    fecha         DATE NOT NULL,
    total         NUMBER(8,2) NOT NULL
);

CREATE UNIQUE INDEX supermercado.pk_compras ON
    supermercado.compras ( idcompra ASC );

ALTER TABLE supermercado.compras ADD CONSTRAINT pk_compras PRIMARY KEY ( idcompra );

CREATE TABLE supermercado.empleado (
    idempleado   NCHAR(10) NOT NULL,
    nombre       VARCHAR2(30 BYTE) NOT NULL,
    apellidos    VARCHAR2(30 BYTE) NOT NULL,
    direccion    VARCHAR2(30 BYTE) NOT NULL,
    idcargo      NCHAR(10) NOT NULL,
    salario      NUMBER(8,2) NOT NULL
);

CREATE UNIQUE INDEX supermercado.pk_empleado ON
    supermercado.empleado ( idempleado ASC );

ALTER TABLE supermercado.empleado ADD CONSTRAINT pk_empleado PRIMARY KEY ( idempleado );

CREATE TABLE supermercado.productos (
    idproducto      NCHAR(10) NOT NULL,
    nombre          VARCHAR2(30 BYTE) NOT NULL,
    idcategoria     NCHAR(10) NOT NULL,
    idproveedor     NCHAR(10) NOT NULL,
    precio_compra   NUMBER(8,2) NOT NULL,
    precio_venta    NUMBER(8,2) NOT NULL,
    stock           NUMBER(8,2) NOT NULL
);

CREATE UNIQUE INDEX supermercado.pk_p_productos ON
    supermercado.productos ( idproducto ASC );

ALTER TABLE supermercado.productos ADD CONSTRAINT pk_p_productos PRIMARY KEY ( idproducto );

CREATE TABLE supermercado.proveedores (
    idproveedor   NCHAR(10) NOT NULL,
    nombre        VARCHAR2(30 BYTE) NOT NULL,
    direccion     VARCHAR2(30 BYTE) NOT NULL,
    ruc           VARCHAR2(30 BYTE) NOT NULL,
    telefono      VARCHAR2(30 BYTE) NOT NULL
);

CREATE UNIQUE INDEX supermercado.pk_idproveedor ON
    supermercado.proveedores ( idproveedor ASC );

ALTER TABLE supermercado.proveedores ADD CONSTRAINT pk_idproveedor PRIMARY KEY ( idproveedor );

CREATE TABLE supermercado.ventas (
    idventa      NCHAR(10) NOT NULL,
    idcliente    NCHAR(10) NOT NULL,
    idempleado   NCHAR(10) NOT NULL,
    fecha        DATE NOT NULL,
    total        NUMBER(8,2) NOT NULL
);

CREATE UNIQUE INDEX supermercado.pk_ventas ON
    supermercado.ventas ( idventa ASC );

ALTER TABLE supermercado.ventas ADD CONSTRAINT pk_ventas PRIMARY KEY ( idventa );

ALTER TABLE supermercado.compras ADD CONSTRAINT fk_c_idproveedor FOREIGN KEY ( idproveedor )
    REFERENCES supermercado.proveedores ( idproveedor );

ALTER TABLE supermercado.ventas ADD CONSTRAINT fk_e_empleado FOREIGN KEY ( idempleado )
    REFERENCES supermercado.empleado ( idempleado );

ALTER TABLE supermercado.compras ADD CONSTRAINT fk_empleado FOREIGN KEY ( idempleado )
    REFERENCES supermercado.empleado ( idempleado );

ALTER TABLE supermercado.empleado ADD CONSTRAINT fk_idcargo FOREIGN KEY ( idcargo )
    REFERENCES supermercado.cargo ( idcargo );

ALTER TABLE supermercado.productos ADD CONSTRAINT fk_p_idcategoria FOREIGN KEY ( idcategoria )
    REFERENCES supermercado.categoria ( idcategoria );

ALTER TABLE supermercado.productos ADD CONSTRAINT fk_p_idproveedor FOREIGN KEY ( idproveedor )
    REFERENCES supermercado.proveedores ( idproveedor );

ALTER TABLE supermercado.ventas ADD CONSTRAINT fk_v_idcliente FOREIGN KEY ( idcliente )
    REFERENCES supermercado.clientes ( idcliente );



-- Informe de Resumen de Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             8
-- CREATE INDEX                             8
-- ALTER TABLE                             15
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
