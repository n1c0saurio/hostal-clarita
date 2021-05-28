
--ROLES

INSERT INTO ROLES (ID_ROL, NOMBRE_ROL, DESCRIPCION_ROL) VALUES (1, 'Administrador', 'Accede a todas las funcionalidades');
INSERT INTO ROLES (ID_ROL, NOMBRE_ROL, DESCRIPCION_ROL) VALUES (2, 'Empleado', 'Recepciona, gestiona OPs y servicios de comedor');
INSERT INTO ROLES (ID_ROL, NOMBRE_ROL, DESCRIPCION_ROL) VALUES (3, 'Cliente', 'Contrata los servicios de la Hostal');


--USUARIOS

--Administrador
-- Contraseña: clarita

INSERT INTO USUARIO
	(PASSWORD, ID, IS_SUPERUSER, USERNAME, EMAIL, IS_STAFF, IS_ACTIVE, DATE_JOINED, ID_ROL)
VALUES('pbkdf2_sha256$260000$p2H61YffpIx7Idc7N026al$8jNNbJoKswtCYBSssQr5ew2RTJ7N7zN6arTxUYpru2Q=',
	1, 1, 'clarita@hostalclarita.cl', 'clarita@hostalclarita.cl', 1, 1, current_timestamp, 1);


--Empleados
--Contraseña: empleado

INSERT INTO USUARIO
	(PASSWORD, ID, IS_SUPERUSER, USERNAME, EMAIL, IS_STAFF, IS_ACTIVE, DATE_JOINED, ID_ROL)
VALUES('pbkdf2_sha256$260000$vjQPgOpTZrYDfFkH9cMIFz$s+iBI9n5wwZf5vHcOmNIP63G6nPJViXA92GZq4NOFJ8=',
	21, 0, 'juan@hostalclarita.cl', 'juan@hostalclarita.cl', 0, 1, current_timestamp, 2);

INSERT INTO "C##CLARITA".EMPLEADO
	(ID_EMPLEADO, NOMBRE_EMPLEADO, RUT_EMPLEADO, CARGO_EMPLEADO, TELEFONO, DIRECCION, USUARIO_ID)
VALUES(1, 'Juan Jara', '14837665-4', 'Recepcionista', 972645981, 'Sexta Avenida 1234, Maipú', 21);


--Cliente
--Contraseña: cliente

INSERT INTO USUARIO
	(PASSWORD, ID, IS_SUPERUSER, USERNAME, EMAIL, IS_STAFF, IS_ACTIVE, DATE_JOINED, ID_ROL)
VALUES('pbkdf2_sha256$260000$vjQPgOpTZrYDfFkH9cMIFz$s+iBI9n5wwZf5vHcOmNIP63G6nPJViXA92GZq4NOFJ8=',
	31, 0, 'ceo@polpaico.cl', 'ceo@polpaico.cl', 0, 1, current_timestamp, 3);

INSERT INTO CLIENTE
	(RUT_CLIENTE, NOMBRE_EMPRESA, TELEFONO, ESTADO_CLIENTE, USUARIO_ID)
VALUES('61438734-3', 'Polpaico', 972856734, 1, 31);


INSERT INTO USUARIO
	(PASSWORD, ID, IS_SUPERUSER, USERNAME, EMAIL, IS_STAFF, IS_ACTIVE, DATE_JOINED, ID_ROL)
VALUES('pbkdf2_sha256$260000$vjQPgOpTZrYDfFkH9cMIFz$s+iBI9n5wwZf5vHcOmNIP63G6nPJViXA92GZq4NOFJ8=',
	32, 0, 'ceo@heladosyork.cl', 'ceo@heladosyork.cl', 0, 1, current_timestamp, 3);

INSERT INTO CLIENTE
	(RUT_CLIENTE, NOMBRE_EMPRESA, TELEFONO, ESTADO_CLIENTE, USUARIO_ID)
VALUES('62432938-4', 'Helados York', 934784209, 1, 32);


INSERT INTO USUARIO
	(PASSWORD, ID, IS_SUPERUSER, USERNAME, EMAIL, IS_STAFF, IS_ACTIVE, DATE_JOINED, ID_ROL)
VALUES('pbkdf2_sha256$260000$vjQPgOpTZrYDfFkH9cMIFz$s+iBI9n5wwZf5vHcOmNIP63G6nPJViXA92GZq4NOFJ8=',
	33, 0, 'ceo@avon.cl', 'ceo@avon.cl', 0, 1, current_timestamp, 3);

INSERT INTO CLIENTE
	(RUT_CLIENTE, NOMBRE_EMPRESA, TELEFONO, ESTADO_CLIENTE, USUARIO_ID)
VALUES('63873588-1', 'AVON', 989207323, 1, 33);


--Proveedor

INSERT INTO PROVEEDOR
	(RUT_PROVEEDOR, NOMBRE_PROVEEDOR, RUBRO)
VALUES('91753234-6', 'Colún', 'Lácteos');

INSERT INTO PROVEEDOR
	(RUT_PROVEEDOR, NOMBRE_PROVEEDOR, RUBRO)
VALUES('92945753-6', 'Súper Pollo', 'Carnes');

INSERT INTO PROVEEDOR
	(RUT_PROVEEDOR, NOMBRE_PROVEEDOR, RUBRO)
VALUES('93459283-2', 'Frutos del Maipo', 'Frutas y verduras');

