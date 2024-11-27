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
VALUES ('Playa del Carmen, Mexico', 2, CURRENT_TIMESTAMP, 'México', 'español', 'Chichén-Itzá', 'Salbutes',
        'https://encrypted-tbn0.gstatic.com/licensed-image?q=tbn:ANd9GcSsEgGDtay7yynbtJCdRRvuLW0dWTzG3_BDf36Vo0flnkq7E_BJpr3-EclLGqYfPhIn-REwJqGs0lcfgpU6M34pYibADP7HTCHvX9jwZA');

INSERT INTO destinos (nombre, continentes_id, created_at, pais, idioma, lugar_imperdible, comida_tipica, img_url)
VALUES ('Santorini, Grecia', 3, CURRENT_TIMESTAMP, 'Grecia', 'Griego', 'Oia', 'Moussaka', 'https://encrypted-tbn2.gstatic.com/licensed-image?q=tbn:ANd9GcSKEchVmyIPbv1XBHQVjbCGSu7ELlk46OgcW6MoKl6upCUiKu7wUP0K0E-mRbjo_m24dJMpjn5hbxr_SWgU5-Irm43Ay4cHtFjA_AOd-w');

INSERT INTO destinos (nombre, continentes_id, created_at, pais, idioma, lugar_imperdible, comida_tipica, img_url)
VALUES ('Cartagena, Colombia', 2, CURRENT_TIMESTAMP, 'Colombia', 'Español', 'Ciudad Amurallada', 'Cazuela de Mariscos', 'https://lh5.googleusercontent.com/p/AF1QipMVfyWlbwj-OyndRaLB8OcBQ3qFQffDq343NUNj=w540-h312-n-k-no');

INSERT INTO destinos (nombre, continentes_id, created_at, pais, idioma, lugar_imperdible, comida_tipica, img_url)
VALUES ('Barcelona, España', 3, CURRENT_TIMESTAMP, 'España', 'Español', 'Sagrada Familia', 'Paella', 'https://lh5.googleusercontent.com/p/AF1QipOxwFRsHTWMWABPquEmNX4bIqjJk8Gu5YYoeFvs=w540-h312-n-k-no');

INSERT INTO destinos (nombre, continentes_id, created_at, pais, idioma, lugar_imperdible, comida_tipica, img_url)
VALUES ('Rio de Janeiro, Brasil', 2, CURRENT_TIMESTAMP, 'Brasil', 'Portugués', 'Cristo Redentor', 'Feijoada', 'https://lh5.googleusercontent.com/p/AF1QipPUTncdgQzogJ1bTDMPJJX3nqQjs0FZ4iDpf-he=w540-h312-n-k-no');

INSERT INTO destinos (nombre, continentes_id, created_at, pais, idioma, lugar_imperdible, comida_tipica, img_url)
VALUES ('Lisboa, Portugal', 3, CURRENT_TIMESTAMP, 'Portugal', 'Portugués', 'Torre de Belém', 'Bacalhau à Brás', 'https://lh5.googleusercontent.com/p/AF1QipNPJSyPRk-i6wRJQ3IJwjCxE2qdbGXCFpkXQ_LR=w540-h312-n-k-no');

INSERT INTO destinos (nombre, continentes_id, created_at, pais, idioma, lugar_imperdible, comida_tipica, img_url)
VALUES ('Bariloche, Argentina', 2, CURRENT_TIMESTAMP, 'Argentina', 'Español', 'Cerro Catedral', 'Asado', 'https://encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcQ-SfIII1xLSAS3oV3zrIJG83_dEcpy0Lg5VfycEokHpeYo0xeI7rGambr0tYacAtaUKn6pR5NrEZ4RQmPmyUhkyG13FPrmAfaCDY6wKQ');

