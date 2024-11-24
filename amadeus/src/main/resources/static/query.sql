-- SE DEBEN TOMAR ESTOS QUERY Y SE DEBEN EJECUTAR EN POSTGRES PARA LLENAR LAS TABLAS MAESTRAS Y ASOCIAR LOS DESTINOS CON LAS PREFERENCIAS

-- CONTINENTES
INSERT INTO continentes (nombre, descripcion)
values ('Asia', 'Continente Asiatico, por defecto');

INSERT INTO continentes (nombre, descripcion)
values ('America', 'Continente Americano');

INSERT INTO continentes (nombre, descripcion)
values ('Europa', 'Continente Europeo');


-- DESTINOS
INSERT INTO destinos (nombre, continentes_id, created_at)
VALUES ('Playa del Carmen, Mexico', 2, CURRENT_TIMESTAMP);

INSERT INTO destinos (nombre, continentes_id, created_at)
VALUES ('Santorini, Grecia', 3, CURRENT_TIMESTAMP);

INSERT INTO destinos (nombre, continentes_id, created_at)
VALUES ('Cartagena, Colombia', 2, CURRENT_TIMESTAMP);

INSERT INTO destinos (nombre, continentes_id, created_at)
VALUES ('Barcelona, España', 3, CURRENT_TIMESTAMP);

INSERT INTO destinos (nombre, continentes_id, created_at)
VALUES ('Rio de Janeiro, Brasil', 2, CURRENT_TIMESTAMP);

INSERT INTO destinos (nombre, continentes_id, created_at)
VALUES ('Lisboa, Portugal', 3, CURRENT_TIMESTAMP);

INSERT INTO destinos (nombre, continentes_id, created_at)
VALUES ('Bariloche, Argentina', 2, CURRENT_TIMESTAMP);

INSERT INTO destinos (nombre, continentes_id, created_at)
VALUES ('Interlaken, Suiza', 3, CURRENT_TIMESTAMP);

INSERT INTO destinos (nombre, continentes_id, created_at)
VALUES ('Cusco, Perú', 2, CURRENT_TIMESTAMP);

INSERT INTO destinos (nombre, continentes_id, created_at)
VALUES ('Granada, España', 3, CURRENT_TIMESTAMP);

INSERT INTO destinos (nombre, continentes_id, created_at)
VALUES ('Banff, Canadá', 2, CURRENT_TIMESTAMP);

INSERT INTO destinos (nombre, continentes_id, created_at)
VALUES ('Zermatt, Suiza', 3, CURRENT_TIMESTAMP);

INSERT INTO destinos (nombre, continentes_id, created_at)
VALUES ('Nueva York, EE.UU', 2, CURRENT_TIMESTAMP);

INSERT INTO destinos (nombre, continentes_id, created_at)
VALUES ('París, Francia', 3, CURRENT_TIMESTAMP);

INSERT INTO destinos (nombre, continentes_id, created_at)
VALUES ('Miami, EE.UU', 2, CURRENT_TIMESTAMP);

INSERT INTO destinos (nombre, continentes_id, created_at)
VALUES ('Viena, Austria', 3, CURRENT_TIMESTAMP);

INSERT INTO destinos (nombre, continentes_id, created_at)
VALUES ('Toronto, Canadá', 2, CURRENT_TIMESTAMP);

INSERT INTO destinos (nombre, continentes_id, created_at)
VALUES ('Berlín, Alemania', 3, CURRENT_TIMESTAMP);

INSERT INTO destinos (nombre, continentes_id, created_at)
VALUES ('Tulum, México', 2, CURRENT_TIMESTAMP);

INSERT INTO destinos (nombre, continentes_id, created_at)
VALUES ('Ibiza, España', 3, CURRENT_TIMESTAMP);

INSERT INTO destinos (nombre, continentes_id, created_at)
VALUES ('Ushuaia, Argentina', 2, CURRENT_TIMESTAMP);

INSERT INTO destinos (nombre, continentes_id, created_at)
VALUES ('Reykjavik, Islandia', 3, CURRENT_TIMESTAMP);

INSERT INTO destinos (nombre, continentes_id, created_at)
VALUES ('Punta Cana, República Dominicana', 2, CURRENT_TIMESTAMP);

