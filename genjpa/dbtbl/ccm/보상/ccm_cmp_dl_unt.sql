--
-- Table structure for table `ccm_cmp_dl_unt`
--

DROP TABLE IF EXISTS `ccm_cmp_dl_unt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_cmp_dl_unt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `cmp_ky_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '보상키년도',
  `cmp_ky_seqno` decimal(10,0) NOT NULL COMMENT '보상키순번',
  `cmp_ky_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보상키구분코드',
  `cmp_ky_dt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보상키세부구분코드',
  `ppr_cmp_ky_yr` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상위보상키년도',
  `ppr_cmp_ky_seqno` decimal(10,0) DEFAULT NULL COMMENT '상위보상키순번',
  `otcm_mg_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '타사간사여부',
  `ba_ky_clmvl_1` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기본키컬럼값1',
  `ba_ky_clmvl_2` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기본키컬럼값2',
  `ba_ky_clmvl_3` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기본키컬럼값3',
  `ba_ky_clmvl_4` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기본키컬럼값4',
  `ba_ky_clmvl_5` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기본키컬럼값5',
  `ba_ky_clmvl_6` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기본키컬럼값6',
  `ba_ky_clmvl_7` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기본키컬럼값7',
  `ba_ky_clmvl_8` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기본키컬럼값8',
  `ba_ky_clmvl_9` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기본키컬럼값9',
  `pk_clm_numvl_1` decimal(15,0) DEFAULT NULL COMMENT '기본키컬럼숫자값1',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_cmp_dl_unt_00` (`cmp_ky_yr`,`cmp_ky_seqno`),
  KEY `idx_ccm_cmp_dl_unt_10` (`ba_ky_clmvl_1`,`ba_ky_clmvl_2`),
  KEY `idx_ccm_cmp_dl_unt_11` (`ppr_cmp_ky_yr`,`ppr_cmp_ky_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=2267 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='보상처리단위';
