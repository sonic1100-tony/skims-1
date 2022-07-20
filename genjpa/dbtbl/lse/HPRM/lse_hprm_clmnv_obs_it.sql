--
-- Table structure for table `lse_hprm_clmnv_obs_it`
--

DROP TABLE IF EXISTS `lse_hprm_clmnv_obs_it`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_hprm_clmnv_obs_it` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `hprm_clm_nv_seqno` decimal(3,0) NOT NULL COMMENT 'HPRM사고조사순번',
  `lb_dt_seqno` decimal(3,0) NOT NULL COMMENT '배상상세순번',
  `obs_ch_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '장해변경구분코드',
  `obs_itcd` varchar(12) COLLATE utf8mb4_bin NOT NULL COMMENT '장해항목코드',
  `rkccd_cmnt` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '단계별코드주해',
  `xp_obsrt` decimal(5,2) NOT NULL COMMENT '예상장해율',
  `jb_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직업여부',
  `indr_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '옥내여부',
  `cnbd` decimal(5,2) NOT NULL COMMENT '기여도',
  `ap_obs_rt` decimal(5,2) NOT NULL COMMENT '적용장해율',
  `obs_trm_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장해기간구분코드',
  `obs_strdt` date DEFAULT NULL COMMENT '장해시작일자',
  `obs_nddt` date DEFAULT NULL COMMENT '장해종료일자',
  `mcbd_jbcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '맥브라이드직업코드',
  `jb_cfc_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직업계수코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_hprm_clmnv_obs_it_00` (`rcp_yymm`,`rcp_nv_seqno`,`hprm_clm_nv_seqno`,`lb_dt_seqno`,`obs_ch_flgcd`,`obs_itcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='HPRM사고조사장해항목';
