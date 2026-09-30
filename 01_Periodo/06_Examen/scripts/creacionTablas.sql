
use centro_rescate;
CREATE TABLE categorias_animal (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    area_natural ENUM('selva', 'tropical', 'acuatica', 'frio') NOT NULL,
    categoria ENUM('aire', 'agua', 'tierra') NOT NULL
);

CREATE TABLE zonas (
    id_zona INT AUTO_INCREMENT PRIMARY KEY,
    nombre_zona VARCHAR(50) NOT NULL UNIQUE,
    id_categoria_aceptable INT NOT NULL,
    capacidad_maxima INT NOT NULL,
    espacio_disponible INT NOT NULL,
    CONSTRAINT chk_espacio CHECK (espacio_disponible >= 0 AND espacio_disponible <= capacidad_maxima),
    FOREIGN KEY (id_categoria_aceptable) REFERENCES categorias_animal(id_categoria)
);

CREATE TABLE trabajadores (
    id_trabajador INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(80) NOT NULL,
    puesto VARCHAR(20)
);

CREATE TABLE animal (
    id_animal INT AUTO_INCREMENT PRIMARY KEY,
    num_expediente VARCHAR(15) NOT NULL UNIQUE,
    nombre_animal VARCHAR(50) NOT NULL,
    id_categoria INT NOT NULL,
    id_zona INT NOT NULL,
    estado_salud ENUM('critico', 'estable', 'recuperando') NOT NULL,
    FOREIGN KEY (id_categoria) REFERENCES categorias_animal(id_categoria),
    FOREIGN KEY (id_zona) REFERENCES zonas(id_zona)
);

CREATE TABLE expediente_medico (
    id_expediente INT AUTO_INCREMENT PRIMARY KEY,
    id_animal INT NOT NULL,
    id_veterinario INT NOT NULL,
    fecha DATETIME NOT NULL,
    diagnostico VARCHAR(250) NOT NULL,
    evolucion TEXT NOT NULL, -- Convertido a TEXT por la falta de longitud en el VARCHAR original
    FOREIGN KEY (id_animal) REFERENCES animal(id_animal),
    FOREIGN KEY (id_veterinario) REFERENCES trabajadores(id_trabajador)
);

CREATE TABLE bitacora_movimientos (
    id_movimiento INT AUTO_INCREMENT PRIMARY KEY,
    id_animal INT NOT NULL,
    id_zona_origen INT,
    id_zona_destino INT,
    fecha DATETIME NOT NULL,
    motivo VARCHAR(200) NOT NULL,
    FOREIGN KEY (id_animal) REFERENCES animal(id_animal),
    FOREIGN KEY (id_zona_origen) REFERENCES zonas(id_zona),
    FOREIGN KEY (id_zona_destino) REFERENCES zonas(id_zona)
);

