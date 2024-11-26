package co.edu.eafit.amadeus.controllers;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import co.edu.eafit.amadeus.contracts.requests.UsuarioRequest;
import co.edu.eafit.amadeus.contracts.responses.UsuarioResponse;
import co.edu.eafit.amadeus.entities.UsuarioEntity;
import co.edu.eafit.amadeus.models.Usuario;
import co.edu.eafit.amadeus.services.UsuarioService;
import io.swagger.v3.oas.annotations.tags.Tag;
import io.swagger.v3.oas.annotations.Operation;
import org.springframework.web.bind.annotation.RequestBody;

@Tag(name = "Endpoints Usuario Controller")
@RestController
@RequestMapping("/usuarios")
public class UsuarioController {

    @Autowired
    private UsuarioService usuarioService;

    @PostMapping
    public ResponseEntity<UsuarioResponse> save(
            @RequestBody UsuarioRequest usuarioRequest
    ) {

        Usuario usuario = new Usuario();

        usuario.setNombre(usuarioRequest.getNombre());
        usuario.setEmail(usuarioRequest.getEmail());

        usuario = usuarioService.create(usuario);

        UsuarioResponse usuarioResponse
                = UsuarioResponse.builder()
                        .id(usuario.getId())
                        .nombre(usuario.getNombre())
                        .email(usuario.getEmail())
                        .build();

        return ResponseEntity
                .status(HttpStatus.CREATED)
                .body(usuarioResponse);
    }

    @Operation(summary = "Consulta todos los usuarios")
    @GetMapping
    public ResponseEntity<List<UsuarioResponse>> index() {
        List<Usuario> usuarios = usuarioService.findAll();

        final List<UsuarioResponse> responses
                = usuarios.stream()
                        .map(usuario -> {
                            UsuarioResponse usuarioResponse
                                    = UsuarioResponse.builder()
                                            .id(usuario.getId())
                                            .nombre(usuario.getNombre())
                                            .email(usuario.getEmail())
                                            .build();
                            return usuarioResponse;
                        }).collect(Collectors.toList());

        return ResponseEntity.ok(responses);
    }

    public UsuarioEntity guardarUsuario(String nombre, String email) {
        Usuario usuario = new Usuario();
        usuario.setNombre(nombre);
        usuario.setEmail(email);
        usuario = usuarioService.create(usuario);

        UsuarioEntity usuarioEntity = new UsuarioEntity();
        usuarioEntity.setId(usuario.getId());
        usuarioEntity.setNombre(usuario.getNombre());
        usuarioEntity.setEmail(usuario.getEmail());
        return usuarioEntity;
    }
}
