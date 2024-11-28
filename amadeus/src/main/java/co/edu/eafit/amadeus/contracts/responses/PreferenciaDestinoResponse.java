package co.edu.eafit.amadeus.contracts.responses;

import java.util.List;

import co.edu.eafit.amadeus.models.enums.ActividadEnum;
import co.edu.eafit.amadeus.models.enums.AlojamientoEnum;
import co.edu.eafit.amadeus.models.enums.ClimaEnum;
import co.edu.eafit.amadeus.models.enums.EntornoEnum;
import co.edu.eafit.amadeus.models.enums.RangoEdadEnum;
import co.edu.eafit.amadeus.models.enums.TiempoViajeEnum;
import lombok.*;
import lombok.experimental.FieldDefaults;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
@FieldDefaults(level = AccessLevel.PRIVATE)
public class PreferenciaDestinoResponse {

  Long id;

    EntornoEnum entorno;

    ClimaEnum clima;

    ActividadEnum actividad;

    AlojamientoEnum alojamiento;

    TiempoViajeEnum tiempoViaje;

    RangoEdadEnum rangoEdad;

    List<DestinoResponse> destinoResponseList;
}
