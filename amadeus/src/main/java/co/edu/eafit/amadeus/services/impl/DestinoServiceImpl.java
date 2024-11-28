package co.edu.eafit.amadeus.services.impl;

import co.edu.eafit.amadeus.entities.DestinoEntity;
import co.edu.eafit.amadeus.entities.ContinenteEntity;
import co.edu.eafit.amadeus.models.Destino;
import co.edu.eafit.amadeus.models.Continente;
import co.edu.eafit.amadeus.repositories.DestinoRepository;
import co.edu.eafit.amadeus.repositories.ContinenteRepository;
import co.edu.eafit.amadeus.services.DestinoService;
import co.edu.eafit.amadeus.mappers.DestinoMapper;
import co.edu.eafit.amadeus.mappers.ContinenteMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class DestinoServiceImpl implements DestinoService {

    @Autowired
    private DestinoRepository destinoRepository;

    @Autowired
    private ContinenteRepository continenteRepository;

    @Autowired
    private DestinoMapper destinoMapper;

    @Autowired
    private ContinenteMapper continenteMapper;

    @Override
    public Destino create(Destino destino) {
        DestinoEntity destinoEntity = destinoMapper.toDestinoEntity(destino); // Usando el Mapper para convertir Destino a DestinoEntity

        ContinenteEntity continenteEntity
                = continenteRepository.findById(destino.getContinente().getId())
                        .orElseThrow(RuntimeException::new); // Si NO encuentra el continente, envia una excepcion

        Continente continente = continenteMapper.toContinente(continenteEntity); //ContinenteEntity to Continente

        destino.setContinente(continente);

        destinoEntity.setContinente(continenteEntity); // Aqui se asocia el ContinenteEntity al DestinoEntity

        destinoEntity = destinoRepository.save(destinoEntity);

        //Aqui se usa nuevamente el Mapper, pero ahora convierte el DestinoEntity a Destino
        return destinoMapper.toDestino(destinoEntity);
    }

    @Override
    public List<Destino> findAll() {
        return destinoRepository.findAll().stream()
                .map(destinoMapper::toDestino)
                .collect(Collectors.toList());
    }

    @Override
    public Destino findById(Long id) {
        return destinoRepository.findById(id)
                .map(destinoMapper::toDestino)
                .orElseThrow(RuntimeException::new);
    }
}