--Familias y tipos de productos

INSERT INTO FAMILIA_PRODUCTO
	(ID_FAMILIA, DESCRIPCION_FAMILIA)
VALUES(100, 'Leche');

INSERT INTO TIPO_PRODUCTO
	(ID_TIPO, DESCRIPCION_TIPO, ID_FAMILIA)
VALUES(101, 'Leche Entera 1 Litro', 100);

INSERT INTO TIPO_PRODUCTO
	(ID_TIPO, DESCRIPCION_TIPO, ID_FAMILIA)
VALUES(102, 'Leche Semidescremada 1 Litro', 100);

INSERT INTO FAMILIA_PRODUCTO
	(ID_FAMILIA, DESCRIPCION_FAMILIA)
VALUES(110, 'Queso');

INSERT INTO TIPO_PRODUCTO
	(ID_TIPO, DESCRIPCION_TIPO, ID_FAMILIA)
VALUES(111, 'Queso Gauda 250 Gramos', 110);

INSERT INTO FAMILIA_PRODUCTO
	(ID_FAMILIA, DESCRIPCION_FAMILIA)
VALUES(120, 'Mantequilla y Margarina');

INSERT INTO TIPO_PRODUCTO
	(ID_TIPO, DESCRIPCION_TIPO, ID_FAMILIA)
VALUES(121, 'Mantequilla 250 Gramos', 120);

INSERT INTO TIPO_PRODUCTO
	(ID_TIPO, DESCRIPCION_TIPO, ID_FAMILIA)
VALUES(122, 'Margarina 250 Gramos', 120);

INSERT INTO TIPO_PRODUCTO
	(ID_TIPO, DESCRIPCION_TIPO, ID_FAMILIA)
VALUES(123, 'Margarina 500 Gramos', 120);


-- REESCRIBIR REESCRIBIR REESCRIBIR REESCRIBIR REESCRIBIR REESCRIBIR REESCRIBIR REESCRIBIR REESCRIBIR REESCRIBIR REESCRIBIR REESCRIBIR REESCRIBIR REESCRIBIR REESCRIBIR REESCRIBIR REESCRIBIR REESCRIBIR

--Productos

--INSERT INTO PRODUCTO
--	(ID_PRODUCTO, FAMILIA_PRODUCTO, FECHA_VENCIMIENTO, TIPO_PRODUCTO, DESCRIPCION_PRODUCTO, PRECIO_PRODUCTO, STOCK_PRODUCTO, STOCK_CRITICO_PRODUCTO, RUT_PROVEEDOR)
--VALUES(1, 110, 20210701, 101, 'Leche Semidescremada 1 Litro', 850, 12, 10, '91753234-6');
--
--INSERT INTO PRODUCTO
--	(ID_PRODUCTO, FAMILIA_PRODUCTO, FECHA_VENCIMIENTO, TIPO_PRODUCTO, DESCRIPCION_PRODUCTO, PRECIO_PRODUCTO, STOCK_PRODUCTO, STOCK_CRITICO_PRODUCTO, RUT_PROVEEDOR)
--VALUES(2, 120, 20210615, 201, 'Queso Gauda 250g', 1299, 20, 5, '91753234-6');
--
--INSERT INTO PRODUCTO
--	(ID_PRODUCTO, FAMILIA_PRODUCTO, FECHA_VENCIMIENTO, TIPO_PRODUCTO, DESCRIPCION_PRODUCTO, PRECIO_PRODUCTO, STOCK_PRODUCTO, STOCK_CRITICO_PRODUCTO, RUT_PROVEEDOR)
--VALUES(3, 130, 20210701, 301, 'Mantequilla 250g', 1100, 15, 10, '91753234-6');
--
--INSERT INTO PRODUCTO
--	(ID_PRODUCTO, FAMILIA_PRODUCTO, FECHA_VENCIMIENTO, TIPO_PRODUCTO, DESCRIPCION_PRODUCTO, PRECIO_PRODUCTO, STOCK_PRODUCTO, STOCK_CRITICO_PRODUCTO, RUT_PROVEEDOR)
--VALUES(4, 210, 20210801, 211, 'Pollo Deshuesado 800g', 2899, 15, 5, '92945753-6');


--Orden de Pedido

--INSERT INTO ORDEN_PEDIDO
--	(ID_ORDEN_PEDIDO, DESCRIPCION, SUMA_PRECIO, ID_EMPLEADO)
--VALUES(1, 'Pedido Colún', 16695, 1);
--
--INSERT INTO DETALLE_ORDEN_PEDIDO
--	(CANTIDAD, PRECIO_INDIVIDUAL, PRECIO_TOTAL, ID_ORDEN_PEDIDO, ID_PRODUCTO)
--VALUES(12, 850, 10200, 1, 1);
--
--INSERT INTO DETALLE_ORDEN_PEDIDO
--	(CANTIDAD, PRECIO_INDIVIDUAL, PRECIO_TOTAL, ID_ORDEN_PEDIDO, ID_PRODUCTO)
--VALUES(5, 1299, 6495, 1, 2);

-- REESCRIBIR REESCRIBIR REESCRIBIR REESCRIBIR REESCRIBIR REESCRIBIR REESCRIBIR REESCRIBIR REESCRIBIR REESCRIBIR REESCRIBIR REESCRIBIR REESCRIBIR REESCRIBIR REESCRIBIR REESCRIBIR REESCRIBIR REESCRIBIR