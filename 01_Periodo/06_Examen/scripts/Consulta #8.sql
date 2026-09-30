0START TRANSACTION;
INSERT INTO animal
(num_expediente, nombre_animal, id_categoria, id_zona, estado_salud)
VALUES
(
    'EXP-2026-003',
    'Iguana',
    6,
    9,
    'estable'
);

UPDATE zonas
SET espacio_disponible = espacio_disponible - 1
WHERE id_zona = 9;
ROLLBACK;