package com.co.infracommerce.dev.challenge.entities;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonBackReference;

@Data
@Entity
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "marcas")
public class Marca {

    @Id
    @Column(name = "codigo")
    private Integer codigo;

    @Column(name = "nombre_marca")
    private String nombreMarca;

    @OneToMany(mappedBy = "marca")
    @JsonBackReference(value = "marca-vehiculo")
    private List<Vehiculo> vehiculos;
}