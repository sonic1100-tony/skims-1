--
-- Table structure for table `lse_cer_clm_spqu_tp_crst`
--

DROP TABLE IF EXISTS `lse_cer_clm_spqu_tp_crst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_cer_clm_spqu_tp_crst` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `cer_rsno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '모집자주민번호',
  `siu_clm_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'SIU사고유형코드',
  `siu_clm_cascd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'SIU사고원인코드',
  `clmct` decimal(7,0) NOT NULL COMMENT '사고건수',
  `hsp_ct` decimal(7,0) NOT NULL COMMENT '입원건수',
  `ddamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '일당금액',
  `mdcs` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '의료비',
  `t_py_ibnf` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '총지급보험금',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_cer_clm_spqu_tp_crst_00` (`cer_rsno`,`siu_clm_tpcd`,`siu_clm_cascd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='모집자사고특성유형현황';