INSERT INTO destinos (nombre, continentes_id, created_at, pais, idioma, lugar_imperdible, comida_tipica, img_url)
VALUES ('Interlaken, Suiza', 3, CURRENT_TIMESTAMP, 'Suiza', 'Alemán', 'Jungfraujoch', 'Fondue', 'https://lh5.googleusercontent.com/p/AF1QipMC6smIuDIlHhsE4OWqUZxEn3t8uqgI_aSlFmaA=w540-h312-n-k-no');

INSERT INTO destinos (nombre, continentes_id, created_at, pais, idioma, lugar_imperdible, comida_tipica, img_url)
VALUES ('Cusco, Perú', 2, CURRENT_TIMESTAMP, 'Perú', 'Español', 'Machu Picchu', 'Ceviche', 'https://lh5.googleusercontent.com/p/AF1QipORjUq02fgtogOziVA5Qe5JxJGHlRatzuhMUhf8=w540-h312-n-k-no');

INSERT INTO destinos (nombre, continentes_id, created_at, pais, idioma, lugar_imperdible, comida_tipica, img_url)
VALUES ('Granada, España', 3, CURRENT_TIMESTAMP, 'España', 'Español', 'Alhambra', 'Tortilla Española', 'https://encrypted-tbn3.gstatic.com/licensed-image?q=tbn:ANd9GcRxOTQBjLt3480QFzkSlhnnZ0mQVZh4VVnDbBXXlvwv-ya_zuxGyBaKYYBzqp8r2MwBsVRnZl9a3ZJE9GST0V-vExD6FEYqBfT_7LLzBg');

INSERT INTO destinos (nombre, continentes_id, created_at, pais, idioma, lugar_imperdible, comida_tipica, img_url)
VALUES ('Banff, Canadá', 2, CURRENT_TIMESTAMP, 'Canadá', 'Inglés', 'Lago Moraine', 'Poutine', 'https://encrypted-tbn0.gstatic.com/licensed-image?q=tbn:ANd9GcS5i1pBNjrxyDIxWtAVJW_lkrL1AV0NUkXfsAQxDMgrCyCrArqVxTBc7vms74IlKRt2pjDSqpkLtK3dp7IBabCWuJSncQ_NMJq18K0oug');

INSERT INTO destinos (nombre, continentes_id, created_at, pais, idioma, lugar_imperdible, comida_tipica, img_url)
VALUES ('Zermatt, Suiza', 3, CURRENT_TIMESTAMP, 'Suiza', 'Alemán', 'Matterhorn', 'Rösti', 'https://encrypted-tbn2.gstatic.com/licensed-image?q=tbn:ANd9GcSAQcCDSb6m6eo3VJ1mZ8zlT4J3poq2-v3PM0Ph6atAFrnMKHXTClkZLKrkx0vRMPPfGJlApHInz4J3vpZePZ9csZB8K38Sgr-09Hrneg');

INSERT INTO destinos (nombre, continentes_id, created_at, pais, idioma, lugar_imperdible, comida_tipica, img_url)
VALUES ('Nueva York, EE.UU', 2, CURRENT_TIMESTAMP, 'EE.UU', 'Inglés', 'Central Park', 'Hamburguesa', 'https://lh3.googleusercontent.com/proxy/g-ljxmC9hqYpgbNRM2dhT4x30UsLIeylGkNR8j7xU75F3uXUHTB-hNcdjNy_H5_ZxgnbUxNUvne8TOZBcYT-BwoIQZgXwXlkyciXBHBPkNH2SavG7WhWDqT383O5PPPhie3Pw0fSRriv3TF8TEb8cu7JuH5-_Q=w540-h312-n-k-no');

INSERT INTO destinos (nombre, continentes_id, created_at, pais, idioma, lugar_imperdible, comida_tipica, img_url)
VALUES ('París, Francia', 3, CURRENT_TIMESTAMP, 'Francia', 'Francés', 'Torre Eiffel', 'Croissant', 'https://encrypted-tbn3.gstatic.com/licensed-image?q=tbn:ANd9GcQB19lTbuMXK3ICGgIQium_8s9s3aWQyeCqY6_k4EHJE8Bqfwsj_bHFtzpOInjAbBrVo98xmieHU1-pRhEDJ941EUyPRa7BpiF1V5o9KA');

