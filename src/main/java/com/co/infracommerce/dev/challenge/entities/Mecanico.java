package com.co.infracommerce.dev.challenge.entities;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.IdClass;
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
@IdClass(MecanicoId.class)
@Table(name = "mecanicos")
public class Mecanico {

    @Id
    @Column(name = "documento")
    private Integer documento;

    @Id
    @Column(name = "tipo_documento")
    private String tipoDocumento;

    @Column(name = "primer_nombre")
    private String primerNombre;

    @Column(name = "segundo_nombre")
    private String segundoNombre;

    @Column(name = "primer_apellido")
    private String primerApellido;

    @Column(name = "segundo_apellido")
    private String segundoApellido;

    @Column(name = "celular")
    private String celular;

    @Column(name = "direccion")
    private String direccion;

    @Column(name = "email")
    private String email;

    @Column(name = "estado")
    private String estado;

    @OneToMany(mappedBy = "mecanico")
    @JsonBackReference(value = "mecanico-mantenimiento")
    private List<Mantenimiento> mantenimientos;
}