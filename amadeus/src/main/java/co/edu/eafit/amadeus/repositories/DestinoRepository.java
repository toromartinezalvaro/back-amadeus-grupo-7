package co.edu.eafit.amadeus.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import co.edu.eafit.amadeus.entities.DestinoEntity;

@Repository
public interface DestinoRepository extends JpaRepository<DestinoEntity, Long> {
    List<DestinoEntity> findByContinenteId(Long continenteId);
}
