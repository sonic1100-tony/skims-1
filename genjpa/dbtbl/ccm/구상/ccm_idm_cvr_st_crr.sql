--
-- Table structure for table `ccm_idm_cvr_st_crr`
--

DROP TABLE IF EXISTS `ccm_idm_cvr_st_crr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_idm_cvr_st_crr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `idm_rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '구상접수년월',
  `idm_rcp_sno` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '구상접수일련번호',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `ap_nd_dthms` datetime NOT NULL COMMENT '적용종료일시',
  `ap_str_dthms` datetime NOT NULL COMMENT '적용시작일시',
  `idm_cvr_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '구상담보상태코드',
  `idm_st_ch_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '구상상태변경사유코드',
  `st_ch_dt_rs` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상태변경상세사유',
  `idm_wrsps_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '구상전담제여부',
  `idm_av_tm_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '구상실적팀기관코드',
  `idm_chrps_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '구상담당자직원번호',
  `idm_cvr_end_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '구상담보종결구분코드',
  `idm_end_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '구상종결유형코드',
  `abd_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '포기사유코드',
  `md_abd_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조정포기구분코드',
  `md_abamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '조정포기금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_idm_cvr_st_crr_00` (`idm_rcp_yymm`,`idm_rcp_sno`,`clm_cvrcd`,`ap_nd_dthms`,`ap_str_dthms`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='구상담보상태이력';
