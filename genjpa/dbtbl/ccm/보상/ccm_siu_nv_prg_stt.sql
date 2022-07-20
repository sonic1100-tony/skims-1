--
-- Table structure for table `ccm_siu_nv_prg_stt`
--

DROP TABLE IF EXISTS `ccm_siu_nv_prg_stt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_siu_nv_prg_stt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `siu_admno_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT 'SIU관리번호년도',
  `siu_admno_seqno` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT 'SIU관리번호순번',
  `prg_seqno` decimal(3,0) NOT NULL COMMENT '진행순번',
  `prg_stt` varchar(500) COLLATE utf8mb4_bin NOT NULL COMMENT '진행상황',
  `detc_rq_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '수사요청여부',
  `rqudt` date DEFAULT NULL COMMENT '의뢰일자',
  `chr_dtctv_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당수사관성명',
  `chr_dtctv_ptn` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당수사관직위',
  `tlano` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화지역번호',
  `tltno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화국번',
  `tlsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화일련번호',
  `next_pr_pl` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '향후추진계획',
  `psc_pmn_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '검찰경찰구분코드',
  `lclt_psc_pmncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지방검찰경찰코드',
  `psc_pcecd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '검찰경찰서코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_siu_nv_prg_stt_00` (`siu_admno_yr`,`siu_admno_seqno`,`prg_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='SIU조사진행상황';