INSERT INTO destinos (nombre, continentes_id, created_at, pais, idioma, lugar_imperdible, comida_tipica, img_url)
VALUES ('Miami, EE.UU', 2, CURRENT_TIMESTAMP, 'EE.UU', 'Inglés', 'Ocean Drive', 'Cubano', 'https://encrypted-tbn0.gstatic.com/licensed-image?q=tbn:ANd9GcShxWawBkoL_1-TwGmiYpGoK7TWnMNIqOXjyPTWeMewhsGd1MZAqBByntjcu_1o99Qeh55FPRs_U8qNuJr9qg_9mLT48KPzMjYGrUJxpg');

INSERT INTO destinos (nombre, continentes_id, created_at, pais, idioma, lugar_imperdible, comida_tipica, img_url)
VALUES ('Viena, Austria', 3, CURRENT_TIMESTAMP, 'Austria', 'Alemán', 'Palacio de Schönbrunn', 'Wiener Schnitzel', 'https://encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcQhmmjDULK_wpRBu1pTjscz0_jzZNayOww794qmfUoBOenvO_tJ03meRDfBWULqH1rf5pIN-bw7pOT90T88wMzE621kDAhJTyGWhC7X7g');

INSERT INTO destinos (nombre, continentes_id, created_at, pais, idioma, lugar_imperdible, comida_tipica, img_url)
VALUES ('Toronto, Canadá', 2, CURRENT_TIMESTAMP, 'Canadá', 'Inglés', 'CN Tower', 'Poutine', 'https://encrypted-tbn3.gstatic.com/licensed-image?q=tbn:ANd9GcSW9ckAy6THoZo16osm6gFx8FTw_eEwUwBQsPyJP8i9-tS0XcRF9Gjiur9Jr1MKjHIowILKm3Dg3Z0qt-ashs7uvQJTkJ4skbX2rIxXHA');

INSERT INTO destinos (nombre, continentes_id, created_at, pais, idioma, lugar_imperdible, comida_tipica, img_url)
VALUES ('Berlín, Alemania', 3, CURRENT_TIMESTAMP, 'Alemania', 'Alemán', 'Puerta de Brandeburgo', 'Currywurst', 'https://encrypted-tbn3.gstatic.com/licensed-image?q=tbn:ANd9GcTIfYrJDD7_H9dZcmHZeKr9TmEAQ4KbxOO4b67XIfn0mpkzPwqmJvBSWxDX_PcOwi3BByZY-wrbGfQJp3lcwdgwiwv6JXaYqO7IEE90kQ');

INSERT INTO destinos (nombre, continentes_id, created_at, pais, idioma, lugar_imperdible, comida_tipica, img_url)
VALUES ('Tulum, México', 2, CURRENT_TIMESTAMP, 'México', 'Español', 'Ruinas de Tulum', 'Tacos', 'https://lavidasondosviajes.com/wp-content/uploads/2022/06/ruinas-que-ver-en-tulum.jpg');

INSERT INTO destinos (nombre, continentes_id, created_at, pais, idioma, lugar_imperdible, comida_tipica, img_url)
VALUES ('Ibiza, España', 3, CURRENT_TIMESTAMP, 'España', 'Español', 'Playa de Ses Illetes', 'Paella', 'https://encrypted-tbn3.gstatic.com/licensed-image?q=tbn:ANd9GcQ25B41WBP9PXz5J-Kg2LM_4H1x_EfdtLlZ30eH9NTkBRl-e1tmt2uCb95nRfoOGRx46b4dAaquteRwnEsuxznkzp__o638eoKafYjCKQ');

