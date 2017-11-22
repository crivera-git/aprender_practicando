/* Los nombres de las funciones de fecha coinciden entre MySQL y MSSQL*/
select DAY(Factura.fecha) as dia, DAYOFMONTH(Factura.fecha) as diaDelMes, MONTH (Factura.fecha) as mes, YEAR(Factura.fecha) as anio from Factura;

/* GETDATE() Se usa en MSSQL, en MySQL se usa CURDATE(), esta devuelve la fecha actual (no incluye la hora) */
/* CURTIME(), devuelve la hora actual (no incluye la fecha) */
/* NOW(), devuelve la fecha actual y la hora */

/* Ejemplos: */
select CURDATE(), CURTIME(), NOW();
select * from Factura where fecha < now();

/* DATEADD() Se usa en MSSQL, en MySQL se usa DATE_ADD*/ 

SELECT DATE_ADD('1998-01-02', INTERVAL 6 DAY);/*RESULTADO: 1998-01-08*/
SELECT DATE_ADD('1998-01-02', INTERVAL 3 MONTH);/*RESULTADO: 1998-04-02*/

/* Los nombres de las funciones matemáticas coninciden en MySQL y en MSSQL*/
SELECT ABS(-1), ABS(1), ROUND(1001.99,2), ROUND(1001.99,1),FLOOR(5000),FLOOR(4999.99), POWER(2,8);

select concat('hola,',' ','como se sienten,',' espero que bien' );
select left('conocer',3 );
select LENGTH('hola');
select * from Factura LIMIT 5;

/* Count, cuenta la cantidad de registros de la tabla Empleado*/
select count(*) from Empleado; /*DEVUELVE: 15*/

/* Cuando se especifica la columna en el argumento del count cuenta los que son distinto de NULL*/
select count(Empleado.id)  from Empleado; /*DEVUELVE: 15*/ 
select count(Empleado.idJefe)  from Empleado; /*DEVUELVE: 11*/ 

/* year (y otras funciones de fecha) se pueden usar tanto en las condiciones como en las columnas a seleccionar*/
select year(fecha) from Factura where year(fecha) between '2004' AND '2016'; 

/* Sin embargo, las funciones de agregación no se pueden usar en el where (no tiene sentido) */
SELECT SUM(montoTotal) FROM Factura;

/* Para devolver el monto mayor de todas las facturas */
select Max(Factura.montoTotal) from Factura;

/* Se puede convinar el uso de funciones propietarias con funciones de agregación*/
select Max(year(fecha)) from Factura where year(fecha) between '2004' AND '2017'; /* DEVUELVE 2012 */ 
select Min(year(fecha)) from Factura where year(fecha) between '2004' AND '2017'; /* DEVUELVE 2006 */ 




SELECT AVG(montoTotal) from Factura where idCliente = (SELECT id from Cliente where nombre = "Ana");

select avg(fc.montoTotal) from Factura as fc, Cliente as cl where fc.idCliente = cl.id and cl.nombre = "Ana";

select avg(montoTotal) from Factura JOIN Cliente on idCliente = Cliente.id where nombre="Ana";



select max(Factura.valor) from Factura, Sucursal where Factura.idSucursal = Sucursal.id and Sucursal.nombre = "Olivos";


select Factura.montoTotal from Factura group by Factura.idSucursal;


select nombre,apellido,count(*), SUM(montoTotal) from Cliente JOIN Factura ON Cliente.id = idCliente group by idCliente;

35.
select nombre from Cliente group by nombre having 1< count(*); 

36.
select SUM(cantidad), p.nombre from Producto as p JOIN FacturaProducto as fp ON p.id = fp.idProducto group by fp.idProducto having SUM(cantidad) = (select MAX(sumatoria) from (select SUM(cantidad) as sumatoria from Producto as p JOIN FacturaProducto as fp ON p.id = fp.idProducto group by fp.idProducto) as tabla);   

42.
select numero from Factura where idCliente in (select c.id from Cliente as c where categoria = "ALTA"); 

43.a.
select e.nombre from Empleado as e LEFT JOIN Factura ON e.id = idEmpleado where e.id NOT IN (select idEmpleado from Factura);    

43.b
select numero from Factura where id = (select MAX(id) from Factura);

44.
select s.nombre, objetivo from Sucursal as s JOIN Empleado as e ON s.id = e.idSucursal where idJefe IS null;  

45.

select Sucursal.nombre from Sucursal, (select distinct Factura.idSucursal from Factura,(select distinct Empleado.apellido, Empleado.id from Empleado, Cliente where Empleado.apellido = Cliente.apellido) as empApellido where Factura.idEmpleado = empApellido.id) as sucApellido where sucApellido.idSucursal = Sucursal.id;















