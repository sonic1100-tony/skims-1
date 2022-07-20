--
-- Table structure for table `ccm_mntn_fct_wag_adm`
--

DROP TABLE IF EXISTS `ccm_mntn_fct_wag_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_mntn_fct_wag_adm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `cprt_entp_seqno` decimal(3,0) NOT NULL COMMENT '협력업체순번',
  `dm_ins_cmpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '손해보험회사코드',
  `wag_adm_crr_seqno` decimal(3,0) NOT NULL COMMENT '공임관리이력순번',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `otcm_drp_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '타사DRP여부',
  `cr_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약여부',
  `ap_wag_amt` decimal(15,0) DEFAULT '0' COMMENT '적용공임금액',
  `cr_wag_amt` decimal(15,0) DEFAULT '0' COMMENT '계약공임금액',
  `dm_wag_amt` decimal(15,0) DEFAULT '0' COMMENT '청구공임금액',
  `foma_ap_wag_amt` decimal(15,0) DEFAULT '0' COMMENT '외산적용공임금액',
  `foma_cr_wag_amt` decimal(15,0) DEFAULT '0' COMMENT '외산계약공임금액',
  `foma_dm_wag_amt` decimal(15,0) DEFAULT '0' COMMENT '외산청구공임금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_mntn_fct_wag_adm_00` (`ctmno`,`cprt_entp_seqno`,`dm_ins_cmpcd`,`wag_adm_crr_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='정비공장공임관리';
