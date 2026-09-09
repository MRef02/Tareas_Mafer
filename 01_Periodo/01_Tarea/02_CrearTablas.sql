USE canlopez;

CREATE TABLE Cliente (
  dni VARCHAR(15) PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL,
  apellido VARCHAR(50) NOT NULL,
  numero_telefono VARCHAR(20),
  correo_electronico VARCHAR(100)
);

CREATE TABLE Veterinario (
  dni VARCHAR(15) PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL,
  apellido VARCHAR(50) NOT NULL,
  especialidad VARCHAR(60),
  telefono VARCHAR(20)
);

CREATE TABLE Mascota (
  id_mascota INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL,
  especie VARCHAR(30) NOT NULL,
  raza VARCHAR(50),
  fecha_nacimiento DATE,
  dni_dueno VARCHAR(15) NOT NULL
);

CREATE TABLE Atencion_Medica (
  id_consulta INT AUTO_INCREMENT PRIMARY KEY,
  fecha_consulta DATE NOT NULL,
  hora_consulta TIME NOT NULL,
  diagnostico TEXT,
  costo_consulta DECIMAL(10,2) NOT NULL,
  dni_veterinario VARCHAR(15) NOT NULL,
  id_mascota INT NOT NULL
);

CREATE TABLE Medicamento (
  codigo_sku VARCHAR(20) PRIMARY KEY,
  nombre_comercial VARCHAR(100) NOT NULL,
  laboratorio_fabricante VARCHAR(100),
  precio_unitario DECIMAL(10,2) NOT NULL
);

CREATE TABLE Prescripcion_Medica (
  id_consulta INT NOT NULL,
  codigo_sku VARCHAR(20) NOT NULL,
  cantidad INT NOT NULL,
  indicaciones_dosis VARCHAR(255) NOT NULL,
  PRIMARY KEY (id_consulta, codigo_sku)
);