USE erp_odonto;

-- Trigger para la tabla erpo_facturas
DELIMITER |
DROP TRIGGER IF EXISTS erpo_in_factura;
CREATE TRIGGER erpo_in_factura
  BEFORE INSERT
  ON erpo_factura
  FOR EACH ROW
BEGIN
  DECLARE next_id INT;
  DECLARE cod VARCHAR(20);
  SET next_id = (SELECT COUNT(*) + 1 FROM erpo_factura);
  IF (next_id < 10) THEN
    SET cod = CONCAT('ERPODO0', next_id);
  ELSE
    IF (next_id < 100) THEN
      SET cod = CONCAT('ERPODO01-', next_id);
    END IF;
  END IF;
  SET new.cod_factura = cod;
END
|
DELIMITER ;

-- Trigger para la tabla erpo_docidentidad
DELIMITER |
DROP TRIGGER IF EXISTS erpo_in_docidentidad;
CREATE TRIGGER erpo_in_docidentidad
  BEFORE INSERT
  ON erpo_docidentidad
  FOR EACH ROW
BEGIN
  DECLARE next_id INT;
  DECLARE cod VARCHAR(20);
  SET next_id = (SELECT COUNT(*) + 1 FROM erpo_docidentidad);
  IF (next_id < 10) THEN
    SET cod = CONCAT('ERPODO01-0', next_id);
  ELSE
    IF (next_id < 100) THEN
      SET cod = CONCAT('ERPODO01-', next_id);
    END IF;
  END IF;
  SET new.cod_docidentidad = cod;
END
|
DELIMITER ;

-- Trigger para la tabla erpo_pais
DELIMITER |
DROP TRIGGER IF EXISTS erpo_in_pais;
CREATE TRIGGER erpo_in_pais
  BEFORE INSERT
  ON erpo_pais
  FOR EACH ROW
BEGIN
  DECLARE next_id INT;
  DECLARE cod VARCHAR(20);
  SET next_id = (SELECT COUNT(*) + 1 FROM erpo_pais);
  IF (next_id < 10) THEN
    SET cod = CONCAT('ERPODO01-0', next_id);
  ELSE
    IF (next_id < 100) THEN
      SET cod = CONCAT('ERPODO01-', next_id);
    END IF;
  END IF;
  SET new.cod_pais = cod;
END
|
DELIMITER ;

-- Trigger para la tabla erpo_provincia
DELIMITER |
DROP TRIGGER IF EXISTS erpo_in_prov;
CREATE TRIGGER erpo_in_prov
  BEFORE INSERT
  ON erpo_provincia
  FOR EACH ROW
BEGIN
  DECLARE next_id INT;
  DECLARE cod VARCHAR(20);
  SET next_id = (SELECT COUNT(*) + 1 FROM erpo_provincia);
  IF (next_id < 10) THEN
    SET cod = CONCAT('ERPODO01-0', next_id);
  ELSE
    IF (next_id < 100) THEN
      SET cod = CONCAT('ERPODO01-', next_id);
    END IF;
  END IF;
  SET new.cod_provincia = cod;
END
|
DELIMITER ;

-- Trigger para la tabla erpo_paciente
DELIMITER |
DROP TRIGGER IF EXISTS erpo_in_paciente;
CREATE TRIGGER erpo_in_paciente
  BEFORE INSERT
  ON erpo_paciente
  FOR EACH ROW
BEGIN
  DECLARE next_id INT;
  DECLARE cod VARCHAR(20);
  SET next_id = (SELECT COUNT(*) + 1 FROM erpo_paciente);
  IF (next_id < 10) THEN
    SET cod = CONCAT('ERPODO01-0', next_id);
  ELSE
    IF (next_id < 100) THEN
      SET cod = CONCAT('ERPODO01-', next_id);
    END IF;
  END IF;
  SET new.cod_paciente = cod;
END
|
DELIMITER ;

-- Trigger para la tabla erpo_imgdentales
DELIMITER |
DROP TRIGGER IF EXISTS erpo_in_imgdentales;
CREATE TRIGGER erpo_in_imgdentales
  BEFORE INSERT
  ON erpo_imgdentales
  FOR EACH ROW
