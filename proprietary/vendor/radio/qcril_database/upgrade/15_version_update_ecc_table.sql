/*
  Copyright (c) 2019 Qualcomm Technologies, Inc.
  All Rights Reserved.
  Confidential and Proprietary - Qualcomm Technologies, Inc.
*/

BEGIN TRANSACTION;

INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 15);


DELETE FROM qcril_emergency_source_mcc_table   where MCC = '410'  AND NUMBER = '130';
DELETE FROM qcril_emergency_source_voice_table   where MCC = '410'  AND NUMBER = '130';




INSERT INTO "qcril_emergency_source_mcc_table" VALUES('410','130','','');
INSERT INTO "qcril_emergency_source_voice_table" VALUES('410','130','','full');





COMMIT TRANSACTION;
