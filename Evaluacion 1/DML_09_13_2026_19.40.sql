-- regiones
INSERT INTO regiones (IDREG, NOMREG) VALUES (NEXTVAL(seq_regiones), 'Araucanía');
INSERT INTO regiones (IDREG, NOMREG) VALUES (NEXTVAL(seq_regiones), 'Metropolitana');

-- formapago
INSERT INTO formapago (IDFORMA, DETALLE) VALUES (NEXTVAL(seq_formapago), 'Efectivo');
INSERT INTO formapago (IDFORMA, DETALLE) VALUES (NEXTVAL(seq_formapago), 'Tarjeta débito');

-- servicios
INSERT INTO servicios (IDSER, NOMSER, VALORMES) VALUES (NEXTVAL(seq_servicios), 'Internet Hogar', 25000);
INSERT INTO servicios (IDSER, NOMSER, VALORMES) VALUES (NEXTVAL(seq_servicios), 'Telefonía Móvil', 15000);

-- ciudades (FK a regiones)
INSERT INTO ciudades (IDCIU, NOMCIU, FKIDREG) VALUES (NEXTVAL(seq_ciudades), 'Temuco', 1);
INSERT INTO ciudades (IDCIU, NOMCIU, FKIDREG) VALUES (NEXTVAL(seq_ciudades), 'Santiago', 2);

-- tipocliente
INSERT INTO tipocliente (IDTIPO, DESCRIPCION) VALUES (NEXTVAL(seq_tipocliente), 'Particular');
INSERT INTO tipocliente (IDTIPO, DESCRIPCION) VALUES (NEXTVAL(seq_tipocliente), 'Empresa');

-- clientes (FK a ciudades y tipocliente)
INSERT INTO clientes (IDRUT, APEPAT, APEMAT, NOMBRES, DIRECC, FKIDCIU, FKIDTIPO) VALUES (NEXTVAL(seq_clientes), 'Muñoz', 'Rojas', 'Johans', 'Av. Alemania 123', 1, 1);
INSERT INTO clientes (IDRUT, APEPAT, APEMAT, NOMBRES, DIRECC, FKIDCIU, FKIDTIPO) VALUES (NEXTVAL(seq_clientes), 'Pérez', 'Soto', 'Camila', 'Los Aromos 456', 2, 2);

-- pagos (FK a clientes, formapago, servicios)
INSERT INTO pagos (IDPAGO, FECHA, TOTAL, FKIDRUT, FKIDFORMA, FKIDSER) VALUES (NEXTVAL(seq_pagos), '2026-08-05', 25000, 1, 1, 1);
INSERT INTO pagos (IDPAGO, FECHA, TOTAL, FKIDRUT, FKIDFORMA, FKIDSER) VALUES (NEXTVAL(seq_pagos), '2026-08-10', 15000, 2, 2, 2);

SELECT * FROM clientes;
SELECT * FROM pagos;

CREATE VIEW vista_clientes_ciudad AS
SELECT c.IDRUT, c.NOMBRES, c.APEPAT, ci.NOMCIU
FROM clientes c
JOIN ciudades ci ON c.FKIDCIU = ci.IDCIU; 

SELECT * FROM vista_clientes_ciudad;

CREATE VIEW vista_total_por_cliente AS
SELECT c.IDRUT, c.NOMBRES, c.APEPAT, SUM(p.TOTAL) AS TOTAL_PAGADO
FROM clientes c
JOIN pagos p ON c.IDRUT = p.FKIDRUT
GROUP BY c.IDRUT, c.NOMBRES, c.APEPAT;

SELECT * FROM vista_total_por_cliente;

CREATE INDEX idx_clientes_ciudad ON clientes(FKIDCIU);
SHOW INDEX FROM clientes;

CREATE INDEX idx_pagos_cliente ON pagos(FKIDRUT);
SHOW INDEX FROM pagos;