CREATE TABLE clientes(
	id_cliente SERIAL PRIMARY KEY
	, nom_cliente VARCHAR(45) NOT NULL
	, apell_cliente VARCHAR(45) NOT NULL
	, nro_cedula INTEGER NOT NULL
	, telef_cliente VARCHAR(45)
	, email_cliente VARCHAR(100)
	, direccion TEXT
);
CREATE TABLE usuario(
	id_usuario SERIAL PRIMARY KEY
	, nom_usuario VARCHAR(45) NOT NULL
	, apell_usuario VARCHAR(45) NOT NULL
	, usuario VARCHAR(45) UNIQUE NOT NULL
	, contraseña VARCHAR(100) UNIQUE NOT NULL
	, rol VARCHAR(100)
);
CREATE TABLE categoria(
	id_categoria SERIAL PRIMARY KEY
	, nom_categoria VARCHAR(45) NOT NULL
	, des_categoria TEXT
);
CREATE TABLE proveedores(
	id_proveedor SERIAL PRIMARY KEY
	, nom_empresa VARCHAR(45) NOT NULL
	, ruc VARCHAR(45) NOT NULL
	, telef_proveedor VARCHAR(45)
	, email_proveedor VARCHAR(100)
	, direc_proveedor TEXT
);
CREATE TABLE piezas(
	id_pieza SERIAL PRIMARY KEY
	, nom_pieza VARCHAR(45) NOT NULL
	, des_pieza VARCHAR(100) NOT NULL
	, precio_venta INTEGER NOT NULL
	, precio_compra INTEGER NOT NULL
	, stock INTEGER NOT NULL
	, id_categoria INTEGER
	, id_proveedor INTEGER
	,  FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria)   
	,  FOREIGN KEY (id_proveedor) REFERENCES proveedores(id_proveedor)
);
CREATE TABLE ventas(
	id_venta SERIAL PRIMARY KEY
	, fecha DATE
	, id_cliente INTEGER
	, id_usuario INTEGER
	, total_venta INTEGER NOT NULL
	,  FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
	,  FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
	);
CREATE TABLE detalle_venta(
	id_detalle SERIAL PRIMARY KEY
	, id_venta INTEGER
	, id_pieza INTEGER
	, cant_venta INTEGER NOT NULL
	, pre_unit_venta INTEGER NOT NULL
	,  FOREIGN KEY (id_venta) REFERENCES ventas(id_venta)
	,  FOREIGN KEY (id_pieza) REFERENCES piezas(id_pieza)
	);
CREATE TABLE compras(
	id_compra SERIAL PRIMARY KEY
	, fecha DATE NOT NULL
	, id_proveedor INTEGER
	, id_usuario INTEGER
	, total_compra INTEGER
	, FOREIGN KEY (id_proveedor) REFERENCES proveedores(id_proveedor)
	, FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
	);
CREATE TABLE detalle_compra(
id_detalle SERIAL PRIMARY KEY
, id_compra INTEGER
, id_pieza INTEGER
, cant_compra INTEGER
, pre_unit_compra INTEGER
, FOREIGN KEY (id_compra) REFERENCES compras(id_compra)
, FOREIGN KEY (id_pieza) REFERENCES piezas(id_pieza)
);