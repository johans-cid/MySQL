-- comentario de 1 linea
/**
Comentario de multiples lineas
**/
-- DDl es un acronimo de Data Definition Language
CREATE DATABASE IF NOT EXISTS ventas;
USE ventas;

--EMPRESA, CLIENTE, PRODUCTO, VENTA, DIRECCION, STOCK

--El comadno SQL para crear una tabla es CREATE TABLE nombre_tabla()

CREATE TABLE IF NOT EXISTS direcciones(
    -- Dentro de la tabla definimos campos, tipos de datos y 
    -- restricciones (Obligatoriedad de datos, claves primarias y foraneas)
    id INTEGER NOT NULL, 
    comuna VARCHAR(20) NOT NULL,
    calle VARCHAR(50) NULL,
    numero VARCHAR(10) NULL DEFAULT "s/n",
    departamento VARCHAR(10) NULL,

    CONSTRAINT pk_direcciones PRIMARY KEY (id)
);
CREATE TABLE IF NOT EXISTS empresas(
    id INTEGER NOT NULL AUTO_INCREMENT,
    razon_social VARCHAR(100) NOT NULL,
    rut VARCHAR(12) NOT NULL UNIQUE,
    giro_comercial VARCHAR(255) NOT NULL,
    id_direcciones INTEGER NULL,
    telefono_contacto VARCHAR(15) NULL,
    correo_contacto VARCHAR(255) NULL,
   
    CONSTRAINT pk_empresas PRIMARY KEY (id),
    CONSTRAINT fk_empresas_direcciones FOREIGN KEY (id_direcciones) REFERENCES direcciones(id)
);