INSERT INTO destinos (nombre, continentes_id, created_at)
VALUES ('Algarve, Portugal', 3, CURRENT_TIMESTAMP);

INSERT INTO destinos (nombre, continentes_id, created_at)
VALUES ('Chicago, EE.UU', 2, CURRENT_TIMESTAMP);

INSERT INTO destinos (nombre, continentes_id, created_at)
VALUES ('Londres, Reino Unido', 3, CURRENT_TIMESTAMP);

INSERT INTO destinos (nombre, continentes_id, created_at)
VALUES ('San Juan, Puerto Rico', 2, CURRENT_TIMESTAMP);

INSERT INTO destinos (nombre, continentes_id, created_at)
VALUES ('Niza, Francia', 3, CURRENT_TIMESTAMP);

INSERT INTO destinos (nombre, continentes_id, created_at)
VALUES ('Machu Picchu, Perú', 2, CURRENT_TIMESTAMP);

INSERT INTO destinos (nombre, continentes_id, created_at)
VALUES ('Chamonix, Francia', 3, CURRENT_TIMESTAMP);

INSERT INTO destinos (nombre, continentes_id, created_at)
VALUES ('Los Ángeles, EE.UU', 2, CURRENT_TIMESTAMP);

INSERT INTO destinos (nombre, continentes_id, created_at)
VALUES ('Roma, Italia', 3, CURRENT_TIMESTAMP);

INSERT INTO destinos (nombre, continentes_id, created_at)
VALUES ('Honolulu, Hawái', 2, CURRENT_TIMESTAMP);

INSERT INTO destinos (nombre, continentes_id, created_at)
VALUES ('Malta', 3, CURRENT_TIMESTAMP);

INSERT INTO destinos (nombre, continentes_id, created_at)
VALUES ('Aspen, EE.UU', 2, CURRENT_TIMESTAMP);

INSERT INTO destinos (nombre, continentes_id, created_at)
VALUES ('Innsbruck, Austria', 3, CURRENT_TIMESTAMP);

INSERT INTO destinos (nombre, continentes_id, created_at)
VALUES ('Ciudad de México, México', 2, CURRENT_TIMESTAMP);

INSERT INTO destinos (nombre, continentes_id, created_at)
VALUES ('Madrid, España', 3, CURRENT_TIMESTAMP);


-- PREFERENCIAS
INSERT INTO preferencias(entorno, clima, actividad, alojamiento, tiempo_viaje, rango_edad)
VALUES('PLAYA', 'CALUROSO', 'RELAX_Y_BIENESTAR', 'HOTEL_LUJO', 'UNA_Y_DOS_SEMANAS', 'MENOR_QUE_TREINTA');

INSERT INTO preferencias(entorno, clima, actividad, alojamiento, tiempo_viaje, rango_edad)
VALUES('PLAYA', 'CALUROSO', 'CULTURA_Y_MUSEOS', 'AIRBNB', 'MENOR_UNA_SEMANA', 'MENOR_QUE_TREINTA');

INSERT INTO preferencias(entorno, clima, actividad, alojamiento, tiempo_viaje, rango_edad)
VALUES('PLAYA', 'TEMPLADO', 'CULTURA_Y_MUSEOS', 'HOTEL_LUJO', 'UNA_Y_DOS_SEMANAS', 'TREINTA_Y_CINCUENTA');

INSERT INTO preferencias(entorno, clima, actividad, alojamiento, tiempo_viaje, rango_edad)
VALUES('MONTANA', 'FRIO', 'DEPORTES_Y_AVENTURAS', 'HOSTAL_ALBERGUE', 'UNA_Y_DOS_SEMANAS', 'MENOR_QUE_TREINTA');

INSERT INTO preferencias(entorno, clima, actividad, alojamiento, tiempo_viaje, rango_edad)
VALUES('MONTANA', 'TEMPLADO', 'CULTURA_Y_MUSEOS', 'AIRBNB', 'UNA_Y_DOS_SEMANAS', 'MAYOR_QUE_CINCUENTA');

INSERT INTO preferencias(entorno, clima, actividad, alojamiento, tiempo_viaje, rango_edad)
VALUES('MONTANA', 'FRIO', 'DEPORTES_Y_AVENTURAS', 'HOTEL_LUJO', 'UNA_Y_DOS_SEMANAS', 'TREINTA_Y_CINCUENTA');