BEGIN
  DECLARE next_id INT;
  DECLARE cod VARCHAR(20);
  SET next_id = (SELECT COUNT(*) + 1 FROM erpo_imgdentales);
  IF (next_id < 10) THEN
    SET cod = CONCAT('ERPODO0', next_id);
  ELSE
    IF (next_id < 100) THEN
      SET cod = CONCAT('ERPODO01-', next_id);
    END IF;
  END IF;
  SET new.cod_imgdentales = cod;
END
|
DELIMITER ;

-- Trigger para la tabla erpo_comprobante
DELIMITER |
DROP TRIGGER IF EXISTS erpo_in_comprobante;
CREATE TRIGGER erpo_in_comprobante
  BEFORE INSERT
  ON erpo_comprobante
  FOR EACH ROW
BEGIN
  DECLARE next_id INT;
  DECLARE cod VARCHAR(20);
  SET next_id = (SELECT COUNT(*) + 1 FROM erpo_comprobante);
  IF (next_id < 10) THEN
    SET cod = CONCAT('ERPODO0', next_id);
  ELSE
    IF (next_id < 100) THEN
      SET cod = CONCAT('ERPODO01-', next_id);
    END IF;
  END IF;
  SET new.cod_comprobante = cod;
END
|
DELIMITER ;

-- Trigger para la tabla erpo_pagos
DELIMITER |
DROP TRIGGER IF EXISTS erpo_in_pagos;
CREATE TRIGGER erpo_in_pagos
  BEFORE INSERT
  ON erpo_pagos
  FOR EACH ROW
BEGIN
  DECLARE next_id INT;
  DECLARE cod VARCHAR(20);
  SET next_id = (SELECT COUNT(*) + 1 FROM erpo_pagos);
  IF (next_id < 10) THEN
    SET cod = CONCAT('ERPODO0', next_id);
  ELSE
    IF (next_id < 100) THEN
      SET cod = CONCAT('ERPODO01-', next_id);
    END IF;
  END IF;
  SET new.cod_pagos = cod;
END
|
DELIMITER ;

-- Trigger para la tabla erpo_pagocomprobante
DELIMITER |
DROP TRIGGER IF EXISTS erpo_in_pagocomprobante;
CREATE TRIGGER erpo_in_pagocomprobante
  BEFORE INSERT
  ON erpo_pagocomprobante
  FOR EACH ROW
BEGIN
  DECLARE next_id INT;
  DECLARE cod VARCHAR(20);
  SET next_id = (SELECT COUNT(*) + 1 FROM erpo_pagocomprobante);
  IF (next_id < 10) THEN
    SET cod = CONCAT('ERPODO0', next_id);
  ELSE
    IF (next_id < 100) THEN
      SET cod = CONCAT('ERPODO01-', next_id);
    END IF;
  END IF;
  SET new.cod_pagocomprobante = cod;
END
|
DELIMITER ;

-- Trigger para la tabla erpo_proveedor
DELIMITER |
DROP TRIGGER IF EXISTS erpo_in_proveedor;
CREATE TRIGGER erpo_in_proveedor
  BEFORE INSERT
  ON erpo_proveedor
  FOR EACH ROW
BEGIN
  DECLARE next_id INT;
  DECLARE cod VARCHAR(20);
  SET next_id = (SELECT COUNT(*) + 1 FROM erpo_proveedor);
  IF (next_id < 10) THEN
    SET cod = CONCAT('ERPODO0', next_id);
  ELSE
    IF (next_id < 100) THEN
      SET cod = CONCAT('ERPODO01-', next_id);
    END IF;
  END IF;
  SET new.cod_proveedor = cod;
END
|
DELIMITER ;

-- Trigger para la tabla erp_odo_umedida
DELIMITER |
DROP TRIGGER IF EXISTS erpo_in_umedida;
CREATE TRIGGER erpo_in_umedida
  BEFORE INSERT
  ON erpo_umedida
  FOR EACH ROW
