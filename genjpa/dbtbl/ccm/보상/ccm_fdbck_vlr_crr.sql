--
-- Table structure for table `ccm_fdbck_vlr_crr`
--

DROP TABLE IF EXISTS `ccm_fdbck_vlr_crr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_fdbck_vlr_crr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `bj_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '대상년월',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피해서열',
  `vlr_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '평가자유형코드',
  `ch_dthms` datetime NOT NULL COMMENT '변경일시',
  `chbf_vlr_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '변경전평가자직원번호',
  `chaf_vlr_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '변경후평가자직원번호',
  `chrps_ctn` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당자의견',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_fdbck_vlr_crr_00` (`bj_yymm`,`rcp_yymm`,`rcp_nv_seqno`,`clm_cvrcd`,`dmge_rank`,`vlr_tpcd`,`ch_dthms`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='피드백평가자이력';