INSERT INTO preferencias(entorno, clima, actividad, alojamiento, tiempo_viaje, rango_edad)
VALUES('CIUDAD', 'TEMPLADO', 'CULTURA_Y_MUSEOS', 'HOTEL_LUJO', 'UNA_Y_DOS_SEMANAS', 'MAYOR_QUE_CINCUENTA');

INSERT INTO preferencias(entorno, clima, actividad, alojamiento, tiempo_viaje, rango_edad)
VALUES('CIUDAD', 'TEMPLADO', 'RELAX_Y_BIENESTAR', 'AIRBNB', 'MENOR_UNA_SEMANA', 'MENOR_QUE_TREINTA');

INSERT INTO preferencias(entorno, clima, actividad, alojamiento, tiempo_viaje, rango_edad)
VALUES('CIUDAD', 'FRIO', 'CULTURA_Y_MUSEOS', 'HOTEL_LUJO', 'UNA_Y_DOS_SEMANAS', 'TREINTA_Y_CINCUENTA');

INSERT INTO preferencias(entorno, clima, actividad, alojamiento, tiempo_viaje, rango_edad)
VALUES('PLAYA', 'CALUROSO', 'DEPORTES_Y_AVENTURAS', 'HOSTAL_ALBERGUE', 'UNA_Y_DOS_SEMANAS', 'MENOR_QUE_TREINTA');

INSERT INTO preferencias(entorno, clima, actividad, alojamiento, tiempo_viaje, rango_edad)
VALUES('MONTANA', 'FRIO', 'CULTURA_Y_MUSEOS', 'AIRBNB', 'UNA_Y_DOS_SEMANAS', 'MAYOR_QUE_CINCUENTA');

INSERT INTO preferencias(entorno, clima, actividad, alojamiento, tiempo_viaje, rango_edad)
VALUES('PLAYA', 'TEMPLADO', 'RELAX_Y_BIENESTAR', 'AIRBNB', 'MAYOR_DOS_SEMANAS', 'MAYOR_QUE_CINCUENTA');

INSERT INTO preferencias(entorno, clima, actividad, alojamiento, tiempo_viaje, rango_edad)
VALUES('CIUDAD', 'TEMPLADO', 'DEPORTES_Y_AVENTURAS', 'HOTEL_LUJO', 'MENOR_UNA_SEMANA', 'TREINTA_Y_CINCUENTA');

INSERT INTO preferencias(entorno, clima, actividad, alojamiento, tiempo_viaje, rango_edad)
VALUES('PLAYA', 'TEMPLADO', 'CULTURA_Y_MUSEOS', 'HOSTAL_ALBERGUE', 'UNA_Y_DOS_SEMANAS', 'MENOR_QUE_TREINTA');

INSERT INTO preferencias(entorno, clima, actividad, alojamiento, tiempo_viaje, rango_edad)
VALUES('MONTANA', 'TEMPLADO', 'DEPORTES_Y_AVENTURAS', 'AIRBNB', 'MAYOR_DOS_SEMANAS', 'MENOR_QUE_TREINTA');

INSERT INTO preferencias(entorno, clima, actividad, alojamiento, tiempo_viaje, rango_edad)
VALUES('CIUDAD', 'CALUROSO', 'CULTURA_Y_MUSEOS', 'HOTEL_LUJO', 'UNA_Y_DOS_SEMANAS', 'MAYOR_QUE_CINCUENTA');

INSERT INTO preferencias(entorno, clima, actividad, alojamiento, tiempo_viaje, rango_edad)
VALUES('PLAYA', 'CALUROSO', 'CULTURA_Y_MUSEOS', 'HOTEL_LUJO', 'UNA_Y_DOS_SEMANAS', 'TREINTA_Y_CINCUENTA');

INSERT INTO preferencias(entorno, clima, actividad, alojamiento, tiempo_viaje, rango_edad)
VALUES('MONTANA', 'FRIO', 'RELAX_Y_BIENESTAR', 'AIRBNB', 'UNA_Y_DOS_SEMANAS', 'MAYOR_QUE_CINCUENTA');

