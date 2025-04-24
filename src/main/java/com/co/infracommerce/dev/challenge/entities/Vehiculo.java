package com.co.infracommerce.dev.challenge.entities;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonBackReference;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Entity
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "vehiculos")
public class Vehiculo {

    @Id
    @Column(name = "placa")
    private String placa;

    @Column(name = "color")
    private String color;

    @ManyToOne
    @JoinColumn(name = "cod_marca")
    private Marca marca;

    @ManyToOne
    @JoinColumn(name = "tipo_documento", referencedColumnName = "tipo_documento")
    @JoinColumn(name = "documento", referencedColumnName = "documento")
    @JsonBackReference(value = "cliente-vehiculo")
    private Cliente cliente;

    @OneToMany(mappedBy = "vehiculo")
    @JsonBackReference(value = "vehiculo-mantenimiento")
    private List<Mantenimiento> mantenimientos;
}