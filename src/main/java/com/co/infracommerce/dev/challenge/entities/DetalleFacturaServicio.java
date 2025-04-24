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
@IdClass(DetalleFacturaServicioId.class)
@Table(name = "detalle_factura_servicios")
public class DetalleFacturaServicio {
    
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
    @JoinColumn(name = "cod_servicio")
    private Servicio servicio;
    
    @Column(name = "precio_mano_obra")
    private BigDecimal precioManoObra;
    
    @Column(name = "descuento")
    private BigDecimal descuento;
}