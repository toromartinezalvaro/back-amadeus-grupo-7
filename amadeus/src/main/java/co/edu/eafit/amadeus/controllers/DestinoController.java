package co.edu.eafit.amadeus.controllers;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import co.edu.eafit.amadeus.contracts.requests.DestinoRequest;
import co.edu.eafit.amadeus.contracts.responses.DestinoResponse;
import co.edu.eafit.amadeus.mappers.DestinoMapper;
import co.edu.eafit.amadeus.models.Continente;
import co.edu.eafit.amadeus.models.Destino;
import co.edu.eafit.amadeus.services.DestinoService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;

@Tag(name = "Endpoints Destino Controller")
@RestController
@RequestMapping("/destinos")
public class DestinoController {

        @Autowired
        private DestinoService destinoService;

        @Autowired
        private DestinoMapper destinoMapper;

        @Operation(summary = "Crea un destino", description = "Crea un destino")
        @PostMapping
        public ResponseEntity<DestinoResponse> save(
                @RequestBody DestinoRequest destinoRequest
        ) {

        Destino destino = new Destino();
        Continente continente = new Continente();

        continente.setId(destinoRequest.getContinente());
        destino.setNombre(destinoRequest.getNombre());
        destino.setContinente(continente);

        destino = destinoService.create(destino);

        DestinoResponse destinoResponse
                = DestinoResponse.builder()
                        .id(destino.getId())
                        .nombre(destino.getNombre())
                        .nombreContinente(destino.getContinente().getNombre())
                        .build();
        return ResponseEntity
                .status(HttpStatus.CREATED)
                .body(destinoResponse);
        }

        @Operation(summary = "Consulta todos los destinos", description = "Consulta todos los destinos")
        @GetMapping
        public ResponseEntity<List<DestinoResponse>> index() {
        List<Destino> destinos = destinoService.findAll();

        // Usar el mapper para convertir la lista de Destino a DestinoResponse
        final List<DestinoResponse> responses = destinos.stream()
                .map(destinoMapper::toDestinoResponse)
                .collect(Collectors.toList());

        return ResponseEntity.ok(responses);
        }

        @Operation(summary = "Consulta destinos por IDs", description = "Consulta destinos por IDs")
        @GetMapping("/ids")
        public ResponseEntity<List<DestinoResponse>> findByIds(@RequestParam List<Long> ids) {
        List<DestinoResponse> destinoResponses = ids.stream()
                .map(id -> {
                        Destino destino = destinoService.findById(id);
                        if (destino != null) {
                        return destinoMapper.toDestinoResponse(destino);
                        } else {
                        return null;
                        }
                })
                .filter(destinoResponse -> destinoResponse != null)
                .collect(Collectors.toList());

        return ResponseEntity.ok(destinoResponses);
        }
}