INSERT INTO preferencias(entorno, clima, actividad, alojamiento, tiempo_viaje, rango_edad)
VALUES('CIUDAD', 'TEMPLADO', 'CULTURA_Y_MUSEOS', 'HOSTAL_ALBERGUE', 'UNA_Y_DOS_SEMANAS', 'TREINTA_Y_CINCUENTA');


-- PREFERENCIAS-DESTINOS

INSERT INTO destinos_preferencias (destinos_id, preferencias_id)
VALUES (1, 1);

INSERT INTO destinos_preferencias (destinos_id, preferencias_id)
VALUES (2, 1);

INSERT INTO destinos_preferencias (destinos_id, preferencias_id)
VALUES (3, 2);

INSERT INTO destinos_preferencias (destinos_id, preferencias_id)
VALUES (4, 2);

INSERT INTO destinos_preferencias (destinos_id, preferencias_id)
VALUES (5, 3);

INSERT INTO destinos_preferencias (destinos_id, preferencias_id)
VALUES (6, 3);

INSERT INTO destinos_preferencias (destinos_id, preferencias_id)
VALUES (7, 4);

INSERT INTO destinos_preferencias (destinos_id, preferencias_id)
VALUES (8, 4);

INSERT INTO destinos_preferencias (destinos_id, preferencias_id)
VALUES (9, 5);

INSERT INTO destinos_preferencias (destinos_id, preferencias_id)
VALUES (10, 5);

INSERT INTO destinos_preferencias (destinos_id, preferencias_id)
VALUES (11, 6);

INSERT INTO destinos_preferencias (destinos_id, preferencias_id)
VALUES (12, 6);

INSERT INTO destinos_preferencias (destinos_id, preferencias_id)
VALUES (13, 7);

INSERT INTO destinos_preferencias (destinos_id, preferencias_id)
VALUES (14, 7);

INSERT INTO destinos_preferencias (destinos_id, preferencias_id)
VALUES (15, 8);

INSERT INTO destinos_preferencias (destinos_id, preferencias_id)
VALUES (16, 8);

INSERT INTO destinos_preferencias (destinos_id, preferencias_id)
VALUES (17, 9);

INSERT INTO destinos_preferencias (destinos_id, preferencias_id)
VALUES (18, 9);

INSERT INTO destinos_preferencias (destinos_id, preferencias_id)
VALUES (19, 10);

INSERT INTO destinos_preferencias (destinos_id, preferencias_id)
VALUES (20, 10);

INSERT INTO destinos_preferencias (destinos_id, preferencias_id)
VALUES (21, 11);

INSERT INTO destinos_preferencias (destinos_id, preferencias_id)
VALUES (22, 11);

INSERT INTO destinos_preferencias (destinos_id, preferencias_id)
VALUES (23, 12);

INSERT INTO destinos_preferencias (destinos_id, preferencias_id)
VALUES (24, 12);

INSERT INTO destinos_preferencias (destinos_id, preferencias_id)
VALUES (25, 13);

INSERT INTO destinos_preferencias (destinos_id, preferencias_id)
VALUES (26, 13);

INSERT INTO destinos_preferencias (destinos_id, preferencias_id)
VALUES (27, 14);

INSERT INTO destinos_preferencias (destinos_id, preferencias_id)
VALUES (28, 14);

INSERT INTO destinos_preferencias (destinos_id, preferencias_id)
VALUES (29, 15);

INSERT INTO destinos_preferencias (destinos_id, preferencias_id)
VALUES (30, 15);

INSERT INTO destinos_preferencias (destinos_id, preferencias_id)
VALUES (31, 16);

INSERT INTO destinos_preferencias (destinos_id, preferencias_id)
VALUES (32, 16);

INSERT INTO destinos_preferencias (destinos_id, preferencias_id)
VALUES (33, 17);

INSERT INTO destinos_preferencias (destinos_id, preferencias_id)
VALUES (34, 17);

INSERT INTO destinos_preferencias (destinos_id, preferencias_id)
VALUES (35, 18);

INSERT INTO destinos_preferencias (destinos_id, preferencias_id)
VALUES (36, 18);

INSERT INTO destinos_preferencias (destinos_id, preferencias_id)
VALUES (37, 19);

INSERT INTO destinos_preferencias (destinos_id, preferencias_id)
VALUES (38, 19);
