package com.co.infracommerce.dev.challenge.entities;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
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
@Table(name = "servicios_x_mantenimientos")
public class ServicioMantenimiento {
    
    @Id
    @Column(name = "codigo")
    private Integer codigo;
    
    @Column(name = "tiempo_estimado")
    private Integer tiempoEstimado;
    
    @ManyToOne
    @JoinColumn(name = "cod_servicio")
    private Servicio servicio;
    
    @ManyToOne
    @JoinColumn(name = "cod_mantenimiento")
    private Mantenimiento mantenimiento;
}