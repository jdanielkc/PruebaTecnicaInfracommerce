package com.co.infracommerce.dev.challenge.entities;

import java.util.List;

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

@Data
@Entity
@Builder
@NoArgsConstructor
@AllArgsConstructor
@IdClass(ClienteId.class)
@Table(name = "clientes")
public class Cliente {
    
    @Id
    @Column(name = "tipo_documento")
    private String tipoDocumento;
    
    @Id
    @Column(name = "documento")
    private Integer documento;
    
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
    
    @OneToMany(mappedBy = "cliente")
    private List<Vehiculo> vehiculos;
    
    @OneToMany(mappedBy = "cliente")
    private List<Factura> facturas;
}