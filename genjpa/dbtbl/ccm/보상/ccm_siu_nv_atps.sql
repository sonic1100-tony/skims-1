--
-- Table structure for table `ccm_siu_nv_atps`
--

DROP TABLE IF EXISTS `ccm_siu_nv_atps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_siu_nv_atps` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `nv_atps_rsno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '조사유의자주민번호',
  `sjtdn_seq` decimal(3,0) NOT NULL COMMENT '적발회차',
  `nv_atps_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조사유의자명',
  `rstrn_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '구속여부',
  `nv_atps_dl_rstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조사유의자처리결과코드',
  `detc_jrd_pcenm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수사관할경찰서명',
  `aret_dt` date DEFAULT NULL COMMENT '검거일자',
  `acd_rlv_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '사건해당년도',
  `crme_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '범죄내용',
  `cocpy_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '당타사구분코드',
  `cnn_carno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관련차량번호',
  `nrdnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_siu_nv_atps_00` (`nv_atps_rsno`,`sjtdn_seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='SIU조사유의자';
