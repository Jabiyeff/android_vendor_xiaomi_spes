/*
  Copyright (c) 2019 Qualcomm Technologies, Inc.
  All Rights Reserved.
  Confidential and Proprietary - Qualcomm Technologies, Inc.
*/

BEGIN TRANSACTION;

INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 16);


DELETE FROM qcril_emergency_source_mcc_mnc_table   where MCC = '340' AND MNC = '01' ;
DELETE FROM qcril_emergency_source_mcc_mnc_table   where MCC = '647' AND MNC = '00' ;
DELETE FROM qcril_emergency_source_mcc_mnc_table   where MCC = '647' AND MNC = '00' ;
DELETE FROM qcril_emergency_source_mcc_table   where MCC = '208' ;
DELETE FROM qcril_emergency_source_voice_table   where MCC = '208' ;
INSERT INTO "qcril_emergency_source_mcc_mnc_table" VALUES('340','01','112','','');
INSERT INTO "qcril_emergency_source_mcc_mnc_table" VALUES('340','01','911','','');
INSERT INTO "qcril_emergency_source_mcc_mnc_table" VALUES('647','00','112','','');
INSERT INTO "qcril_emergency_source_mcc_mnc_table" VALUES('647','00','911','','');

COMMIT TRANSACTION;

