package com.co.infracommerce.dev.challenge.services;

import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.stream.Collectors;

import org.springframework.stereotype.Service;

import com.co.infracommerce.dev.challenge.entities.Mecanico;
import com.co.infracommerce.dev.challenge.entities.MecanicoId;
import com.co.infracommerce.dev.challenge.models.dtos.MecanicoDTO;
import com.co.infracommerce.dev.challenge.models.dtos.MecanicoPrioritarioDTO;
import com.co.infracommerce.dev.challenge.repositories.MecanicoRepository;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class MecanicoService {

    private MecanicoRepository mecanicoRepository;

    public List<Mecanico> getAllMecanicos() {
        return mecanicoRepository.findAll();
    }

    public Optional<Mecanico> getMecanicoById(MecanicoId id) {
        return mecanicoRepository.findById(id);
    }

    public Mecanico saveMecanico(MecanicoDTO mecanicoDTO) {
        Mecanico mecanico = convertToEntity(mecanicoDTO);
        return mecanicoRepository.save(mecanico);
    }

    public Optional<Mecanico> updateMecanico(MecanicoId id, MecanicoDTO mecanicoDTO) {
        if (!mecanicoRepository.existsById(id)) {
            return Optional.empty();
        }

        Mecanico mecanico = convertToEntity(mecanicoDTO);
        return Optional.of(mecanicoRepository.save(mecanico));
    }

    public boolean deleteMecanico(MecanicoId id) {
        if (!mecanicoRepository.existsById(id)) {
            return false;
        }

        mecanicoRepository.deleteById(id);
        return true;
    }

    /**
     * Obtiene los 10 mecánicos con mayor prioridad según disponibilidad y horas
     * asignadas
     */
    public List<MecanicoPrioritarioDTO> getTop10MecanicosPrioritarios() {
        // Método combinado que integra las dos consultas
        List<Object[]> top10MecanicosPrioritarios = mecanicoRepository.findTop10MecanicosByPriority();

        // Mapa para almacenar horas asignadas por mecánico (clave:
        // documento-tipoDocumento)
        Map<String, Integer> horasAsignadasPorMecanico = top10MecanicosPrioritarios.stream()
                .collect(Collectors.toMap(
                        row -> row[0] + "-" + row[1], // clave: documento-tipoDocumento
                        row -> ((Number) row[2]).intValue() // valor: horas asignadas
                ));

        // Obtener los mecánicos disponibles
        List<Mecanico> mecanicosDisponibles = mecanicoRepository.findAvailableMecanicos();

        // Filtrar solo los mecánicos que están en el top 10 de prioridad y mapearlos al
        // DTO
        return mecanicosDisponibles.stream()
                .filter(mecanico -> horasAsignadasPorMecanico
                        .containsKey(mecanico.getDocumento() + "-" + mecanico.getTipoDocumento()))
                .map(mecanico -> MecanicoPrioritarioDTO.builder()
                        .documento(mecanico.getDocumento())
                        .tipoDocumento(mecanico.getTipoDocumento())
                        .primerNombre(mecanico.getPrimerNombre())
                        .segundoNombre(mecanico.getSegundoNombre())
                        .primerApellido(mecanico.getPrimerApellido())
                        .segundoApellido(mecanico.getSegundoApellido())
                        .horasAsignadas(horasAsignadasPorMecanico
                                .get(mecanico.getDocumento() + "-" + mecanico.getTipoDocumento()))
                        .build())
                .limit(10).toList();
    }

    private Mecanico convertToEntity(MecanicoDTO dto) {
        return Mecanico.builder()
                .documento(dto.getDocumento())
                .tipoDocumento(dto.getTipoDocumento())
                .primerNombre(dto.getPrimerNombre())
                .segundoNombre(dto.getSegundoNombre())
                .primerApellido(dto.getPrimerApellido())
                .segundoApellido(dto.getSegundoApellido())
                .celular(dto.getCelular())
                .direccion(dto.getDireccion())
                .email(dto.getEmail())
                .estado(dto.getEstado())
                .build();
    }
}