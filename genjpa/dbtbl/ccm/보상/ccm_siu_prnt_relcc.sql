--
-- Table structure for table `ccm_siu_prnt_relcc`
--

DROP TABLE IF EXISTS `ccm_siu_prnt_relcc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_siu_prnt_relcc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `siu_prnt_admno` bigint(20) NOT NULL COMMENT 'SIU제보관리번호',
  `relcc_seqno` decimal(3,0) NOT NULL COMMENT '관련자순번',
  `plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증권번호',
  `gdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품코드',
  `crt_cd` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약자코드',
  `crrnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약자명',
  `nrdcd` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자코드',
  `nrdnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자명',
  `dher_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급자직원번호',
  `dh_br_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급지점기관코드',
  `dh_aregp_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급지역단기관코드',
  `prnt_dl_rstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '제보처리결과코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_siu_prnt_relcc_00` (`siu_prnt_admno`,`relcc_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='SIU제보관련자';
