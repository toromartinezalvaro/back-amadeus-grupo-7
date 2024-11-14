package co.edu.eafit.amadeus.entities;

import java.io.Serializable;
import java.time.LocalDateTime;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.PrePersist;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "destinos")
public class DestinoEntity implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id;

    @Column(nullable = false, unique = true)
    String nombre;

    @ManyToOne // Muchos destinos estan en un solo continente
    @JoinColumn(name = "continentes_id") // Asigna el nombre de la FK en la tabla de 
    ContinenteEntity continente;

    @Column(name = "created_at", updatable = false)
    LocalDateTime createdAt;

    @PrePersist // Siempre que se guarde información se va a ejecutar el metodo prePersist para que agregue la fecha de creacion
    public void prePersist() {
        if (createdAt == null) {
            createdAt = LocalDateTime.now();
        }
    }
}
