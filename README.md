# API de Gestión de Taller Mecánico

## Descripción
Microservicio para administrar un taller mecánico, gestionando mecánicos, clientes, vehículos, mantenimientos, repuestos y servicios. El sistema permite asignar mecánicos a mantenimientos basados en disponibilidad y carga de trabajo.

## Tecnologías utilizadas
- Java 17
- Spring Boot 3.4.4
- Spring Data JPA
- Hibernate
- PostgreSQL
- Maven
- Lombok
- Jackson
- Bean Validation

## Requisitos del sistema
- JDK 17 o superior
- Maven 3.6.0 o superior
- PostgreSQL 12 o superior

## Estructura principal

### Entidades principales
- **Cliente**: Propietarios de vehículos
- **Vehículo**: Automóviles pertenecientes a clientes
- **Marca**: Marcas de vehículos
- **Mecánico**: Personal técnico del taller
- **Mantenimiento**: Servicios de mantenimiento realizados en vehículos
- **Servicio**: Tipos de servicios ofrecidos (ej. cambio de aceite)
- **Repuesto**: Inventario de partes y refacciones
- **Factura**: Registros de cobro por servicios y repuestos

### Características principales

#### 1. Mecánicos priorizados (Sistema inteligente de asignación)
El sistema puede asignar mecánicos a mantenimientos según:
- Disponibilidad actual (mecánicos no ocupados)
- Horas de trabajo acumuladas (distribuye la carga equitativamente)
- Obtiene los 10 mejores candidatos para asignación

#### 2. Gestión completa CRUD
- Gestión de mecánicos (crear, leer, actualizar, eliminar)
- Seguimiento de mantenimientos (pendientes, en proceso, finalizados)
- Control de inventario de repuestos

#### 3. Relaciones complejas entre entidades
- Un cliente puede tener múltiples vehículos
- Un vehículo puede tener múltiples mantenimientos
- Un mantenimiento puede requerir varios servicios y repuestos

## API REST Endpoints

### Mecánicos

- **GET /api/v1/mechanics**: Lista todos los mecánicos
- **GET /api/v1/mechanics/{tipoDocumento}/{documento}**: Obtiene un mecánico por su ID
- **GET /api/v1/mechanics/prioritarios**: Lista los 10 mecánicos prioritarios disponibles
- **POST /api/v1/mechanics**: Crea un nuevo mecánico
- **PUT /api/v1/mechanics/{tipoDocumento}/{documento}**: Actualiza un mecánico existente
- **DELETE /api/v1/mechanics/{tipoDocumento}/{documento}**: Elimina un mecánico

## Patrones implementados

1. **Patrón Repositorio**: Mediante Spring Data JPA
2. **Patrón DTO (Data Transfer Object)**: Para transportar datos entre capas
3. **Patrón Servicio**: Encapsula lógica de negocio
4. **Patrón Builder**: Usando Lombok para creación de objetos
5. **Patrón ID Compuesto**: Para claves primarias compuestas

## Modelos de datos

### Diagrama de Entidades
![BD](https://github.com/user-attachments/assets/01195fa8-d879-4b38-b979-ac71aeec8d6c)


### Claves compuestas 
- MecanicoId (documento, tipoDocumento)
- ClienteId (documento, tipoDocumento)
- DetalleFacturaServicioId (factura, mantenimiento, servicio)
- DetalleFacturaRepuestoId (factura, mantenimiento, repuesto)

## Configuración de base de datos
```
spring.application.name=challenge
spring.datasource.url=jdbc:postgresql://[servidor]:[puerto]/[nombre-base-datos]
spring.datasource.username=[usuario]
spring.datasource.password=[contraseña]
spring.datasource.driver-class-name=org.postgresql.Driver
spring.jpa.database-platform=org.hibernate.dialect.PostgreSQLDialect
spring.jpa.hibernate.ddl-auto=create
```
## Reglas de negocio importantes

1. **Priorización de mecánicos**:
   - Solo mecánicos con estado 'A' (activo) pueden ser asignados
   - Se priorizan mecánicos que no están asignados a mantenimientos en proceso
   - Se distribuye la carga equitativamente basado en horas trabajadas el último mes

2. **Estados de mantenimiento**:
   - 0: Pendiente
   - 1: En proceso
   - 2: Finalizado

## Ejecución del proyecto

### Mediante Maven
```
mvn clean install
mvn spring-boot:run
```

### Mediante IDE
Ejecutar la clase ChallengeApplication como aplicación Spring Boot

## Validaciones implementadas
- Validación de datos mediante Jakarta Bean Validation
- Validación personalizada para estados de mecánicos ('A' o 'I')
- Validación de email con formato correcto

## Características técnicas adicionales
1. Control de referencias circulares en JSON con @JsonBackReference y @JsonManagedReference
2. Manejo de excepciones personalizado
3. Uso de queries SQL nativas para consultas complejas
4. Manejo de respuestas HTTP apropiadas (201 Created, 404 Not Found, etc.)
