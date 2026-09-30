USE centro_rescate;


START TRANSACTION;


INSERT INTO animal
(num_expediente, nombre_animal, id_categoria, id_zona, estado_salud)
VALUES
(
    'EXP-2026-001',
    'Jaguar',
    1,
    6,
    'estable'
);


UPDATE zonas
SET espacio_disponible = espacio_disponible - 1
WHERE id_zona = 6;


INSERT INTO bitacora_movimientos
(id_animal, id_zona_origen, id_zona_destino, fecha, motivo)
VALUES
(
    LAST_INSERT_ID(),
    NULL,
    6,
    NOW(),
    'Ingreso inicial del Jaguar EXP-2026-001 a Felinos - Zona A'
);


COMMIT;