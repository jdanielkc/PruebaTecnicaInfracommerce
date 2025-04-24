-- Clientes
INSERT INTO clientes (tipo_documento, documento, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, celular, direccion, email) VALUES ('CC', 1000000001, 'Juan', 'Carlos', 'Pérez', 'Gómez', '3101234567', 'Calle 123 #45-67', 'juan.perez@email.com');
INSERT INTO clientes (tipo_documento, documento, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, celular, direccion, email) VALUES ('CC', 1000000002, 'María', 'Fernanda', 'López', 'Rodríguez', '3157654321', 'Carrera 78 #90-12', 'maria.lopez@email.com');
INSERT INTO clientes (tipo_documento, documento, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, celular, direccion, email) VALUES ('CE', 1000000003, 'Pedro', NULL, 'Ramírez', 'Sánchez', '3203456789', 'Avenida 34 #56-78', 'pedro.ramirez@email.com');
INSERT INTO clientes (tipo_documento, documento, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, celular, direccion, email) VALUES ('CC', 1000000004, 'Ana', 'María', 'González', 'Martínez', '3004567890', 'Calle 56 #78-90', 'ana.gonzalez@email.com');
INSERT INTO clientes (tipo_documento, documento, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, celular, direccion, email) VALUES ('CC', 1000000005, 'Luis', 'Alberto', 'Hernández', 'Díaz', '3112345678', 'Carrera 90 #12-34', 'luis.hernandez@email.com');

-- Marcas
INSERT INTO marcas (codigo, nombre_marca) VALUES (1, 'Toyota');
INSERT INTO marcas (codigo, nombre_marca) VALUES (2, 'Chevrolet');
INSERT INTO marcas (codigo, nombre_marca) VALUES (3, 'Ford');
INSERT INTO marcas (codigo, nombre_marca) VALUES (4, 'Mazda');
INSERT INTO marcas (codigo, nombre_marca) VALUES (5, 'Renault');

-- Vehículos
INSERT INTO vehiculos (placa, color, cod_marca, tipo_documento, documento) VALUES ('ABC123', 'Rojo', 1, 'CC', 1000000001);
INSERT INTO vehiculos (placa, color, cod_marca, tipo_documento, documento) VALUES ('DEF456', 'Azul', 2, 'CC', 1000000002);
INSERT INTO vehiculos (placa, color, cod_marca, tipo_documento, documento) VALUES ('GHI789', 'Negro', 3, 'CE', 1000000003);
INSERT INTO vehiculos (placa, color, cod_marca, tipo_documento, documento) VALUES ('JKL012', 'Blanco', 4, 'CC', 1000000004);
INSERT INTO vehiculos (placa, color, cod_marca, tipo_documento, documento) VALUES ('MNO345', 'Gris', 5, 'CC', 1000000005);
INSERT INTO vehiculos (placa, color, cod_marca, tipo_documento, documento) VALUES ('PQR678', 'Verde', 1, 'CC', 1000000001);
INSERT INTO vehiculos (placa, color, cod_marca, tipo_documento, documento) VALUES ('RST901', 'Negro', 2, 'CC', 1000000002);
INSERT INTO vehiculos (placa, color, cod_marca, tipo_documento, documento) VALUES ('UVW234', 'Plateado', 3, 'CE', 1000000003);
INSERT INTO vehiculos (placa, color, cod_marca, tipo_documento, documento) VALUES ('XYZ567', 'Blanco', 4, 'CC', 1000000004);
INSERT INTO vehiculos (placa, color, cod_marca, tipo_documento, documento) VALUES ('AAA111', 'Azul', 5, 'CC', 1000000005);
INSERT INTO vehiculos (placa, color, cod_marca, tipo_documento, documento) VALUES ('BBB222', 'Gris', 1, 'CC', 1000000001);