BEGIN
  DECLARE next_id INT;
  DECLARE cod VARCHAR(20);
  SET next_id = (SELECT COUNT(*) + 1 FROM erpo_umedida);
  IF (next_id < 10) THEN
    SET cod = CONCAT('ERPODO01-0', next_id);
  ELSE
    IF (next_id < 100) THEN
      SET cod = CONCAT('ERPODO01-', next_id);
    END IF;
  END IF;
  SET new.cod_umedida = cod;
END
|
DELIMITER ;

-- Trigger para la tabla erpo_producto
DELIMITER |
DROP TRIGGER IF EXISTS erpo_in_producto;
CREATE TRIGGER erpo_in_producto
  BEFORE INSERT
  ON erpo_producto
  FOR EACH ROW
BEGIN
  DECLARE next_id INT;
  DECLARE cod VARCHAR(20);
  SET next_id = (SELECT COUNT(*) + 1 FROM erpo_producto);
  IF (next_id < 10) THEN
    SET cod = CONCAT('ERPODO0', next_id);
  ELSE
    IF (next_id < 100) THEN
      SET cod = CONCAT('ERPODO01-', next_id);
    END IF;
  END IF;
  SET new.cod_producto = cod;
END
|
DELIMITER ;

-- Trigger para la tabla erpo_stock
DELIMITER |
DROP TRIGGER IF EXISTS erpo_in_stock;
CREATE TRIGGER erpo_in_stock
  BEFORE INSERT
  ON erpo_stock
  FOR EACH ROW
BEGIN
  DECLARE next_id INT;
  DECLARE cod VARCHAR(20);
  SET next_id = (SELECT COUNT(*) + 1 FROM erpo_stock);
  IF (next_id < 10) THEN
    SET cod = CONCAT('ERPODO0', next_id);
  ELSE
    IF (next_id < 100) THEN
      SET cod = CONCAT('ERPODO01-', next_id);
    END IF;
  END IF;
  SET new.cod_stock = cod;
END
|
DELIMITER ;

-- Trigger para la tabla erpo_rrhh
DELIMITER |
DROP TRIGGER IF EXISTS erpo_in_rrhh;
CREATE TRIGGER erpo_in_rrhh
  BEFORE INSERT
  ON erpo_rrhh
  FOR EACH ROW
BEGIN
  DECLARE next_id INT;
  DECLARE cod VARCHAR(20);
  SET next_id = (SELECT COUNT(*) + 1 FROM erpo_rrhh);
  IF (next_id < 10) THEN
    SET cod = CONCAT('ERPODO01-0', next_id);
  ELSE
    IF (next_id < 100) THEN
      SET cod = CONCAT('ERPODO01-', next_id);
    END IF;
  END IF;
  SET new.cod_rrhh = cod;
END
|
DELIMITER ;

-- Trigger para la tabla erpo_cita
DELIMITER |
DROP TRIGGER IF EXISTS erpo_in_cita;
CREATE TRIGGER erpo_in_cita
  BEFORE INSERT
  ON erpo_cita
  FOR EACH ROW
BEGIN
  DECLARE next_id INT;
  DECLARE cod VARCHAR(20);
  SET next_id = (SELECT COUNT(*) + 1 FROM erpo_cita);
  IF (next_id < 10) THEN
    SET cod = CONCAT('ERPODO01-0', next_id);
  ELSE
    IF (next_id < 100) THEN
      SET cod = CONCAT('ERPODO01-', next_id);
    END IF;
  END IF;
  SET new.cod_cita = cod;
END
|
DELIMITER ;

-- Trigger para la tabla erpo_usomaterial
DELIMITER |
DROP TRIGGER IF EXISTS erpo_in_usomaterial;
CREATE TRIGGER erpo_in_usomaterial
  BEFORE INSERT
  ON erpo_usomaterial
  FOR EACH ROW
BEGIN
  DECLARE next_id INT;
  DECLARE cod VARCHAR(20);
  SET next_id = (SELECT COUNT(*) + 1 FROM erpo_usomaterial);
  IF (next_id < 10) THEN
    SET cod = CONCAT('ERPODO0', next_id);
  ELSE
    IF (next_id < 100) THEN
      SET cod = CONCAT('ERPODO01-', next_id);
    END IF;
  END IF;
  SET new.cod_usomaterial = cod;
