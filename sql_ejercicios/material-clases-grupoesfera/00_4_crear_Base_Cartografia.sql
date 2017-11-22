drop database if exists Cartografia;
create database Cartografia;
use Cartografia;
DROP TABLE IF EXISTS AreaGeografica;
CREATE TABLE AreaGeografica (
  idAreaGeografica int(11) NOT NULL AUTO_INCREMENT,
  descripcion varchar(60) DEFAULT NULL,
  nombre varchar(30) DEFAULT NULL,
  tipoAreaGeografica int(11) NOT NULL,
  idAreaGeograficaSuperior int(11) DEFAULT NULL,
  idAreaGeograficaProvincia int(11) DEFAULT NULL,
  PRIMARY KEY (idAreaGeografica),
  UNIQUE KEY idAreaGeografica (idAreaGeografica),
  KEY FK5E18DA5380C3A58F (idAreaGeograficaSuperior),
  KEY KEY_PROVINCIA (idAreaGeograficaProvincia)
) ENGINE=MyISAM ;
/*AUTO_INCREMENT=1 DEFAULT CHARSET=latin1*/

USE /*COMPLETAR*/;
SET FOREIGN_KEY_CHECKS = 0;
DELETE FROM AreaGeografica;
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (1,'','Nación',0,NULL);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (2,'','Buenos Aires',1,1);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (3,'','La Matanza',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (4,'','Moron',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (5,'','Ramos Mejia',3,3);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (6,'','Haedo',3,4);

INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (7,'','Catamarca',1,1);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (8,'','Chaco',1,1);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (9,'','Chubut',1,1);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (10,'','Córdoba',1,1);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (11,'','Corrientes',1,1);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (12,'','Entre Ríos',1,1);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (13,'','Formosa',1,1);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (14,'','Jujuy',1,1);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (15,'','La Pampa',1,1);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (16,'','La Rioja',1,1);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (17,'','Mendoza',1,1);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (18,'','Misiones',1,1);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (19,'','Neuquén',1,1);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (20,'','Río Negro',1,1);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (21,'','Salta',1,1);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (22,'','San Juan',1,1);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (23,'','San Luis',1,1);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (24,'','Santa Cruz',1,1);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (25,'','Santa Fe',1,1);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (26,'','Santiago del Estero',1,1);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (27,'','Tierra del Fuego',1,1);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (28,'','Tucumán',1,1);

INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (29,'','Ciudad de Buenos Aires',4,1);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (30,'','La Plata',2,2);

INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (31,' ','Alberti ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (32,' ','Almirante brown ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (33,' ','Arrecifes(bartolome mitre) ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (34,' ','Avellaneda ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (35,' ','Azul ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (36,' ','Bahia blanca ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (37,' ','Balcarce ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (38,' ','Baradero ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (39,' ','Berazategui ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (40,' ','Bolivar ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (41,' ','Bragado ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (42,' ','Campana ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (43,' ','Cañuelas ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (44,' ','Capitan sarmiento ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (45,' ','Carlos casares ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (46,' ','Castelli ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (47,' ','Chascomus ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (48,' ','Chivilcoy ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (49,' ','Colon ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (50,' ','Coronel pringles ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (51,' ','Coronel rosales ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (52,' ','Coronel suarez ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (53,' ','Daireaux ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (54,' ','De la costa  ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (55,' ','Ensenada ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (56,' ','Escobar ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (57,' ','Esteban echeverria ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (58,' ','Exaltacion de la cruz ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (59,' ','Ezeiza ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (60,' ','Florencio varela ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (61,' ','General belegrano ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (62,' ','General lamadrid ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (63,' ','General madariaga ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (64,' ','General pinto ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (65,' ','General pueyrredon ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (66,' ','General rodriguez ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (67,' ','General san martin ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (68,' ','General viamonte ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (69,' ','Hipolito  yrigoyen ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (70,' ','Huanguelen ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (71,' ','Hurlingham ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (72,' ','Ituzaingo ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (73,' ','Jose c. paz ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (74,' ','Junin ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (75,' ','La matanza ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (76,' ','La plata ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (77,' ','Laprida ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (78,' ','Lanus ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (79,' ','Las flores ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (80,' ','Leandro n. alem ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (81,' ','Lincoln ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (82,' ','Lobos ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (83,' ','Lomas de zamora ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (84,' ','Lujan ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (85,' ','Malvinas argentinas ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (86,' ','Carlos paz ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (87,' ','Mercedes ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (88,' ','Merlo ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (89,' ','Moreno ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (90,' ','Moron ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (91,' ','Necochea ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (92,' ','Nueve de julio ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (93,' ','Olavarria ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (94,' ','Pehuajó ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (95,' ','Pergamino ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (96,' ','Pilar ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (97,' ','Pinamar ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (98,' ','Puán ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (99,' ','Quilmes ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (100,' ','Ramallo ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (101,' ','Rauch ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (102,' ','Rojas ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (103,' ','Saladillo ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (104,' ','San fernando ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (105,' ','San isidro ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (106,' ','San miguel ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (107,' ','San nicolas ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (108,' ','Suipacha ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (109,' ','Tandil ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (110,' ','Tigre ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (111,' ','Trenque lauquen ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (112,' ','Tres arroyos ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (113,' ','Tres de febrero ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (114,' ','Veinticinco de mayo ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (115,' ','Vicente lopez ',2,2);
INSERT INTO AreaGeografica (idAreaGeografica,descripcion,nombre,tipoAreaGeografica,idAreaGeograficaSuperior) VALUES (116,' ','Zarate ',2,2);


SET FOREIGN_KEY_CHECKS = 1;