-- Mecánicos
INSERT INTO mecanicos (documento, tipo_documento, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, celular, direccion, email, estado) VALUES (2000000001, 'CC', 'Roberto', 'José', 'Jiménez', 'Castro', '3209876543', 'Calle 78 #90-12', 'roberto.jimenez@taller.com', 'A');
INSERT INTO mecanicos (documento, tipo_documento, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, celular, direccion, email, estado) VALUES (2000000002, 'CC', 'Carlos', 'Eduardo', 'Gutiérrez', 'Vargas', '3017654321', 'Avenida 12 #34-56', 'carlos.gutierrez@taller.com', 'A');
INSERT INTO mecanicos (documento, tipo_documento, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, celular, direccion, email, estado) VALUES (2000000003, 'CE', 'Diana', 'Patricia', 'Morales', 'López', '3158765432', 'Carrera 45 #67-89', 'diana.morales@taller.com', 'A');
INSERT INTO mecanicos (documento, tipo_documento, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, celular, direccion, email, estado) VALUES (2000000004, 'CC', 'Fernando', NULL, 'Álvarez', 'Rojas', '3005432167', 'Calle 23 #45-67', 'fernando.alvarez@taller.com', 'I');
INSERT INTO mecanicos (documento, tipo_documento, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, celular, direccion, email, estado) VALUES (2000000005, 'CC', 'Laura', 'Sofía', 'Restrepo', 'Duque', '3124567890', 'Carrera 89 #01-23', 'laura.restrepo@taller.com', 'A');
INSERT INTO mecanicos (documento, tipo_documento, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, celular, direccion, email, estado) VALUES (2000000006, 'CC', 'Miguel', 'Ángel', 'Torres', 'Vega', '3134567890', 'Calle 45 #23-67', 'miguel.torres@taller.com', 'A');
INSERT INTO mecanicos (documento, tipo_documento, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, celular, direccion, email, estado) VALUES (2000000007, 'CC', 'Andrea', 'Carolina', 'Gómez', 'Rivera', '3145678901', 'Avenida 67 #12-34', 'andrea.gomez@taller.com', 'A');
INSERT INTO mecanicos (documento, tipo_documento, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, celular, direccion, email, estado) VALUES (2000000008, 'CC', 'Santiago', NULL, 'Mendoza', 'Pérez', '3156789012', 'Carrera 34 #56-78', 'santiago.mendoza@taller.com', 'A');
INSERT INTO mecanicos (documento, tipo_documento, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, celular, direccion, email, estado) VALUES (2000000009, 'CE', 'Valentina', 'Isabel', 'Ortiz', 'Cardona', '3167890123', 'Calle 89 #10-11', 'valentina.ortiz@taller.com', 'I');
INSERT INTO mecanicos (documento, tipo_documento, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, celular, direccion, email, estado) VALUES (2000000010, 'CC', 'Juan', 'José', 'Martínez', 'Ruiz', '3178901234', 'Avenida 23 #45-67', 'juan.martinez@taller.com', 'A');
INSERT INTO mecanicos (documento, tipo_documento, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, celular, direccion, email, estado) VALUES (2000000011, 'CC', 'Camila', 'Andrea', 'López', 'Soto', '3189012345', 'Carrera 56 #78-90', 'camila.lopez@taller.com', 'A');
INSERT INTO mecanicos (documento, tipo_documento, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, celular, direccion, email, estado) VALUES (2000000012, 'CC', 'Sebastián', NULL, 'Vélez', 'Herrera', '3190123456', 'Calle 12 #34-56', 'sebastian.velez@taller.com', 'A');
INSERT INTO mecanicos (documento, tipo_documento, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, celular, direccion, email, estado) VALUES (2000000013, 'CC', 'Mariana', 'Lucía', 'Cardona', 'Giraldo', '3201234567', 'Avenida 78 #90-12', 'mariana.cardona@taller.com', 'A');
INSERT INTO mecanicos (documento, tipo_documento, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, celular, direccion, email, estado) VALUES (2000000014, 'CE', 'Daniel', 'Alejandro', 'Muñoz', 'Ospina', '3212345678', 'Carrera 90 #12-34', 'daniel.munoz@taller.com', 'I');
INSERT INTO mecanicos (documento, tipo_documento, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, celular, direccion, email, estado) VALUES (2000000015, 'CC', 'Isabella', NULL, 'Ramírez', 'Quintero', '3223456789', 'Calle 34 #56-78', 'isabella.ramirez@taller.com', 'A');



-- Servicios
INSERT INTO servicios (codigo, nombre_servicio, precio, precio_min_man_obra, precio_max_man_obra) VALUES (1, 'Cambio de aceite', 50000, 20000, 30000);
INSERT INTO servicios (codigo, nombre_servicio, precio, precio_min_man_obra, precio_max_man_obra) VALUES (2, 'Alineación y balanceo', 80000, 30000, 40000);
INSERT INTO servicios (codigo, nombre_servicio, precio, precio_min_man_obra, precio_max_man_obra) VALUES (3, 'Revisión de frenos', 60000, 25000, 35000);
INSERT INTO servicios (codigo, nombre_servicio, precio, precio_min_man_obra, precio_max_man_obra) VALUES (4, 'Cambio de pastillas de freno', 70000, 30000, 40000);
INSERT INTO servicios (codigo, nombre_servicio, precio, precio_min_man_obra, precio_max_man_obra) VALUES (5, 'Diagnóstico electrónico', 100000, 40000, 50000);

