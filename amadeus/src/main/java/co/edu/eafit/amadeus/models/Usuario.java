package co.edu.eafit.amadeus.models;

import java.time.LocalDateTime;

import lombok.AccessLevel;
import lombok.Getter;
import lombok.Setter;
import lombok.experimental.FieldDefaults;

@Getter
@Setter
@FieldDefaults(level = AccessLevel.PRIVATE)
public class Usuario {

  long id;

  String nombre;

  String email;

  String password;

  LocalDateTime createdAt;

  LocalDateTime updatedAt;
}
