package co.edu.eafit.amadeus.contracts.responses;

import com.fasterxml.jackson.annotation.JsonProperty;

import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.FieldDefaults;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
@FieldDefaults(level = AccessLevel.PRIVATE)
public class DestinoResponse {

    Long id;

    String nombre;

    String pais;

    String idioma;

    @JsonProperty("lugar_imperdible")
    String lugarImperdible;

    @JsonProperty("comida_tipica")
    String comidaTipica;

    @JsonProperty("img_url")
    String imgUrl;

    @JsonProperty("nombre_continente")
    String nombreContinente;

}