-- Repuestos
INSERT INTO repuestos (codigo, nombre_repuesto, precio_unitario, unidades_inventario, proveedor) VALUES (1, 'Aceite de motor 10W-30', 60000, 50, 'Lubricantes S.A.');
INSERT INTO repuestos (codigo, nombre_repuesto, precio_unitario, unidades_inventario, proveedor) VALUES (2, 'Filtro de aceite', 20000, 40, 'Auto Filtros Ltda.');
INSERT INTO repuestos (codigo, nombre_repuesto, precio_unitario, unidades_inventario, proveedor) VALUES (3, 'Pastillas de freno delanteras', 80000, 30, 'Frenos Seguros S.A.');
INSERT INTO repuestos (codigo, nombre_repuesto, precio_unitario, unidades_inventario, proveedor) VALUES (4, 'Pastillas de freno traseras', 70000, 25, 'Frenos Seguros S.A.');
INSERT INTO repuestos (codigo, nombre_repuesto, precio_unitario, unidades_inventario, proveedor) VALUES (5, 'Filtro de aire', 25000, 35, 'Auto Filtros Ltda.');

-- Mantenimientos (0=pendiente, 1=en proceso, 2=finalizado)
INSERT INTO mantenimientos (codigo, estado, cod_placa, fecha, mec_documento, mec_tipo_documento, presupuesto_cliente) VALUES (1, 2, 'ABC123', '2023-10-15', 2000000001, 'CC', 200000);
INSERT INTO mantenimientos (codigo, estado, cod_placa, fecha, mec_documento, mec_tipo_documento, presupuesto_cliente) VALUES (2, 1, 'DEF456', '2023-11-20', 2000000002, 'CC', 300000);
INSERT INTO mantenimientos (codigo, estado, cod_placa, fecha, mec_documento, mec_tipo_documento, presupuesto_cliente) VALUES (3, 0, 'GHI789', '2023-12-01', 2000000003, 'CE', 250000);
INSERT INTO mantenimientos (codigo, estado, cod_placa, fecha, mec_documento, mec_tipo_documento, presupuesto_cliente) VALUES (4, 2, 'JKL012', '2024-01-10', 2000000005, 'CC', 180000);
INSERT INTO mantenimientos (codigo, estado, cod_placa, fecha, mec_documento, mec_tipo_documento, presupuesto_cliente) VALUES (5, 2, 'MNO345', '2024-02-05', 2000000001, 'CC', 350000);
-- Mantenimientos para mecánico 6 (muchas horas)
INSERT INTO mantenimientos (codigo, estado, cod_placa, fecha, mec_documento, mec_tipo_documento, presupuesto_cliente) VALUES (6, 2, 'PQR678', '2024-06-01', 2000000006, 'CC', 280000);
INSERT INTO mantenimientos (codigo, estado, cod_placa, fecha, mec_documento, mec_tipo_documento, presupuesto_cliente) VALUES (7, 2, 'RST901', '2024-06-05', 2000000006, 'CC', 320000);
INSERT INTO mantenimientos (codigo, estado, cod_placa, fecha, mec_documento, mec_tipo_documento, presupuesto_cliente) VALUES (8, 0, 'UVW234', '2024-06-10', 2000000006, 'CC', 180000);

-- Mantenimientos para mecánico 7 (pocas horas)
INSERT INTO mantenimientos (codigo, estado, cod_placa, fecha, mec_documento, mec_tipo_documento, presupuesto_cliente) VALUES (9, 2, 'XYZ567', '2024-06-02', 2000000007, 'CC', 150000);

-- Mantenimientos para mecánico 8 (horas medias, parcialmente ocupado)
INSERT INTO mantenimientos (codigo, estado, cod_placa, fecha, mec_documento, mec_tipo_documento, presupuesto_cliente) VALUES (10, 1, 'AAA111', '2024-06-08', 2000000008, 'CC', 220000);
INSERT INTO mantenimientos (codigo, estado, cod_placa, fecha, mec_documento, mec_tipo_documento, presupuesto_cliente) VALUES (11, 2, 'BBB222', '2024-05-15', 2000000008, 'CC', 270000);

