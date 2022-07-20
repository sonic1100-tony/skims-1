--
-- Table structure for table `lse_lsetm_bsns_admbj`
--

DROP TABLE IF EXISTS `lse_lsetm_bsns_admbj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_lsetm_bsns_admbj` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `prv_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '결재업무구분코드',
  `prv_bsns_flg_dtcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '결재업무구분세부코드',
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `bsns_adm_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '업무관리유형코드',
  `bsns_adm_seqno` decimal(11,0) NOT NULL COMMENT '업무관리순번',
  `ba_ky_clmvl_1` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '기본키컬럼값1',
  `ba_ky_clmvl_2` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기본키컬럼값2',
  `ba_ky_clmvl_3` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기본키컬럼값3',
  `rgtdt` date NOT NULL COMMENT '등록일자',
  `cncdt` date DEFAULT NULL COMMENT '해제일자',
  `nr_rgt_rs` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관심등록사유',
  `cnc_rs` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '해제사유',
  `cnc_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '해제여부',
  `rgt_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '등록직원번호',
  `rgt_stf_psgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '등록직원소속기관코드',
  `cnc_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '해제직원번호',
  `cnc_stf_psgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '해제직원소속기관코드',
  `rgt_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '등록유형코드',
  `cnc_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '해제유형코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_lsetm_bsns_admbj_00` (`prv_bsns_flgcd`,`prv_bsns_flg_dtcd`,`stfno`,`bsns_adm_tpcd`,`bsns_adm_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='손사업무관리대상';
