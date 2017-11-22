drop database if exists AlarmaSys;
create database AlarmaSys;
use AlarmaSys;

drop table if exists Cliente;
drop table if exists Producto;
drop table if exists Empleado;
drop table if exists Sucursal;
drop table if exists Factura;
drop table if exists FacturaProducto;

CREATE TABLE Cliente
( id INT(11) NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(50) NOT NULL,
  apellido VARCHAR(50) NOT NULL,
  categoria VARCHAR(50) NOT NULL,
  fechaNacimiento DATETIME NOT NULL,
  CONSTRAINT clavePrimaria PRIMARY KEY (id)
);

CREATE TABLE Producto
( id INT(11) NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(50) NOT NULL,
  CONSTRAINT clavePrimaria PRIMARY KEY (id)
);

CREATE TABLE Empleado
( id INT(11) NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(50) NOT NULL,
  apellido VARCHAR(50) NULL,
  fechaContratacion DATETIME NULL,
  cuota INT NOT NULL,
  idJefe INT NULL,
  idSucursal INT NULL,
  CONSTRAINT clavePrimaria PRIMARY KEY (id)
);

CREATE TABLE Sucursal
( id INT(11) NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(50) NOT NULL,
  objetivo INT NOT NULL,
  CONSTRAINT clavePrimaria PRIMARY KEY (id)
);

ALTER TABLE Empleado ADD CONSTRAINT fk_idSucursal FOREIGN KEY (idSucursal) REFERENCES Sucursal(id);

CREATE TABLE Factura(
	id INT(11) NOT NULL AUTO_INCREMENT,
	numero NVARCHAR(50) NOT NULL,
	montoTotal INT NULL,
	idCliente INT NULL,
	idSucursal INT NULL,
	idEmpleado INT NULL,
	fecha DATE NULL,
	CONSTRAINT clavePrimaria PRIMARY KEY (id)
);

CREATE TABLE FacturaProducto(
	id INT(11) NOT NULL AUTO_INCREMENT,
	idFactura INT NOT NULL,
	idProducto INT NOT NULL,
	cantidad INT NOT NULL,
	fecha DATE NULL,
	CONSTRAINT clavePrimaria PRIMARY KEY (id)
);