-- Mantenimientos para mecánico 10 (pocas horas)
INSERT INTO mantenimientos (codigo, estado, cod_placa, fecha, mec_documento, mec_tipo_documento, presupuesto_cliente) VALUES (12, 2, 'ABC123', '2024-05-20', 2000000010, 'CC', 190000);

-- Mantenimientos para mecánico 11 (muchas horas)
INSERT INTO mantenimientos (codigo, estado, cod_placa, fecha, mec_documento, mec_tipo_documento, presupuesto_cliente) VALUES (13, 2, 'DEF456', '2024-06-03', 2000000011, 'CC', 310000);
INSERT INTO mantenimientos (codigo, estado, cod_placa, fecha, mec_documento, mec_tipo_documento, presupuesto_cliente) VALUES (14, 0, 'GHI789', '2024-06-07', 2000000011, 'CC', 260000);

-- Mantenimientos para mecánico 12 (horas medias)
INSERT INTO mantenimientos (codigo, estado, cod_placa, fecha, mec_documento, mec_tipo_documento, presupuesto_cliente) VALUES (15, 2, 'JKL012', '2024-05-25', 2000000012, 'CC', 230000);

-- Mantenimientos para mecánico 13 (pocas horas)
INSERT INTO mantenimientos (codigo, estado, cod_placa, fecha, mec_documento, mec_tipo_documento, presupuesto_cliente) VALUES (16, 2, 'MNO345', '2024-04-30', 2000000013, 'CC', 200000);

-- Mantenimientos para mecánico 15 (horas medias, mantenimientos en proceso)
INSERT INTO mantenimientos (codigo, estado, cod_placa, fecha, mec_documento, mec_tipo_documento, presupuesto_cliente) VALUES (17, 1, 'PQR678', '2024-06-09', 2000000015, 'CC', 240000);




-- Servicios x Mantenimientos
INSERT INTO servicios_x_mantenimientos (codigo, cod_servicio, cod_mantenimiento, tiempo_estimado) VALUES (1, 1, 1, 60); -- 60 minutos (1 hora)
INSERT INTO servicios_x_mantenimientos (codigo, cod_servicio, cod_mantenimiento, tiempo_estimado) VALUES (2, 2, 2, 90); -- 90 minutos (1.5 horas)
INSERT INTO servicios_x_mantenimientos (codigo, cod_servicio, cod_mantenimiento, tiempo_estimado) VALUES (3, 3, 3, 120); -- 120 minutos (2 horas)
INSERT INTO servicios_x_mantenimientos (codigo, cod_servicio, cod_mantenimiento, tiempo_estimado) VALUES (4, 4, 4, 180); -- 180 minutos (3 horas)
INSERT INTO servicios_x_mantenimientos (codigo, cod_servicio, cod_mantenimiento, tiempo_estimado) VALUES (5, 5, 5, 60); -- 60 minutos (1 hora)
INSERT INTO servicios_x_mantenimientos (codigo, cod_servicio, cod_mantenimiento, tiempo_estimado) VALUES (6, 1, 5, 45); -- 45 minutos (0.75 horas)
INSERT INTO servicios_x_mantenimientos (codigo, cod_servicio, cod_mantenimiento, tiempo_estimado) VALUES (7, 1, 6, 75);   -- 1.25 horas
INSERT INTO servicios_x_mantenimientos (codigo, cod_servicio, cod_mantenimiento, tiempo_estimado) VALUES (8, 2, 6, 120);  -- 2 horas
INSERT INTO servicios_x_mantenimientos (codigo, cod_servicio, cod_mantenimiento, tiempo_estimado) VALUES (9, 3, 7, 150);  -- 2.5 horas
INSERT INTO servicios_x_mantenimientos (codigo, cod_servicio, cod_mantenimiento, tiempo_estimado) VALUES (10, 4, 7, 90);  -- 1.5 horas
INSERT INTO servicios_x_mantenimientos (codigo, cod_servicio, cod_mantenimiento, tiempo_estimado) VALUES (11, 5, 8, 60);  -- 1 hora
INSERT INTO servicios_x_mantenimientos (codigo, cod_servicio, cod_mantenimiento, tiempo_estimado) VALUES (12, 1, 9, 45);  -- 0.75 horas
INSERT INTO servicios_x_mantenimientos (codigo, cod_servicio, cod_mantenimiento, tiempo_estimado) VALUES (13, 2, 10, 90); -- 1.5 horas
INSERT INTO servicios_x_mantenimientos (codigo, cod_servicio, cod_mantenimiento, tiempo_estimado) VALUES (14, 3, 11, 120);-- 2 horas
INSERT INTO servicios_x_mantenimientos (codigo, cod_servicio, cod_mantenimiento, tiempo_estimado) VALUES (15, 4, 12, 60); -- 1 hora
INSERT INTO servicios_x_mantenimientos (codigo, cod_servicio, cod_mantenimiento, tiempo_estimado) VALUES (16, 5, 13, 180);-- 3 horas
INSERT INTO servicios_x_mantenimientos (codigo, cod_servicio, cod_mantenimiento, tiempo_estimado) VALUES (17, 1, 14, 45); -- 0.75 horas
INSERT INTO servicios_x_mantenimientos (codigo, cod_servicio, cod_mantenimiento, tiempo_estimado) VALUES (18, 2, 14, 90); -- 1.5 horas
INSERT INTO servicios_x_mantenimientos (codigo, cod_servicio, cod_mantenimiento, tiempo_estimado) VALUES (19, 3, 15, 105);-- 1.75 horas
INSERT INTO servicios_x_mantenimientos (codigo, cod_servicio, cod_mantenimiento, tiempo_estimado) VALUES (20, 4, 16, 60); -- 1 hora
INSERT INTO servicios_x_mantenimientos (codigo, cod_servicio, cod_mantenimiento, tiempo_estimado) VALUES (21, 5, 17, 120);-- 2 horas

