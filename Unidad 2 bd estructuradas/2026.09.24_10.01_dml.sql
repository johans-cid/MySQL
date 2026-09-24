INSERT INTO REGIONES (NOMREG) 
VALUES ('Araucania'),('Tarapaca')

SELECT * FROM REGIONES;

INSERT INTO carreras (NOMCAR, VALORANUAL)
 VALUES ('Ing Informatica',3600000),('Ing Mecanica',3400000)

INSERT INTO ciudades (NOMCIU, FK_ID_REGIONES) 
VALUES ('Temuco', 1), ('Iquique', 2)

INSERT INTO estudiantes (RUT, NOM, APEP, APEM, DIRECC, FK_ID_CARRERAS, FK_ID_CIUDADES)
VALUES (223115519,'Johans','Cid','Cea','Los Radales',1,1),
(155783489,'Javier','Aguayo','Gatica','Faja 22',2,1)
