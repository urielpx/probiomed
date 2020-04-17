CREATE TABLE cuenta_clave(
	id 					int not null auto_increment unique,
    nombre				varcharacter(100)	not null,
    apellido_materno 	varcharacter(50),
    apellido_paterno	varcharacter(50), 
    edad 				int,
    clave_trabajador	varcharacter(50)
);

CREATE TABLE doctor(
	id 					int not null auto_increment unique,
    nombre				varcharacter(100)	not null,
    apellido_materno 	varcharacter(50),
    apellido_paterno	varcharacter(50), 
    edad 				int,
    cedula_profesional	varcharacter(50)
);

CREATE TABLE farmacia(
	id 			int not null auto_increment unique,
    nombre		varcharacter(100)	not null,
    direccion	varcharacter(200),
    id_doctor 	int,
    foreign key (id_doctor) references doctor(id)
);

CREATE TABLE mayorista(
	id 					int not null auto_increment unique,
    nombre				varcharacter(100)	not null,
    razon_social 	 	varcharacter(200) not null,
    cuenta_clave_id 	int,
    foreign key (cuenta_clave_id) references cuenta_clave(id)
);

CREATE TABLE producto(
	id 					int not null auto_increment unique,
    nombre				varcharacter(100)	not null,
    lote				varcharacter(50),
    fecha_caducidad 	timestamp,
    peso				decimal,
    id_tipo_producto 	int,
    foreign key (id_tipo_producto) references tipo_producto(id),
    cuenta_clave_id 	int,
    foreign key (cuenta_clave_id) references cuenta_clave(id)
    
);