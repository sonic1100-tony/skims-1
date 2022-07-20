--
-- Table structure for table `ccm_siu_clm_sptps`
--

DROP TABLE IF EXISTS `ccm_siu_clm_sptps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_siu_clm_sptps` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `siu_admno_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT 'SIU관리번호년도',
  `siu_admno_seqno` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT 'SIU관리번호순번',
  `siu_clm_sptps_seqno` decimal(3,0) NOT NULL COMMENT 'SIU사고혐의자순번',
  `nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '성명',
  `rsno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주민번호',
  `tlano` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화지역번호',
  `tltno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화국번',
  `tlsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화일련번호',
  `dramt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '편취금액',
  `pyamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '지급금액',
  `npamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '미지급금액',
  `rcamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '환수금액',
  `siu_dl_rstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'SIU처리결과코드',
  `nrdps_relcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자관계코드',
  `psc_pmn_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '검찰경찰구분코드',
  `lclt_psc_pmncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지방검찰경찰코드',
  `psc_pcecd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '검찰경찰서코드',
  `pce_rpr_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT '0' COMMENT '경찰서신고여부',
  `plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증권번호',
  `jbnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직업명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_siu_clm_sptps_00` (`siu_admno_yr`,`siu_admno_seqno`,`siu_clm_sptps_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='SIU사고혐의자';