INSERT INTO destinos (nombre, continentes_id, created_at, pais, idioma, lugar_imperdible, comida_tipica, img_url)
VALUES ('Ushuaia, Argentina', 2, CURRENT_TIMESTAMP, 'Argentina', 'Español', 'Canal Beagle', 'Asado', 'https://encrypted-tbn2.gstatic.com/licensed-image?q=tbn:ANd9GcS3ZsFFeuBcky5BXnAv9mzhfZpckqXbQeUibmvY7SmFLqMN6lkkPbcm2TIsyVM0EDsLTsuFiXXrIX2_hELULGdxGBuZMlawKTEFCcT1JA');

INSERT INTO destinos (nombre, continentes_id, created_at, pais, idioma, lugar_imperdible, comida_tipica, img_url)
VALUES ('Reykjavik, Islandia', 3, CURRENT_TIMESTAMP, 'Islandia', 'Islandés', 'Blue Lagoon', 'Skyr', 'https://lh5.googleusercontent.com/p/AF1QipOd0uslkh05Ey3auyorQ9kYVGA3dRhyIthKVcKy=w540-h312-n-k-no');

INSERT INTO destinos (nombre, continentes_id, created_at, pais, idioma, lugar_imperdible, comida_tipica, img_url)
VALUES ('Punta Cana, República Dominicana', 2, CURRENT_TIMESTAMP, 'República Dominicana', 'Español', 'Playa Bávaro', 'Mangú', 'https://encrypted-tbn2.gstatic.com/licensed-image?q=tbn:ANd9GcSoeSjS2oex8LXHfqhd7M980AKuGvblppPnTJyhGHIcQDEWN_Dy7c78v9_aiSralykZiaQJllvJssKa6SVO96jM5RiFSjdQzgzmkdoh6g');

INSERT INTO destinos (nombre, continentes_id, created_at, pais, idioma, lugar_imperdible, comida_tipica, img_url)
VALUES ('Algarve, Portugal', 3, CURRENT_TIMESTAMP, 'Portugal', 'Portugués', 'Praia da Marinha', 'Cataplana', 'https://lh5.googleusercontent.com/p/AF1QipMeTMP4wkVkLLhbKbwUSL0116sXNlp9QywbNLcd=w540-h312-n-k-no');

INSERT INTO destinos (nombre, continentes_id, created_at, pais, idioma, lugar_imperdible, comida_tipica, img_url)
VALUES ('Chicago, EE.UU', 2, CURRENT_TIMESTAMP, 'EE.UU', 'Inglés', 'Millennium Park', 'Hot Dog', 'https://lh5.googleusercontent.com/p/AF1QipNMCexgTHrhXahYlqYPCnn8tABv5ZS3NOXVi3b4=w540-h312-n-k-no');

INSERT INTO destinos (nombre, continentes_id, created_at, pais, idioma, lugar_imperdible, comida_tipica, img_url)
VALUES ('Londres, Reino Unido', 3, CURRENT_TIMESTAMP, 'Reino Unido', 'Inglés', 'Big Ben', 'Fish and Chips', 'https://encrypted-tbn2.gstatic.com/licensed-image?q=tbn:ANd9GcRfy0GJeSvOlk4DCD5F_KBpRmVv1zMAjd4Q3jxsRwasl5N3KplKt3RoJWUMrNV6Wd6E7oqYfPGRFZPvc66qqjUqlg8LD73_dEIJRNzTqg');

INSERT INTO destinos (nombre, continentes_id, created_at, pais, idioma, lugar_imperdible, comida_tipica, img_url)
VALUES ('San Juan, Puerto Rico', 2, CURRENT_TIMESTAMP, 'Puerto Rico', 'Español', 'Viejo San Juan', 'Mofongo', 'https://encrypted-tbn2.gstatic.com/licensed-image?q=tbn:ANd9GcTM3yildmlADM2AbK61asNKPTgqZiYCG4zPnyuBTOF5UqtQ5S_Gl1ZN-GPW49u9w15jjGNMLCBigbpzztwY-W5PxSlkQFhLHN8d4Cqgsg');