-- Repuestos x Mantenimientos
INSERT INTO repuestos_x_mantenimientos (codigo, cod_repuesto, cod_mantenimiento, unidades, tiempo_estimado) VALUES (1, 1, 1, 1, 15); -- 15 minutos (0.25 horas)
INSERT INTO repuestos_x_mantenimientos (codigo, cod_repuesto, cod_mantenimiento, unidades, tiempo_estimado) VALUES (2, 2, 1, 1, 10); -- 10 minutos (0.17 horas)
INSERT INTO repuestos_x_mantenimientos (codigo, cod_repuesto, cod_mantenimiento, unidades, tiempo_estimado) VALUES (3, 3, 2, 1, 30); -- 30 minutos (0.5 horas)
INSERT INTO repuestos_x_mantenimientos (codigo, cod_repuesto, cod_mantenimiento, unidades, tiempo_estimado) VALUES (4, 4, 3, 1, 30); -- 30 minutos (0.5 horas)
INSERT INTO repuestos_x_mantenimientos (codigo, cod_repuesto, cod_mantenimiento, unidades, tiempo_estimado) VALUES (5, 5, 4, 1, 15); -- 15 minutos (0.25 horas)
INSERT INTO repuestos_x_mantenimientos (codigo, cod_repuesto, cod_mantenimiento, unidades, tiempo_estimado) VALUES (6, 1, 6, 1, 20);  -- 0.33 horas
INSERT INTO repuestos_x_mantenimientos (codigo, cod_repuesto, cod_mantenimiento, unidades, tiempo_estimado) VALUES (7, 2, 7, 2, 25);  -- 0.42 horas
INSERT INTO repuestos_x_mantenimientos (codigo, cod_repuesto, cod_mantenimiento, unidades, tiempo_estimado) VALUES (8, 3, 8, 1, 35);  -- 0.58 horas
INSERT INTO repuestos_x_mantenimientos (codigo, cod_repuesto, cod_mantenimiento, unidades, tiempo_estimado) VALUES (9, 4, 9, 1, 30);  -- 0.5 horas
INSERT INTO repuestos_x_mantenimientos (codigo, cod_repuesto, cod_mantenimiento, unidades, tiempo_estimado) VALUES (10, 5, 10, 1, 15); -- 0.25 horas
INSERT INTO repuestos_x_mantenimientos (codigo, cod_repuesto, cod_mantenimiento, unidades, tiempo_estimado) VALUES (11, 1, 11, 2, 30); -- 0.5 horas
INSERT INTO repuestos_x_mantenimientos (codigo, cod_repuesto, cod_mantenimiento, unidades, tiempo_estimado) VALUES (12, 2, 12, 1, 15); -- 0.25 horas
INSERT INTO repuestos_x_mantenimientos (codigo, cod_repuesto, cod_mantenimiento, unidades, tiempo_estimado) VALUES (13, 3, 13, 1, 40); -- 0.67 horas
INSERT INTO repuestos_x_mantenimientos (codigo, cod_repuesto, cod_mantenimiento, unidades, tiempo_estimado) VALUES (14, 4, 14, 2, 35); -- 0.58 horas
INSERT INTO repuestos_x_mantenimientos (codigo, cod_repuesto, cod_mantenimiento, unidades, tiempo_estimado) VALUES (15, 5, 15, 1, 20); -- 0.33 horas

