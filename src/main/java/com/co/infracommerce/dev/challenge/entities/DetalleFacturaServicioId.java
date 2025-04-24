package com.co.infracommerce.dev.challenge.entities;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class DetalleFacturaServicioId implements Serializable {
    private Integer factura;
    private Integer mantenimiento;
    private Integer servicio;
}