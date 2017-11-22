E25: Obtener la monto total de Facturas que se realizaron en el último año.

select sum(montoTotal) from Factura where year(fecha) = 2012;

E27: Obtener el máximo valor de una factura emitida por la sucursal “Olivos”.

select Factura.montoTotal from Factura, Sucursal
  where Sucursal.nombre = "Olivos" and Factura.idSucursal = Sucursal.id
  order by Factura.montoTotal desc limit 1;


E31: Obtener los clientes que cumplan años en febrero y que hayan tenido una
factura en la sucursal “Remedios de Escalada”.

select Cliente.nombre, Factura.montoTotal from Cliente, Factura, Sucursal
  where month(Cliente.fechaNacimiento) = 2 and Cliente.id = Factura.idCliente
  and Sucursal.nombre like "Remedios de Escalada"
  and Factura.idSucursal = Sucursal.id;

E33: Obtener el monto facturado por cada sucursal.

select sum(Factura.montoTotal), Factura.idSucursal from Factura
  group by Factura.idSucursal;

E34: Obtener para cada cliente, el nombre, el apellido, la cantidad de facutras
 que posee y el monto total comprado.

select Cliente.nombre, Cliente.apellido, count(Factura.idCliente)
  ,sum(Factura.montoTotal) from Cliente, Factura
  group by Cliente.id, Factura.idCliente having Cliente.id = Factura.idCliente;

E35: Obtener el nombre de los clienes que se repite.

select Cliente.nombre from Cliente group by Cliente.nombre
  having count(Cliente.nombre) > 1;

/*Preguntar*/E36: Obtener el nombre del producto más vendido junto con la cantidad
de unidades vendidas.

select Producto.nombre, sum(FacturaProducto.cantidad)
  as condicion from Producto, Factura, FacturaProducto
  where Producto.id = FacturaProducto.idProducto
  and Factura.id = FacturaProducto.idFactura
  group by FacturaProducto.idProducto order by condicion desc limit 1;
