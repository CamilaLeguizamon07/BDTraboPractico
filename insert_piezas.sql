-- Filtro de aceite → proveedor: FiltrosPY (id_proveedor = 2)
INSERT INTO piezas (nom_pieza, des_pieza, precio_venta, precio_compra, stock, id_categoria, id_proveedor)
VALUES ('Filtro de aceite', 'Filtro de aceite para motor diésel', 45000, 30000, 50, 1, 2);

-- Bujía → proveedor: Partes del Motor S.A. (id_proveedor = 1)
INSERT INTO piezas (nom_pieza, des_pieza, precio_venta, precio_compra, stock, id_categoria, id_proveedor)
VALUES ('Bujía', 'Bujía para encendido de motor naftero', 25000, 15000, 100, 1, 1);

-- Bobina de encendido → proveedor: ElectroAuto (id_proveedor = 3)
INSERT INTO piezas (nom_pieza, des_pieza, precio_venta, precio_compra, stock, id_categoria, id_proveedor)
VALUES ('Bobina de encendido', 'Bobina para sistema eléctrico de arranque', 150000, 120000, 30, 1, 3);

