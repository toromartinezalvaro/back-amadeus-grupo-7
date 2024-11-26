package co.edu.eafit.amadeus.repositories;

import co.edu.eafit.amadeus.entities.DestinoEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface DestinoRepository extends JpaRepository<DestinoEntity, Long> {
    List<DestinoEntity> findByContinenteId(Long continenteId);
}

// package co.edu.eafit.amadeus.repositories;

// import co.edu.eafit.amadeus.entities.DestinoEntity;
// import org.springframework.data.jpa.repository.JpaRepository;
// // import org.springframework.data.jpa.repository.Query;
// // import org.springframework.data.repository.query.Param;
// import org.springframework.stereotype.Repository;

// import java.util.List;

// @Repository
// public interface DestinoRepository extends JpaRepository<DestinoEntity, Long> {
//     List<DestinoEntity> findByContinenteId(Long continenteId);

//     // @Query("SELECT d FROM DestinoEntity d JOIN d.preferencias p WHERE p.id = :preferenciaId")
//     // List<DestinoEntity> findByPreferenciaId(@Param("preferenciaId") Long preferenciaId);
// }