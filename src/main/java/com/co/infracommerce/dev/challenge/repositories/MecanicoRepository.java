package com.co.infracommerce.dev.challenge.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.co.infracommerce.dev.challenge.entities.Mecanico;
import com.co.infracommerce.dev.challenge.entities.MecanicoId;

import java.util.List;

@Repository
public interface MecanicoRepository extends JpaRepository<Mecanico, MecanicoId> {

    /**
     * Encuentra mecánicos disponibles (activos) que no están asignados a
     * mantenimientos actualmente en proceso
     */
    @Query(value = "SELECT DISTINCT m.* FROM mecanicos m " +
            "WHERE m.estado = 'A' " +
            "AND NOT EXISTS (" +
            "    SELECT 1 FROM mantenimientos mant " +
            "    WHERE mant.mec_documento = m.documento " +
            "    AND mant.mec_tipo_documento = m.tipo_documento " +
            "    AND mant.estado IN (0, 1)" + // 0: En proceso, 1: Asignado
            ")", nativeQuery = true)
    List<Mecanico> findAvailableMecanicos();

    /**
     * Calcula las horas totales asignadas a cada mecánico en el último mes,
     * basado en el tiempo estimado de los servicios de mantenimiento
     */
    @Query(value = "SELECT m.documento, m.tipo_documento, " +
            "COALESCE(SUM(sm.tiempo_estimado), 0) as total_horas " +
            "FROM mecanicos m " +
            "LEFT JOIN mantenimientos mant ON m.documento = mant.mec_documento " +
            "AND m.tipo_documento = mant.mec_tipo_documento " +
            "AND mant.fecha >= CURRENT_DATE - INTERVAL '1 month' " +
            "LEFT JOIN servicios_x_mantenimientos sm ON mant.codigo = sm.cod_mantenimiento " +
            "WHERE m.estado = 'A' " +
            "GROUP BY m.documento, m.tipo_documento " +
            "ORDER BY total_horas ASC " +
            "LIMIT 10", nativeQuery = true)
    List<Object[]> findTop10MecanicosByPriority();
}