package com.co.infracommerce.dev.challenge.models.dtos;


import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Pattern;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class MecanicoDTO {
    
    @NotNull(message = "El número de documento no puede ser nulo")
    private Integer documento;
    
    @NotBlank(message = "El tipo de documento no puede estar vacío")
    private String tipoDocumento;
    
    @NotBlank(message = "El primer nombre no puede estar vacío")
    private String primerNombre;
    
    private String segundoNombre;
    
    @NotBlank(message = "El primer apellido no puede estar vacío")
    private String primerApellido;
    
    private String segundoApellido;
    
    @NotBlank(message = "El número de celular no puede estar vacío")
    private String celular;
    
    @NotBlank(message = "La dirección no puede estar vacía")
    private String direccion;
    
    @NotBlank(message = "El email no puede estar vacío")
    @Email(message = "El formato del email no es válido")
    private String email;
    
    @Pattern(regexp = "[AI]", message = "El estado debe ser 'A' (Activo) o 'I' (Inactivo)")
    private String estado;
}