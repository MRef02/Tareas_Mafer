USE canlopez;

ALTER TABLE Mascota
  ADD CONSTRAINT fk_mascota_cliente
  FOREIGN KEY (dni_dueno) REFERENCES Cliente(dni);

ALTER TABLE Atencion_Medica
  ADD CONSTRAINT fk_atencion_veterinario
  FOREIGN KEY (dni_veterinario) REFERENCES Veterinario(dni),
  ADD CONSTRAINT fk_atencion_mascota
  FOREIGN KEY (id_mascota) REFERENCES Mascota(id_mascota);

ALTER TABLE Prescripcion_Medica
  ADD CONSTRAINT fk_presc_atencion
  FOREIGN KEY (id_consulta) REFERENCES Atencion_Medica(id_consulta),
  ADD CONSTRAINT fk_presc_medicamento
  FOREIGN KEY (codigo_sku) REFERENCES Medicamento(codigo_sku);