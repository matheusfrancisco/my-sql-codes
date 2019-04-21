
--CREATE TABLE IF NOT EXISTS Account(
--    balance float,
--    idAccount int UNSIGNED NOT NULL AUTO_INCREMENT,
--    PRIMARY KEY (idAccount)
--);

--CREATE TABLE IF NOT EXISTS Plan(
--    remainingInstallments integer,
--    numberOfInstallments integer,
--    payday Date,
--    idPlan int UNSIGNED NOT NULL AUTO_INCREMENT ,
--    PRIMARY KEY (idPlan),
--    startDateUser Date
--);

--CREATE TABLE IF NOT EXISTS PortabilityPlan(
--    paymentAmount float,
--    idPortabilityPLan int,
--    monthsOfGracePeriod integer,
--    fk_Plan_idPlan int,
--    PRIMARY KEY( idPortabilityPlan, fk_Plan_idPlan ),
--    	CONSTRAINT FK_PortabilityPlan_2
--   FOREIGN KEY(fk_Plan_idPlan)
 --   REFERENCES Plan(idPlan)
--    ON DELETE CASCADE
--);

--CREATE TABLE IF NOT EXISTS SupplementaryPensionPlan(
  --  monthsOfGracePeriod integer,
  --  paymentAmount float,
  --  idSupplementaryPensionPlan int,
  --  fk_Plan_idPlan int,
  --  PRIMARY KEY(idSupplementaryPensionPlan, fk_Plan_idPlan),
  --      CONSTRAINT FK_SupplementaryPensionPlan_2
  --  FOREIGN KEY(fk_Plan_idPlan)
  --  REFERENCES Plan(idPlan)
  --  ON DELETE CASCADE
--);

--CREATE TABLE IF NOT EXISTS InsuranceCompany(
 --   idInsuranceCompanyPlan int ,
 --   monthsOfGracePeriod integer,
  --  pyamentAmount float,
  --  fk_Plan_idPlan int,
 --   PRIMARY KEY (idInsuranceCompanyPLan, fk_Plan_idPlan)
--);

--CREATE TABLE IF NOT EXISTS AccountControllerUserAccountPlan(
 --   fk_User_idUser int ,
 --   fk_Account_idAccount int ,
 --   fk_Plan_idPlan int ,
 --   	CONSTRAINT FK_AccountControllerUserAccountPlan_1
--    FOREIGN KEY(fk_User_idUser)
 --   REFERENCES User (idUser)
 --   ON DELETE RESTRICT,
--	CONSTRAINT FK_AccountControllerUserAccountPlan_2
 --   FOREIGN KEY(fk_Account_idAccount)
  --  REFERENCES Account (idAccount)
 --   ON DELETE NO ACTION,
--	 CONSTRAINT FK_AccountControllerUserAccountPlan_3
  --  FOREIGN KEY (fk_Plan_idPlan)
 --   REFERENCES Plan (idPlan)
  --  ON DELETE NO ACTION
--);


CREATE TABLE IF NOT EXISTS AccountControllerUserAccountPlan(
  idAccountController integer NOT NULL PRIMARY KEY AUTO_INCREMENT,
  fk_User_idUser int NOT NULL,
  fk_Account_idAccount int NOT NULL,
  fk_Plan_idPlan int NOT NULL,
  FOREIGN KEY(fk_User_idUser) REFERENCES User (cpf)  ON DELETE RESTRICT,
  FOREIGN KEY(fk_Account_idAccount)  REFERENCES Account (idAccount)  ON DELETE NO ACTION,
  FOREIGN KEY (fk_Plan_idPlan)  REFERENCES Plan (idPlan)  ON DELETE NO ACTION
);
