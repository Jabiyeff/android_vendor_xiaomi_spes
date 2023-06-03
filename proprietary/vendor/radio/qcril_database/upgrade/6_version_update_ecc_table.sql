/*
  Copyright (c) 2019 Qualcomm Technologies, Inc.
  All Rights Reserved.
  Confidential and Proprietary - Qualcomm Technologies, Inc.
*/

BEGIN TRANSACTION;

INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 6);

DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '724' AND MNC = '05' AND NUMBER = '191';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '724' AND MNC = '05' AND NUMBER = '192';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '724' AND MNC = '05' AND NUMBER = '192';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '724' AND MNC = '05' AND NUMBER = '191';



COMMIT TRANSACTION;
