--
-- Table structure for table `lse_hprm_nsamt`
--

DROP TABLE IF EXISTS `lse_hprm_nsamt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_hprm_nsamt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `hprm_clm_nv_seqno` decimal(3,0) NOT NULL COMMENT 'HPRM사고조사순번',
  `lb_dt_seqno` decimal(3,0) NOT NULL COMMENT '배상상세순번',
  `appr_st` date NOT NULL COMMENT '인정시기',
  `appr_clstr` date DEFAULT NULL COMMENT '인정종기',
  `ns_mc` decimal(5,0) DEFAULT NULL COMMENT '개호월수',
  `amvt_ever_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '한시영구구분코드',
  `ns_quf_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개호자격구분코드',
  `dy1_unprc` decimal(15,0) DEFAULT NULL COMMENT '1일단가',
  `nspct` decimal(2,0) DEFAULT NULL COMMENT '개호인수',
  `dy1_ns_hms` decimal(2,0) DEFAULT NULL COMMENT '1일개호시간',
  `sexcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '성별코드',
  `mnth_nsamt` decimal(15,0) DEFAULT NULL COMMENT '월개호비',
  `trm_nsamt` decimal(15,0) DEFAULT NULL COMMENT '기간개호비',
  `hl_cfc_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'HL계수구분코드',
  `st_cfc` decimal(13,10) DEFAULT NULL COMMENT '시기계수',
  `clstr_cfc` decimal(13,10) DEFAULT NULL COMMENT '종기계수',
  `cfc_calvl` decimal(13,10) DEFAULT NULL COMMENT '계수계산값',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_hprm_nsamt_00` (`rcp_yymm`,`rcp_nv_seqno`,`hprm_clm_nv_seqno`,`lb_dt_seqno`,`appr_st`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='HPRM개호비';
