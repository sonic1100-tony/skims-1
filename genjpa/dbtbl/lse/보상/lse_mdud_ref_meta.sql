--
-- Table structure for table `lse_mdud_ref_meta`
--

DROP TABLE IF EXISTS `lse_mdud_ref_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_mdud_ref_meta` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `mdud_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '의료심사유형코드',
  `mdud_ref_itnm_1` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의료심사참조항목명1',
  `mdud_ref_itnm_2` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의료심사참조항목명2',
  `mdud_ref_itnm_3` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의료심사참조항목명3',
  `mdud_ref_itnm_4` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의료심사참조항목명4',
  `mdud_ref_itnm_5` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의료심사참조항목명5',
  `mdud_ref_itnm_6` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의료심사참조항목명6',
  `mdud_ref_itnm_7` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의료심사참조항목명7',
  `mdud_ref_itnm_8` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의료심사참조항목명8',
  `mdud_ref_itnm_9` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의료심사참조항목명9',
  `mdud_ref_itnm_10` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의료심사참조항목명10',
  `mdud_ref_itnm_11` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의료심사참조항목명11',
  `mdud_ref_itnm_12` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의료심사참조항목명12',
  `mdud_ref_itnm_13` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의료심사참조항목명13',
  `mdud_ref_itnm_14` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의료심사참조항목명14',
  `mdud_ref_itnm_15` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의료심사참조항목명15',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_mdud_ref_meta_00` (`mdud_tpcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='의료심사참조메타';
