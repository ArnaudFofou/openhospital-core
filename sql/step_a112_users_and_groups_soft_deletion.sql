ALTER TABLE OH_USER
ADD US_DELETED BOOLEAN DEFAULT false;

ALTER TABLE OH_USERGROUP
ADD UG_DELETED BOOLEAN DEFAULT false;