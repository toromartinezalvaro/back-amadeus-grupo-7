-- SE DEBEN TOMAR ESTOS QUERY Y SE DEBEN EJECUTAR EN POSTGRES PARA LLENAR LAS TABLAS MAESTRAS Y ASOCIAR LOS DESTINOS CON LAS PREFERENCIAS

-- CONTINENTES
INSERT INTO continentes (nombre, descripcion)
values ('Asia', 'Continente Asiatico, por defecto');

INSERT INTO continentes (nombre, descripcion)
values ('America', 'Continente Americano');

INSERT INTO continentes (nombre, descripcion)
values ('Europa', 'Continente Europeo');


-- DESTINOS
INSERT INTO destinos (nombre, continentes_id, created_at, pais, idioma, lugar_imperdible, comida_tipica, img_url)
VALUES ('Playa del Carmen, Mexico', 2, CURRENT_TIMESTAMP, 'México', 'español' 'Chichén-Itzá', 'Salbutes', 'https://encrypted-tbn0.gstatic.com/licensed-image?q=tbn:ANd9GcSsEgGDtay7yynbtJCdRRvuLW0dWTzG3_BDf36Vo0flnkq7E_BJpr3-EclLGqYfPhIn-REwJqGs0lcfgpU6M34pYibADP7HTCHvX9jwZA');

INSERT INTO destinos (nombre, continentes_id, created_at, pais, idioma, lugar_imperdible, comida_tipica, img_url)
VALUES ('Santorini, Grecia', 3, CURRENT_TIMESTAMP, 'Grecia', 'Griego', 'Oia', 'Moussaka', 'https://upload.wikimedia.org/wikipedia/commons/3/3b/Santorini_%28GR%29%2C_Oia%2C_view_from_the_castle_%28by_Pudelek%29.jpg');

INSERT INTO destinos (nombre, continentes_id, created_at, pais, idioma, lugar_imperdible, comida_tipica, img_url)
VALUES ('Cartagena, Colombia', 2, CURRENT_TIMESTAMP, 'Colombia', 'Español', 'Ciudad Amurallada', 'Bandeja Paisa', 'https://upload.wikimedia.org/wikipedia/commons/1/1e/Cartagena_Colombia.jpg');

INSERT INTO destinos (nombre, continentes_id, created_at, pais, idioma, lugar_imperdible, comida_tipica, img_url)
VALUES ('Barcelona, España', 3, CURRENT_TIMESTAMP, 'España', 'Español', 'Sagrada Familia', 'Paella', 'https://upload.wikimedia.org/wikipedia/commons/4/4d/Barcelona_-_Spain_-_La_Sagrada_Familia.jpg');

INSERT INTO destinos (nombre, continentes_id, created_at, pais, idioma, lugar_imperdible, comida_tipica, img_url)
VALUES ('Rio de Janeiro, Brasil', 2, CURRENT_TIMESTAMP, 'Brasil', 'Portugués', 'Cristo Redentor', 'Feijoada', 'https://upload.wikimedia.org/wikipedia/commons/8/8e/Rio_de_Janeiro_-_Brasil_-_2015_-_Christusstatue.jpg');

INSERT INTO destinos (nombre, continentes_id, created_at, pais, idioma, lugar_imperdible, comida_tipica, img_url)
VALUES ('Lisboa, Portugal', 3, CURRENT_TIMESTAMP, 'Portugal', 'Portugués', 'Torre de Belém', 'Bacalhau à Brás', 'https://upload.wikimedia.org/wikipedia/commons/1/1d/Lisboa_-_Portugal_%282%29.jpg');

INSERT INTO destinos (nombre, continentes_id, created_at, pais, idioma, lugar_imperdible, comida_tipica, img_url)
VALUES ('Bariloche, Argentina', 2, CURRENT_TIMESTAMP, 'Argentina', 'Español', 'Cerro Catedral', 'Asado', 'https://upload.wikimedia.org/wikipedia/commons/4/4b/Bariloche_-_Argentina.jpg');

INSERT INTO destinos (nombre, continentes_id, created_at, pais, idioma, lugar_imperdible, comida_tipica, img_url)
VALUES ('Interlaken, Suiza', 3, CURRENT_TIMESTAMP, 'Suiza', 'Alemán', 'Jungfraujoch', 'Fondue', 'https://upload.wikimedia.org/wikipedia/commons/4/4b/Interlaken_-_Switzerland.jpg');