END
|
DELIMITER ;

-- Trigger para la tabla erpo_rol
DELIMITER |
DROP TRIGGER IF EXISTS erpo_in_rol;
CREATE TRIGGER erpo_in_rol
  BEFORE INSERT
  ON erpo_rol
  FOR EACH ROW
BEGIN
  DECLARE next_id INT;
  DECLARE cod VARCHAR(20);
  SET next_id = (SELECT COUNT(*) + 1 FROM erpo_rol);
  IF (next_id < 10) THEN
    SET cod = CONCAT('ERPODO0', next_id);
  ELSE
    IF (next_id < 100) THEN
      SET cod = CONCAT('ERPODO01-', next_id);
    END IF;
  END IF;
  SET new.cod_rol = cod;
END
|
DELIMITER ;

-- Trigger para la tabla erpo_usersistema
DELIMITER |
DROP TRIGGER IF EXISTS erpo_in_usersistema;
CREATE TRIGGER erpo_in_usersistema
  BEFORE INSERT
  ON erpo_usersistema
  FOR EACH ROW
BEGIN
  DECLARE next_id INT;
  DECLARE cod VARCHAR(20);
  SET next_id = (SELECT COUNT(*) + 1 FROM erpo_usersistema);
  IF (next_id < 10) THEN
    SET cod = CONCAT('ERPODO01-0', next_id);
  ELSE
    IF (next_id < 100) THEN
      SET cod = CONCAT('ERPODO01-', next_id);
    END IF;
  END IF;
  SET new.cod_usersistema = cod;
END
|
DELIMITER ;

-- Trigger para la tabla erpo_area
DELIMITER |
DROP TRIGGER IF EXISTS erpo_in_area;
CREATE TRIGGER erpo_in_area
  BEFORE INSERT
  ON erpo_area
  FOR EACH ROW
BEGIN
  DECLARE next_id INT;
  DECLARE cod VARCHAR(20);
  SET next_id = (SELECT COUNT(*) + 1 FROM erpo_area);
  IF (next_id < 10) THEN
    SET cod = CONCAT('ERPODO01-0', next_id);
  ELSE
    IF (next_id < 100) THEN
      SET cod = CONCAT('ERPODO01-', next_id);
    END IF;
  END IF;
  SET new.cod_area = cod;
END
|
DELIMITER ;

-- Trigger para la tabla erpo_servicio
DELIMITER |
DROP TRIGGER IF EXISTS erpo_in_servicio;
CREATE TRIGGER erpo_in_servicio
  BEFORE INSERT
  ON erpo_servicio
  FOR EACH ROW
BEGIN
  DECLARE next_id INT;
  DECLARE cod VARCHAR(20);
  SET next_id = (SELECT COUNT(*) + 1 FROM erpo_servicio);
  IF (next_id < 10) THEN
    SET cod = CONCAT('ERPODO01-0', next_id);
  ELSE
    IF (next_id < 100) THEN
      SET cod = CONCAT('ERPODO01-', next_id);
    END IF;
  END IF;
  SET new.cod_servicio = cod;
END
|
DELIMITER ;

-- Trigger para la tabla erpo_cobros
DELIMITER |
DROP TRIGGER IF EXISTS erpo_in_cobro;
CREATE TRIGGER erpo_in_cobro
  BEFORE INSERT
  ON erpo_cobro
  FOR EACH ROW
BEGIN
  DECLARE next_id INT;
  DECLARE cod VARCHAR(20);
  SET next_id = (SELECT COUNT(*) + 1 FROM erpo_cobro);
  IF (next_id < 10) THEN
    SET cod = CONCAT('ERPODO01-0', next_id);
  ELSE
    IF (next_id < 100) THEN
      SET cod = CONCAT('ERPODO01-', next_id);
    END IF;
  END IF;
  SET new.cod_cobro = cod;
END
|
DELIMITER ;
