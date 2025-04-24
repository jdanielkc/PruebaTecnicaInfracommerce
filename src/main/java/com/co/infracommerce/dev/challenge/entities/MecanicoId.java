package com.co.infracommerce.dev.challenge.entities;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class MecanicoId implements Serializable {
    private Integer documento;
    private String tipoDocumento;
}