USE canlopez;


INSERT INTO Cliente VALUES
('DNI001', 'María', 'Can', '9991112233', 'maria.can@correo.com'),
('DNI002', 'José', 'Pérez', '9992223344', 'jose.perez@correo.com'),
('DNI003', 'Ana', 'Tun', '9993334455', 'ana.tun@correo.com'),
('DNI004', 'Luis', 'Cauich', '9994445566', 'luis.cauich@correo.com'),
('DNI005', 'Carmen', 'May', '9995556677', 'carmen.may@correo.com');

INSERT INTO Veterinario VALUES
('VET001', 'Carlos', 'Dzul', 'Cirugía', '9996667788'),
('VET002', 'Lucía', 'Poot', 'Dermatología', '9997778899'),
('VET003', 'Miguel', 'Chi', 'Cardiología', '9998889900'),
('VET004', 'Sofía', 'Uc', 'Medicina interna', '9999990011'),
('VET005', 'Diego', 'Cetzal', 'Odontología', '9990001122');

INSERT INTO Medicamento VALUES
('MED001', 'Amoxicilina 250mg', 'Laboratorios Pisa', 120.50),
('MED002', 'Ivermectina 1%', 'Bayer', 85.00),
('MED003', 'Prednisona 5mg', 'Asofarma', 95.75),
('MED004', 'Ceftriaxona 1g', 'Psicofarma', 210.00),
('MED005', 'Metronidazol 500mg', 'Senosiain', 60.25);

INSERT INTO Mascota (nombre, especie, raza, fecha_nacimiento, dni_dueno) VALUES
('Firulais', 'Perro', 'Labrador', '2020-05-10', 'DNI001'),
('Michi', 'Gato', 'Siamés', '2021-03-15', 'DNI001'),
('Rocky', 'Perro', 'Pug', '2019-11-20', 'DNI002'),
('Luna', 'Gato', 'Persa', '2022-01-05', 'DNI003'),
('Piolín', 'Ave', 'Canario', '2023-06-30', 'DNI004');

INSERT INTO Atencion_Medica (fecha_consulta, hora_consulta, diagnostico, costo_consulta, dni_veterinario, id_mascota) VALUES
('2026-09-01', '09:00:00', 'Infección de oído leve', 350.00, 'VET002', 1),
('2026-09-01', '10:30:00', 'Desparasitación general', 250.00, 'VET001', 2),
('2026-09-02', '12:00:00', 'Problema respiratorio', 500.00, 'VET004', 3),
('2026-09-03', '16:00:00', 'Control dental', 400.00, 'VET005', 4),
('2026-09-04', '11:00:00', 'Fractura de ala', 800.00, 'VET001', 5);

INSERT INTO Prescripcion_Medica (id_consulta, codigo_sku, cantidad, indicaciones_dosis) VALUES
(1, 'MED001', 15, '1 pastilla cada 8 horas por 5 días'),
(2, 'MED002', 1, 'Dosis única aplicada en consulta'),
(3, 'MED004', 3, '1 inyección cada 24 horas por 3 días'),
(4, 'MED005', 10, '1 pastilla cada 12 horas por 5 días'),
(5, 'MED003', 20, '1 pastilla cada 24 horas por 10 días');