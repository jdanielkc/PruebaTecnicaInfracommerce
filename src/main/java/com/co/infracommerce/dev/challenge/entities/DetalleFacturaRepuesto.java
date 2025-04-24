package com.co.infracommerce.dev.challenge.entities;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.IdClass;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;

@Data
@Entity
@Builder
@NoArgsConstructor
@AllArgsConstructor
@IdClass(DetalleFacturaRepuestoId.class)
@Table(name = "detalle_factura_repuestos")
public class DetalleFacturaRepuesto {
    
    @Id
    @ManyToOne
    @JoinColumn(name = "cod_factura")
    private Factura factura;
    
    @Id
    @ManyToOne
    @JoinColumn(name = "cod_mantenimiento")
    private Mantenimiento mantenimiento;
    
    @Id
    @ManyToOne
    @JoinColumn(name = "cod_repuesto")
    private Repuesto repuesto;
    
    @Column(name = "unidades_usadas")
    private Integer unidadesUsadas;
    
    @Column(name = "precio_unitario")
    private BigDecimal precioUnitario;
}