package co.edu.eafit.amadeus.mappers;

import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

import co.edu.eafit.amadeus.contracts.responses.DestinoResponse;
import co.edu.eafit.amadeus.entities.DestinoEntity;
import co.edu.eafit.amadeus.models.Destino;

@Mapper(componentModel= "spring")
public interface DestinoMapper {

    // Mapea de DestinoEntity a Destino
    @Mapping(source = "continente.id", target = "continente.id")
    @Mapping(source = "continente.nombre", target = "continente.nombre")
    @Mapping(source = "continente.descripcion", target = "continente.descripcion")
    Destino toDestino(DestinoEntity destinoEntity);

    // Mapea de Destino a DestinoEntity
    @Mapping(source = "continente.id", target = "continente.id")
    @Mapping(source = "continente.nombre", target = "continente.nombre")
    @Mapping(source = "continente.descripcion", target = "continente.descripcion")
    @Mapping(target= "createdAt", ignore= true) //Ignorar esto ya que se crea con el @PrePersist
    DestinoEntity toDestinoEntity(Destino destino);

    // Mapea de Destino a DestinoResponse
    @Mapping(source = "id", target = "id")
    @Mapping(source = "nombre", target = "nombre")
    @Mapping(source = "continente.nombre", target = "nombreContinente")
    DestinoResponse toDestinoResponse(Destino destino);
}


// destino = {
//     "entorno": "PLAYA",
//     "clima": "CALUROSO",
//     "actividad": "DEPORTE",
//     "alojamiento": "HOTEL_LUJO",
//     "tiempo_viaje": "MENOR_UNA_SEMANA",
//     "rango_edad": "MENOR_QUE_TREINTA"
//   }


// destinoEntity {
//     "entornoEntity": "PLAYA",
//     "climaEntity": "CALUROSO",
//     "actividadEntity": "DEPORTE",
//     "alojamientoEntity": "HOTEL_LUJO",
//     "tiempo_viajeEntity": "MENOR_UNA_SEMANA",
//     "rango_edadEntity": "MENOR_QUE_TREINTA"
//   }


// destinoEntity.climaEntity = destino.clima
