# Sistema de Registro de Importación de Vehículos

## 📌 Enunciado
Una empresa de importación recibe cada mes una variedad de vehículos provenientes de diferentes países. Cada vehículo tiene un número de serie único, modelo, marca, año de fabricación, velocidad máxima y precio declarado. Los vehículos se agrupan en lotes de importación, cada lote tiene un código identificador, fecha de llegada y país de origen. Además, cada vehículo es asignado a un concesionario local, el cual cuenta con un código de concesionario, nombre comercial, dirección y persona de contacto.

---

## 🧩 Entidades

### 1. Vehículo
- **Descripción**: Vehículos importados en cada lote.
- **Atributos**:
  - `numero_serie` (PK): VARCHAR(20) – Número de serie único del vehículo.
  - `modelo`: VARCHAR(50) – Modelo del vehículo.
  - `marca`: VARCHAR(50) – Marca del vehículo.
  - `anio_fabricacion`: INTEGER – Año en que se fabricó el vehículo.
  - `velocidad_maxima`: INTEGER – Velocidad máxima en km/h.
  - `precio_declarado`: NUMERIC(12,2) – Precio declarado en la aduana.
  - `codigo_lote` (FK): VARCHAR(10) – Código del lote al que pertenece.
  - `codigo_concesionario` (FK): VARCHAR(10) – Código del concesionario asignado.

### 2. Lote de Importación
- **Descripción**: Lotes en los que llegan los vehículos.
- **Atributos**:
  - `codigo_lote` (PK): VARCHAR(10) – Código único del lote.
  - `fecha_llegada`: DATE – Fecha de llegada del lote.
  - `pais_origen`: VARCHAR(50) – País desde el que se importó.

### 3. Concesionario
- **Descripción**: Concesionarios locales a los que se asignan los vehículos.
- **Atributos**:
  - `codigo_concesionario` (PK): VARCHAR(10) – Código único del concesionario.
  - `nombre_comercial`: VARCHAR(100) – Nombre del concesionario.
  - `direccion`: VARCHAR(150) – Dirección del concesionario.
  - `persona_contacto`: VARCHAR(100) – Persona encargada del contacto.

---

## 🗃️ Modelo Relacional

- Un **Lote** puede tener muchos **Vehículos**.
- Un **Concesionario** puede recibir muchos **Vehículos**.
- Un **Vehículo** pertenece a un **Lote** y a un **Concesionario**.

---

## 📌 Claves Primarias y Foráneas

- `Vehículo.numero_serie` → **PK**
- `Lote.codigo_lote` → **PK**
- `Concesionario.codigo_concesionario` → **PK**
- `Vehículo.codigo_lote` → **FK** → Lote
- `Vehículo.codigo_concesionario` → **FK** → Concesionario
