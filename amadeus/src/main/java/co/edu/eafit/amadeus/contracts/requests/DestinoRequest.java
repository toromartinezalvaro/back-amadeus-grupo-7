package co.edu.eafit.amadeus.contracts.requests;

import com.fasterxml.jackson.annotation.JsonProperty;

import jakarta.validation.constraints.NotNull;
import lombok.*;
import lombok.experimental.FieldDefaults;

// Define que es lo que quiero recibir
@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
@FieldDefaults(level = AccessLevel.PRIVATE)
public class DestinoRequest {

    // Se deben verificar los datos del modelo de "Destino" y seleccionar los que se quieran recibir. El id no se se incluye porque ese se crea automaticamente
    @NotNull(message= "Nombre obligatorio")
    String nombre;

    //Aqui se usa string en lugar de "Continente continente" ya que quiero recibir solo el nombre y no todo lo que tiene el continente, aunque tambien se puede enviar el objeto continete completo
    @JsonProperty("continente_id") //para personalizar el key que lleva el json
    long continente;
}
