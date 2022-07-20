--
-- Table structure for table `lse_clm_tpcl_spqu_crst`
--

DROP TABLE IF EXISTS `lse_clm_tpcl_spqu_crst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_clm_tpcl_spqu_crst` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ctm_rsno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '고객주민번호',
  `siu_clm_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'SIU사고유형코드',
  `clmct` decimal(7,0) NOT NULL COMMENT '사고건수',
  `same_clm_tp_ct` decimal(7,0) NOT NULL COMMENT '동일사고유형건수',
  `hsp_ct` decimal(7,0) NOT NULL COMMENT '입원건수',
  `t_hsp_days` decimal(5,0) NOT NULL COMMENT '총입원일수',
  `ddalw_ibamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '일당보험금액',
  `py_ibamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '지급보험금액',
  `same_hsp_ct` decimal(7,0) NOT NULL COMMENT '동일병원건수',
  `rmpla_rmdy_ct` decimal(7,0) NOT NULL COMMENT '원격지치료건수',
  `op_yn_ct` decimal(7,0) NOT NULL COMMENT '수술여부건수',
  `sel_obs_ct` decimal(7,0) NOT NULL COMMENT '후유장해건수',
  `dgn_ndv_ctrt_ct` decimal(7,0) NOT NULL COMMENT '진단개별집중건수',
  `thcp_ddalw_clmct` decimal(7,0) DEFAULT NULL COMMENT '당사일당사고건수',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_clm_tpcl_spqu_crst_00` (`ctm_rsno`,`siu_clm_tpcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사고유형별특성현황';
