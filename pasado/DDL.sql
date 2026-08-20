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
    id_direccion INTEGER NOT NULL AUTO_INCREMENT,
    comuna VARCHAR(20) NOT NULL,
    calle VARCHAR(50) NULL,
    numero VARCHAR(10) NULL DEFAULT 's/n',
    departamento VARCHAR(10) NULL,

    CONSTRAINT pk_direcciones PRIMARY KEY (id_direccion)
);

CREATE TABLE IF NOT EXISTS empresas(
    id_empresas INTEGER NOT NULL AUTO_INCREMENT,
    razon_social VARCHAR(100) NOT NULL,
    rut VARCHAR(12) NULL UNIQUE,
    giro_comercial VARCHAR(255) NOT NULL,
    id_direcciones INTEGER NULL,
    telefono_contacto VARCHAR(15) NOT NULL,
    correo_contacto VARCHAR(255) NOT NULL,

    CONSTRAINT pk_empresas PRIMARY KEY (id_empresas),
    CONSTRAINT fk__dempresasirecciones FOREIGN KEY (id_direcciones) REFERENCES direcciones(id_direccion)

);

ALTER TABLE empresas CHANGE id_empresas id_empresa INTEGER NOT NULL AUTO_INCREMENT;
ALTER TABLE empresas CHANGE rut rut VARCHAR(12) NOT NULL UNIQUE;
ALTER TABLE empresas CHANGE telefono_contacto telefono_contacto VARCHAR(15) NULL;
ALTER TABLE empresas CHANGE correo_contacto correo_contacto VARCHAR(255) NULL;



