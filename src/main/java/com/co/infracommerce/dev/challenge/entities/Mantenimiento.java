package com.co.infracommerce.dev.challenge.entities;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;

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
@Table(name = "mantenimientos")
public class Mantenimiento {

    @Id
    @Column(name = "codigo")
    private Integer codigo;

    @Column(name = "estado")
    private Integer estado;

    @ManyToOne
    @JoinColumn(name = "cod_placa")
    @JsonManagedReference(value = "vehiculo-mantenimiento")
    private Vehiculo vehiculo;

    @Column(name = "fecha")
    private LocalDate fecha;

    @ManyToOne
    @JoinColumn(name = "mec_documento", referencedColumnName = "documento")
    @JoinColumn(name = "mec_tipo_documento", referencedColumnName = "tipo_documento")
    @JsonManagedReference(value = "mecanico-mantenimiento")
    private Mecanico mecanico;

    @Column(name = "presupuesto_cliente")
    private BigDecimal presupuestoCliente;

    @OneToMany(mappedBy = "mantenimiento")
    @JsonBackReference(value = "mantenimiento-foto")
    private List<Foto> fotos;

    @OneToMany(mappedBy = "mantenimiento")
    @JsonBackReference(value = "mantenimiento-servicio")
    private List<ServicioMantenimiento> servicios;

    @OneToMany(mappedBy = "mantenimiento")
    @JsonBackReference(value = "mantenimiento-repuesto")
    private List<RepuestoMantenimiento> repuestos;
}