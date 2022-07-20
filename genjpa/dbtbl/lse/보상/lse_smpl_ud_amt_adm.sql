--
-- Table structure for table `lse_smpl_ud_amt_adm`
--

DROP TABLE IF EXISTS `lse_smpl_ud_amt_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_smpl_ud_amt_adm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `dsas_sctnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '질병구간명',
  `dm_cvr_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '청구담보유형코드',
  `ap_str_dthms` datetime NOT NULL COMMENT '적용시작일시',
  `ap_nd_dthms` datetime NOT NULL COMMENT '적용종료일시',
  `stamt_admcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '기준금액관리코드',
  `dv_1_emamt` decimal(15,0) DEFAULT NULL COMMENT '배당1청구금액',
  `dv_2_emamt` decimal(15,0) DEFAULT NULL COMMENT '배당2청구금액',
  `dv_3_emamt` decimal(15,0) DEFAULT NULL COMMENT '배당3청구금액',
  `dv_4_emamt` decimal(15,0) DEFAULT NULL COMMENT '배당4청구금액',
  `dv_1_nsly_amt` decimal(15,0) DEFAULT NULL COMMENT '배당1비급여금액',
  `dv_2_nsly_amt` decimal(15,0) DEFAULT NULL COMMENT '배당2비급여금액',
  `dv_3_nsly_amt` decimal(15,0) DEFAULT NULL COMMENT '배당3비급여금액',
  `dv_4_nsly_amt` decimal(15,0) DEFAULT NULL COMMENT '배당4비급여금액',
  `befo_mdf_usr_id` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이전수정사용자ID',
  `befo_mdf_dthms` datetime DEFAULT NULL COMMENT '이전수정일시',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_smpl_ud_amt_adm_00` (`dsas_sctnm`,`dm_cvr_tpcd`,`ap_str_dthms`,`ap_nd_dthms`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='단순심사금액관리';
