package co.edu.eafit.amadeus.services;

import co.edu.eafit.amadeus.models.Preferencia;

public interface PreferenciaService {

  // se envia la preferencia porque tiene todos los datos que se piden en el "PreferenciaRepository"
  Preferencia findPreferencia(Preferencia preferencia);
}
