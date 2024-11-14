package co.edu.eafit.amadeus.models;

import java.util.List; // para poder usar List<>

import co.edu.eafit.amadeus.models.enums.ActividadEnum;
import co.edu.eafit.amadeus.models.enums.AlojamientoEnum;
import co.edu.eafit.amadeus.models.enums.ClimaEnum;
import co.edu.eafit.amadeus.models.enums.EntornoEnum;
import co.edu.eafit.amadeus.models.enums.RangoEdadEnum;
import co.edu.eafit.amadeus.models.enums.TiempoViajeEnum;
import lombok.AccessLevel;
import lombok.Getter;
import lombok.Setter;
import lombok.experimental.FieldDefaults;

@Getter
@Setter
@FieldDefaults(level = AccessLevel.PRIVATE)
public class Preferencia {

  long id;

  EntornoEnum entorno;

  ClimaEnum clima;

  ActividadEnum actividad;

  AlojamientoEnum alojamiento;

  TiempoViajeEnum tiempoViaje;

  RangoEdadEnum rangoEdad;

  List<Destino> destinos; //esto va a hacer una lista de lo que haya en el modelo de "Destino" en caso de que en un futuro se creen nuevos destinos
}
