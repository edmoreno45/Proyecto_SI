create table Tipo_producto (
id_tipo_producto integer NOT NULL,
descripcion_tipo_producto varchar(200) NOT NULL,
CONSTRAINT Tipo_producto_pkey PRIMARY KEY (id_tipo_producto)
);


create table Producto (
id_producto integer NOT NULL,
id_tipo_producto integer NOT NULL,
nombre_producto varchar(50) NOT NULL,
descripcion_producto varchar(200) NOT NULL,
precio_costo integer NOT NULL,
precio_venta integer NOT NULL,
fecha_ingreso Date NOT NULL,
CONSTRAINT Producto_pkey PRIMARY KEY (id_producto),
CONSTRAINT Producto_Tipo_producto_fkey FOREIGN KEY (id_tipo_producto) REFERENCES Tipo_producto (id_tipo_producto)
);


create table Partes_producto (
id_partes_producto integer NOT NULL,
id_producto integer NOT NULL,
cantidad_partes_producto integer NOT NULL,
descripcion_partes_producto varchar(200) NOT NULL,
CONSTRAINT Partes_producto_pkey PRIMARY KEY (id_partes_producto),
CONSTRAINT Partes_producto_Producto_fkey FOREIGN KEY (id_producto) REFERENCES Producto (id_producto)
);


create table Producto_geo (
id_producto_geo integer NOT NULL,
id_producto integer NOT NULL,
id_ubicacion_geo integer NOT NULL,
cantidad_producto_geo integer NOT NULL,
CONSTRAINT Producto_geo_pkey PRIMARY KEY (id_producto_geo),
CONSTRAINT Producto_geo_Producto_fkey FOREIGN KEY (id_producto) REFERENCES Producto (id_producto)
);
