package co.edu.eafit.amadeus.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import co.edu.eafit.amadeus.entities.UsuarioEntity;

public interface UsuarioRepository extends JpaRepository<UsuarioEntity, Long>{

}
