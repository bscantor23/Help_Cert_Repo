

-- -----------------------------------------------------
-- Table `b9bgea7l32gbp2xyzlw6`.`tipo_documentos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `b9bgea7l32gbp2xyzlw6`.`tipo_documentos` (
  `id_tipo_documento` INT NOT NULL AUTO_INCREMENT,
  `nombre_documento` VARCHAR(45) NOT NULL,
  `abreviatura` VARCHAR(5) NOT NULL,
  `created_at` TIMESTAMP NOT NULL,
  `updated_at` TIMESTAMP NOT NULL,
  PRIMARY KEY (`id_tipo_documento`),
  UNIQUE INDEX `nombre_documento_UNIQUE` (`nombre_documento` ASC) VISIBLE,
  UNIQUE INDEX `abreviatura_UNIQUE` (`abreviatura` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `b9bgea7l32gbp2xyzlw6`.`tipo_contratos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `b9bgea7l32gbp2xyzlw6`.`tipo_contratos` (
  `id_tipo_contrato` INT NOT NULL AUTO_INCREMENT,
  `objeto_contrato` TEXT NOT NULL,
  `funciones` TEXT NOT NULL,
  `created_at` TIMESTAMP NOT NULL,
  `updated_at` TIMESTAMP NOT NULL,
  PRIMARY KEY (`id_tipo_contrato`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `b9bgea7l32gbp2xyzlw6`.`jornadas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `b9bgea7l32gbp2xyzlw6`.`jornadas` (
  `id_jornada` INT NOT NULL AUTO_INCREMENT,
  `nombre_jornada` VARCHAR(45) NOT NULL,
  `abreviatura` VARCHAR(5) NOT NULL,
  `created_at` TIMESTAMP NOT NULL,
  `updated_at` TIMESTAMP NOT NULL,
  PRIMARY KEY (`id_jornada`),
  UNIQUE INDEX `abreviatura_UNIQUE` (`abreviatura` ASC) VISIBLE,
  UNIQUE INDEX `nombre_jornada_UNIQUE` (`nombre_jornada` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `b9bgea7l32gbp2xyzlw6`.`instituciones`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `b9bgea7l32gbp2xyzlw6`.`instituciones` (
  `id_institucion` INT NOT NULL AUTO_INCREMENT,
  `nombre_institucion` VARCHAR(50) NOT NULL,
  `telefono` VARCHAR(20) NOT NULL,
  `direccion` VARCHAR(100) NOT NULL,
  `created_at` TIMESTAMP NOT NULL,
  `updated_at` TIMESTAMP NOT NULL,
  PRIMARY KEY (`id_institucion`),
  UNIQUE INDEX `nombre_institucion_UNIQUE` (`nombre_institucion` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `b9bgea7l32gbp2xyzlw6`.`rol_usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `b9bgea7l32gbp2xyzlw6`.`rol_usuarios` (
  `id_rol_usuario` INT NOT NULL AUTO_INCREMENT,
  `nombre_rol` VARCHAR(45) NOT NULL,
  `created_at` TIMESTAMP NOT NULL,
  `updated_at` TIMESTAMP NOT NULL,
  PRIMARY KEY (`id_rol_usuario`),
  UNIQUE INDEX `nombre_rol_UNIQUE` (`nombre_rol` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `b9bgea7l32gbp2xyzlw6`.`usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `b9bgea7l32gbp2xyzlw6`.`usuarios` (
  `id_usuario` INT NOT NULL AUTO_INCREMENT,
  `fk_tipo_documento` INT NOT NULL,
  `fk_rol_usuario` INT NOT NULL,
  `nombres` VARCHAR(50) NOT NULL,
  `apellidos` VARCHAR(50) NOT NULL,
  `numero_documento` INT NOT NULL,
  `correo` VARCHAR(100) NOT NULL,
  `clave` VARCHAR(70) NOT NULL,
  `ciudad` VARCHAR(50) NOT NULL,
  `cargo` VARCHAR(45) NOT NULL,
  `direccion` VARCHAR(100) NOT NULL,
  `telefono` VARCHAR(20) NOT NULL,
  `foto` VARCHAR(100) NULL,
  `estado` TINYINT NOT NULL,
  `genero` VARCHAR(5) NOT NULL,
  `created_at` TIMESTAMP NOT NULL,
  `updated_at` TIMESTAMP NOT NULL,
  PRIMARY KEY (`id_usuario`, `fk_tipo_documento`, `fk_rol_usuario`),
  UNIQUE INDEX `correo_UNIQUE` (`correo` ASC) VISIBLE,
  INDEX `fk_usuario_tipo_documento1_idx` (`fk_tipo_documento` ASC) VISIBLE,
  INDEX `fk_usuario_rol_usuario1_idx` (`fk_rol_usuario` ASC) VISIBLE,
  UNIQUE INDEX `numero_documento_UNIQUE` (`numero_documento` ASC) VISIBLE,
  CONSTRAINT `fk_usuario_tipo_documento1`
    FOREIGN KEY (`fk_tipo_documento`)
    REFERENCES `b9bgea7l32gbp2xyzlw6`.`tipo_documentos` (`id_tipo_documento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuario_rol_usuario1`
    FOREIGN KEY (`fk_rol_usuario`)
    REFERENCES `b9bgea7l32gbp2xyzlw6`.`rol_usuarios` (`id_rol_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `b9bgea7l32gbp2xyzlw6`.`contratos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `b9bgea7l32gbp2xyzlw6`.`contratos` (
  `id_contrato` INT NOT NULL AUTO_INCREMENT,
  `fk_tipo_contrato` INT NOT NULL,
  `fk_institucion` INT NOT NULL,
  `fk_funcionario` INT NOT NULL,
  `vigencia_contrato` VARCHAR(20) NOT NULL,
  `numero_contrato` VARCHAR(45) NOT NULL,
  `fecha_inicio` DATE NOT NULL,
  `fecha_final` DATE NOT NULL,
  `salario` DECIMAL NOT NULL,
  `estado` TINYINT NOT NULL,
  `created_at` TIMESTAMP NOT NULL,
  `updated_at` TIMESTAMP NOT NULL,
  PRIMARY KEY (`id_contrato`, `fk_tipo_contrato`, `fk_institucion`, `fk_funcionario`),
  UNIQUE INDEX `numero_contrato_UNIQUE` (`numero_contrato` ASC) VISIBLE,
  INDEX `fk_contrato_tipo_contrato1_idx` (`fk_tipo_contrato` ASC) VISIBLE,
  INDEX `fk_contrato_institucion1_idx` (`fk_institucion` ASC) VISIBLE,
  INDEX `fk_contrato_usuario1_idx` (`fk_funcionario` ASC) VISIBLE,
  CONSTRAINT `fk_contrato_tipo_contrato1`
    FOREIGN KEY (`fk_tipo_contrato`)
    REFERENCES `b9bgea7l32gbp2xyzlw6`.`tipo_contratos` (`id_tipo_contrato`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_contrato_institucion1`
    FOREIGN KEY (`fk_institucion`)
    REFERENCES `b9bgea7l32gbp2xyzlw6`.`instituciones` (`id_institucion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_contrato_usuario1`
    FOREIGN KEY (`fk_funcionario`)
    REFERENCES `b9bgea7l32gbp2xyzlw6`.`usuarios` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `b9bgea7l32gbp2xyzlw6`.`escaneos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `b9bgea7l32gbp2xyzlw6`.`escaneos` (
  `id_escaneo` INT NOT NULL AUTO_INCREMENT,
  `fk_contrato` INT NOT NULL,
  `ruta_archivo` VARCHAR(45) NOT NULL,
  `created_at` TIMESTAMP NOT NULL,
  `updated_at` TIMESTAMP NOT NULL,
  PRIMARY KEY (`id_escaneo`, `fk_contrato`),
  INDEX `fk_escaneos_contratos1_idx` (`fk_contrato` ASC) VISIBLE,
  CONSTRAINT `fk_escaneos_contratos1`
    FOREIGN KEY (`fk_contrato`)
    REFERENCES `b9bgea7l32gbp2xyzlw6`.`contratos` (`id_contrato`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `b9bgea7l32gbp2xyzlw6`.`sedes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `b9bgea7l32gbp2xyzlw6`.`sedes` (
  `id_sede` INT NOT NULL AUTO_INCREMENT,
  `fk_institucion` INT NOT NULL,
  `nombre_sede` VARCHAR(45) NOT NULL,
  `direccion` VARCHAR(45) NOT NULL,
  `telefono` INT NOT NULL,
  `correo` VARCHAR(45) NOT NULL,
  `created_at` TIMESTAMP NOT NULL,
  `updated_at` TIMESTAMP NOT NULL,
  PRIMARY KEY (`id_sede`, `fk_institucion`),
  INDEX `fk_sede_institucion1_idx` (`fk_institucion` ASC) VISIBLE,
  UNIQUE INDEX `nombre_sede_UNIQUE` (`nombre_sede` ASC) VISIBLE,
  CONSTRAINT `fk_sede_institucion1`
    FOREIGN KEY (`fk_institucion`)
    REFERENCES `b9bgea7l32gbp2xyzlw6`.`instituciones` (`id_institucion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `b9bgea7l32gbp2xyzlw6`.`contrato_sede`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `b9bgea7l32gbp2xyzlw6`.`contrato_sede` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `fk_sede` INT NOT NULL,
  `fk_contrato` INT NOT NULL,
  `created_at` TIMESTAMP NOT NULL,
  `updated_at` TIMESTAMP NOT NULL,
  PRIMARY KEY (`id`, `fk_sede`, `fk_contrato`),
  INDEX `fk_contrato_sede_sede1_idx` (`fk_sede` ASC) VISIBLE,
  INDEX `fk_contrato_sede_contrato1_idx` (`fk_contrato` ASC) VISIBLE,
  CONSTRAINT `fk_contrato_sede_sede1`
    FOREIGN KEY (`fk_sede`)
    REFERENCES `b9bgea7l32gbp2xyzlw6`.`sedes` (`id_sede`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_contrato_sede_contrato1`
    FOREIGN KEY (`fk_contrato`)
    REFERENCES `b9bgea7l32gbp2xyzlw6`.`contratos` (`id_contrato`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `b9bgea7l32gbp2xyzlw6`.`contrato_jornada`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `b9bgea7l32gbp2xyzlw6`.`contrato_jornada` (
  `id_contrato_jornada` INT NOT NULL AUTO_INCREMENT,
  `fk_jornada` INT NOT NULL,
  `created_at` TIMESTAMP NOT NULL,
  `updated_at` TIMESTAMP NOT NULL,
  `contratos_id_contrato` INT NOT NULL,
  `contratos_fk_tipo_contrato` INT NOT NULL,
  `contratos_fk_institucion` INT NOT NULL,
  `contratos_fk_funcionario` INT NOT NULL,
  PRIMARY KEY (`id_contrato_jornada`, `fk_jornada`, `contratos_id_contrato`, `contratos_fk_tipo_contrato`, `contratos_fk_institucion`, `contratos_fk_funcionario`),
  INDEX `fk_contrato_jornada_jornada1_idx` (`fk_jornada` ASC) VISIBLE,
  INDEX `fk_contrato_jornada_contratos1_idx` (`contratos_id_contrato` ASC, `contratos_fk_tipo_contrato` ASC, `contratos_fk_institucion` ASC, `contratos_fk_funcionario` ASC) VISIBLE,
  CONSTRAINT `fk_contrato_jornada_jornada1`
    FOREIGN KEY (`fk_jornada`)
    REFERENCES `b9bgea7l32gbp2xyzlw6`.`jornadas` (`id_jornada`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_contrato_jornada_contratos1`
    FOREIGN KEY (`contratos_id_contrato` , `contratos_fk_tipo_contrato` , `contratos_fk_institucion` , `contratos_fk_funcionario`)
    REFERENCES `b9bgea7l32gbp2xyzlw6`.`contratos` (`id_contrato` , `fk_tipo_contrato` , `fk_institucion` , `fk_funcionario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `b9bgea7l32gbp2xyzlw6`.`certificados`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `b9bgea7l32gbp2xyzlw6`.`certificados` (
  `id_certificado` INT UNSIGNED NOT NULL,
  `fk_contrato` INT NOT NULL,
  `created_at` TIMESTAMP NULL,
  PRIMARY KEY (`id_certificado`, `fk_contrato`),
  INDEX `fk_certificado_contratos1_idx` (`fk_contrato` ASC) VISIBLE,
  CONSTRAINT `fk_certificado_contratos1`
    FOREIGN KEY (`fk_contrato`)
    REFERENCES `b9bgea7l32gbp2xyzlw6`.`contratos` (`id_contrato`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
