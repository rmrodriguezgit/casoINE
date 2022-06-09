DROP databse IF EXISTS `ine`;
CREATE DATABASE `ine`;

USE ine;

DROP TABLE IF EXISTS `credenciales`;
CREATE TABLE `credenciales` (
  `id` int AUTO_INCREMENT NOT NULL PRIMARY KEY,
  `nombres` varchar(50) NOT NULL,
  `apellidoP` varchar(50) NOT NULL,
  `apellidoM` varchar(50) NOT NULL,
  `calle` varchar(100) NOT NULL,
  `colonia` varchar(100) NOT NULL,
  `cp` int NOT NULL,
  `id_localidad` int NOT NULL FOREIGN KEY,
  `aRegistro` year NOT NULL,
  `vigencia` int NOT NULL,
  `seccion` varchar(4) NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Tabla de Credenciales INE';

INSERT INTO `credenciales` (`nombres`,`apellidoP`,`apellidoM`,`calle`,`colonia`,`cp`,`id_localidad`,`aRegistro`,
`vigencia`,`seccion`)
VALUES ('Rubén Miguel','Rodríguez','Rangel','Lago de Chapala 403','Col. industrial',37320,348,'2020','2025','1519');

use ine;
select * from credenciales;
