package co.edu.eafit.amadeus.repositories;


import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import co.edu.eafit.amadeus.entities.PreferenciaEntity;
import co.edu.eafit.amadeus.models.enums.ActividadEnum;
import co.edu.eafit.amadeus.models.enums.AlojamientoEnum;
import co.edu.eafit.amadeus.models.enums.ClimaEnum;
import co.edu.eafit.amadeus.models.enums.EntornoEnum;
import co.edu.eafit.amadeus.models.enums.RangoEdadEnum;
import co.edu.eafit.amadeus.models.enums.TiempoViajeEnum;

@Repository
public interface PreferenciaRepository extends JpaRepository<PreferenciaEntity, Long> {

    //Se usa en caso de que no encuentre ningun dato
    // Este metodo hace automaticamente la consulta cuando se llama en el PreferenciaService
    Optional<PreferenciaEntity> findByEntornoAndClimaAndActividadAndAlojamientoAndTiempoViajeAndRangoEdad(
            EntornoEnum entorno,
            ClimaEnum clima,
            ActividadEnum actividad,
            AlojamientoEnum alojamiento,
            TiempoViajeEnum tiempoViaje,
            RangoEdadEnum rangoEdad
    );
}