INSERT INTO destinos (nombre, continentes_id, created_at, pais, idioma, lugar_imperdible, comida_tipica, img_url)
VALUES ('Niza, Francia', 3, CURRENT_TIMESTAMP, 'Francia', 'Francés', 'Paseo de los Ingleses', 'Ratatouille', 'https://encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcT4PkkEFmk1DoQUKoAPN5uK2ZxwCM0HZ-HEDuoTq3sdFK0oAuTUyLm7mmwRo1ysqgr97CTceNK9QUUYLn80PrrjCXRyf81JV5HYudCOzw');

INSERT INTO destinos (nombre, continentes_id, created_at, pais, idioma, lugar_imperdible, comida_tipica, img_url)
VALUES ('Machu Picchu, Perú', 2, CURRENT_TIMESTAMP, 'Perú', 'Español', 'Machu Picchu', 'Ceviche', 'https://encrypted-tbn0.gstatic.com/licensed-image?q=tbn:ANd9GcQT8tfTOX2rjqW3LMhTELr_7BRIJq8sckiw7BA0UL4Zb7P_lcESksxQU0Kt0mebaK6qzjy0HQ_G_dQaFVzoR9wuM7t0pIu6REhO1_dHBw');

INSERT INTO destinos (nombre, continentes_id, created_at, pais, idioma, lugar_imperdible, comida_tipica, img_url)
VALUES ('Chamonix, Francia', 3, CURRENT_TIMESTAMP, 'Francia', 'Francés', 'Mont Blanc', 'Fondue', 'https://encrypted-tbn2.gstatic.com/licensed-image?q=tbn:ANd9GcTZ1HbSdRjQyBqQ_uWmhwwUA-3JpvnkHCVrQ2RvYZOAo5BvtEriEaSg_oiiL9buc5p4QoN1YwM6MAC4BIXSqjitaFrW9E3AukjNP_CDGw');

INSERT INTO destinos (nombre, continentes_id, created_at, pais, idioma, lugar_imperdible, comida_tipica, img_url)
VALUES ('Los Ángeles, EE.UU', 2, CURRENT_TIMESTAMP, 'EE.UU', 'Inglés', 'Hollywood', 'Hamburguesa', 'https://encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcRNmhjFYQEGxB9QMDa2x-_JuVWEiy1SoC4JWitgfe6jQxXUB1KKgxYuZnjK1pKEC351O7bAJvI8oryJ5dotu-dCCOAFfbeOS0bmZu7cNw');

INSERT INTO destinos (nombre, continentes_id, created_at, pais, idioma, lugar_imperdible, comida_tipica, img_url)
VALUES ('Roma, Italia', 3, CURRENT_TIMESTAMP, 'Italia', 'Italiano', 'Coliseo', 'Pizza', 'https://lh5.googleusercontent.com/proxy/Yzdb0Ml3JUhHIDZNG7ZbDXHechmZEMx1qZlClkzqfXy4bg7GiSSxU_OqP9omjbjK5VrP7KlHjExf62KsCzGl33Ju_7yQq7eBXWdCIMGVlTyGx1D7LR6lL0wBaif8RbiCYmQvMg4xpLY31PfgaqVhvGj24I_Qpw=w540-h312-n-k-no');

INSERT INTO destinos (nombre, continentes_id, created_at, pais, idioma, lugar_imperdible, comida_tipica, img_url)
VALUES ('Honolulu, Hawái', 2, CURRENT_TIMESTAMP, 'EE.UU', 'Inglés', 'Waikiki', 'Poke', 'https://encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcS770_NITGECjC-qrIDg3B3T6xG4PquUJSSIHTZahPn6P_q_M5Fl-X8Bf2CACF6eZcFqbvjXm7JatvY4imUau1yTUQrHXzY4cV48nN_aQ');

