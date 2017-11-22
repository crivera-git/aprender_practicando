drop database if exists Cocina;
create database Cocina;
use Cocina;

drop table if exists Receta;
drop table if exists Ingrediente;
drop table if exists RecetaIngrediente;

CREATE TABLE Receta
( id INT(11) NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(50) NOT NULL,
  cantidadPorciones INT NULL,
  CONSTRAINT clavePrimaria PRIMARY KEY (id)
);

CREATE TABLE Ingrediente
( id INT(11) NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(50) NOT NULL,
  CONSTRAINT clavePrimaria PRIMARY KEY (id)
);

CREATE TABLE RecetaIngrediente
( id INT(11) NOT NULL AUTO_INCREMENT,
  idReceta INT NULL,
  idIngrediente INT NULL,
  cantidad INT NOT NULL,
  unidad VARCHAR(50) NULL,
  CONSTRAINT clavePrimaria PRIMARY KEY (id)
);


INSERT INTO Receta (id,nombre,cantidadPorciones) VALUES (1 ,'Flan Casero', 8);
INSERT INTO Receta (id,nombre,cantidadPorciones) VALUES (2 ,'Arroz con Huevo', 4);
INSERT INTO Receta (id,nombre,cantidadPorciones) VALUES (3 ,'Milanesa Napolitana', 3);

INSERT INTO Ingrediente (id,nombre) VALUES (1,'Huevo de Gallina' );
INSERT INTO Ingrediente (id,nombre) VALUES (2,'Leche Entera' );
INSERT INTO Ingrediente (id,nombre) VALUES (3,'Carne Vacuna' );
INSERT INTO Ingrediente (id,nombre) VALUES (4,'Pan Rallado' );
INSERT INTO Ingrediente (id,nombre) VALUES (5,'Arroz Blanco' );
INSERT INTO Ingrediente (id,nombre) VALUES (6,'Azucar Blanco' );

INSERT INTO RecetaIngrediente (id,idReceta,idIngrediente,cantidad,unidad) VALUES (1, 1, 1, 4, 'unidad');
INSERT INTO RecetaIngrediente (id,idReceta,idIngrediente,cantidad,unidad) VALUES (2, 1, 2, 1, 'litro');
INSERT INTO RecetaIngrediente (id,idReceta,idIngrediente,cantidad,unidad) VALUES (3, 1, 6, 400, 'gramo');
INSERT INTO RecetaIngrediente (id,idReceta,idIngrediente,cantidad,unidad) VALUES (4, 2, 5, 4, 'taza');
INSERT INTO RecetaIngrediente (id,idReceta,idIngrediente,cantidad,unidad) VALUES (5, 2, 1, 3, 'unidad');
INSERT INTO RecetaIngrediente (id,idReceta,idIngrediente,cantidad,unidad) VALUES (6, 3, 3, 3, 'bife');
INSERT INTO RecetaIngrediente (id,idReceta,idIngrediente,cantidad,unidad) VALUES (7, 3, 4, 100, 'gramo');
INSERT INTO RecetaIngrediente (id,idReceta,idIngrediente,cantidad,unidad) VALUES (8, 3, 1, 2, 'unidad');

/*select Receta.nombre, Receta.cantidadPorciones, Ingrediente.nombre, RecetaIngrediente.cantidad, RecetaIngrediente.unidad from Receta inner join RecetaIngrediente on Receta.id = RecetaIngrediente.idReceta inner join Ingrediente on Ingrediente.id = RecetaIngrediente.idIngrediente;*/



