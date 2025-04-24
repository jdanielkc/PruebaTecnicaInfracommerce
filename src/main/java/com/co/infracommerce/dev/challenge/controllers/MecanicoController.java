package com.co.infracommerce.dev.challenge.controllers;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

import com.co.infracommerce.dev.challenge.entities.Mecanico;
import com.co.infracommerce.dev.challenge.entities.MecanicoId;
import com.co.infracommerce.dev.challenge.models.dtos.MecanicoDTO;
import com.co.infracommerce.dev.challenge.models.dtos.MecanicoPrioritarioDTO;
import com.co.infracommerce.dev.challenge.services.MecanicoService;

import jakarta.validation.Valid;
import lombok.AllArgsConstructor;

@RestController
@AllArgsConstructor
@RequestMapping("/api/v1/mechanics")
public class MecanicoController {

    private MecanicoService mecanicoService;

    @GetMapping
    public ResponseEntity<List<Mecanico>> getAllMecanicos() {
        List<Mecanico> mecanicos = mecanicoService.getAllMecanicos();
        return ResponseEntity.ok(mecanicos);
    }

    @GetMapping("/{tipoDocumento}/{documento}")
    public ResponseEntity<Mecanico> getMecanicoById(
            @PathVariable String tipoDocumento,
            @PathVariable Integer documento) {
        
        MecanicoId id = new MecanicoId(documento, tipoDocumento);
        Optional<Mecanico> mecanico = mecanicoService.getMecanicoById(id);
        
        return mecanico.map(ResponseEntity::ok)
                .orElse(ResponseEntity.notFound().build());
    }
    
    /**
     * Obtiene los 10 mecánicos prioritarios según disponibilidad y horas asignadas
     */
    @GetMapping("/prioritarios")
    public ResponseEntity<List<MecanicoPrioritarioDTO>> getTop10MecanicosPrioritarios() {
        List<MecanicoPrioritarioDTO> mecanicosPrioritarios = mecanicoService.getTop10MecanicosPrioritarios();
        return ResponseEntity.ok(mecanicosPrioritarios);
    }

    @PostMapping
    public ResponseEntity<Mecanico> createMecanico(@Valid @RequestBody MecanicoDTO mecanicoDTO) {
        Mecanico createdMecanico = mecanicoService.saveMecanico(mecanicoDTO);
        return ResponseEntity.status(HttpStatus.CREATED).body(createdMecanico);
    }

    @PutMapping("/{tipoDocumento}/{documento}")
    public ResponseEntity<Mecanico> updateMecanico(
            @PathVariable String tipoDocumento,
            @PathVariable Integer documento,
            @Valid @RequestBody MecanicoDTO mecanicoDTO) {
        
        MecanicoId id = new MecanicoId(documento, tipoDocumento);
        Optional<Mecanico> updatedMecanico = mecanicoService.updateMecanico(id, mecanicoDTO);
        
        return updatedMecanico.map(ResponseEntity::ok)
                .orElse(ResponseEntity.notFound().build());
    }

    @DeleteMapping("/{tipoDocumento}/{documento}")
    public ResponseEntity<Void> deleteMecanico(
            @PathVariable String tipoDocumento,
            @PathVariable Integer documento) {
        
        MecanicoId id = new MecanicoId(documento, tipoDocumento);
        boolean deleted = mecanicoService.deleteMecanico(id);
        
        return deleted ? ResponseEntity.noContent().build() : ResponseEntity.notFound().build();
    }

    @ResponseStatus(HttpStatus.BAD_REQUEST)
    @ExceptionHandler(MethodArgumentNotValidException.class)
    public Map<String, String> handleValidationExceptions(MethodArgumentNotValidException ex) {
        Map<String, String> errors = new HashMap<>();
        ex.getBindingResult().getAllErrors().forEach(error -> {
            String fieldName = ((FieldError) error).getField();
            String errorMessage = error.getDefaultMessage();
            errors.put(fieldName, errorMessage);
        });
        return errors;
    }
}