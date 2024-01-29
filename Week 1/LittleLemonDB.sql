-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema littlelemondb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema littlelemondb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `littlelemondb` ;
USE `littlelemondb` ;

-- -----------------------------------------------------
-- Table `littlelemondb`.`Customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `littlelemondb`.`Customers` (
  `CustomerID` INT NOT NULL,
  `FullName` VARCHAR(255) NULL,
  `EmailAddress` VARCHAR(255) NULL,
  `PhoneNumber` VARCHAR(45) NULL,
  `Address` VARCHAR(255) NULL,
  `City` VARCHAR(45) NULL,
  `Country` VARCHAR(45) NULL,
  PRIMARY KEY (`CustomerID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `littlelemondb`.`Bookings`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `littlelemondb`.`Bookings` (
  `BookingID` INT NOT NULL,
  `Date` DATE NULL,
  `TableNumber` INT NULL,
  `CustomerID` INT NULL,
  PRIMARY KEY (`BookingID`),
  INDEX `customer_id_fk_idx` (`CustomerID` ASC) VISIBLE,
  CONSTRAINT `bookings_customers_fk`
    FOREIGN KEY (`CustomerID`)
    REFERENCES `littlelemondb`.`Customers` (`CustomerID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `littlelemondb`.`Menus`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `littlelemondb`.`Menus` (
  `MenuID` INT NOT NULL,
  `Name` VARCHAR(45) NULL,
  `Cuisine` VARCHAR(45) NULL,
  PRIMARY KEY (`MenuID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `littlelemondb`.`Orders`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `littlelemondb`.`Orders` (
  `OrderID` INT NOT NULL,
  `OrderDate` DATE NULL,
  `Quantity` INT NULL,
  `TotalCost` DECIMAL NULL,
  `CustomerID` INT NULL,
  `MenuID` INT NULL,
  PRIMARY KEY (`OrderID`),
  INDEX `customer_id_fk_idx` (`CustomerID` ASC) VISIBLE,
  INDEX `menu_id_fk_idx` (`MenuID` ASC) VISIBLE,
  CONSTRAINT `orders_customers_fk`
    FOREIGN KEY (`CustomerID`)
    REFERENCES `littlelemondb`.`Customers` (`CustomerID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `orders_menus_fk`
    FOREIGN KEY (`MenuID`)
    REFERENCES `littlelemondb`.`Menus` (`MenuID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `littlelemondb`.`StaffRoles`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `littlelemondb`.`StaffRoles` (
  `RoleID` INT NOT NULL,
  `Role` VARCHAR(45) NULL,
  PRIMARY KEY (`RoleID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `littlelemondb`.`Staffs`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `littlelemondb`.`Staffs` (
  `StaffID` INT NOT NULL,
  `Name` VARCHAR(255) NULL,
  `Salary` INT NULL,
  `RoleID` INT NULL,
  PRIMARY KEY (`StaffID`),
  INDEX `role_id_fk_idx` (`RoleID` ASC) VISIBLE,
  CONSTRAINT `staffs_roles_fk`
    FOREIGN KEY (`RoleID`)
    REFERENCES `littlelemondb`.`StaffRoles` (`RoleID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `littlelemondb`.`OrderDeliveryStatus`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `littlelemondb`.`OrderDeliveryStatus` (
  `DeliveryID` INT NOT NULL,
  `DeliveryDate` DATE NULL,
  `Status` VARCHAR(45) NULL,
  `OrderID` INT NULL,
  `StaffID` INT NULL,
  PRIMARY KEY (`DeliveryID`),
  INDEX `order_id_fk_idx` (`OrderID` ASC) VISIBLE,
  INDEX `staff_id_fk_idx` (`StaffID` ASC) VISIBLE,
  CONSTRAINT `orderstauts_order_fk`
    FOREIGN KEY (`OrderID`)
    REFERENCES `littlelemondb`.`Orders` (`OrderID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `orderstatus_staff_fk`
    FOREIGN KEY (`StaffID`)
    REFERENCES `littlelemondb`.`Staffs` (`StaffID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `littlelemondb`.`MenuItems`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `littlelemondb`.`MenuItems` (
  `MenuItemID` INT NOT NULL,
  `Course` VARCHAR(45) NULL,
  `Price` DECIMAL NULL,
  `MenuID` INT NULL,
  PRIMARY KEY (`MenuItemID`),
  INDEX `menu_id_fk_idx` (`MenuID` ASC) VISIBLE,
  CONSTRAINT `menuitem_menu_fk`
    FOREIGN KEY (`MenuID`)
    REFERENCES `littlelemondb`.`Menus` (`MenuID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
