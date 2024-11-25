package co.edu.eafit.amadeus.mappers;

import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

import co.edu.eafit.amadeus.entities.ContinenteEntity;
import co.edu.eafit.amadeus.models.Continente;

@Mapper(componentModel = "spring")
public interface ContinenteMapper {

  // Mapea de ContinenteEntity a Continente
    @Mapping(source = "id", target = "id")
    @Mapping(source = "nombre", target = "nombre")
    @Mapping(source = "descripcion", target = "descripcion")
    Continente toContinente(ContinenteEntity continenteEntity);

    // Mapea de Continente a ContinenteEntity
    @Mapping(source = "id", target = "id")
    @Mapping(source = "nombre", target = "nombre")
    @Mapping(source = "descripcion", target = "descripcion")
    ContinenteEntity toContinenteEntity(Continente continente);
}
