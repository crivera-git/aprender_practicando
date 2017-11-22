E56: Agregar un empleado inventado que trabaje en una sucursal inexistente y
cuyo jefe tampoco exista. ¿Es posible?

insert into Empleado (nombre, apellido, fechaContratacion, cuota, idJefe, idSucursal)
  values ("Juan", "Perez", curdate(), 20000, 2, 3);

E57: Agregar restricciones de integridad referencial para la relación entre
el empleado y la sucursal, y el empleado y su jefe.

ALTER TABLE Empleado ADD CONSTRAINT fk_idSucursal FOREIGN KEY (idSucursal)
  REFERENCES Sucursal(id);
alter table Empleado add CONSTRAINT fk_idJefe FOREIGN KEY (idJefe)
  REFERENCES Empleado(id);

E58: Agregar otro empleado inventado que trabaje en una sucursal inexistente y
cuyo jefe tampoco exista. ¿Es posible? ¿Por qué?

insert into Empleado (nombre, apellido, fechaContratacion, cuota, idJefe, idSucursal)
  values ("Juan", "Perez", curdate(), 20000, 100, 50);

E59: Agregar la sucursal y el jefe a los que hace referencia el nuevo empleado.
Agregar nuevamente al nuevo empleado.

insert into Sucursal ( id, nombre , objetivo) values (50,"La mas grande",200000);
insert into Empleado (id, nombre, apellido, fechaContratacion, cuota, idJefe, idSucursal)
  values (100,"Pedro", "Perez", curdate(), 20000, null,50 );

E60: Eliminar la nueva sucursal. ¿Se puede? ¿Por qué?

delete from Sucursal where id = 50;

ERROR 1451 (23000): Cannot delete or update a parent row: a foreign key
constraint fails (`AlarmaSys`.`Empleado`, CONSTRAINT `fk_idSucursal`
FOREIGN KEY (`idSucursal`) REFERENCES `Sucursal` (`id`))

E61: Eliminar al nuevo jefe. ¿Se puede? ¿Por qué?

delete from Empleado where id = 100;

ERROR 1451 (23000): Cannot delete or update a parent row: a foreign key
constraint fails (`AlarmaSys`.`Empleado`, CONSTRAINT `fk_idJefe`
FOREIGN KEY (`idJefe`) REFERENCES `Empleado` (`id`))

E62: Crear 3 vistas de clientes, una para cada categoría

create view vistaClientesAlta as select * from Cliente where categoria = "ALTA";

create view vistaClientesMedia as select * from Cliente where categoria = "MEDIA";

create view vistaClientesBaja as select * from Cliente where categoria = "BAJA";

E62: Crear una vista que muestre para cada empleado, su jefe y la sucursal
donde trabaja.

create view vistaJefe as select id, nombre from Empleado where idJefe is null;

select Empleado.nombre, Sucursal.nombre as Sucursal, vistaJefe.nombre as Jefe
  from Empleado, Sucursal, vistaJefe  where Empleado.idSucursal = Sucursal.id
  and  Empleado.idJefe = vistaJefe.id;

E63: Crear una vista que muestre el total consumido por cada cliente.

create view vistaGastos as select Cliente.nombre, sum(Factura.montoTotal)
  from Cliente, Factura where Factura.idCliente = Cliente.id
  group by Factura.idCliente;

E64: Crear una vista que muestre todos los datos de las facturas junto con el
total de productos incluidos en cada una de ellas y el nombre y apellido del
cliente.

create view vistaFacturaCantidad as select fp.idFactura, sum(fp.cantidad)
  from FacturaProducto as fp group by fp.idFactura;

select Factura.* from Factura, vistaFacturaCantidad
  where Factura.id = vistaFacturaCantidad.idFactura;
