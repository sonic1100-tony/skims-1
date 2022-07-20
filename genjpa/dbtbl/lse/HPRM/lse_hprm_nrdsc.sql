--
-- Table structure for table `lse_hprm_nrdsc`
--

DROP TABLE IF EXISTS `lse_hprm_nrdsc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_hprm_nrdsc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `hprm_clm_nv_seqno` decimal(3,0) NOT NULL COMMENT 'HPRM사고조사순번',
  `lb_dt_seqno` decimal(3,0) NOT NULL COMMENT '배상상세순번',
  `appr_st` date NOT NULL COMMENT '인정시기',
  `appr_clstr` date DEFAULT NULL COMMENT '인정종기',
  `appr_days` decimal(5,0) DEFAULT NULL COMMENT '인정일수',
  `ic_st_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소득기준구분코드',
  `ic_stamt` decimal(15,0) DEFAULT NULL COMMENT '소득기준금액',
  `ddave_icamt` decimal(15,0) DEFAULT NULL COMMENT '일평균소득금액',
  `nrdsc_ccamt` decimal(15,0) DEFAULT NULL COMMENT '간병비산출금액',
  `bj_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대상여부',
  `note_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고사항',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_hprm_nrdsc_00` (`rcp_yymm`,`rcp_nv_seqno`,`hprm_clm_nv_seqno`,`lb_dt_seqno`,`appr_st`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='HPRM간병비';
