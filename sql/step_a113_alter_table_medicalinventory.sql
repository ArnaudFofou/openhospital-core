-- Step 1: Drop the foreign key constraint
ALTER TABLE OH_MEDICALDSRINVENTORY 
DROP CONSTRAINT oh_medicaldsrinventory_ibfk_2;

-- Step 2: Change the data type of the foreign key column
ALTER TABLE OH_MEDICALDSRINVENTORY 
MODIFY MINVT_WRD_ID_A CHAR(3);

-- Step 3: Recreate the foreign key constraint
ALTER TABLE OH_MEDICALDSRINVENTORY 
ADD CONSTRAINT oh_medicaldsrinventory_ibfk_2
FOREIGN KEY (MINVT_WRD_ID_A) REFERENCES OH_WARD (WRD_ID_A);