INSERT INTO destinos (nombre, continentes_id, created_at, pais, idioma, lugar_imperdible, comida_tipica, img_url)
VALUES ('Malta', 3, CURRENT_TIMESTAMP, 'Malta', 'Maltés', 'La Valeta', 'Pastizzi', 'https://encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcRDWSP6xOunmLK_KL3RrCM6nfHSjdg0V4VgBxNLTcNKwubNZIV4m6Zn44a_0t9JzmEEvSx175nAbtJjsbyf5uhWdw8E1EGRspDW67EOMg');

INSERT INTO destinos (nombre, continentes_id, created_at, pais, idioma, lugar_imperdible, comida_tipica, img_url)
VALUES ('Aspen, EE.UU', 2, CURRENT_TIMESTAMP, 'EE.UU', 'Inglés', 'Maroon Bells', 'Hamburguesa', 'https://encrypted-tbn0.gstatic.com/licensed-image?q=tbn:ANd9GcR0Lj48jrr1E690626PW3U3qSi6n2dgTlSk0BNXb3MheFId7XcPX44CdE9a07j7E_u9lKvi--yQMTfEk33WipVyWV4ojD3hW0uGoqaA_w');

INSERT INTO destinos (nombre, continentes_id, created_at, pais, idioma, lugar_imperdible, comida_tipica, img_url)
VALUES ('Innsbruck, Austria', 3, CURRENT_TIMESTAMP, 'Austria', 'Alemán', 'Tejado de Oro', 'Wiener Schnitzel', 'https://encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcSzy7HLAM-zxvpiEvSV6T4ITO8h9KRj9P7Exhg28AcSYgkHpIK_1zKzg6PhoTneIUBdEtWivfw3PYGNcX8Kh3euTuWcICxaYOUlXkiMBA');

INSERT INTO destinos (nombre, continentes_id, created_at, pais, idioma, lugar_imperdible, comida_tipica, img_url)
VALUES ('Ciudad de México, México', 2, CURRENT_TIMESTAMP, 'México', 'Español', 'Zócalo', 'Tacos', 'https://encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcRkqHlAgGAAIXOIO02KVBc0Q9tGSUACQlUmvIrcqN9Ukg8RFxXubFKx0IAmyBsHdQ24rlbC4zIvIVh0o6f1-AKDjlnLmvp6rficC1BZRw');

INSERT INTO destinos (nombre, continentes_id, created_at, pais, idioma, lugar_imperdible, comida_tipica, img_url)
VALUES ('Madrid, España', 3, CURRENT_TIMESTAMP, 'España', 'Español', 'Parque del Retiro', 'Cocido Madrileño', 'https://lh5.googleusercontent.com/p/AF1QipPp7gG6UeQm7kyfY5d_KCZbDZnKjsFGMTpUH8YQ=w540-h312-n-k-no');

--DESTINOS POR DEFAULT
INSERT INTO destinos (nombre, continentes_id, created_at, pais, idioma, lugar_imperdible, comida_tipica, img_url)
VALUES ('Bora Bora, Polinesia Francesa', 1, CURRENT_TIMESTAMP, 'Polinesia Francesa', 'Francés', 'Monte Otemanu', 'Poisson Cru', 'https://encrypted-tbn3.gstatic.com/licensed-image?q=tbn:ANd9GcR8FpQa5S2XLD5B_v-lLquzTFpzP5KADiZTjL1DAuLgX__enFb89uGALIovy4q8HXPohX6aiAPJz_pTcqwno31RIV58XsBQJyzm17p-1w');

INSERT INTO destinos (nombre, continentes_id, created_at, pais, idioma, lugar_imperdible, comida_tipica, img_url)
VALUES ('Dubái, Emiratos Árabes', 1, CURRENT_TIMESTAMP, 'Emiratos Árabes', 'Árabe', 'Burj Khalifa', 'Shawarma', 'https://lh5.googleusercontent.com/p/AF1QipM3Su1i0T610BB_q7wHixPLDVhMPdMoMHU21eHV=w540-h312-n-k-no');


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
