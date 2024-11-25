// package co.edu.eafit.amadeus.services;

// import java.util.List;

// import co.edu.eafit.amadeus.models.Destino;

// // metodos abstractos que luego se van a sobreescribir en la implementacion del servicio (DestinoServiceImpl.java)
// public interface DestinoService {

//     Destino create(Destino destino);

//     List<Destino> findAll();

//     Destino findById(Long id);
//   }

package co.edu.eafit.amadeus.services;

import java.util.List;

import co.edu.eafit.amadeus.models.Destino;

// metodos abstractos que luego se van a sobreescribir en la implementacion del servicio (DestinoServiceImpl.java)
public interface DestinoService {

    Destino create(Destino destino);

    List<Destino> findAll();

    Destino findById(Long id);
}