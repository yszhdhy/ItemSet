
UPDATE ACT_DMN_DATABASECHANGELOGLOCK SET `LOCKED` = 1, LOCKEDBY = '192.168.68.111 (192.168.68.111)', LOCKGRANTED = '2021-12-28 10:30:21.631' WHERE ID = 1 AND `LOCKED` = 0;

UPDATE ACT_DMN_DATABASECHANGELOGLOCK SET `LOCKED` = 0, LOCKEDBY = NULL, LOCKGRANTED = NULL WHERE ID = 1;

