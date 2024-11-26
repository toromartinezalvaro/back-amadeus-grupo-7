package co.edu.eafit.amadeus.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import co.edu.eafit.amadeus.entities.ContinenteEntity;

@Repository
public interface ContinenteRepository extends JpaRepository<ContinenteEntity, Long>{

}
