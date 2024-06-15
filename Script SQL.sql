-- -----------------------------------------------------
-- Schema gerensystem
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema gerensystem
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `gerensystem` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `gerensystem` ;

-- -----------------------------------------------------
-- Table `gerensystem`.`estoqueatual`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `gerensystem`.`estoqueatual` (
  `idestoqueatual` INT NOT NULL AUTO_INCREMENT,
  `idproduto` INT NULL DEFAULT NULL,
  `estoqueAtual` INT NULL DEFAULT NULL,
  `estoqueAnterior` INT NULL DEFAULT NULL,
  PRIMARY KEY (`idestoqueatual`))
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `gerensystem`.`funcionarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `gerensystem`.`funcionarios` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `nome_completo` VARCHAR(255) NULL DEFAULT NULL,
  `cpf` VARCHAR(14) NULL DEFAULT NULL,
  `data_nasc` DATE NULL DEFAULT NULL,
  `endereco` VARCHAR(255) NULL DEFAULT NULL,
  `sexo` ENUM('M', 'F', 'Outro') NULL DEFAULT NULL,
  `telefone` VARCHAR(20) NULL DEFAULT NULL,
  `email` VARCHAR(100) NULL DEFAULT NULL,
  `data_admissao` DATE NULL DEFAULT NULL,
  `salario` FLOAT NULL DEFAULT NULL,
  `cargo` VARCHAR(100) NULL DEFAULT NULL,
  `funcao` VARCHAR(100) NULL DEFAULT NULL,
  `login` VARCHAR(100) NULL DEFAULT NULL,
  `senha` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `gerensystem`.`produtos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `gerensystem`.`produtos` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `codProd` BIGINT NULL DEFAULT NULL,
  `marca` VARCHAR(100) NULL DEFAULT NULL,
  `categoria` VARCHAR(100) NULL DEFAULT NULL,
  `fornecedor` VARCHAR(100) NULL DEFAULT NULL,
  `valorProd` FLOAT NULL DEFAULT NULL,
  `valorVenda` FLOAT NULL DEFAULT NULL,
  `validadeProd` DATE NULL DEFAULT NULL,
  `qtdeRecebida` INT NULL DEFAULT NULL,
  `qtdeMinEstoque` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