INSERT INTO destinos (nombre, continentes_id, created_at, pais, idioma, lugar_imperdible, comida_tipica, img_url)
VALUES ('Cusco, Perú', 2, CURRENT_TIMESTAMP, 'Perú', 'Español', 'Machu Picchu', 'Ceviche', 'https://upload.wikimedia.org/wikipedia/commons/1/1b/Cusco_Peru.jpg');

INSERT INTO destinos (nombre, continentes_id, created_at, pais, idioma, lugar_imperdible, comida_tipica, img_url)
VALUES ('Granada, España', 3, CURRENT_TIMESTAMP, 'España', 'Español', 'Alhambra', 'Tortilla Española', 'https://upload.wikimedia.org/wikipedia/commons/1/1b/Granada_-_Spain_%282%29.jpg');

INSERT INTO destinos (nombre, continentes_id, created_at, pais, idioma, lugar_imperdible, comida_tipica, img_url)
VALUES ('Banff, Canadá', 2, CURRENT_TIMESTAMP, 'Canadá', 'Inglés', 'Lago Moraine', 'Poutine', 'https://upload.wikimedia.org/wikipedia/commons/1/1b/Banff_National_Park.jpg');

INSERT INTO destinos (nombre, continentes_id, created_at, pais, idioma, lugar_imperdible, comida_tipica, img_url)
VALUES ('Zermatt, Suiza', 3, CURRENT_TIMESTAMP, 'Suiza', 'Alemán', 'Matterhorn', 'Rösti', 'https://upload.wikimedia.org/wikipedia/commons/1/1b/Zermatt_-_Switzerland_%282%29.jpg');

INSERT INTO destinos (nombre, continentes_id, created_at, pais, idioma, lugar_imperdible, comida_tipica, img_url)
VALUES ('Nueva York, EE.UU', 2, CURRENT_TIMESTAMP, 'EE.UU', 'Inglés', 'Central Park', 'Hamburguesa', 'https://upload.wikimedia.org/wikipedia/commons/1/1b/New_York_City_%282%29.jpg');

INSERT INTO destinos (nombre, continentes_id, created_at, pais, idioma, lugar_imperdible, comida_tipica, img_url)
VALUES ('París, Francia', 3, CURRENT_TIMESTAMP, 'Francia', 'Francés', 'Torre Eiffel', 'Croissant', 'https://upload.wikimedia.org/wikipedia/commons/1/1b/Paris_-_France_%282%29.jpg');

INSERT INTO destinos (nombre, continentes_id, created_at, pais, idioma, lugar_imperdible, comida_tipica, img_url)
VALUES ('Miami, EE.UU', 2, CURRENT_TIMESTAMP, 'EE.UU', 'Inglés', 'Ocean Drive', 'Cubano', 'https://upload.wikimedia.org/wikipedia/commons/1/1b/Miami_-_USA_%282%29.jpg');

INSERT INTO destinos (nombre, continentes_id, created_at, pais, idioma, lugar_imperdible, comida_tipica, img_url)
VALUES ('Viena, Austria', 3, CURRENT_TIMESTAMP, 'Austria', 'Alemán', 'Palacio de Schönbrunn', 'Wiener Schnitzel', 'https://upload.wikimedia.org/wikipedia/commons/1/1b/Vienna_-_Austria_%282%29.jpg');

INSERT INTO destinos (nombre, continentes_id, created_at, pais, idioma, lugar_imperdible, comida_tipica, img_url)
VALUES ('Toronto, Canadá', 2, CURRENT_TIMESTAMP, 'Canadá', 'Inglés', 'CN Tower', 'Poutine', 'https://upload.wikimedia.org/wikipedia/commons/1/1b/Toronto_-_Canada_%282%29.jpg');

INSERT INTO destinos (nombre, continentes_id, created_at, pais, idioma, lugar_imperdible, comida_tipica, img_url)
VALUES ('Berlín, Alemania', 3, CURRENT_TIMESTAMP, 'Alemania', 'Alemán', 'Puerta de Brandeburgo', 'Currywurst', 'https://upload.wikimedia.org/wikipedia/commons/1/1b/Berlin_-_Germany_%282%29.jpg');

INSERT INTO destinos (nombre, continentes_id, created_at, pais, idioma, lugar_imperdible, comida_tipica, img_url)
VALUES ('Tulum, México', 2, CURRENT_TIMESTAMP, 'México', 'Español', 'Ruinas de Tulum', 'Tacos', 'https://upload.wikimedia.org/wikipedia/commons/1/1b/Tulum_-_Mexico_%282%29.jpg');

