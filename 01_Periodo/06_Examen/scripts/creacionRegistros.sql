
use centro_rescate;
-- Categorías
INSERT INTO categorias_animal (area_natural, categoria) VALUES 
('selva', 'tierra'),
('acuatica', 'agua'),
('frio', 'tierra'),
('tropical', 'aire'),
('selva', 'aire');

-- Zonas
INSERT INTO zonas (nombre_zona, id_categoria_aceptable, capacidad_maxima, espacio_disponible) VALUES 
('Recinto de Grandes Felinos', 1, 10, 8),
('Acuario Central', 2, 50, 40),
('Hábitat Tundra', 3, 8, 5),
('Aviario Tropical', 4, 100, 85),
('Aviario Amazonas', 5, 60, 50);

-- Trabajadores
INSERT INTO trabajadores (nombre, puesto) VALUES 
('Dra. Ana López', 'Veterinario Jefe'),
('Carlos Mendoza', 'Cuidador'),
('Dr. Roberto Gómez', 'Veterinario'),
('Sofía Ramírez', 'Cuidador'),
('Luis Martínez', 'Director Técnico');

-- Animales
INSERT INTO animal (num_expediente, nombre_animal, id_categoria, id_zona, estado_salud) VALUES 
('EXP-0001', 'Jaguar', 1, 1, 'estable'),
('EXP-0002', 'Delfín Nariz de Botella', 2, 2, 'estable'),
('EXP-0003', 'Oso Polar', 3, 3, 'recuperando'),
('EXP-0004', 'Guacamaya Roja', 4, 4, 'critico'),
('EXP-0005', 'Tucán Pico Iris', 5, 5, 'estable');

-- Expedientes Médicos
INSERT INTO expediente_medico (id_animal, id_veterinario, fecha, diagnostico, evolucion) VALUES 
(1, 1, '2023-10-15 09:30:00', 'Revisión general de rutina', 'El ejemplar presenta signos vitales normales y buen peso.'),
(2, 3, '2023-10-16 11:00:00', 'Laceración leve en aleta dorsal', 'Herida limpiada y desinfectada. En observación.'),
(3, 1, '2023-10-17 14:15:00', 'Desnutrición leve al momento del rescate', 'Respondiendo bien a la dieta especial, ganando masa muscular.'),
(4, 3, '2023-10-18 10:00:00', 'Infección respiratoria severa', 'Tratamiento con antibióticos iniciado. Pronóstico reservado.'),
(5, 1, '2023-10-19 16:45:00', 'Control de parásitos', 'Desparasitación exitosa, sin efectos secundarios evidentes.');

-- Bitácora de Movimientos
-- Nota: id_zona_origen puede ser NULL si es un animal recién llegado.
INSERT INTO bitacora_movimientos (id_animal, id_zona_origen, id_zona_destino, fecha, motivo) VALUES 
(1, NULL, 1, '2023-01-10 08:00:00', 'Ingreso inicial al zoológico'),
(3, NULL, 3, '2023-05-20 12:30:00', 'Rescate e ingreso directo a Tundra'),
(4, 5, 4, '2023-10-18 10:30:00', 'Traslado a área médica/aislamiento por infección'),
(2, NULL, 2, '2022-11-05 09:15:00', 'Intercambio con otro zoológico'),
(5, 4, 5, '2023-08-12 14:00:00', 'Reubicación por conflicto de territorio con otras aves');