package co.edu.eafit.amadeus.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import co.edu.eafit.amadeus.entities.PreferenciaUsuarioEntity;

@Repository
public interface PreferenciaUsuarioRepository extends JpaRepository<PreferenciaUsuarioEntity, Long> {

    List<PreferenciaUsuarioEntity> findByUsuarioId(Long usuarioId);
    List<PreferenciaUsuarioEntity> findByUsuarioEmail(String email);
    List<PreferenciaUsuarioEntity> findByPreferenciaId(Long preferenciaId);
}
