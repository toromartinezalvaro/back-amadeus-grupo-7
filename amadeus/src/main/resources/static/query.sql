-- ESTE ARCHIVO CONTIENE LOS QUERY NECESARIOS PARA INGRESAR LOS PRIMEROS DATOS DE PRUEBA A LA DB, LOS DEMÁS SE AGREGARÁN DESDE CADA ENDPOINT

-- CONTINENTES
INSERT INTO continentes (nombre, descripcion)
values ('Asia', 'Continente Asiatico, por defecto');

INSERT INTO continentes (nombre, descripcion)
values ('America', 'Continente Americano');

INSERT INTO continentes (nombre, descripcion)
values ('Europa', 'Continente Europeo');

-- DESTINOS
INSERT INTO destinos (nombre, continentes_id, created_at)
VALUES ('Playa del Carmen, México', 2, CURRENT_TIMESTAMP);

INSERT INTO destinos (nombre, continentes_id, created_at)
VALUES ('Santorini, Grecia', 3, CURRENT_TIMESTAMP);

-- PREFERENCIAS
INSERT INTO preferencias(entorno, clima, actividad, alojamiento, tiempo_viaje, rango_edad)
VALUES('PLAYA', 'CALUROSO', 'RELAX_Y_BIENESTAR', 'HOTEL_LUJO', 'UNA_Y_DOS_SEMANAS', 'MENOR_QUE_TREINTA');


-- PREFERENCIAS-DESTINOS

INSERT INTO destinos_preferencias (destinos_id, preferencias_id)
VALUES (1, 1);

INSERT INTO destinos_preferencias (destinos_id, preferencias_id)
VALUES (2, 1);

