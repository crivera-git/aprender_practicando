drop database if exists RubrosComerciales;
create database RubrosComerciales;
use RubrosComerciales;
DROP TABLE IF EXISTS Rubro;
CREATE TABLE Rubro (
  idRubro int(11) NOT NULL AUTO_INCREMENT,
  idRubroPadre int(11) DEFAULT NULL,
  codigoClanae varchar(10) NOT NULL,
  descripcion varchar(255) NOT NULL,
  detalleComplementario varchar(500) DEFAULT NULL,
  codigoClanae97 varchar(10) DEFAULT NULL,
  PRIMARY KEY (idRubro),
  CONSTRAINT fk_RubroPadre_Rubro FOREIGN KEY (idRubroPadre) REFERENCES Rubro (idRubro)
)ENGINE=MyISAM;



