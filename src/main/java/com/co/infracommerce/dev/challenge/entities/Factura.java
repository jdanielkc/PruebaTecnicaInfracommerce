package com.co.infracommerce.dev.challenge.entities;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.List;

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
@Table(name = "facturas")
public class Factura {

    @Id
    @Column(name = "codigo")
    private Integer codigo;

    @Column(name = "fecha_emision")
    private LocalDate fechaEmision;

    @Column(name = "total")
    private BigDecimal total;

    @Column(name = "subtotal")
    private BigDecimal subtotal;

    @Column(name = "iva")
    private BigDecimal iva;

    @ManyToOne
    @JoinColumn(name = "cli_tipo_documento", referencedColumnName = "tipo_documento")
    @JoinColumn(name = "cli_documento", referencedColumnName = "documento")
    private Cliente cliente;

    @OneToMany(mappedBy = "factura")
    private List<DetalleFacturaRepuesto> detallesRepuestos;

    @OneToMany(mappedBy = "factura")
    private List<DetalleFacturaServicio> detallesServicios;
}