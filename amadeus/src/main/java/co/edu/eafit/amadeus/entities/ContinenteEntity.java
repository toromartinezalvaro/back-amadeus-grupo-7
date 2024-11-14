package co.edu.eafit.amadeus.entities;

import java.io.Serializable; // se implementa para poder convertir la informacion para que se entienda entre el codigo y la DB

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Getter; 
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "continentes") //el nombre que se va a asignar a la tabla (debe ir en plural y minuscula)
public class ContinenteEntity implements Serializable {

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY) // para generar automaticamente el id
  Long id;

  @Column(nullable = false, unique = true)
  String nombre;

  @Column
  String descripcion;
}
