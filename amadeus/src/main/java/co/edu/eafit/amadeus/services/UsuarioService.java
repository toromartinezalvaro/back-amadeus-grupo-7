package co.edu.eafit.amadeus.services;

import java.util.List;

import co.edu.eafit.amadeus.models.Usuario;


public interface UsuarioService {

  Usuario create(Usuario usuario);

  List<Usuario> findAll();

  Usuario findById(Long id);
}
