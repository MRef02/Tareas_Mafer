USE centro_rescate;


CREATE ROLE 'rol-recepcion';

GRANT SELECT, INSERT
ON centro_rescate.animal
TO 'rol-recepcion';

GRANT SELECT, INSERT
ON centro_rescate.bitacora_movimientos
TO 'rol-recepcion';

GRANT SELECT
ON centro_rescate.zonas
TO 'rol-recepcion';
--------------------------

CREATE USER 'usr_recepcion1'@'localhost'
IDENTIFIED BY 'rol_recepcion.';

GRANT 'rol-recepcion'
TO 'usr_recepcion1'@'localhost';

SET DEFAULT ROLE 'rol-recepcion'
TO 'usr_recepcion1'@'localhost';



--------------------------------------------------
CREATE ROLE 'rol-veterinario';

GRANT SELECT, INSERT, UPDATE
ON centro_rescate.expediente_medico
TO 'rol-veterinario';

GRANT SELECT
ON centro_rescate.animal
TO 'rol-veterinario';


CREATE USER 'usr_vet_mendoza'@'localhost'
IDENTIFIED BY 'rol_veterinario.';

GRANT 'rol-veterinario'
TO 'usr_vet_mendoza'@'localhost';

SET DEFAULT ROLE 'rol-veterinario'
TO 'usr_vet_mendoza'@'localhost';



CREATE ROLE 'rol-admin-refugio';

GRANT SELECT, INSERT, UPDATE, DELETE
ON centro_rescate.*
TO 'rol-admin-refugio';


CREATE USER 'usr_admin_selva'@'localhost'
IDENTIFIED BY 'rol_admin_refugio..';

GRANT 'rol-admin-refugio'
TO 'usr_admin_selva'@'localhost';

SET DEFAULT ROLE 'rol-admin-refugio'
TO 'usr_admin_selva'@'localhost';
