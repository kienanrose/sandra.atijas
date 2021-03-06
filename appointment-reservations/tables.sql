CREATE TABLE `mydb`.`reservation` (
  `ID_RESERVATION` INT NOT NULL AUTO_INCREMENT,
  `CUSTOMER_NAME` VARCHAR(45) NULL,
  `RESERVATION_DATE` DATE NULL,
  `TIME_SLOT` INT NULL,
  `SERVICE_TYPE` VARCHAR(45) NULL,
  `DAY_TYPE` VARCHAR(45) NULL,
  PRIMARY KEY (`ID_RESERVATION`));

/*'YYYY-MM-DD' - FORMAT OF DATE TYPE*/

INSERT INTO reservation(RESERVATION_DATE, DAY_TYPE)
VALUES ('2018-04-01', 'SUNDAY');

INSERT INTO reservation(RESERVATION_DATE, DAY_TYPE)
VALUES ('2018-04-08', 'SUNDAY');

INSERT INTO reservation(RESERVATION_DATE, DAY_TYPE)
VALUES ('2018-04-15', 'SUNDAY');

INSERT INTO reservation(RESERVATION_DATE, DAY_TYPE)
VALUES ('2018-04-22', 'SUNDAY');

INSERT INTO reservation(RESERVATION_DATE, DAY_TYPE)
VALUES ('2018-04-29', 'SUNDAY');

INSERT INTO reservation(RESERVATION_DATE, DAY_TYPE)
VALUES ('2018-04-09', 'PUBLIC_HOLIDAY');

INSERT INTO reservation(RESERVATION_DATE, DAY_TYPE)
VALUES ('2018-04-06', 'PUBLIC_HOLIDAY');

SELECT * FROM RESERVATION
