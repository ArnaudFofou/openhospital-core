--- MEDICALDSRINVENTORY --

ALTER TABLE OH_MEDICALDSRINVENTORY 
DROP CONSTRAINT FK_MEDICALDSRINVENTORY_USER;

ALTER TABLE OH_MEDICALDSRINVENTORY 
ADD CONSTRAINT FK_MEDICALDSRINVENTORY_USER_1
FOREIGN KEY (MINVT_US_ID_A) REFERENCES OH_USER (US_ID_A) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE OH_MEDICALDSRINVENTORY 
ADD CONSTRAINT FK_MEDICALDSRINVENTORY_USER_2
FOREIGN KEY (MINVT_CREATED_BY) REFERENCES OH_USER (US_ID_A) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE OH_MEDICALDSRINVENTORY 
ADD CONSTRAINT FK_MEDICALDSRINVENTORY_USER_3
FOREIGN KEY (MINVT_LAST_MODIFIED_BY) REFERENCES OH_USER (US_ID_A) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- OH_MEDICALDSRINVENTORYROW --

ALTER TABLE OH_MEDICALDSRINVENTORYROW 
ADD CONSTRAINT FK_MEDICALDSRINVENTORYROW_USER_1
FOREIGN KEY (MINVTR_CREATED_BY) REFERENCES OH_USER (US_ID_A) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE OH_MEDICALDSRINVENTORYROW 
ADD CONSTRAINT FK_MEDICALDSRINVENTORYROW_USER_2
FOREIGN KEY (MINVTR_LAST_MODIFIED_BY) REFERENCES OH_USER (US_ID_A) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- OH_MEDICALDSRSTOCK --
ALTER TABLE OH_MEDICALDSRSTOCK
MODIFY COLUMN MS_CREATED_BY VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci;

ALTER TABLE OH_MEDICALDSRSTOCK
MODIFY COLUMN MS_LAST_MODIFIED_BY VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci;

ALTER TABLE OH_MEDICALDSRSTOCK
ADD CONSTRAINT FK_MEDICALDSRSTOCK_USER_1
FOREIGN KEY (MS_CREATED_BY) REFERENCES OH_USER (US_ID_A) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE OH_MEDICALDSRSTOCK 
ADD CONSTRAINT FK_MEDICALDSRSTOCK_USER_2
FOREIGN KEY (MS_LAST_MODIFIED_BY) REFERENCES OH_USER (US_ID_A) ON DELETE NO ACTION ON UPDATE NO ACTION;


-- OH_USER_SETTINGS --

ALTER TABLE OH_USER_SETTINGS
ADD CONSTRAINT FK_USER_SETTINGS_USER_1
FOREIGN KEY (USS_CREATED_BY) REFERENCES OH_USER (US_ID_A) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE OH_USER_SETTINGS
ADD CONSTRAINT FK_USER_SETTINGS_USER_2
FOREIGN KEY (USS_LAST_MODIFIED_BY) REFERENCES OH_USER (US_ID_A) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- OH_PATIENT_CONSENSUS --

ALTER TABLE OH_PATIENT_CONSENSUS
ADD CONSTRAINT FK_PATIENT_CONSENSUS_USER_1
FOREIGN KEY (PTC_CREATED_BY) REFERENCES OH_USER (US_ID_A) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE OH_PATIENT_CONSENSUS
ADD CONSTRAINT FK_PATIENT_CONSENSUS_USER_2
FOREIGN KEY (PTC_LAST_MODIFIED_BY) REFERENCES OH_USER (US_ID_A) ON DELETE NO ACTION ON UPDATE NO ACTION;