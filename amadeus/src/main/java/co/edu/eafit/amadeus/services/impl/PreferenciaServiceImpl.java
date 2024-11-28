package co.edu.eafit.amadeus.services.impl;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.edu.eafit.amadeus.entities.PreferenciaEntity;
import co.edu.eafit.amadeus.models.Continente;
import co.edu.eafit.amadeus.models.Destino;
import co.edu.eafit.amadeus.models.Preferencia;
import co.edu.eafit.amadeus.repositories.PreferenciaRepository;
import co.edu.eafit.amadeus.services.PreferenciaService;

@Service
public class PreferenciaServiceImpl implements PreferenciaService {

    @Autowired
    private PreferenciaRepository preferenciaRepository;

    @Override
    public Preferencia findPreferencia(Preferencia preferencia) {
        Optional<PreferenciaEntity> preferenciaEntityOptional = preferenciaRepository.findByEntornoAndClimaAndActividadAndAlojamientoAndTiempoViajeAndRangoEdad(
                preferencia.getEntorno(), preferencia.getClima(), preferencia.getActividad(),
                preferencia.getAlojamiento(), preferencia.getTiempoViaje(), preferencia.getRangoEdad()
        );

        if (!preferenciaEntityOptional.isPresent()) {
            return null; // No se encontró ninguna preferencia
        }

        PreferenciaEntity preferenciaEntity = preferenciaEntityOptional.get();

        preferencia.setId(preferenciaEntity.getId());
        preferencia.setEntorno(preferenciaEntity.getEntorno());
        preferencia.setClima(preferenciaEntity.getClima());
        preferencia.setActividad(preferenciaEntity.getActividad());
        preferencia.setAlojamiento(preferenciaEntity.getAlojamiento());
        preferencia.setTiempoViaje(preferenciaEntity.getTiempoViaje());
        preferencia.setRangoEdad(preferenciaEntity.getRangoEdad());

        // Para cambiar los destinos se crea una lista de ellos
        preferencia.setDestinos(preferenciaEntity.getDestinos().stream().map(destinoEntity -> {
            Destino destino = new Destino();
            destino.setId(destinoEntity.getId());
            destino.setNombre(destinoEntity.getNombre());

            Continente continente = new Continente();
            continente.setId(destinoEntity.getContinente().getId());
            continente.setNombre(destinoEntity.getContinente().getNombre());
            continente.setDescripcion(destinoEntity.getContinente().getDescripcion());

            destino.setContinente(continente);
            return destino;
        }).collect(Collectors.toList()));

        return preferencia;
    }

    @Override
    public List<Preferencia> findAll() {
        List<PreferenciaEntity> preferenciaEntities = preferenciaRepository.findAll();
        return preferenciaEntities.stream()
                .map(entity -> {
                    Preferencia preferencia = new Preferencia();
                    preferencia.setId(entity.getId());
                    preferencia.setEntorno(entity.getEntorno());
                    preferencia.setClima(entity.getClima());
                    preferencia.setActividad(entity.getActividad());
                    preferencia.setAlojamiento(entity.getAlojamiento());
                    preferencia.setTiempoViaje(entity.getTiempoViaje());
                    preferencia.setRangoEdad(entity.getRangoEdad());
                    preferencia.setDestinos(entity.getDestinos().stream()
                            .map(destinoEntity -> {
                                Destino destino = new Destino();
                                destino.setId(destinoEntity.getId());
                                destino.setNombre(destinoEntity.getNombre());
                                Continente continente = new Continente();
                                continente.setId(destinoEntity.getContinente().getId());
                                continente.setNombre(destinoEntity.getContinente().getNombre());
                                continente.setDescripcion(destinoEntity.getContinente().getDescripcion());
                                destino.setContinente(continente);
                                destino.setPais(destinoEntity.getPais());
                                destino.setIdioma(destinoEntity.getIdioma());
                                destino.setLugarImperdible(destinoEntity.getLugarImperdible());
                                destino.setComidaTipica(destinoEntity.getComidaTipica());
                                destino.setImgUrl(destinoEntity.getImgUrl());
                                return destino;
                            })
                            .collect(Collectors.toList()));
                    return preferencia;
                })
                .collect(Collectors.toList());
    }
}