insert into Cliente(id, nombre, apellido, categoria, FechaNacimiento) values(1, 'Abel', 'Lavalle', 'MEDIA', '1937/12/18');
insert into Cliente(id, nombre, apellido, categoria, FechaNacimiento) values(2, 'Ada', 'Cuentas', 'ALTA', '1952/2/14');
insert into Cliente(id, nombre, apellido, categoria, FechaNacimiento) values(3, 'Adán', 'Solari', 'MEDIA', '2004/3/3');
insert into Cliente(id, nombre, apellido, categoria, FechaNacimiento) values(4, 'Ambrosio', 'Chavez', 'BAJA', '1938/7/26');
insert into Cliente(id, nombre, apellido, categoria, FechaNacimiento) values(5, 'Amelia', 'Irigoyen', 'ALTA', '1916/3/19');
insert into Cliente(id, nombre, apellido, categoria, FechaNacimiento) values(6, 'Ana', 'Celsi', 'MEDIA', '1966/2/7');
insert into Cliente(id, nombre, apellido, categoria, FechaNacimiento) values(7, 'Anastasio', 'Carrillo', 'BAJA', '1979/7/14');
insert into Cliente(id, nombre, apellido, categoria, FechaNacimiento) values(8, 'Andreína', 'Carrizo', 'ALTA', '1989/10/27');
insert into Cliente(id, nombre, apellido, categoria, FechaNacimiento) values(9, 'Andrés', 'Rodriguez', 'MEDIA', '1927/4/19');
insert into Cliente(id, nombre, apellido, categoria, FechaNacimiento) values(10, 'Ángel', 'Sorondo', 'BAJA', '1918/12/10');
insert into Cliente(id, nombre, apellido, categoria, FechaNacimiento) values(11, 'Ángela', 'Parrilli', 'ALTA', '1959/2/24');
insert into Cliente(id, nombre, apellido, categoria, FechaNacimiento) values(12, 'Jaume', 'Lisandro', 'MEDIA', '1940/9/28');
insert into Cliente(id, nombre, apellido, categoria, FechaNacimiento) values(13, 'Javier', 'Lavela', 'BAJA', '1996/6/24');
insert into Cliente(id, nombre, apellido, categoria, FechaNacimiento) values(14, 'Lorena', 'Lopez', 'BAJA', '1998/8/17');
insert into Cliente(id, nombre, apellido, categoria, FechaNacimiento) values(15, 'Lorenza', 'Elizondo', 'ALTA', '1992/9/1');
insert into Cliente(id, nombre, apellido, categoria, FechaNacimiento) values(16, 'Lorenzo', 'Elizalde', 'MEDIA', '1949/11/5');
insert into Cliente(id, nombre, apellido, categoria, FechaNacimiento) values(17, 'Loreta', 'Martín', 'BAJA', '1927/6/6');
insert into Cliente(id, nombre, apellido, categoria, FechaNacimiento) values(18, 'Mónica', 'Mnteagudo', 'ALTA', '1983/12/20');
insert into Cliente(id, nombre, apellido, categoria, FechaNacimiento) values(19, 'Montserrat', 'Lisandro', 'MEDIA', '1987/5/1');
insert into Cliente(id, nombre, apellido, categoria, FechaNacimiento) values(20, 'Nacho', 'Lavela', 'BAJA', '1954/9/23');
insert into Cliente(id, nombre, apellido, categoria, FechaNacimiento) values(21, 'Pedro Damián', 'Lavalle', 'MEDIA', '1927/4/30');
insert into Cliente(id, nombre, apellido, categoria, FechaNacimiento) values(22, 'Pedro Damián', 'Mendizabal', 'BAJA', '1922/6/5');
insert into Cliente(id, nombre, apellido, categoria, FechaNacimiento) values(23, 'Pedro', 'Cuentas', 'ALTA', '1931/10/20');
insert into Cliente(id, nombre, apellido, categoria, FechaNacimiento) values(24, 'Pedro', 'Solari', 'MEDIA', '1988/11/17');
insert into Cliente(id, nombre, apellido, categoria, FechaNacimiento) values(25, 'Quique', 'Montreal', 'ALTA', '2007/11/3');
insert into Cliente(id, nombre, apellido, categoria, FechaNacimiento) values(26, 'Rafael', 'Castro', 'MEDIA', '2006/2/14');
insert into Cliente(id, nombre, apellido, categoria, FechaNacimiento) values(27, 'Rafaelo', 'Gutierrez', 'BAJA', '1944/7/13');
insert into Cliente(id, nombre, apellido, categoria, FechaNacimiento) values(28, 'Raimundo', 'Del carril', 'ALTA', '2005/5/21');
insert into Cliente(id, nombre, apellido, categoria, FechaNacimiento) values(29, 'Ramón', 'Ascari', 'MEDIA', '1920/1/16');
insert into Cliente(id, nombre, apellido, categoria, FechaNacimiento) values(30, 'Raquel', 'Traverso', 'BAJA', '1959/3/21');
insert into Cliente(id, nombre, apellido, categoria, FechaNacimiento) values(31, 'Raúl', 'Elizondo', 'ALTA', '1951/7/13');
insert into Cliente(id, nombre, apellido, categoria, FechaNacimiento) values(32, 'Virginia', 'Casares', 'ALTA', '1941/3/4');
insert into Cliente(id, nombre, apellido, categoria, FechaNacimiento) values(33, 'Visitación', 'Velez', 'MEDIA', '1925/7/30');
insert into Cliente(id, nombre, apellido, categoria, FechaNacimiento) values(34, 'Vittorio', 'Montreal', 'BAJA', '1918/3/29');
insert into Cliente(id, nombre, apellido, categoria, FechaNacimiento) values(35, 'Viviana', 'Castro', 'ALTA', '1997/4/16');
insert into Cliente(id, nombre, apellido, categoria, FechaNacimiento) values(36, 'Walter', 'Ascari', 'ALTA', '1989/5/5');
insert into Cliente(id, nombre, apellido, categoria, FechaNacimiento) values(37, 'William', 'Gonzalez', 'ALTA', '1989/5/5');