INSERT INTO destinos (nombre, continentes_id, created_at, pais, idioma, lugar_imperdible, comida_tipica, img_url)
VALUES ('Ibiza, España', 3, CURRENT_TIMESTAMP, 'España', 'Español', 'Playa de Ses Illetes', 'Paella', 'https://upload.wikimedia.org/wikipedia/commons/1/1b/Ibiza_-_Spain_%282%29.jpg');

INSERT INTO destinos (nombre, continentes_id, created_at, pais, idioma, lugar_imperdible, comida_tipica, img_url)
VALUES ('Ushuaia, Argentina', 2, CURRENT_TIMESTAMP, 'Argentina', 'Español', 'Canal Beagle', 'Asado', 'https://upload.wikimedia.org/wikipedia/commons/1/1b/Ushuaia_-_Argentina_%282%29.jpg');

INSERT INTO destinos (nombre, continentes_id, created_at, pais, idioma, lugar_imperdible, comida_tipica, img_url)
VALUES ('Reykjavik, Islandia', 3, CURRENT_TIMESTAMP, 'Islandia', 'Islandés', 'Blue Lagoon', 'Skyr', 'https://upload.wikimedia.org/wikipedia/commons/1/1b/Reykjavik_-_Iceland_%282%29.jpg');

INSERT INTO destinos (nombre, continentes_id, created_at, pais, idioma, lugar_imperdible, comida_tipica, img_url)
VALUES ('Punta Cana, República Dominicana', 2, CURRENT_TIMESTAMP, 'República Dominicana', 'Español', 'Playa Bávaro', 'Mangú', 'https://upload.wikimedia.org/wikipedia/commons/1/1b/Punta_Cana_-_Dominican_Republic_%282%29.jpg');

INSERT INTO destinos (nombre, continentes_id, created_at, pais, idioma, lugar_imperdible, comida_tipica, img_url)
VALUES ('Algarve, Portugal', 3, CURRENT_TIMESTAMP, 'Portugal', 'Portugués', 'Praia da Marinha', 'Cataplana', 'https://upload.wikimedia.org/wikipedia/commons/1/1b/Algarve_-_Portugal_%282%29.jpg');

INSERT INTO destinos (nombre, continentes_id, created_at, pais, idioma, lugar_imperdible, comida_tipica, img_url)
VALUES ('Chicago, EE.UU', 2, CURRENT_TIMESTAMP, 'EE.UU', 'Inglés', 'Millennium Park', 'Hot Dog', 'https://upload.wikimedia.org/wikipedia/commons/1/1b/Chicago_-_USA_%282%29.jpg');

INSERT INTO destinos (nombre, continentes_id, created_at, pais, idioma, lugar_imperdible, comida_tipica, img_url)
VALUES ('Londres, Reino Unido', 3, CURRENT_TIMESTAMP, 'Reino Unido', 'Inglés', 'Big Ben', 'Fish and Chips', 'https://upload.wikimedia.org/wikipedia/commons/1/1b/London_-_United_Kingdom_%282%29.jpg');

INSERT INTO destinos (nombre, continentes_id, created_at, pais, idioma, lugar_imperdible, comida_tipica, img_url)
VALUES ('San Juan, Puerto Rico', 2, CURRENT_TIMESTAMP, 'Puerto Rico', 'Español', 'Viejo San Juan', 'Mofongo', 'https://upload.wikimedia.org/wikipedia/commons/1/1b/San_Juan_-_Puerto_Rico_%282%29.jpg');

INSERT INTO destinos (nombre, continentes_id, created_at, pais, idioma, lugar_imperdible, comida_tipica, img_url)
VALUES ('Niza, Francia', 3, CURRENT_TIMESTAMP, 'Francia', 'Francés', 'Paseo de los Ingleses', 'Ratatouille', 'https://upload.wikimedia.org/wikipedia/commons/1/1b/Nice_-_France_%282%29.jpg');

INSERT INTO destinos (nombre, continentes_id, created_at, pais, idioma, lugar_imperdible, comida_tipica, img_url)
VALUES ('Machu Picchu, Perú', 2, CURRENT_TIMESTAMP, 'Perú', 'Español', 'Machu Picchu', 'Ceviche', 'https://upload.wikimedia.org/wikipedia/commons/1/1b/Machu_Picchu_-_Peru_%282%29.jpg');

INSERT INTO destinos (nombre, continentes_id, created_at, pais, idioma, lugar_imperdible, comida_tipica, img_url)
VALUES ('Chamonix, Francia', 3, CURRENT_TIMESTAMP, 'Francia', 'Francés', 'Mont Blanc', 'Fondue', 'https://upload.wikimedia.org/wikipedia/commons/1/1b/Chamonix_-_France_%282%29.jpg');

