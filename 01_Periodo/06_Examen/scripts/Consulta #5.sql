USE centro_rescate;


START TRANSACTION;


UPDATE animal
SET id_zona = 8
WHERE num_expediente = 'EXP-2026-002';


UPDATE zonas
SET espacio_disponible = espacio_disponible + 1
WHERE id_zona = 7;


UPDATE zonas
SET espacio_disponible = espacio_disponible - 1
WHERE id_zona = 8;

INSERT INTO bitacora_movimientos
(id_animal, id_zona_origen, id_zona_destino, fecha, motivo)
VALUES
(
    (
        SELECT id_animal
        FROM animal
        WHERE num_expediente = 'EXP-2026-002'
    ),
    7,
    8,
    NOW(),
    'Traslado del Tucán de Cuarentena Aves a Aviario General'
);
COMMIT;