insert into Producto(id, nombre) values(1, 'Recuperador');
insert into Producto(id, nombre) values(2, 'Alarma Notebook');
insert into Producto(id, nombre) values(3, 'Sensores de estacionamiento');
insert into Producto(id, nombre) values(4, 'Kit de Emergencia');
insert into Producto(id, nombre) values(5, 'Alarma');
insert into Producto(id, nombre) values(6, 'GPS');
insert into Producto(id, nombre) values(7, 'Protección Hogar');

insert into Sucursal(id, nombre, objetivo) values(1, 'Olivos', 750000);
insert into Sucursal(id, nombre, objetivo) values(2, 'San Miguel', 320000);
insert into Sucursal(id, nombre, objetivo) values(3, 'La Tablada', 800000);
insert into Sucursal(id, nombre, objetivo) values(4, 'Don Torcuato', 950000);
insert into Sucursal(id, nombre, objetivo) values(5, 'Remedios de Escalada', 400000);
insert into Sucursal(id, nombre, objetivo) values(6, 'Lanus Oeste', 390000);
insert into Sucursal(id, nombre, objetivo) values(7, 'Base Verificadora Berasategui', 100000);

insert into Empleado(id, nombre, apellido, fechaContratacion, cuota, idJefe, idSucursal) values(1, 'William' , 'Gonzalez', '2009/2/28', 10000, 7, 1);
insert into Empleado(id, nombre, apellido, fechaContratacion, cuota, idJefe, idSucursal) values(2, 'Viviana' , 'Castro', '2006/9/6', 9000, 7, 3);
insert into Empleado(id, nombre, apellido, fechaContratacion, cuota, idJefe, idSucursal) values(3, 'Verónica' , 'Elizalde', '2012/1/26', 15000, 6, 5);
insert into Empleado(id, nombre, apellido, fechaContratacion, cuota, idJefe, idSucursal) values(4, 'Susana' , 'Solari', '1988/1/16', 5000, 6, 5);
insert into Empleado(id, nombre, apellido, fechaContratacion, cuota, idJefe, idSucursal) values(5, 'Santiago' , 'Sarmiento', '1991/4/14', 11000, 6, 3);
insert into Empleado(id, nombre, apellido, fechaContratacion, cuota, idJefe, idSucursal) values(6, 'Penélope' , 'Castro', '1948/5/14', 12000, null, 3);
insert into Empleado(id, nombre, apellido, fechaContratacion, cuota, idJefe, idSucursal) values(7, 'Yolanda' , 'Vazquez', '1961/4/14', 10000, null, 6);
insert into Empleado(id, nombre, apellido, fechaContratacion, cuota, idJefe, idSucursal) values(8, 'Angélica' , 'Senda', '1998/8/17', 10000, 13, 4);
insert into Empleado(id, nombre, apellido, fechaContratacion, cuota, idJefe, idSucursal) values(9, 'Bernardino' , 'Celsi', '1992/9/1', 9000, 13, 7);
insert into Empleado(id, nombre, apellido, fechaContratacion, cuota, idJefe, idSucursal) values(10, 'Carolina' , 'Gutierrez', '1949/11/5', 15000, 13, 5);
insert into Empleado(id, nombre, apellido, fechaContratacion, cuota, idJefe, idSucursal) values(11, 'Constantino' , 'Basualdo', '1927/6/6', 5000, 13, 1);
insert into Empleado(id, nombre, apellido, fechaContratacion, cuota, idJefe, idSucursal) values(12, 'Domingo' , 'Carrillo', '1983/12/20', 11000, 14, 6);
insert into Empleado(id, nombre, apellido, fechaContratacion, cuota, idJefe, idSucursal) values(13, 'Elvira' , 'Valverde', '1987/5/1', 12000, null, 4);
insert into Empleado(id, nombre, apellido, fechaContratacion, cuota, idJefe, idSucursal) values(14, 'Federico' , 'Genovese', '1954/9/23', 10000, null, 7);
insert into Empleado(id, nombre, apellido, fechaContratacion, cuota, idJefe, idSucursal) values(15, 'Francisco' , 'Gutierrez', '1927/4/30', 6500, 14, 5);

