CREATE DATABASE importacion_vehiculos;

CREATE TABLE lote_importacion (
    codigo_lote VARCHAR(10) PRIMARY KEY,
    fecha_llegada DATE NOT NULL,
    pais_origen VARCHAR(50) NOT NULL
);

CREATE TABLE concesionario (
    codigo_concesionario VARCHAR(10) PRIMARY KEY,
    nombre_comercial VARCHAR(100) NOT NULL,
    direccion VARCHAR(150) NOT NULL,
    persona_contacto VARCHAR(100) NOT NULL
);

CREATE TABLE vehiculo (
    numero_serie VARCHAR(20) PRIMARY KEY,
    modelo VARCHAR(50) NOT NULL,
    marca VARCHAR(50) NOT NULL,
    anio_fabricacion INTEGER CHECK (anio_fabricacion >= 1886),
    velocidad_maxima INTEGER CHECK (velocidad_maxima > 0),
    precio_declarado NUMERIC(12, 2) CHECK (precio_declarado >= 0),
    codigo_lote VARCHAR(10),
    codigo_concesionario VARCHAR(10),
    CONSTRAINT fk_lote FOREIGN KEY (codigo_lote) REFERENCES lote_importacion(codigo_lote),
    CONSTRAINT fk_concesionario FOREIGN KEY (codigo_concesionario) REFERENCES concesionario(codigo_concesionario)
);
