package co.edu.eafit.amadeus.entities;

import java.io.Serializable;
import java.util.List;

import co.edu.eafit.amadeus.models.enums.ActividadEnum;
import co.edu.eafit.amadeus.models.enums.AlojamientoEnum;
import co.edu.eafit.amadeus.models.enums.ClimaEnum;
import co.edu.eafit.amadeus.models.enums.EntornoEnum;
import co.edu.eafit.amadeus.models.enums.RangoEdadEnum;
import co.edu.eafit.amadeus.models.enums.TiempoViajeEnum;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinTable;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.Table;
import jakarta.persistence.UniqueConstraint;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "preferencias")
public class PreferenciaEntity implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id;

    @Enumerated(EnumType.STRING)
    EntornoEnum entorno;

    @Enumerated(EnumType.STRING)
    ClimaEnum clima;

    @Enumerated(EnumType.STRING)
    ActividadEnum actividad;

    @Enumerated(EnumType.STRING)
    AlojamientoEnum alojamiento;

    @Enumerated(EnumType.STRING)
    @Column(name = "tiempo_viaje")
    TiempoViajeEnum tiempoViaje;

    @Enumerated(EnumType.STRING)
    @Column(name = "rango_edad")
    RangoEdadEnum rangoEdad;

    @ManyToMany
    @JoinTable( //unir tablas de destinos y preferencias
            name = "destinos_preferencias",
            joinColumns = { // el PK de la tabla en la que estoy (preferencias)
                
                @JoinColumn(name = "preferencias_id")
            },
            inverseJoinColumns = { // se usa el PK de otra tabla que se quiere usar (destinos)
                
                @JoinColumn(name = "destinos_id")
            },
            uniqueConstraints = @UniqueConstraint(columnNames = {"preferencias_id", "destinos_id"}) // Estos se usa para que esa relacion entre las tablas no se pueda repetir ( no pueden haber dos filas que tengan los valores repetidos, por ejemplo si existe 1,1, no puede existir otro 1,1, pero si un 1,2 o 2,1)
    )
    List<DestinoEntity> destinos;

}
