USE Clase2;

-- 1. regiones
INSERT INTO regiones (NOMREG) VALUES
('Araucanía'),
('Metropolitana');

-- 2. formapago
INSERT INTO formapago (DETALLE) VALUES
('Efectivo'),
('Tarjeta débito');

-- 3. servicios
INSERT INTO servicios (NOMSER, VALORMES) VALUES
('Internet Hogar', 25000),
('Telefonía Móvil', 15000);

-- 4. ciudades (FK a regiones: IDREG 1 y 2)
INSERT INTO ciudades (NOMCIU, FKIDREG) VALUES
('Temuco', 1),
('Santiago', 2);

-- 5. clientes (FK a ciudades: IDCIU 1 y 2)
INSERT INTO clientes (APEPAT, APEMAT, NOMBRES, DIRECC, FKIDCIU) VALUES
('Muñoz', 'Rojas', 'Johans', 'Av. Alemania 123', 1),
('Pérez', 'Soto', 'Camila', 'Los Aromos 456', 2);

-- 6. pagos (FK a clientes, formapago, servicios: usando IDs 1 y 2)
INSERT INTO pagos (FECHA, TOTAL, FKIDRUT, FKIDFORMA, FKIDSER) VALUES
('2026-08-05', 25000, 1, 1, 1),
('2026-08-10', 15000, 2, 2, 2);

CREATE VIEW vista_ciudades_regiones AS 
SELECT 
	r.IDREG,
	r.NOMREG,
	ci.IDCIU,
	ci.NOMCIU,
	ci.FKIDREG
FROM regiones AS r
JOIN ciudades ci ON ci.FKIDREG = r.IDREG;

SELECT * FROM vista_ciudades_regiones;