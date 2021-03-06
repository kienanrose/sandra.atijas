  CREATE TABLE `applicant` (
  `id_applicant` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SURNAME` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AGE` int(11) DEFAULT NULL,
  `EMPLOYMENT_STATUS` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SALARY` double DEFAULT NULL,
  `MARITAL_STATUS` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LOAN_ACCEPTANCE` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `N_FAMILY_MEMBERS` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONTRACT_TYPE` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LOAN_TYPE` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `JMBG` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_applicant`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `bank_portfolio` (
  `IDBANK_PORTFOLIO` int(11) NOT NULL AUTO_INCREMENT,
  `CREATED_DATE_TIME` date DEFAULT NULL,
  `LOAN_TYPE` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `STATUS` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ID_APPLICANT` int(11) DEFAULT NULL,
  PRIMARY KEY (`IDBANK_PORTFOLIO`),
  KEY `ID_APPLICANT_FK_idx` (`ID_APPLICANT`),
  CONSTRAINT `ID_APPLICANT_FK` FOREIGN KEY (`ID_APPLICANT`) REFERENCES `applicant` (`id_applicant`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


ALTER TABLE `mydb`.`bank_portfolio` 
ADD INDEX `ID_APPLICANT_FK_idx` (`ID_APPLICANT` ASC);
ALTER TABLE `mydb`.`bank_portfolio` 
ADD CONSTRAINT `ID_APPLICANT_FK`
  FOREIGN KEY (`ID_APPLICANT`)
  REFERENCES `mydb`.`applicant` (`ID_APPLICANT`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;
  


