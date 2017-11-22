/* Ejemplo para probar el tipo de dato DECIMAL*/
drop database if exists Banco;
create database Banco;
use Banco;

/* Si el campo saldo se define como decimal(10,2) entonces el valor que */
/* puede almacenar es de 10 dígitos significativos, de estos 10 dígitos 2 de ellos son decimales. */

CREATE TABLE IF NOT EXISTS Cuenta (
id int(11) NOT NULL AUTO_INCREMENT,
CBU varchar(256) NOT NULL,
saldo decimal(10,2) NOT NULL,
CONSTRAINT id_pk PRIMARY KEY (id)
);

INSERT INTO Cuenta (CBU,saldo) VALUES ('00010001',100);
INSERT INTO Cuenta (CBU,saldo) VALUES ('00010002',100.00);
INSERT INTO Cuenta (CBU,saldo) VALUES ('00010003',100.25);
INSERT INTO Cuenta (CBU,saldo) VALUES ('00010004',100.803); /* Guarda 100.8 */
INSERT INTO Cuenta (CBU,saldo) VALUES ('00010005',100.804); /* Guarda 100.8 */
INSERT INTO Cuenta (CBU,saldo) VALUES ('00010006',100.805); /* Guarda 100.81 */
INSERT INTO Cuenta (CBU,saldo) VALUES ('00010007',100.806); /* Guarda 100.81 */
INSERT INTO Cuenta (CBU,saldo) VALUES ('00010008',5000.99); /* Guarda 5000.99 */
INSERT INTO Cuenta (CBU,saldo) VALUES ('00010009',1000000); 

