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
@Table(name = "repuestos")
public class Repuesto {
    
    @Id
    @Column(name = "codigo")
    private Integer codigo;
    
    @Column(name = "nombre_repuesto")
    private String nombreRepuesto;
    
    @Column(name = "precio_unitario")
    private BigDecimal precioUnitario;
    
    @Column(name = "unidades_inventario")
    private Integer unidadesInventario;
    
    @Column(name = "proveedor")
    private String proveedor;
    
    @OneToMany(mappedBy = "repuesto")
    private List<RepuestoMantenimiento> mantenimientos;
}