package co.edu.eafit.amadeus.services.impl;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.edu.eafit.amadeus.entities.UsuarioEntity;
import co.edu.eafit.amadeus.mappers.UsuarioMapper;
import co.edu.eafit.amadeus.models.Usuario;
import co.edu.eafit.amadeus.repositories.UsuarioRepository;
import co.edu.eafit.amadeus.services.UsuarioService;

@Service
public class UsuarioServiceImpl implements UsuarioService {

    @Autowired
    private UsuarioRepository usuarioRepository;

    @Autowired
    private UsuarioMapper usuarioMapper;

    @Override
    public Usuario create(Usuario usuario) {
        // Convertir de Usuario (modelo) a UsuarioEntity (entidad)
        UsuarioEntity usuarioEntity = usuarioMapper.toUsuarioEntity(usuario);

        // Guardamos el UsuarioEntity en la base de datos
        usuarioEntity = usuarioRepository.save(usuarioEntity);

        // Convertir de UsuarioEntity (entidad) a Usuario (modelo)
        return usuarioMapper.toUsuario(usuarioEntity);
    }

    @Override
    public List<Usuario> findAll() {
        // Recupera todos los usuarios desde la base de datos (UsuarioEntity)
        List<UsuarioEntity> usuarioEntities = usuarioRepository.findAll();

        // Mapea de UsuarioEntity a Usuario usando el UsuarioMapper
        return usuarioEntities.stream()
                .map(usuarioMapper::toUsuario) // Usamos el método toUsuario del UsuarioMapper
                .collect(Collectors.toList());  // Convertimos el stream en una lista
    }

}
