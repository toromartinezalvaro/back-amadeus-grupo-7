package co.edu.eafit.amadeus.contracts.requests;

import co.edu.eafit.amadeus.models.enums.*;
import com.fasterxml.jackson.annotation.JsonProperty;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotNull;
import lombok.*;
import lombok.experimental.FieldDefaults;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
@FieldDefaults(level = AccessLevel.PRIVATE)
public class PreferenciaRequest {

    @NotNull(message = "nombre obligatorio")
    String nombre;

    @NotNull(message = "email obligatorio")
    @Email(message = "email debe ser válido")
    String email;

    @NotNull(message = "entorno obligatorio")
    EntornoEnum entorno;

    @NotNull(message = "clima obligatorio")
    ClimaEnum clima;

    @NotNull(message = "actividad obligatorio")
    ActividadEnum actividad;

    @NotNull(message = "alojamiento obligatorio")
    AlojamientoEnum alojamiento;

    @NotNull(message = "tiempo viaje obligatorio")
    @JsonProperty("tiempo_viaje")
    TiempoViajeEnum tiempoViaje;

    @NotNull(message = "rango edad obligatorio")
    @JsonProperty("rango_edad")
    RangoEdadEnum rangoEdad;
}
