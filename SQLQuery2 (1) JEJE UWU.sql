USE VentaArticulosPROA2023

CREATE TABLE Detalle_Factura (
	id_detallefactura int IDENTITY (1,1),
	cod_articulo int,
	cantidad int,
	CONSTRAINT PK_idfactura PRIMARY KEY (id_detallefactura),
	CONSTRAINT FK_articulo FOREIGN KEY (cod_articulo) REFERENCES Articulos(codigo)
)

INSERT INTO Detalle_Factura (cod_articulo, cantidad) VALUES (2,3)
INSERT INTO Detalle_Factura (cod_articulo, cantidad) VALUES (25,1)
INSERT INTO Detalle_Factura (cod_articulo, cantidad) VALUES (12,5)
INSERT INTO Detalle_Factura (cod_articulo, cantidad) VALUES (1,3)
INSERT INTO Detalle_Factura (cod_articulo, cantidad) VALUES (5,4)
INSERT INTO Detalle_Factura (cod_articulo, cantidad) VALUES (7,2)
INSERT INTO Detalle_Factura (cod_articulo, cantidad) VALUES (6,1)
INSERT INTO Detalle_Factura (cod_articulo, cantidad) VALUES (20,2)
INSERT INTO Detalle_Factura (cod_articulo, cantidad) VALUES (25,5)
INSERT INTO Detalle_Factura (cod_articulo, cantidad) VALUES (14,4)
INSERT INTO Detalle_Factura (cod_articulo, cantidad) VALUES (32,10)
INSERT INTO Detalle_Factura (cod_articulo, cantidad) VALUES (4,9)
INSERT INTO Detalle_Factura (cod_articulo, cantidad) VALUES (17,1)
INSERT INTO Detalle_Factura (cod_articulo, cantidad) VALUES (19,5)
INSERT INTO Detalle_Factura (cod_articulo, cantidad) VALUES (22,1)
INSERT INTO Detalle_Factura (cod_articulo, cantidad) VALUES (21,1)
INSERT INTO Detalle_Factura (cod_articulo, cantidad) VALUES (14,1)
INSERT INTO Detalle_Factura (cod_articulo, cantidad) VALUES (32,5)
INSERT INTO Detalle_Factura (cod_articulo, cantidad) VALUES (4,3)
INSERT INTO Detalle_Factura (cod_articulo, cantidad) VALUES (28,3)

1) Obtener todos los datos de la tabla Detalles Factura.
SELECT * FROM Detalle_Factura, Articulos where Detalle_Factura.cod_articulo = Articulos.codigo

2) Obtener aquellos articulos que se hayan vendido menos de 10 veces.
SELECT cod_articulo, SUM(cantidad) as total_ventas
FROM Detalle_Factura
GROUP BY cod_articulo
HAVING SUM(cantidad) < 10;

3) Contar cuantas ventas hubo.
SELECT SUM(cantidad) as total_cantidad_vendida FROM Detalle_Factura;

 4 Select SUM(cod_articulo) 