CREATE TABLE `Libros` (
  `ISBM` varchar(255) PRIMARY KEY,
  `Titulo` varchar(50),
  `Author` varchar(50),
  `Fecha_Publicacion` date,
  `Precio` decimal(7,2),
  `ID_Editorial` int NOT NULL,
  `ID_Categoria` int NOT NULL
);

CREATE TABLE `Venta` (
  `ID_Venta` int PRIMARY KEY,
  `Metodo_de_pago` varchar(255),
  `monto` decimal(7,2),
  `ISBM` int,
  `ID_Cliente` int,
  `ID_Libro` varchar(255)
);

CREATE TABLE `Cliente` (
  `ID_Cliente` int PRIMARY KEY,
  `Nombre` varchar(50),
  `Direccion` varchar(50),
  `email` varchar(50),
  `Telefono` varchar(50)
);

CREATE TABLE `Categoria` (
  `ID_Categoria` int PRIMARY KEY,
  `Nombre_Categoria` varchar(50)
);

CREATE TABLE `Editorial` (
  `ID_Editorial` int PRIMARY KEY,
  `Nombre_Editorial` varchar(50)
);

ALTER TABLE `Libros` ADD FOREIGN KEY (`ID_Editorial`) REFERENCES `Editorial` (`ID_Editorial`);

ALTER TABLE `Libros` ADD FOREIGN KEY (`ID_Categoria`) REFERENCES `Categoria` (`ID_Categoria`);

ALTER TABLE `Libros` ADD FOREIGN KEY (`ISBM`) REFERENCES `Venta` (`ID_Libro`);

ALTER TABLE `Venta` ADD FOREIGN KEY (`ID_Cliente`) REFERENCES `Cliente` (`ID_Cliente`);
