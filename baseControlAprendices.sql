-- MySQL Script generated by MySQL Workbench
-- Wed Sep  1 22:01:45 2021
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
-- -----------------------------------------------------
-- Schema controlaprendices
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema controlaprendices
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `controlaprendices` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`jornada`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`jornada` (
  `idjornada` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL,
  PRIMARY KEY (`idjornada`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`tipo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`tipo` (
  `idtipo` INT NOT NULL AUTO_INCREMENT,
  `tipo` VARCHAR(45) NULL,
  PRIMARY KEY (`idtipo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`programa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`programa` (
  `idprograma` INT NOT NULL AUTO_INCREMENT,
  `programa` VARCHAR(150) NULL,
  `tipo_idtipo` INT NOT NULL,
  PRIMARY KEY (`idprograma`),
  INDEX `fk_programa_tipo1_idx` (`tipo_idtipo` ASC),
  CONSTRAINT `fk_programa_tipo1`
    FOREIGN KEY (`tipo_idtipo`)
    REFERENCES `mydb`.`tipo` (`idtipo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`instructor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`instructor` (
  `idinstructor` INT NOT NULL,
  `nombre` VARCHAR(45) NULL,
  `apellido` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `programa_idprograma` INT NOT NULL,
  `jornada_idjornada` INT NOT NULL,
  PRIMARY KEY (`idinstructor`),
  INDEX `fk_instructor_programa1_idx` (`programa_idprograma` ASC),
  INDEX `fk_instructor_jornada1_idx` (`jornada_idjornada` ASC),
  CONSTRAINT `fk_instructor_programa1`
    FOREIGN KEY (`programa_idprograma`)
    REFERENCES `mydb`.`programa` (`idprograma`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_instructor_jornada1`
    FOREIGN KEY (`jornada_idjornada`)
    REFERENCES `mydb`.`jornada` (`idjornada`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`ficha`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`ficha` (
  `codigoFicha` INT NOT NULL,
  `instructor_idinstructor` INT NOT NULL,
  `programa_idprograma` INT NOT NULL,
  `jornada_idjornada` INT NOT NULL,
  PRIMARY KEY (`codigoFicha`),
  INDEX `fk_ficha_instructor1_idx` (`instructor_idinstructor` ASC),
  INDEX `fk_ficha_programa1_idx` (`programa_idprograma` ASC),
  INDEX `fk_ficha_jornada1_idx` (`jornada_idjornada` ASC),
  CONSTRAINT `fk_ficha_instructor1`
    FOREIGN KEY (`instructor_idinstructor`)
    REFERENCES `mydb`.`instructor` (`idinstructor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ficha_programa1`
    FOREIGN KEY (`programa_idprograma`)
    REFERENCES `mydb`.`programa` (`idprograma`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ficha_jornada1`
    FOREIGN KEY (`jornada_idjornada`)
    REFERENCES `mydb`.`jornada` (`idjornada`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`aprendiz`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`aprendiz` (
  `idaprendiz` INT NOT NULL,
  `nombre` VARCHAR(45) NULL,
  `apellido` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `jornada_idjornada` INT NOT NULL,
  `programa_idprograma` INT NOT NULL,
  `ficha_codigoFicha` INT NOT NULL,
  `instructor_idinstructor` INT NOT NULL,
  PRIMARY KEY (`idaprendiz`),
  INDEX `fk_aprendiz_jornada_idx` (`jornada_idjornada` ASC),
  INDEX `fk_aprendiz_programa1_idx` (`programa_idprograma` ASC),
  INDEX `fk_aprendiz_ficha1_idx` (`ficha_codigoFicha` ASC),
  INDEX `fk_aprendiz_instructor1_idx` (`instructor_idinstructor` ASC),
  CONSTRAINT `fk_aprendiz_jornada`
    FOREIGN KEY (`jornada_idjornada`)
    REFERENCES `mydb`.`jornada` (`idjornada`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_aprendiz_programa1`
    FOREIGN KEY (`programa_idprograma`)
    REFERENCES `mydb`.`programa` (`idprograma`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_aprendiz_ficha1`
    FOREIGN KEY (`ficha_codigoFicha`)
    REFERENCES `mydb`.`ficha` (`codigoFicha`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_aprendiz_instructor1`
    FOREIGN KEY (`instructor_idinstructor`)
    REFERENCES `mydb`.`instructor` (`idinstructor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

USE `controlaprendices` ;

-- -----------------------------------------------------
-- Table `controlaprendices`.`tipo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `controlaprendices`.`tipo` (
  `idtipo` INT(11) NOT NULL AUTO_INCREMENT,
  `tipo` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idtipo`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `controlaprendices`.`programa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `controlaprendices`.`programa` (
  `idprograma` INT(11) NOT NULL AUTO_INCREMENT,
  `programa` VARCHAR(150) NULL DEFAULT NULL,
  `tipo_idtipo` INT(11) NOT NULL,
  PRIMARY KEY (`idprograma`),
  INDEX `fk_programa_tipo1_idx` (`tipo_idtipo` ASC),
  CONSTRAINT `fk_programa_tipo1`
    FOREIGN KEY (`tipo_idtipo`)
    REFERENCES `controlaprendices`.`tipo` (`idtipo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 10
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `controlaprendices`.`instructor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `controlaprendices`.`instructor` (
  `idinstructor` INT(11) NOT NULL,
  `nombre` VARCHAR(45) NULL DEFAULT NULL,
  `apellido` VARCHAR(45) NULL DEFAULT NULL,
  `email` VARCHAR(45) NULL DEFAULT NULL,
  `programa_idprograma` INT(11) NOT NULL,
  PRIMARY KEY (`idinstructor`),
  INDEX `fk_instructor_programa1_idx` (`programa_idprograma` ASC),
  CONSTRAINT `fk_instructor_programa1`
    FOREIGN KEY (`programa_idprograma`)
    REFERENCES `controlaprendices`.`programa` (`idprograma`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `controlaprendices`.`jornada`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `controlaprendices`.`jornada` (
  `idjornada` INT(11) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idjornada`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `controlaprendices`.`ficha`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `controlaprendices`.`ficha` (
  `codigoFicha` INT(11) NOT NULL,
  `instructor_idinstructor` INT(11) NOT NULL,
  `programa_idprograma` INT(11) NOT NULL,
  `jornada_idjornada` INT(11) NOT NULL,
  PRIMARY KEY (`codigoFicha`),
  INDEX `fk_ficha_instructor1_idx` (`instructor_idinstructor` ASC),
  INDEX `fk_ficha_programa1_idx` (`programa_idprograma` ASC),
  INDEX `fk_ficha_jornada1_idx` (`jornada_idjornada` ASC),
  CONSTRAINT `fk_ficha_instructor1`
    FOREIGN KEY (`instructor_idinstructor`)
    REFERENCES `controlaprendices`.`instructor` (`idinstructor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ficha_jornada1`
    FOREIGN KEY (`jornada_idjornada`)
    REFERENCES `controlaprendices`.`jornada` (`idjornada`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ficha_programa1`
    FOREIGN KEY (`programa_idprograma`)
    REFERENCES `controlaprendices`.`programa` (`idprograma`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `controlaprendices`.`aprendiz`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `controlaprendices`.`aprendiz` (
  `idaprendiz` INT(11) NOT NULL,
  `nombre` VARCHAR(45) NULL DEFAULT NULL,
  `apellido` VARCHAR(45) NULL DEFAULT NULL,
  `email` VARCHAR(45) NULL DEFAULT NULL,
  `jornada_idjornada` INT(11) NOT NULL,
  `programa_idprograma` INT(11) NOT NULL,
  `ficha_codigoFicha` INT(11) NOT NULL,
  `instructor_idinstructor` INT(11) NOT NULL,
  PRIMARY KEY (`idaprendiz`),
  INDEX `fk_aprendiz_jornada_idx` (`jornada_idjornada` ASC),
  INDEX `fk_aprendiz_programa1_idx` (`programa_idprograma` ASC),
  INDEX `fk_aprendiz_ficha1_idx` (`ficha_codigoFicha` ASC),
  INDEX `fk_aprendiz_instructor1_idx` (`instructor_idinstructor` ASC),
  CONSTRAINT `fk_aprendiz_ficha1`
    FOREIGN KEY (`ficha_codigoFicha`)
    REFERENCES `controlaprendices`.`ficha` (`codigoFicha`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_aprendiz_instructor1`
    FOREIGN KEY (`instructor_idinstructor`)
    REFERENCES `controlaprendices`.`instructor` (`idinstructor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_aprendiz_jornada`
    FOREIGN KEY (`jornada_idjornada`)
    REFERENCES `controlaprendices`.`jornada` (`idjornada`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_aprendiz_programa1`
    FOREIGN KEY (`programa_idprograma`)
    REFERENCES `controlaprendices`.`programa` (`idprograma`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
