package co.edu.eafit.amadeus.models;

import lombok.AccessLevel;
import lombok.Getter;
import lombok.Setter;
import lombok.experimental.FieldDefaults;

@Getter
@Setter
@FieldDefaults(level =AccessLevel.PRIVATE )
public class Destino {

  Long id;

  String nombre;

  Continente continente;
}