INSERT INTO destinos (nombre, continentes_id, created_at, pais, idioma, lugar_imperdible, comida_tipica, img_url)
VALUES ('Los Ángeles, EE.UU', 2, CURRENT_TIMESTAMP, 'EE.UU', 'Inglés', 'Hollywood', 'Hamburguesa', 'https://upload.wikimedia.org/wikipedia/commons/1/1b/Los_Angeles_-_USA_%282%29.jpg');

INSERT INTO destinos (nombre, continentes_id, created_at, pais, idioma, lugar_imperdible, comida_tipica, img_url)
VALUES ('Roma, Italia', 3, CURRENT_TIMESTAMP, 'Italia', 'Italiano', 'Coliseo', 'Pizza', 'https://upload.wikimedia.org/wikipedia/commons/1/1b/Rome_-_Italy_%282%29.jpg');

INSERT INTO destinos (nombre, continentes_id, created_at, pais, idioma, lugar_imperdible, comida_tipica, img_url)
VALUES ('Honolulu, Hawái', 2, CURRENT_TIMESTAMP, 'EE.UU', 'Inglés', 'Waikiki', 'Poke', 'https://upload.wikimedia.org/wikipedia/commons/1/1b/Honolulu_-_USA_%282%29.jpg');

INSERT INTO destinos (nombre, continentes_id, created_at, pais, idioma, lugar_imperdible, comida_tipica, img_url)
VALUES ('Malta', 3, CURRENT_TIMESTAMP, 'Malta', 'Maltés', 'La Valeta', 'Pastizzi', 'https://upload.wikimedia.org/wikipedia/commons/1/1b/Malta_%282%29.jpg');

INSERT INTO destinos (nombre, continentes_id, created_at, pais, idioma, lugar_imperdible, comida_tipica, img_url)
VALUES ('Aspen, EE.UU', 2, CURRENT_TIMESTAMP, 'EE.UU', 'Inglés', 'Maroon Bells', 'Hamburguesa', 'https://upload.wikimedia.org/wikipedia/commons/1/1b/Aspen_-_USA_%282%29.jpg');

INSERT INTO destinos (nombre, continentes_id, created_at, pais, idioma, lugar_imperdible, comida_tipica, img_url)
VALUES ('Innsbruck, Austria', 3, CURRENT_TIMESTAMP, 'Austria', 'Alemán', 'Tejado de Oro', 'Wiener Schnitzel', 'https://upload.wikimedia.org/wikipedia/commons/1/1b/Innsbruck_-_Austria_%282%29.jpg');

INSERT INTO destinos (nombre, continentes_id, created_at, pais, idioma, lugar_imperdible, comida_tipica, img_url)
VALUES ('Ciudad de México, México', 2, CURRENT_TIMESTAMP, 'México', 'Español', 'Zócalo', 'Tacos', 'https://upload.wikimedia.org/wikipedia/commons/1/1b/Ciudad_de_Mexico_-_Mexico_%282%29.jpg');

INSERT INTO destinos (nombre, continentes_id, created_at, pais, idioma, lugar_imperdible, comida_tipica, img_url)
VALUES ('Madrid, España', 3, CURRENT_TIMESTAMP, 'España', 'Español', 'Parque del Retiro', 'Cocido Madrileño', 'https://upload.wikimedia.org/wikipedia/commons/1/1b/Madrid_-_Spain_%282%29.jpg');

--DESTINOS POR DEFAULT
INSERT INTO destinos (nombre, continentes_id, created_at, pais, idioma, lugar_imperdible, comida_tipica, img_url)
VALUES ('Bora Bora, Polinesia Francesa', 1, CURRENT_TIMESTAMP, 'Polinesia Francesa', 'Francés', 'Monte Otemanu', 'Poisson Cru', 'https://upload.wikimedia.org/wikipedia/commons/1/1b/Bora_Bora_-_French_Polynesia_%282%29.jpg');

INSERT INTO destinos (nombre, continentes_id, created_at, pais, idioma, lugar_imperdible, comida_tipica, img_url)
VALUES ('Dubái, Emiratos Árabes', 1, CURRENT_TIMESTAMP, 'Emiratos Árabes', 'Árabe', 'Burj Khalifa', 'Shawarma', 'https://upload.wikimedia.org/wikipedia/commons/1/1b/Dubai_-_United_Arab_Emirates_%282%29.jpg');


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
