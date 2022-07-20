--
-- Table structure for table `ccm_cmp_xcpt_bsns`
--

DROP TABLE IF EXISTS `ccm_cmp_xcpt_bsns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_cmp_xcpt_bsns` (
  `xcpt_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '예외업무구분코드',
  `adm_seqno` decimal(10,0) NOT NULL COMMENT '관리순번',
  `ap_strdt` date DEFAULT NULL COMMENT '적용시작일자',
  `ap_nddt` date DEFAULT NULL COMMENT '적용종료일자',
  `ba_ky_clmvl_1` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기본키컬럼값1',
  `ba_ky_clmvl_2` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기본키컬럼값2',
  `ba_ky_clmvl_3` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기본키컬럼값3',
  `ba_ky_clmvl_4` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기본키컬럼값4',
  `ba_ky_clmvl_5` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기본키컬럼값5',
  `ba_ky_clmvl_6` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기본키컬럼값6',
  `ba_ky_clmvl_7` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기본키컬럼값7',
  `ba_ky_clmvl_8` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기본키컬럼값8',
  `ba_ky_clmvl_9` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기본키컬럼값9',
  `ba_ky_clmvl_10` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기본키컬럼값10',
  `note` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`xcpt_bsns_flgcd`,`adm_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='보상예외업무';