insert into Factura(id, numero, montoTotal, idCliente, idSucursal, idEmpleado, fecha) values(1, '0001-00001', 13020, 1, 2, 10,'2009/2/28');
insert into Factura(id, numero, montoTotal, idCliente, idSucursal, idEmpleado, fecha) values(2, '0001-00002', 38, 2, 3, 12,'2006/9/6');
insert into Factura(id, numero, montoTotal, idCliente, idSucursal, idEmpleado, fecha) values(3, '0001-00003', 12363, 3, 1, 13,'2012/1/26');
insert into Factura(id, numero, montoTotal, idCliente, idSucursal, idEmpleado, fecha) values(4, '0001-00004', 8879, 4, 3, 4,'1988/1/16');
insert into Factura(id, numero, montoTotal, idCliente, idSucursal, idEmpleado, fecha) values(5, '0001-00005', 3082, 5, 5, 2,'1991/4/14');
insert into Factura(id, numero, montoTotal, idCliente, idSucursal, idEmpleado, fecha) values(6, '0001-00006', 8945, 6, 5, 6,'1948/5/14');
insert into Factura(id, numero, montoTotal, idCliente, idSucursal, idEmpleado, fecha) values(7, '0001-00007', 4469, 7, 3, 13,'1961/4/14');
insert into Factura(id, numero, montoTotal, idCliente, idSucursal, idEmpleado, fecha) values(8, '0001-00008', 11544, 8, 3, 10,'2009/2/28');
insert into Factura(id, numero, montoTotal, idCliente, idSucursal, idEmpleado, fecha) values(9, '0001-00009', 6275, 1, 6, 2,'2006/9/6');
insert into Factura(id, numero, montoTotal, idCliente, idSucursal, idEmpleado, fecha) values(10, '0001-00010', 2747, 2, 4, 10,'2012/1/26');
insert into Factura(id, numero, montoTotal, idCliente, idSucursal, idEmpleado, fecha) values(11, '0001-00011', 4973, 3, 7, 5,'1988/1/16');
insert into Factura(id, numero, montoTotal, idCliente, idSucursal, idEmpleado, fecha) values(12, '0001-00012', 12448, 4, 5, 5,'1991/4/14');
insert into Factura(id, numero, montoTotal, idCliente, idSucursal, idEmpleado, fecha) values(13, '0001-00013', 2612, 5, 1, 1,'1948/5/14');
insert into Factura(id, numero, montoTotal, idCliente, idSucursal, idEmpleado, fecha) values(14, '0001-00014', 8668, 6, 6, 13,'1961/4/14');
insert into Factura(id, numero, montoTotal, idCliente, idSucursal, idEmpleado, fecha) values(15, '0001-00015', 10939, 7, 2, 10,'2009/2/28');
insert into Factura(id, numero, montoTotal, idCliente, idSucursal, idEmpleado, fecha) values(16, '0001-00016', 6373, 8, 6, 2,'2006/9/6');
insert into Factura(id, numero, montoTotal, idCliente, idSucursal, idEmpleado, fecha) values(17, '0001-00017', 12559, 1, 4, 7,'2012/1/26');
insert into Factura(id, numero, montoTotal, idCliente, idSucursal, idEmpleado, fecha) values(18, '0001-00018', 1583, 2, 6, 4,'1988/1/16');
insert into Factura(id, numero, montoTotal, idCliente, idSucursal, idEmpleado, fecha) values(19, '0001-00019', 10085, 3, 5, 8,'1991/4/14');
insert into Factura(id, numero, montoTotal, idCliente, idSucursal, idEmpleado, fecha) values(20, '0001-00020', 11494, 4, 3, 11,'2009/2/28');
insert into Factura(id, numero, montoTotal, idCliente, idSucursal, idEmpleado, fecha) values(21, '0001-00021', 8785, 5, 2, 12,'2006/9/6');
insert into Factura(id, numero, montoTotal, idCliente, idSucursal, idEmpleado, fecha) values(22, '0001-00022', 3176, 6, 6, 9,'2012/1/26');
insert into Factura(id, numero, montoTotal, idCliente, idSucursal, idEmpleado, fecha) values(23, '0001-00023', 5971, 7, 5, 13,'1988/1/16');
insert into Factura(id, numero, montoTotal, idCliente, idSucursal, idEmpleado, fecha) values(24, '0001-00024', 14898, 8, 4, 10,'1991/4/14');

