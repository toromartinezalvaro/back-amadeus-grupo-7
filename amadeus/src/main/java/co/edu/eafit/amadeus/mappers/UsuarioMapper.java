package co.edu.eafit.amadeus.mappers;

import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

import co.edu.eafit.amadeus.entities.UsuarioEntity;
import co.edu.eafit.amadeus.models.Usuario;

@Mapper(componentModel = "spring")
public interface UsuarioMapper {

  // Mapea de UsuarioEntity a Usuario (modelo)
  @Mapping(source = "id", target = "id")
  @Mapping(source = "nombre", target = "nombre")
  @Mapping(source = "email", target = "email")
  @Mapping(target = "password", ignore = true) // Ignoramos el password ya que no se mapea
  @Mapping(source = "createdAt", target = "createdAt")
  @Mapping(source = "updatedAt", target = "updatedAt")
  Usuario toUsuario(UsuarioEntity usuarioEntity);

  // Mapea de Usuario (modelo) a UsuarioEntity (entidad)
  @Mapping(source = "id", target = "id")
  @Mapping(source = "nombre", target = "nombre")
  @Mapping(source = "email", target = "email")
  @Mapping(target = "password", ignore = true) // Ignoramos el password
  @Mapping(target = "createdAt", ignore = true) // Ignoramos el createdAt, se gestiona en la entidad con @PrePersist
  @Mapping(target = "updatedAt", ignore = true) // Ignoramos el updatedAt, se gestiona en la entidad con @PreUpdate
  UsuarioEntity toUsuarioEntity(Usuario usuario);
}
