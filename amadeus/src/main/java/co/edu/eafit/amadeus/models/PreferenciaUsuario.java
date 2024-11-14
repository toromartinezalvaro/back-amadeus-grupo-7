package co.edu.eafit.amadeus.models;

import java.time.LocalDateTime;

import lombok.AccessLevel;
import lombok.Getter;
import lombok.Setter;
import lombok.experimental.FieldDefaults;


@Getter
@Setter
@FieldDefaults(level = AccessLevel.PRIVATE)
public class PreferenciaUsuario {

  long id;

  Usuario usuario;

  Preferencia preferencia;

  LocalDateTime createdAt;

  LocalDateTime updatedAt;
}
