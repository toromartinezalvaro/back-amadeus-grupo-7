package co.edu.eafit.amadeus.controllers;

import co.edu.eafit.amadeus.contracts.requests.PreferenciaRequest;
import co.edu.eafit.amadeus.contracts.responses.DestinoResponse;
import co.edu.eafit.amadeus.contracts.responses.PreferenciaResponse;
import co.edu.eafit.amadeus.entities.*;
import co.edu.eafit.amadeus.models.Preferencia;
import co.edu.eafit.amadeus.models.Destino;
import co.edu.eafit.amadeus.models.Continente;
import co.edu.eafit.amadeus.repositories.*;
import co.edu.eafit.amadeus.services.PreferenciaService;
import io.swagger.annotations.Api;
import io.swagger.v3.oas.annotations.Operation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.stream.Collectors;

@Api(tags = {"Endpoints Productos Controller"})
@RestController
@RequestMapping("/preferencias")
public class PreferenciaController {

    @Autowired
    private PreferenciaService preferenciaService;

    @Autowired
    private UsuarioController usuarioController;

    @Autowired
    private PreferenciaRepository preferenciaRepository;

    @Autowired
    private PreferenciaUsuarioRepository preferenciaUsuarioRepository;

    @Autowired
    private DestinoRepository destinoRepository;

    @Operation(summary = "Consulta los destinos según las preferencias", description = "Consulta los destinos según las preferencias")
    @PostMapping
    public ResponseEntity<PreferenciaResponse> getDestinos(
            @RequestBody PreferenciaRequest request
    ) {
        // Guardar usuario utilizando UsuarioController
        UsuarioEntity usuario = usuarioController.guardarUsuario(request.getNombre(), request.getEmail());

        // Consultar preferencias existentes
        Preferencia preferencia = new Preferencia();
        preferencia.setEntorno(request.getEntorno());
        preferencia.setClima(request.getClima());
        preferencia.setActividad(request.getActividad());
        preferencia.setAlojamiento(request.getAlojamiento());
        preferencia.setTiempoViaje(request.getTiempoViaje());
        preferencia.setRangoEdad(request.getRangoEdad());

        preferencia = preferenciaService.findPreferencia(preferencia);

        if (preferencia == null) {
            // Crear nueva preferencia
            PreferenciaEntity nuevaPreferencia = new PreferenciaEntity();
            nuevaPreferencia.setEntorno(request.getEntorno());
            nuevaPreferencia.setClima(request.getClima());
            nuevaPreferencia.setActividad(request.getActividad());
            nuevaPreferencia.setAlojamiento(request.getAlojamiento());
            nuevaPreferencia.setTiempoViaje(request.getTiempoViaje());
            nuevaPreferencia.setRangoEdad(request.getRangoEdad());
            nuevaPreferencia = preferenciaRepository.save(nuevaPreferencia);

            // Buscar destinos con continente_id igual a 1
            List<DestinoEntity> destinos = destinoRepository.findByContinenteId(1L);

            // Asociar la nueva preferencia con los destinos encontrados
            nuevaPreferencia.setDestinos(destinos);
            preferenciaRepository.save(nuevaPreferencia);

            // Actualizar la preferencia con la nueva preferencia creada
            preferencia = new Preferencia();
            preferencia.setId(nuevaPreferencia.getId());
            preferencia.setEntorno(nuevaPreferencia.getEntorno());
            preferencia.setClima(nuevaPreferencia.getClima());
            preferencia.setActividad(nuevaPreferencia.getActividad());
            preferencia.setAlojamiento(nuevaPreferencia.getAlojamiento());
            preferencia.setTiempoViaje(nuevaPreferencia.getTiempoViaje());
            preferencia.setRangoEdad(nuevaPreferencia.getRangoEdad());

            // Mapear destinos a objetos de dominio
            List<Destino> destinosDominio = destinos.stream().map(destinoEntity -> {
                Destino destino = new Destino();
                destino.setId(destinoEntity.getId());
                destino.setNombre(destinoEntity.getNombre());
                Continente continente = new Continente();
                continente.setId(destinoEntity.getContinente().getId());
                continente.setNombre(destinoEntity.getContinente().getNombre());
                continente.setDescripcion(destinoEntity.getContinente().getDescripcion());
                destino.setContinente(continente);
                return destino;
            }).collect(Collectors.toList());

            preferencia.setDestinos(destinosDominio);
        }

        // Mapear destinos a respuestas
        List<DestinoResponse> destinoResponses = preferencia.getDestinos().stream()
                .map(destino -> DestinoResponse.builder()
                        .id(destino.getId())
                        .nombre(destino.getNombre())
                        .nombreContinente(destino.getContinente().getNombre())
                        .build())
                .collect(Collectors.toList());

        // Guardar relación preferencia-usuario
        PreferenciaUsuarioEntity preferenciaUsuario = new PreferenciaUsuarioEntity();
        preferenciaUsuario.setUsuario(usuario);
        preferenciaUsuario.setPreferencia(preferenciaRepository.findById(preferencia.getId()).orElse(null));
        preferenciaUsuarioRepository.save(preferenciaUsuario);

        PreferenciaResponse preferenciaResponse = PreferenciaResponse.builder()
                .destinoResponseList(destinoResponses)
                .build();

        return ResponseEntity.ok(preferenciaResponse);
    }

    @Operation(summary = "Consulta las preferencias del usuario", description = "Consulta las preferencias del usuario")
    @GetMapping("/usuario/{email}")
    public ResponseEntity<List<PreferenciaResponse>> getPreferenciasByUsuario(@PathVariable String email) {
        List<PreferenciaUsuarioEntity> preferenciasUsuarios = preferenciaUsuarioRepository.findByUsuarioEmail(email);

        List<PreferenciaResponse> preferenciasResponses = preferenciasUsuarios.stream()
                .map(preferenciaUsuario -> {
                    PreferenciaEntity preferencia = preferenciaUsuario.getPreferencia();
                    List<DestinoResponse> destinoResponses = preferencia.getDestinos().stream()
                            .map(destino -> DestinoResponse.builder()
                                    .id(destino.getId())
                                    .nombre(destino.getNombre())
                                    .nombreContinente(destino.getContinente().getNombre())
                                    .build())
                            .collect(Collectors.toList());

                    return PreferenciaResponse.builder()
                            .destinoResponseList(destinoResponses)
                            .build();
                }).collect(Collectors.toList());

        return ResponseEntity.ok(preferenciasResponses);
    }
}