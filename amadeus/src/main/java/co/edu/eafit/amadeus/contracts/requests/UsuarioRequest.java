package co.edu.eafit.amadeus.contracts.requests;

import jakarta.validation.constraints.NotNull;
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
public class UsuarioRequest {

  @NotNull(message= "Nombre obligatorio")
  String nombre;

  @NotNull(message = "Email obligatorio")
  String email;

}
