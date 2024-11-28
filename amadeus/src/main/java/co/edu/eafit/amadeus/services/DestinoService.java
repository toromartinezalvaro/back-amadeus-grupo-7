package co.edu.eafit.amadeus.services;

import java.util.List;

import co.edu.eafit.amadeus.models.Destino;

public interface DestinoService {

    Destino create(Destino destino);

    List<Destino> findAll();

    Destino findById(Long id);
}