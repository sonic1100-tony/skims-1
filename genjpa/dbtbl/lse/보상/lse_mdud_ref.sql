--
-- Table structure for table `lse_mdud_ref`
--

DROP TABLE IF EXISTS `lse_mdud_ref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_mdud_ref` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `ud_seq` decimal(3,0) NOT NULL COMMENT '심사회차',
  `mdud_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '의료심사유형코드',
  `ref_seqno` decimal(3,0) NOT NULL COMMENT '참조순번',
  `clm_nv_seqno` decimal(3,0) NOT NULL COMMENT '사고조사순번',
  `mdud_ref_itvl_1` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의료심사참조항목값1',
  `mdud_ref_itvl_2` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의료심사참조항목값2',
  `mdud_ref_itvl_3` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의료심사참조항목값3',
  `mdud_ref_itvl_4` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의료심사참조항목값4',
  `mdud_ref_itvl_5` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의료심사참조항목값5',
  `mdud_ref_itvl_6` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의료심사참조항목값6',
  `mdud_ref_itvl_7` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의료심사참조항목값7',
  `mdud_ref_itvl_8` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의료심사참조항목값8',
  `mdud_ref_itvl_9` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의료심사참조항목값9',
  `mdud_ref_itvl_10` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의료심사참조항목값10',
  `mdud_ref_itvl_11` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의료심사참조항목값11',
  `mdud_ref_itvl_12` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의료심사참조항목값12',
  `mdud_ref_itvl_13` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의료심사참조항목값13',
  `mdud_ref_itvl_14` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의료심사참조항목값14',
  `mdud_ref_itvl_15` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의료심사참조항목값15',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_mdud_ref_00` (`rcp_yymm`,`rcp_nv_seqno`,`clmps_seqno`,`ud_seq`,`mdud_tpcd`,`ref_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='의료심사참조';