-- Fotos
INSERT INTO fotos (codigo, ruta, cod_mantenimiento) VALUES (1, '/fotos/mantenimiento1_1.jpg', 1);
INSERT INTO fotos (codigo, ruta, cod_mantenimiento) VALUES (2, '/fotos/mantenimiento1_2.jpg', 1);
INSERT INTO fotos (codigo, ruta, cod_mantenimiento) VALUES (3, '/fotos/mantenimiento2_1.jpg', 2);
INSERT INTO fotos (codigo, ruta, cod_mantenimiento) VALUES (4, '/fotos/mantenimiento3_1.jpg', 3);
INSERT INTO fotos (codigo, ruta, cod_mantenimiento) VALUES (5, '/fotos/mantenimiento4_1.jpg', 4);
INSERT INTO fotos (codigo, ruta, cod_mantenimiento) VALUES (6, '/fotos/mantenimiento6_1.jpg', 6);
INSERT INTO fotos (codigo, ruta, cod_mantenimiento) VALUES (7, '/fotos/mantenimiento7_1.jpg', 7);
INSERT INTO fotos (codigo, ruta, cod_mantenimiento) VALUES (8, '/fotos/mantenimiento8_1.jpg', 8);
INSERT INTO fotos (codigo, ruta, cod_mantenimiento) VALUES (9, '/fotos/mantenimiento9_1.jpg', 9);
INSERT INTO fotos (codigo, ruta, cod_mantenimiento) VALUES (10, '/fotos/mantenimiento10_1.jpg', 10);

-- Facturas
INSERT INTO facturas (codigo, fecha_emision, total, subtotal, iva, cli_tipo_documento, cli_documento) VALUES (1, '2023-10-16', 154700, 130000, 24700, 'CC', 1000000001);
INSERT INTO facturas (codigo, fecha_emision, total, subtotal, iva, cli_tipo_documento, cli_documento) VALUES (2, '2024-01-12', 273700, 230000, 43700, 'CC', 1000000004);
INSERT INTO facturas (codigo, fecha_emision, total, subtotal, iva, cli_tipo_documento, cli_documento) VALUES (3, '2024-02-07', 416500, 350000, 66500, 'CC', 1000000005);

-- Detalle Facturas Servicios
INSERT INTO detalle_factura_servicios (cod_factura, cod_mantenimiento, cod_servicio, precio_mano_obra, descuento) VALUES (1, 1, 1, 25000, 0);
INSERT INTO detalle_factura_servicios (cod_factura, cod_mantenimiento, cod_servicio, precio_mano_obra, descuento) VALUES (2, 4, 4, 35000, 5000);
INSERT INTO detalle_factura_servicios (cod_factura, cod_mantenimiento, cod_servicio, precio_mano_obra, descuento) VALUES (3, 5, 5, 45000, 0);
INSERT INTO detalle_factura_servicios (cod_factura, cod_mantenimiento, cod_servicio, precio_mano_obra, descuento) VALUES (3, 5, 1, 25000, 2000);

-- Detalle Facturas Repuestos
INSERT INTO detalle_factura_repuestos (cod_factura, cod_mantenimiento, cod_repuesto, unidades_usadas, precio_unitario) VALUES (1, 1, 1, 1, 55000);
INSERT INTO detalle_factura_repuestos (cod_factura, cod_mantenimiento, cod_repuesto, unidades_usadas, precio_unitario) VALUES (1, 1, 2, 1, 20000);
INSERT INTO detalle_factura_repuestos (cod_factura, cod_mantenimiento, cod_repuesto, unidades_usadas, precio_unitario) VALUES (2, 4, 4, 2, 70000);
INSERT INTO detalle_factura_repuestos (cod_factura, cod_mantenimiento, cod_repuesto, unidades_usadas, precio_unitario) VALUES (3, 5, 5, 1, 25000);