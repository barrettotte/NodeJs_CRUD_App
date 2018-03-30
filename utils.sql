-- MySQL Script generated by MySQL Workbench
-- Thu Mar 22 16:40:08 2018
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';
SET @@auto_increment_increment=1;

-- -----------------------------------------------------
-- Schema heroku_0e9173ce5e46dd4
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema heroku_0e9173ce5e46dd4
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `heroku_0e9173ce5e46dd4` DEFAULT CHARACTER SET utf8 ;
USE `heroku_0e9173ce5e46dd4` ;

-- -----------------------------------------------------
-- Table `mydb`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `heroku_0e9173ce5e46dd4`.`users` (
  `userID` INT(11) NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(20) NOT NULL,
  `first_name` VARCHAR(20) NOT NULL,
  `last_name` VARCHAR(20) NOT NULL,
  `email` VARCHAR(40) NOT NULL,
  `password` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`userID`))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `heroku_0e9173ce5e46dd4`.`reviews`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `heroku_0e9173ce5e46dd4`.`reviews` (
  `reviewID` INT(11) NOT NULL,
  `review_title` VARCHAR(45) NOT NULL,
  `rating` INT(11) NOT NULL,
  `review` TEXT(255) NOT NULL,
  PRIMARY KEY (`reviewID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `heroku_0e9173ce5e46dd4`.`movies`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `heroku_0e9173ce5e46dd4`.`movies` (
  `movieID` INT(11) NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(45) NOT NULL,
  `genre` VARCHAR(20) NOT NULL,
  `rating` VARCHAR(20) NOT NULL,
  `year` INT(11) NOT NULL,
  `watched` VARCHAR(1) NOT NULL,
  `TMDB_ID` INT(11) NOT NULL,
  `userID` INT(11),
  `reviewID` INT(11),
  PRIMARY KEY (`movieID`),
  FOREIGN KEY (`userID`) REFERENCES `users`(`userID`),
  FOREIGN KEY (`reviewID`) REFERENCES `reviews`(`reviewID`))
ENGINE = InnoDB;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;