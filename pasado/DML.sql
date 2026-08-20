-- Data Mnaging Language

/*
Usamos este lenguaje para insertar y modificar los datos
*/
-- INSERT INTO es usado para datos en una tabla especifica
-- Junto con el nombre de la tabla, sera bueno agregar los nombres de las columnas en las que se insertaran
-- VALUES son los datos que se insertaran en las columnas especificadas


INSERT INTO tipo_cliente(tipo_cliente,descripcion_tipo_cliente)
VALUES 
("Normal","Cliente regular de la tienda"),
("Premium","Clientes con compras superiores a $100.000 mensual"),
("VIP","Clientes con compras superiores a $500.000 mensual");

INSERT INTO tipo_producto(tipo_producto, descricion_tipo_producto)
VALUES
("Electrónicos","televisores, teléfonos, computadores"),
("Alimentos","frutas, lácteos, enlatados"),
("Ropa","poleras, pantalones, zapatos"),
("Muebles","sillas, mesas, estantes"),
("Medicamentos","analgésicos, antibióticos, vitaminas"),
("Herramientas","martillos, taladros, llaves"),
("Juguetes","muñecas, autos a escala, juegos de mesa"),
("Libros","novelas, textos escolares, enciclopedias"),
("Cosméticos","cremas, perfumes, maquillaje"),
("Vehículos","autos, motos, bicicletas");