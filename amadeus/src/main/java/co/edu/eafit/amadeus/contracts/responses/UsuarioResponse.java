package co.edu.eafit.amadeus.contracts.responses;

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
public class UsuarioResponse {

  Long id;

  String nombre;

  String email;

  // aun no existe contraseña de parte del usuario
  //String password;

}