insert into FacturaProducto(id, idFactura, idProducto, cantidad) values(1, 2, 1, 42);
insert into FacturaProducto(id, idFactura, idProducto, cantidad) values(2, 2, 3, 29);
insert into FacturaProducto(id, idFactura, idProducto, cantidad) values(3, 3, 1, 24);
insert into FacturaProducto(id, idFactura, idProducto, cantidad) values(4, 3, 4, 36);
insert into FacturaProducto(id, idFactura, idProducto, cantidad) values(5, 4, 1, 30);
insert into FacturaProducto(id, idFactura, idProducto, cantidad) values(6, 4, 2, 32);
insert into FacturaProducto(id, idFactura, idProducto, cantidad) values(7, 4, 3, 32);
insert into FacturaProducto(id, idFactura, idProducto, cantidad) values(8, 5, 1, 1);
insert into FacturaProducto(id, idFactura, idProducto, cantidad) values(9, 5, 3, 46);
insert into FacturaProducto(id, idFactura, idProducto, cantidad) values(10, 5, 5, 36);
insert into FacturaProducto(id, idFactura, idProducto, cantidad) values(11, 6, 1, 18);
insert into FacturaProducto(id, idFactura, idProducto, cantidad) values(12, 6, 3, 48);
insert into FacturaProducto(id, idFactura, idProducto, cantidad) values(13, 6, 4, 28);
insert into FacturaProducto(id, idFactura, idProducto, cantidad) values(14, 6, 5, 49);
insert into FacturaProducto(id, idFactura, idProducto, cantidad) values(15, 7, 4, 6);
insert into FacturaProducto(id, idFactura, idProducto, cantidad) values(16, 7, 5, 21);
insert into FacturaProducto(id, idFactura, idProducto, cantidad) values(17, 8, 1, 11);
insert into FacturaProducto(id, idFactura, idProducto, cantidad) values(18, 8, 2, 32);
insert into FacturaProducto(id, idFactura, idProducto, cantidad) values(19, 8, 4, 1);
insert into FacturaProducto(id, idFactura, idProducto, cantidad) values(20, 9, 2, 48);
insert into FacturaProducto(id, idFactura, idProducto, cantidad) values(21, 9, 3, 2);
insert into FacturaProducto(id, idFactura, idProducto, cantidad) values(22, 11, 1, 24);
insert into FacturaProducto(id, idFactura, idProducto, cantidad) values(23, 12, 2, 40);
insert into FacturaProducto(id, idFactura, idProducto, cantidad) values(24, 13, 1, 4);
insert into FacturaProducto(id, idFactura, idProducto, cantidad) values(25, 13, 3, 39);
insert into FacturaProducto(id, idFactura, idProducto, cantidad) values(26, 13, 4, 6);
insert into FacturaProducto(id, idFactura, idProducto, cantidad) values(27, 13, 5, 33);
insert into FacturaProducto(id, idFactura, idProducto, cantidad) values(28, 13, 6, 38);
insert into FacturaProducto(id, idFactura, idProducto, cantidad) values(29, 13, 7, 34);
insert into FacturaProducto(id, idFactura, idProducto, cantidad) values(30, 14, 1, 35);
insert into FacturaProducto(id, idFactura, idProducto, cantidad) values(31, 14, 3, 48);
insert into FacturaProducto(id, idFactura, idProducto, cantidad) values(32, 15, 1, 43);
insert into FacturaProducto(id, idFactura, idProducto, cantidad) values(33, 15, 2, 1);
insert into FacturaProducto(id, idFactura, idProducto, cantidad) values(34, 15, 3, 7);
insert into FacturaProducto(id, idFactura, idProducto, cantidad) values(35, 15, 4, 46);
insert into FacturaProducto(id, idFactura, idProducto, cantidad) values(36, 15, 5, 21);
insert into FacturaProducto(id, idFactura, idProducto, cantidad) values(37, 15, 6, 14);
insert into FacturaProducto(id, idFactura, idProducto, cantidad) values(38, 16, 4, 3);
insert into FacturaProducto(id, idFactura, idProducto, cantidad) values(39, 17, 1, 16);
insert into FacturaProducto(id, idFactura, idProducto, cantidad) values(40, 17, 2, 1);
insert into FacturaProducto(id, idFactura, idProducto, cantidad) values(41, 17, 3, 41);
insert into FacturaProducto(id, idFactura, idProducto, cantidad) values(42, 17, 5, 30);
insert into FacturaProducto(id, idFactura, idProducto, cantidad) values(43, 18, 1, 7);
insert into FacturaProducto(id, idFactura, idProducto, cantidad) values(44, 18, 4, 43);
insert into FacturaProducto(id, idFactura, idProducto, cantidad) values(45, 19, 3, 12);
insert into FacturaProducto(id, idFactura, idProducto, cantidad) values(46, 20, 1, 26);
insert into FacturaProducto(id, idFactura, idProducto, cantidad) values(47, 20, 2, 30);
insert into FacturaProducto(id, idFactura, idProducto, cantidad) values(48, 20, 3, 36);
insert into FacturaProducto(id, idFactura, idProducto, cantidad) values(49, 21, 1, 1);
insert into FacturaProducto(id, idFactura, idProducto, cantidad) values(50, 21, 2, 19);
insert into FacturaProducto(id, idFactura, idProducto, cantidad) values(51, 22, 2, 23);
insert into FacturaProducto(id, idFactura, idProducto, cantidad) values(52, 22, 3, 42);
insert into FacturaProducto(id, idFactura, idProducto, cantidad) values(53, 22, 4, 1);
insert into FacturaProducto(id, idFactura, idProducto, cantidad) values(54, 22, 5, 14);
insert into FacturaProducto(id, idFactura, idProducto, cantidad) values(55, 23, 1, 2);
insert into FacturaProducto(id, idFactura, idProducto, cantidad) values(56, 23, 3, 10);
insert into FacturaProducto(id, idFactura, idProducto, cantidad) values(57, 23, 4, 38);
insert into FacturaProducto(id, idFactura, idProducto, cantidad) values(58, 23, 5, 8);
insert into FacturaProducto(id, idFactura, idProducto, cantidad) values(59, 24, 1, 43);
insert into FacturaProducto(id, idFactura, idProducto, cantidad) values(60, 24, 2, 26);
insert into FacturaProducto(id, idFactura, idProducto, cantidad) values(61, 24, 3, 42);

