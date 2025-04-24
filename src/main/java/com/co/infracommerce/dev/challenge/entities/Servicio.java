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

import java.math.BigDecimal;
import java.util.List;

@Data
@Entity
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "servicios")
public class Servicio {
    
    @Id
    @Column(name = "codigo")
    private Integer codigo;
    
    @Column(name = "nombre_servicio")
    private String nombreServicio;
    
    @Column(name = "precio")
    private BigDecimal precio;
    
    @Column(name = "precio_min_man_obra")
    private BigDecimal precioMinManObra;
    
    @Column(name = "precio_max_man_obra")
    private BigDecimal precioMaxManObra;
    
    @OneToMany(mappedBy = "servicio")
    private List<ServicioMantenimiento> mantenimientos;
}